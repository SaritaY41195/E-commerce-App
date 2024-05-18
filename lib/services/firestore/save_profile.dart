
import 'package:cloud_firestore/cloud_firestore.dart';

class SaveData{
  static Future<void> saveProfile(data)async{
    await FirebaseFirestore.instance.collection('profile').add(data);
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> getProfileData()async{
    final data = await FirebaseFirestore.instance.collection('profile').get();
    return data;
  }
}