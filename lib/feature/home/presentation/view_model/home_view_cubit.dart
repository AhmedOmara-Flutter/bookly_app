import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:meta/meta.dart';
import '../../data/repo/home_repo.dart';
part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit(this._homeRepo) : super(HomeViewInitial());

  final HomeRepo _homeRepo;

  Future<void> getTopRatedBooks() async {
    emit(HomeViewLoading());
    var result = await _homeRepo.fetchTopRatedBooks();
    result.fold((failure) {
        print(failure);
        emit(HomeViewError(message: failure.message));
      }, (data) {
        emit(HomeViewSuccess(books: data));
      });
  }
}
