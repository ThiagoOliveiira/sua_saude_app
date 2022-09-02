import 'package:sua_saude_app/data/repositories/firestore_user_repository_impl.dart';

import '../../../../domain/repositories/repositories.dart';
import '../../firestore_user/firestore_user_factory.dart';

FirebaseUserRepository makeUserFirebase() =>
    FirestoreUserRepositoryImpl(makeFirestoreUser());
