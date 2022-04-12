import 'dart:developer';

import 'package:adhyaya_application_new/presentation_mob/add_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTest extends StatefulWidget {
  const CreateTest({Key? key}) : super(key: key);

  @override
  State<CreateTest> createState() => _CreateTestState();
}

class _CreateTestState extends State<CreateTest> {
  int activePage = 0;
  // int totalPages = 2;
  bool isNextVisible = true;
  Color iconColor = Colors.green;

  TextEditingController testNameController = TextEditingController();
  TextEditingController marksController = TextEditingController();
  TextEditingController questionsController = TextEditingController();
  TextEditingController durationController = TextEditingController();

  String testName = '';
  int marks = 0;
  int questions = 0;
  int duration = 0;

  List<AddQuestion> questionsListUI = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Test',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: activePage,
        elevation: 10.0,
        // onStepTapped: ,
        onStepContinue: () {
          final isLastStep = activePage == getSteps().length - 1;

          if (isLastStep) {
            log('api call');
          } else {
            setState(() {
              activePage += 1;
            });
          }
        },
        onStepCancel:
            activePage == 0 ? null : () => setState(() => activePage -= 1),
        steps: getSteps(),
      ),
    );
  }

  List<Step> getSteps() {
    return [
      Step(
        isActive: activePage >= 0,
        title: Icon(
          Icons.info,
          color: iconColor,
        ),
        content: activePage1(),
      ),
      Step(
        isActive: activePage >= 1,
        title: Icon(
          Icons.upload_file,
          color: iconColor,
        ),
        content: Container(child: activePage2()),
      ),
      Step(
        isActive: activePage >= 2,
        title: Icon(
          Icons.done,
          color: iconColor,
        ),
        content: Container(child: activePage3()),
      ),
    ];
  }

  //! First page and widgets of the stepper body
  Widget activePage1() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cupTextField(
                controller: testNameController,
                fieldName: 'Test Name',
                textType: TextInputType.name),
            cupTextField(
                controller: marksController,
                fieldName: 'Marks',
                textType: TextInputType.number),
            cupTextField(
                controller: questionsController,
                fieldName: 'No. of Questions',
                textType: TextInputType.number),
            cupTextField(
                controller: durationController,
                fieldName: 'Duration in Minutes',
                textType: TextInputType.number),
          ],
        ),
      ),
    );
  }

  Widget getTextFormField({
    required String title,
    required bool isIcon,
    required TextEditingController textController,
    required TextInputType textType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, bottom: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
                Visibility(
                    visible: isIcon,
                    child: const Icon(
                      Icons.hourglass_full_sharp,
                      color: Colors.blue,
                      size: 32.0,
                    )),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              const Text(":"),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  controller: textController,
                  keyboardType: textType,
                ),
              )),
            ],
          )),
        ],
      ),
    );
  }

  Widget cupTextField({
    required TextEditingController controller,
    required String fieldName,
    required TextInputType textType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: SizedBox(
        height: 54.0,
        child: CupertinoTextField(
          placeholderStyle: const TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
          controller: controller,
          keyboardType: textType,
          textInputAction: TextInputAction.next,
          placeholder: fieldName,
          onSubmitted: (val) {
            if (val.isEmpty == true) {
              'This field cannot be empty';
            }
          },
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

//! First page and widgets of the stepper body

//! Second page and widgets of the stepper body

  void onQuestionAdd() {
    setState(() {
      questionsListUI.add(const AddQuestion());
    });
  }

  // Widget activePage2() {
  //   return questionsListUI.isEmpty
  //       ? const Center(child: Text('Click on the + to add a question'))
  //       : ListView.builder(
  //           shrinkWrap: true,
  //           itemCount: questionsListUI.length,
  //           itemBuilder: ((context, index) {
  //             return questionsListUI[index];
  //           }));
  // }

  
  Widget activePage2() {
    return Scaffold(
      body: questionsListUI.isEmpty
          ? const Center(child: Text('Click on the + to add a question'))
          : ListView.builder(
              shrinkWrap: true,
              itemCount: questionsListUI.length,
              itemBuilder: ((context, index) {
                return questionsListUI[index];
              })),
      floatingActionButton: FloatingActionButton(
          onPressed: onQuestionAdd, child: const Icon(Icons.add)),
    );
  }


//! Second page and widgets of the stepper body

//! Third page and widgets of the stepper body

  Widget activePage3() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 66.0,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2.0)),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.done_all,
                      color: Colors.green,
                      size: 32.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Publish Test',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 66.0,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2.0)),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.save,
                      color: Colors.green,
                      size: 32.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Save for Later',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//! Third page and widgets of the stepper body

}
