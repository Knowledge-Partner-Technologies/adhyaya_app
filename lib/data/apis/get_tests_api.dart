import 'dart:developer';

import 'package:adhyaya_application_new/data/models/get_tests_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetTests {
  var database = FirebaseFirestore.instance;

  Future<List<GetTestModel>> getAvailableTests({required bool isTrue}) async {
    List<GetTestModel> availableTests = [];

    CollectionReference collectionReference = database.collection('tests_data');

    var docData =
        await collectionReference.where("isPublished", isEqualTo: isTrue).get();

    log(docData.toString());
    log(docData.docs.toString());

    if (docData.docs.isNotEmpty) {
      for (var doc in docData.docs) {
        availableTests.add(GetTestModel.fromDocumentSnapshot(doc));
      }

      return availableTests;
    } else {
      return availableTests = [];
    }
  }
}
