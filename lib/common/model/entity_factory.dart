import 'package:flutter_app_redux/common/model/userinfo_model.dart';
import 'package:flutter_app_redux/common/utils/log_util.dart';

typedef T CreateEntity<T>(Map<String, dynamic> json);

class BaseEntity {
  int code;
  String message;

  void onParseComplete() => null;

  Map<String, dynamic> toJson() => null;
}

/// 实体工厂类
class EntityCreatorFactory {
  static final String sName = "EntityCreatorFactory";


  ///注册所有的实体类
  static void registerAllCreator() {
    _EntityFactory.instance.registerCreator(UserinfoModel, (Map<String, dynamic> json) => UserinfoModel.fromJson(json));
  }


  static T createEntity<T>(Map<dynamic, dynamic> json) {
    return _EntityFactory.instance
        .generateEntity<T>(mapDynamicDynamicToStringDynamic(json));
  }

  static List<T> createEntityList<T>(List<dynamic> jsonList) {
    return _EntityFactory.instance.generateList<T>(jsonList);
  }

  static Map<String, dynamic> mapDynamicDynamicToStringDynamic(
      Map<dynamic, dynamic> map) {
    List<dynamic> keyList = map.keys.toList();
    Map<String, dynamic> targetMap = {};
    for (dynamic key in keyList) {
      targetMap[key.toString()] = map[key];
    }
    return targetMap;
  }
}

class _EntityFactory {
  Map<Type, CreateEntity> typeMaps = new Map();

  static _EntityFactory _sInstance = _EntityFactory._internal();

  static _EntityFactory get instance => _sInstance;

  _EntityFactory._internal() {}

  registerCreator(Type type, CreateEntity creator) {
    typeMaps[type] = creator;
  }

  E generateEntity<E>(Map<String, dynamic> json) {
    CreateEntity creator = typeMaps[E];
    LogUtil.i(EntityCreatorFactory.sName, 'miss register:' + E.toString());
    E e = creator(json);
    (e as BaseEntity).onParseComplete();
    return e;
  }

  List<E> generateList<E>(List<dynamic> jsonList) {
    CreateEntity creator = typeMaps[E];
    if (creator == null) {
      LogUtil.i(EntityCreatorFactory.sName, 'miss register:' + E.toString());
    }
    ;
    return jsonList.map((dynamic json) {
      if (json != null) {
        E e = creator(json);
        (e as BaseEntity).onParseComplete();
        return e;
      }
      return null;
    }).toList();
  }

  Map<String, dynamic> generateJsonMap<E>(E e) {
    return (e as BaseEntity).toJson();
  }
}
