// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'nav_cubit.dart';

abstract class NavState {
  const NavState();
}

class NavInitial extends NavState {}

class NavToScreen extends NavState {
  final Nav nav;
  NavToScreen({
    required this.nav,
  });
}
