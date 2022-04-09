import 'dart:developer';

import 'package:adhyaya_application_new/data/models/questions_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetQuestionsApi {
  var database = FirebaseFirestore.instance;
  // Random random = Random();

  Future<List<QuestionsModel>> getQuestionsTest({
    required String docId,
    //  required int totalQ
  }) async {
    List<QuestionsModel> testQuestions = [];

    CollectionReference collectionReference =
        database.collection('tests_data').doc(docId).collection('Questions');

    final docsSnap = await collectionReference.get();

    // List<QueryDocumentSnapshot> data = docsSnap.docs;

    log(docsSnap.docs.toString());

    for (var element in docsSnap.docs) {
      testQuestions.add(QuestionsModel.fromDocumentSnapshot(element));
    }

    log(testQuestions.toString());

    return testQuestions;

    // if (data.length >= totalQ) {
    //   for (int i = 0; i <= totalQ; i++) {
    //     int randomIndex = random.nextInt(totalQ);
    //     testQuestions
    //         .add(QuestionsModel.fromDocumentSnapshot(data[randomIndex]));
    //   }
    //   return testQuestions;
    // } else {
    //   return testQuestions = [];
    // }
  }
}
