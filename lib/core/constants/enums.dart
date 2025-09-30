// Exercise types and muscle groups
enum MuscleGroup {
  chest,
  back,
  legs,
  shoulders,
  arms,
  core,
}

enum ExerciseType {
  compound,
  isolation,
  cardio,
  flexibility,
}

enum WorkoutIntensity {
  light,
  moderate,
  heavy,
  max,
}

enum WorkoutStatus {
  planned,
  inProgress,
  completed,
  skipped,
}

extension MuscleGroupExtension on MuscleGroup {
  String get displayName {
    switch (this) {
      case MuscleGroup.chest:
        return 'Chest';
      case MuscleGroup.back:
        return 'Back';
      case MuscleGroup.legs:
        return 'Legs';
      case MuscleGroup.shoulders:
        return 'Shoulders';
      case MuscleGroup.arms:
        return 'Arms';
      case MuscleGroup.core:
        return 'Core';
    }
  }
}

extension ExerciseTypeExtension on ExerciseType {
  String get displayName {
    switch (this) {
      case ExerciseType.compound:
        return 'Compound';
      case ExerciseType.isolation:
        return 'Isolation';
      case ExerciseType.cardio:
        return 'Cardio';
      case ExerciseType.flexibility:
        return 'Flexibility';
    }
  }
}

extension WorkoutIntensityExtension on WorkoutIntensity {
  String get displayName {
    switch (this) {
      case WorkoutIntensity.light:
        return 'Light';
      case WorkoutIntensity.moderate:
        return 'Moderate';
      case WorkoutIntensity.heavy:
        return 'Heavy';
      case WorkoutIntensity.max:
        return 'Max';
    }
  }
}