import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:country_list_app/bloc/firebase/firebase_state.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit() : super(const FirebaseInitial());

  Future<void> initialize() async {
    emit(const FirebaseLoading());
    Firebase.initializeApp()
        .then((value) => emit(const FirebaseLoaded()))
        .catchError(
          (_) => emit(const FirebaseError()),
        );
  }
}
