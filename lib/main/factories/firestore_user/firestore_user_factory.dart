import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sua_saude_app/data/datasources/remote/user/user.dart';

FirestoreUser makeFirestoreUser() =>
    FirestoreUserInfoDataSourceImpl(firestore: FirebaseFirestore.instance);
