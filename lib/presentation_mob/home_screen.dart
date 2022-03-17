import 'package:adhyaya_application_new/presentation_mob/create_test.dart';
import 'package:adhyaya_application_new/presentation_mob/tests_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Container(
                            // color: Colors.blue,
                            alignment: Alignment.center,
                            child: Container(
                              height: 210.0,
                              width: 210.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/photos/african-american-teacher-and-her-student-using-laptop-during-computer-picture-id1331594985?b=1&k=20&m=1331594985&s=170667a&w=0&h=OSe_MSytB582ulUl3SFdABPMlERISw7nMJm53rApU9U='),
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  )),
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Meghan Markhle',
                                style: textStyle2,
                              ),
                              Text(
                                'St.Angels High School',
                                style: textStyle2,
                              ),
                              Text(
                                'Hyderabad',
                                style: textStyle2,
                              ),
                              Container(
                                height: 48.0,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(12.0)),
                                alignment: Alignment.center,
                                child: Text(
                                  'Edit Profile',
                                  style: textStyle,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                // Expanded(
                                //     flex: 2,
                                //     child: Container(
                                //       color: Colors.transparent,
                                //       alignment: Alignment.topLeft,
                                //       child: Text(
                                //         'Tests',
                                //         style: textStyle2,
                                //       ),
                                //     )),
                                Expanded(
                                    flex: 3,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const TestDetails(
                                                      buttonName: 'Un-Publish',
                                                    )));
                                      },
                                      child: Card(
                                        elevation: 15.0,
                                        color: Colors.transparent,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Published Tests',
                                            style: textStyle,
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const TestDetails(
                                                        buttonName:
                                                            'Publish')));
                                      },
                                      child: Card(
                                        elevation: 15.0,
                                        color: Colors.transparent,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Un-Published Tests',
                                            style: textStyle,
                                          ),
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      padding: const EdgeInsets.only(
                                          top: 12.0, bottom: 12.0),
                                      child: CupertinoButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CreateTest()));
                                        },
                                        disabledColor: Colors.grey,
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          CupertinoIcons.add,
                                          size: 48.0,
                                          color: Colors.white,
                                        ),
                                        color: Colors.lightGreen,
                                      ),
                                    )),
                              ],
                            ),
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  TextStyle textStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  TextStyle textStyle2 = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
