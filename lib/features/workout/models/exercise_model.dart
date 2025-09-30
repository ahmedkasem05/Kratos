import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';

enum MuscleGroup {
  chest,
  back,
  legs,
  arms,
  shoulders,
}

enum ExerciseType {
  strength,
  cardio,
}

@freezed
class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    required String id,
    required String name,
    required MuscleGroup muscleGroup,
    required ExerciseType type,
    String? description,
    String? imageUrl,
    bool isFavorite = false,
  }) = _ExerciseModel;
}