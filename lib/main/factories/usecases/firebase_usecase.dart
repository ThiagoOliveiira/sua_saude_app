import 'package:sua_saude_app/data/repositories/firebase_repository_impl.dart';
import 'package:sua_saude_app/domain/repositories/repositories.dart';
import 'package:sua_saude_app/main/factories/firebase_auth/firebase_factory.dart';

FirebaseAuthRepository makeFirebase() =>
    FirebaseAuthRepositoryImpl(makeFirebaseRemoteDataSource());
