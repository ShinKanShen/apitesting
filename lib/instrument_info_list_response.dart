
import 'instrument_info.dart';

class InstrumentInfoListResponse {
  late List<InstrumentInfo> instrumentInfoList;

  InstrumentInfoListResponse();

  InstrumentInfoListResponse.fromJson(List? jsonArray) {
    if (jsonArray == null) return;

    instrumentInfoList = <InstrumentInfo>[];
    for (var json in jsonArray) {
      InstrumentInfo indexData = InstrumentInfo.fromJson(json);
      instrumentInfoList.add(indexData);
    }

    print(instrumentInfoList.toString());
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
