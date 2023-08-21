import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDataBase {
    //Create
    Future<void> addData(String title, String content) async {
        await _firestore.collection('items').add({
            'title': title,
            'content': content,
        });
        print('Data added');
    }
    //Read
    Future<List<Map<String, dynamic>>> readData() async {
        QuerySnapshot snapshot = await _firestore.collection('items').get();
        return snapshot.docs.map((doc) => doc.data()).toList();
    }
    //Update
    Future<void> updateData(String documentId, String title, String content) async {
        await _firestore.collection('items').doc(documentId).update({
            'title': title,
            'content': content,
        });
        print('Data updated');
    }
    //Delete
    Future<void> deleteData(String documentId) async {
        await _firestore.collection('items').doc(documentId).delete();
        print('Data deleted');
    }
}