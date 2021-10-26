abstract class BaseModel {
  Map<String, dynamic> toJson();
}

class EmptyModel extends BaseModel {
  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{};
  }
}
