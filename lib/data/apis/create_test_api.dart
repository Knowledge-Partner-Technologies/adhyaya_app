import 'package:adhyaya_application_new/data/models/questions_model.dart';
import 'package:adhyaya_application_new/data/models/test_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateTestApi {
  var database = FirebaseFirestore.instance;

  Future<bool> createTest(
      {required TestModel testModel,
      required List<QuestionsModel> questionsModel}) async {
    CollectionReference collection = database.collection('tests_data');

    final result = await collection.add(testModel.toMap());

    var docId = result.id;

    if (result.id.isNotEmpty) {
      CollectionReference questionCollection =
          collection.doc(docId).collection('Questions');

      for (var element in questionsModel) {
        await questionCollection.add(element.toMap());
      }
      return true;
    } else {
      return false;
    }
  }
}
