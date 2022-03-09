import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String userName;
  final String bio;
  final List followers;
  final List following;
  User(
      {required this.email,
      required this.uid,
      required this.photoUrl,
      required this.userName,
      required this.bio,
      required this.followers,
      required this.following});
  Map<String, dynamic> toJson() => {
        'username': userName,
        'uid': uid,
        'email': email,
        'photoUrl': photoUrl,
        'bio': bio,
        'followers': followers,
        'following': following,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;
    return User(
        email: snapShot['email'],
        uid: snapShot['uid'],
        photoUrl: snapShot['photoUrl'],
        userName: snapShot['userName'],
        bio: snapShot['bio'],
        followers: snapShot['followers'],
        following: snapShot['following']);
  }
}
