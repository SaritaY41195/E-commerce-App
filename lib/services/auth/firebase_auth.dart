import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  static Future registerUser(String email, String password) async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      print("Successfully registeer $email");
    }on FirebaseException catch(e){
      if(e.code == "email-already-in -use"){
        throw Exception('The account already exist in that email.');
      }else if(e.code == "weak-password"){
        throw Exception('The password provided is too weak.');
      }else if(e.code == "The email address is badly formatted."){
        throw Exception('The email address is badly formatted');
      }
    }catch(e){
      throw Exception(e);
    }
  }

  static signInUser(String email, String password) async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      print('$email user logged in');
    }on FirebaseException catch(e){
      if(e.code == "email-already-in -use"){
        throw Exception('The account already exist in that email.');
      }else if(e.code == "weak-password"){
        throw Exception('The password provided is too weak.');
      }
    }catch(e){
          throw Exception(e);
    }
  }

  static signout()async{
    await FirebaseAuth.instance.signOut();
    print('SignOut successfully');
  }
}
