import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  Future<void> singinwithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      print('succes');
    } catch (err) {
      print(err);
    }
  }

  void googleSingOut() {
    GoogleSignIn().signOut();
  }
}
