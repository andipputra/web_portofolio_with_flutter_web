import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'content_state.dart';

class ContentCubit extends Cubit<ContentState> {
  ContentCubit() : super(const ContentState());

  Future<void> changeType({required String selectedType}) async {
    print(selectedType);

    switch (selectedType) {
      case 'Home':
        emit(state.changeType(type: ContentType.home));
        break;
      case 'About':
        emit(state.changeType(type: ContentType.about));
        break;
      case 'Experience':
        emit(state.changeType(type: ContentType.experience));
        break;
      case 'Education':
        emit(state.changeType(type: ContentType.education));
        break;
      case 'Contact':
        emit(state.changeType(type: ContentType.contact));
        break;
      default:
        emit(state.changeType(type: ContentType.home));
    }
  }
}
