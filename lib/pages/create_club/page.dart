import 'package:court_connect_app/api/mutations/onboard_club.graphql.dart';
import 'package:court_connect_app/api/schema.graphql.dart';
import 'package:court_connect_app/utils/datetime.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'models.dart';
import 'general_info_step.dart';
import 'facilities_step.dart';

class CreateClubPage extends StatefulWidget {
  const CreateClubPage({super.key});

  @override
  State<CreateClubPage> createState() => _CreateClubPageState();
}

class _CreateClubPageState extends State<CreateClubPage> {
  NewClub club = NewClub();
  Wizard wizard = Wizard();
  final PageController wizardController = PageController();

  void nextPage() {
    wizardController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      wizard.currentStep++;
    });
  }

  void prevPage() {
    wizardController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    setState(() {
      wizard.currentStep--;
    });
  }

  void handleGeneralInfoChange(NewClub club) {
    final isValid = club.name.isNotEmpty && club.address.isNotEmpty && club.city.isNotEmpty;
    setState(() {
      this.club = club;
      // Assuming the first step is valid when name and address are filled
      wizard.steps[0]!.isValid = isValid;
    });
  }

  void handleFacilitiesChange(NewClub club) {
    setState(() {
      this.club = club;
      // Assuming the second step is valid when at least one facility is added
      wizard.steps[1]!.isValid = club.facilities.isNotEmpty;
    });
  }

  List<Input$ClubOpenHoursInput> buildOpenHours(NewClub club) {
    // Build the open hours object based for each week day and the weekends based on the time pickers
    final List<Input$ClubOpenHoursInput> openHours = [];
    for (var day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']) {
      openHours.add(
        Input$ClubOpenHoursInput(
          day: day,
          openTime: parseTime(club.weekdayOpen),
          closeTime: parseTime(club.weekdayClose),
          minimumBookingInterval: club.bookingInterval,
        ),
      );
    }
    for (var day in ['Saturday', 'Sunday']) {
      openHours.add(
        Input$ClubOpenHoursInput(
          day: day,
          openTime: parseTime(club.weekendOpen),
          closeTime: parseTime(club.weekendClose),
          minimumBookingInterval: club.bookingInterval,
        ),
      );
    }

    return openHours;
  }

  List<Input$FacilityInput> buildFacilities(NewClub club) {
    final Map<String, Enum$FacilityType> facilitiesTypeMap = {
      'Корт': Enum$FacilityType.COURT,
    };

    final Map<String, Enum$Sport> sportMap = {
      'Тенис': Enum$Sport.TENNIS,
      'Падел': Enum$Sport.PADEL,
    };

    // Convert the club's facilities to the GraphQL input format
    return club.facilities.map((facility) {
      return Input$FacilityInput(
        name: facility.name,
        type: facilitiesTypeMap[facility.type]!,
        sport: sportMap[facility.sport]!,
      );
    }).toList();
  }

  void handleSubmit() async {
    //  Call the GraphQL mutation to onboard the club
    final client = GraphQLProvider.of(context).value;

    final input = Input$NewClub(
      name: club.name,
      address: club.address,
      city: club.city,
      openHours: buildOpenHours(club),
      facilities: buildFacilities(club),
    );

    final result = await client.mutate$onboardClub(
      Options$Mutation$onboardClub(
        variables: Variables$Mutation$onboardClub(input: input),
      ),
    );
    if (result.hasException) {
      print(result.exception.toString());
      return;
    }

    final persistedClub = result.parsedData?.onboardClub;
    if (persistedClub != null) {
      print("Club onboarded: ${persistedClub.name} (ID: ${persistedClub.id})");
      // Navigate, show success, etc.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: wizardController,
        physics: NeverScrollableScrollPhysics(), // Disable swipe navigation
        children: [
          GeneralInfoStep(newClub: club, onChange: handleGeneralInfoChange),
          AddFacilitiesStep(newClub: club, onChange: handleFacilitiesChange),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: wizard.currentStep != 0 ? prevPage : null,
              child: Text("Назад"),
            ),
            FilledButton(
              onPressed: wizard.steps[wizard.currentStep]!.isValid
                  ? () {
                      if (wizardController.page! < 1) {
                        nextPage();
                      } else {
                        handleSubmit();
                      }
                    }
                  : null,
              child: Text("Напред"),
            ),
          ],
        ),
      ),
    );
  }
}
