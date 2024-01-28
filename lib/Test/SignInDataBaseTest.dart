import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volunteer_signiiner_flutter/Model/UserModel.dart';
import 'package:volunteer_signiiner_flutter/Firebase/SignInDataBase.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

void main() {

  group('Firebase CRUD Operations', () {

    late SignInDataBase signInDataBase;
    late FakeFirebaseFirestore fakeFirestore;

    setUpAll(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
    });

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      signInDataBase = SignInDataBase();
    });

    test('Add SignInData', () async {
      SignInData testSignInData = SignInData(
        email: 'test@example.com',
        identity: 'volunteer',
        serviceID: '123',
        timeStamp: DateTime.now().toString(),
        uid: 'test_uid',
        userName: 'Test User',
      );

      await signInDataBase.addSignInData(testSignInData);
      expect(fakeFirestore.collection('signInData').doc('test_uid').get(), completes);
    });

    test('Read SignInData', () async {
      List<Object?> data = await signInDataBase.readSignInData();
      expect(data, isList); 

      if (data.isNotEmpty) {
        expect(data[0], isMap); 
        var signInDataMap = data[0] as Map<String, dynamic>;
        expect(signInDataMap['email'], isNotNull);
        expect(signInDataMap['identity'], isNotNull);
      } else {
        expect(data.isEmpty, true);
      }
    });


    test('Update SignInData', () async {
      // Assume you have a document ID from a previous test
      String documentID = '4bFDWB88pdfW6WzzKFJv';
      
      SignInData updatedSignInData = SignInData(
        email: 'updated_test@example.com',
        identity: 'updated_volunteer',
        serviceID: '456',
        timeStamp: DateTime.now().toString(),
        uid: 'updated_test_uid',
        userName: 'Updated Test User',
      );

      await signInDataBase.updateSignInData(updatedSignInData, documentID);

      var updatedDocument = await fakeFirestore.collection('signInData').doc(documentID).get();

      expect(updatedDocument['email'], 'updated_test@example.com');
      expect(updatedDocument['identity'], 'updated_volunteer');
      expect(updatedDocument['serviceID'], '456');

    });

    test('Delete SignInData', () async {
    // 假設你有一個先前測試中獲得的文檔 ID
    String documentID = 'C3pWpV3licJIOywR8URC';

    // 執行刪除操作
    await signInDataBase.deleteSignInData(documentID);

    // 使用模擬 Firestore 驗證文檔是否被刪除
    var deletedDocument = await fakeFirestore.collection('signInData').doc(documentID).get();

    // 驗證刪除後的文檔應該為 null
    expect(deletedDocument, isNull);
  });

  });
}
