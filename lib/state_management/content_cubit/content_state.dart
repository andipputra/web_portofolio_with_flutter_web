part of 'content_cubit.dart';

enum ContentType { home, about, experience, education, contact }

class ContentState extends Equatable {
  const ContentState({this.type = ContentType.home});

  final ContentType type;

  ContentState changeType({ContentType? type}) {
    return ContentState(type: type ?? this.type);
  }

  @override
  List<Object> get props => [type];
}
