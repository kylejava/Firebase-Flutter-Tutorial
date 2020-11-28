import 'package:firebase_auth/firebase_auth.dart';
import 'package:newfirebasetut/models/user.dart';
class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  newUser _userFromFirebaseUser(User user){
    return user != null ? newUser(uid: user.uid) : null;
  }

  //Auth Change user stream
  Stream<newUser> get user{
    return _auth.authStateChanges().map((User user) => _userFromFirebaseUser(user));
  }
  Future signInAnon()async {
    try{
      UserCredential userCredential = await _auth.signInAnonymously();
      User  user = userCredential.user;
    //  print(user);
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
          return null;
    }

  }

  //sign in with email and password

  // Register with email and password

  // sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}