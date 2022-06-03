import 'package:bloc/bloc.dart';

part 'nav_state.dart';

class NavCubit extends Cubit<NavState> {
  NavCubit() : super(NavInitial());

  void navToAdmin() {
    emit(NavToScreen(nav: Nav.admin));
  }

  void navToUserLogin() {
    emit(NavToScreen(nav: Nav.userLogin));
  }

  void navToSignUp() {
    emit(NavToScreen(nav: Nav.signUp));
  }
}

enum Nav {
  admin,
  userLogin,
  signUp,
}
