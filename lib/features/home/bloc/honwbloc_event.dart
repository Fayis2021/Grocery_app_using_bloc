part of 'honwbloc_bloc.dart';

@immutable
abstract class HonwblocEvent {}

class Initialevent extends HonwblocEvent {}

class Homewishlistbuttonclickedevent extends HonwblocEvent {}

class Homecartbuttonclickedevent extends HonwblocEvent {}

class Homewishlistnavigationevent extends HonwblocEvent {}

class Homecartnavigationevent extends HonwblocEvent {}
