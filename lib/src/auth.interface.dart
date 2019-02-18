import 'package:jam_dart_models/models.dart';
import 'package:rxdart/rxdart.dart';

abstract class AuthInterface {
  Observable<User> user;

  Future<bool> initialize();

  Observable<User> register(
    Credential credential,
  );

  Observable<User> signIn(
    Credential credential,
  );

  Observable<User> signInWithGoogle();

  Observable<void> signOut();
}
