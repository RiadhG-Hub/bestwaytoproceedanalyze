library bestwaytoproceedanalyze;

import 'package:bestwaytoproceed/models/way_data.dart';
import 'package:bestwaytoproceedanalyze/features/best_way/data/remote/best_way_remote_data_source.dart';

import 'core/danger_class.dart';

class BestWayAnalyze {
  final BestWayRemoteDataSources bestWayRemoteDataSources = BestWayRemoteDataSources();
  final WayData wayData;

  BestWayAnalyze(this.wayData);

  Future<DangerClass> analyze({
    bool saveData = false,
  }) async {
    if (saveData) {
      await bestWayRemoteDataSources.add(data: wayData.toJson());
    }

    return wayData.safetyPercentage!.dangerClass;
  }
}
