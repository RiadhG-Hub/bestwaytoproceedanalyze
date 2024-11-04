import 'package:firebase_facilitator/mixin/crud_repos.dart';
import 'package:firebase_facilitator/mixin/firestore_write_service.dart';
import 'package:firebase_facilitator/mixin/logger_service.dart';

/// A remote data source for interacting with the 'best_way' collection
/// in a Firebase Firestore database.
///
/// This class extends the [CrudRepos] mixin to provide CRUD operations
/// for the 'best_way' collection.
class BestWayRemoteDataSources with FirestoreWriteRepository {
  /// The Firestore write service implementation, responsible for saving and deleting data in Firestore.
  @override
  FirestoreWriteService get firestoreWriteService =>
      FirestoreWriteServiceImpl();

  /// The logger service to track operations. Here it's set to `true`, enabling logging.
  @override
  LoggerService? get loggerService => LoggerServiceImpl(true); // Optional

  /// The Firestore collection name that this service operates on.
  @override
  String get collection => "best_way";
}
