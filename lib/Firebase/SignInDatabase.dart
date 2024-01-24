// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:volunteer_signiiner_flutter/Model/UserModel.dart';

class SignInDataBase {

  final FirebaseFirestore _firebaseStore = FirebaseFirestore.instance;
    //Create
    Future<void> addSignInData(SignInData signInData) async {
        await _firebaseStore.collection('signInData').add({
            'email': signInData.email,
            'identity': signInData.identity,
            'serviceID' : signInData.serviceID,
            'timeStamp' : signInData.timeStamp,
            'uid': signInData.uid,
            'userName' : signInData.userName
        });
        print('Data added');
    }
    //Read 
    Future<List<Object?>> readSignInData() async {
        QuerySnapshot snapshot = await _firebaseStore.collection('signInData').get();
        return snapshot.docs.map((doc) => doc.data()).toList();
    }
    //Update
    Future<void> updateSignInData(SignInData signInData, documentID) async {
        await _firebaseStore.collection('signInData').doc(documentID).update({
            'email': signInData.email,
            'identity': signInData.identity,
            'serviceID' : signInData.serviceID,
            'timeStamp' : signInData.timeStamp,
            'uid': signInData.uid,
            'userName' : signInData.userName
        });
        print('Data updated');
    }
    //Delete
    Future<void> deleteSignInData(String documentID) async {
        await _firebaseStore.collection('signInData').doc(documentID).delete();
        print('Data deleted');
    }
}