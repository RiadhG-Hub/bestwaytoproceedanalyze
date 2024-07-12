library bestwaytoproceedanalyze;

import 'package:bestwaytoproceed/models/way_data.dart';
import 'package:bestwaytoproceedanalyze/features/best_way/data/remote/best_way_remote_data_source.dart';

import 'core/danger_class.dart';

/// A class that provides functionality to analyze the safety of a given way.
class BestWayAnalyze {
  /// The remote data source for accessing and storing way data.
  final BestWayRemoteDataSources bestWayRemoteDataSources =
      BestWayRemoteDataSources();

  /// The data of the way to be analyzed.
  final WayData wayData;

  /// Constructs an instance of [BestWayAnalyze] with the provided [wayData].
  BestWayAnalyze(this.wayData);

  /// Analyzes the safety of the way.
  ///
  /// If [saveData] is true, the way data is saved to the remote data source.
  /// Returns the [DangerClass] representing the safety level of the way.
  Future<DangerClass> analyze({bool saveData = false}) async {
    if (saveData) {
      await bestWayRemoteDataSources.add(data: wayData.toJson());
    }

    return wayData.safetyPercentage!.dangerClass;
  }
}
