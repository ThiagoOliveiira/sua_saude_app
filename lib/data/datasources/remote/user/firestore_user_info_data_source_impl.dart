import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sua_saude_app/data/datasources/remote/user/firestore_user_info_data_source.dart';
import 'package:sua_saude_app/domain/entities/entities.dart';

import '../../../repositories/firestore_user_repository_impl.dart';

class FirestoreUserInfoDataSourceImpl implements FirestoreUser {
  final FirebaseFirestore firestore;

  FirestoreUserInfoDataSourceImpl({required this.firestore});

  @override
  Future<void> addNewUser(AddUserEntity newUserEntity) async {
    final params = AddUserParams.fromDomain(newUserEntity).toJson();

    return await firestore.doc(newUserEntity.userId).set(params);
  }
}
