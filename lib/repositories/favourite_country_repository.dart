import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_list_app/bloc/cubit/country_favourite_cubit.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/models/firestore_result.dart';
import 'package:country_list_app/services/exception_service.dart';

class FavouriteCountryRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference collectionRef;
  ExceptionService exceptionService;

  static final FavouriteCountryRepository _singleton =
      FavouriteCountryRepository._internal();

  factory FavouriteCountryRepository() {
    return _singleton;
  }

  FavouriteCountryRepository._internal() {
    firestore.settings = const Settings(persistenceEnabled: true);
    exceptionService = ExceptionService();
    collectionRef = firestore.collection('favorite_countries');
  }

  Future<FireStoreResult<List<Country>>> fetchFavouriteCountryList() async {
    try {
      final List<Country> countryList = [];
      await collectionRef.get().then(
            (QuerySnapshot querySnapshot) => querySnapshot.docs.forEach((doc) {
              final data = doc.data();
              final country = Country.fromDocument(data);
              countryList.add(country);
            }),
          );
      return FireStoreResult.success(data: countryList);
    } on FirebaseException catch (e) {
      return FireStoreResult.failure(error: e.message);
    }
  }

  Future<void> addCountry(Country country, MarkFavouriteCubit cubit) async {
    try {
      final doc = collectionRef.doc(country.code);
      doc.set(country.toJson());
      cubit.emitTrue();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeCountry(Country country, MarkFavouriteCubit cubit) async {
    try {
      final doc = collectionRef.doc(country.code);
      doc.delete();
      cubit.emitfalse();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkIsFavourite(String docId) async {
    final doc = collectionRef.doc(docId);
    final isPresent = await doc.get();
    return isPresent.exists;
  }
}
