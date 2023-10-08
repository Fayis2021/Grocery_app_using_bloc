import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data_model/data_model.dart';
part 'honwbloc_event.dart';
part 'honwbloc_state.dart';

class HonwblocBloc extends Bloc<HonwblocEvent, HonwblocState> {
  HonwblocBloc() : super(HomeblocInitialstate()) {
    on<Initialevent>(initialevent);
    on<Homewishlistbuttonclickedevent>(homewishlistbuttonclickedevent);
    on<Homecartbuttonclickedevent>(homecartbuttonclickedevent);
    on<Homewishlistnavigationevent>(homewishlistnavigationevent);
    on<Homecartnavigationevent>(homecartnavigationevent);
  }

  FutureOr<void> initialevent(Initialevent event, Emitter<HonwblocState> emit) {
    emit(Loadingstate());
    emit(Homewishlistnavigationactionstate());
  }

  FutureOr<void> homewishlistbuttonclickedevent(
      Homewishlistbuttonclickedevent event, Emitter<HonwblocState> emit) {
    print("wishlist button clicked");
  }

  FutureOr<void> homecartbuttonclickedevent(
      Homecartbuttonclickedevent event, Emitter<HonwblocState> emit) {
    print("cart button clicked");
  }

  FutureOr<void> homewishlistnavigationevent(
      Homewishlistnavigationevent event, Emitter<HonwblocState> emit) {
    print("wishlist nav");
    emit(Homewishlistnavigationactionstate());
  }

  FutureOr<void> homecartnavigationevent(
      Homecartnavigationevent event, Emitter<HonwblocState> emit) {
    print("cart nav");
    emit((Homecartnavigationactionstate()));
  }
}
