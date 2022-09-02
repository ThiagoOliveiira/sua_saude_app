import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../data/datasources/datasources.dart';

FirebaseAuthentication makeFirebaseRemoteDataSource() => FirebaseAuthDataSourceImp(auth: FirebaseAuth.instance);
