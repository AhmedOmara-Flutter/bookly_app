import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit() : super(HomeViewInitial());

  final HomeRepoImpl _homeRepoImpl = HomeRepoImpl(ApiServices(Dio()));

  Future<void> getTopRatedBooks() async {
    emit(HomeViewLoading());
    return await _homeRepoImpl.fetchTopRatedBooks().then((value) {
      value.fold((failure) {
        print(failure);
        emit(HomeViewError(message: failure.message));
      }, (data) {
        print(data);
        emit(HomeViewSuccess(books: data));
        return data;
      });
    });
  }
}
