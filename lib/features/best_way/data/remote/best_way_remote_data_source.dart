import 'package:firebase_crud/mixin/crud_repos.dart';

/// A remote data source for interacting with the 'best_way' collection
/// in a Firebase Firestore database.
///
/// This class extends the [CrudRepos] mixin to provide CRUD operations
/// for the 'best_way' collection.
class BestWayRemoteDataSources with CrudRepos {
  /// The Firestore collection name for this data source.
  @override
  String get collection => 'best_way';
}
