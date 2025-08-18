import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Get auth state changes stream
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Sign in with Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      print('🔥 [FIREBASE] Starting Google sign-in process...');
      
      // Check if Firebase is initialized
      if (_auth.app == null) {
        print('🔥 [FIREBASE] Firebase app is null - not initialized');
        throw Exception('Firebase not initialized');
      }
      
      print('🔥 [FIREBASE] Firebase app is initialized: ${_auth.app?.name}');
      
      // Trigger the authentication flow
      print('🔥 [FIREBASE] Calling GoogleSignIn.signIn()...');
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      
      if (googleUser == null) {
        print('🔥 [FIREBASE] User cancelled the sign-in');
        return null;
      }

      print('🔥 [FIREBASE] Google user obtained: ${googleUser.email}');
      
      // Obtain the auth details from the request
      print('🔥 [FIREBASE] Getting Google authentication...');
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      
      print('🔥 [FIREBASE] Google auth obtained - accessToken: ${googleAuth.accessToken != null ? 'present' : 'missing'}, idToken: ${googleAuth.idToken != null ? 'present' : 'missing'}');

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      print('🔥 [FIREBASE] Credential created, signing in to Firebase...');
      
      // Sign in to Firebase with the credential
      final userCredential = await _auth.signInWithCredential(credential);
      
      print('🔥 [FIREBASE] Firebase sign-in successful: ${userCredential.user?.uid}');
      return userCredential;
    } catch (e) {
      print('🔥 [FIREBASE] Google sign-in error: $e');
      print('🔥 [FIREBASE] Error type: ${e.runtimeType}');
      print('🔥 [FIREBASE] Stack trace: ${StackTrace.current}');
      rethrow;
    }
  }

  // Sign up with Google (same as sign in for Google)
  Future<UserCredential?> signUpWithGoogle() async {
    return await signInWithGoogle();
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (e) {
      print('🔥 [FIREBASE] Sign out error: $e');
      rethrow;
    }
  }

  // Get user profile data
  Map<String, dynamic>? getUserProfile() {
    final user = _auth.currentUser;
    if (user != null) {
      return {
        'id': user.uid,
        'email': user.email,
        'firstName': user.displayName?.split(' ').first ?? '',
        'lastName': user.displayName?.split(' ').skip(1).join(' ') ?? '',
        'photoURL': user.photoURL,
        'providerId': user.providerData.first.providerId,
      };
    }
    return null;
  }

  // Check if user is signed in
  bool get isSignedIn => _auth.currentUser != null;

  // Get user ID token
  Future<String?> getIdToken() async {
    try {
      return await _auth.currentUser?.getIdToken();
    } catch (e) {
      print('🔥 [FIREBASE] Get ID token error: $e');
      return null;
    }
  }


}

// Provider
final firebaseServiceProvider = Provider<FirebaseService>((ref) {
  return FirebaseService();
});
