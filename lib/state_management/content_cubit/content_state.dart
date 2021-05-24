part of 'content_cubit.dart';

enum ContentType { about, experience, education, contact }

class ContentState extends Equatable {
  const ContentState({this.type = ContentType.about});

  final ContentType type;

  ContentState changeType({ContentType? type}) {
    return ContentState(type: type ?? this.type);
  }

  @override
  List<Object> get props => [type];
}
