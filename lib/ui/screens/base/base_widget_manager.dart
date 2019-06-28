import 'bloc_base.dart';

abstract class BaseWidgetManager<T extends BlocBase> {
  T bloc;

  void init(T bloc) {
    this.bloc = bloc;
  }

  void dispose() {}
}
