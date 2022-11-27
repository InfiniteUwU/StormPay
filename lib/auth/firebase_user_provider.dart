import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StormPayFirebaseUser {
  StormPayFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

StormPayFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StormPayFirebaseUser> stormPayFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<StormPayFirebaseUser>(
      (user) {
        currentUser = StormPayFirebaseUser(user);
        return currentUser!;
      },
    );
