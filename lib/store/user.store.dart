import 'package:mobx/mobx.dart';
import 'package:malibu/models/user.model.dart';
part 'user.store.g.dart';

class UserMob = _UserMobBase with _$UserMob;

abstract class _UserMobBase with Store {
  @observable
  User user;

  @action
  void setUser(User user) => this.user = user;
}
