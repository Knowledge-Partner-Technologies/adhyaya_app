import 'package:adhyaya_application_new/data/models/get_tests_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetTests {
  var database = FirebaseFirestore.instance;

  Future<List<GetTestModel>> getAvailableTests() async {
    List<GetTestModel> availableTests = [];

    CollectionReference collectionReference = database.collection('tests_data');

    var docData = await collectionReference.get();

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
