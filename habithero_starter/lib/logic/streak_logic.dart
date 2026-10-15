import '../models/habit.dart';

// >>> Q1 START
/// Returns 'Champion' (30+ days), 'Consistent' (7-29 days) or 'Starter' (below 7).
String streakBadge(int days) {
  // TODO (Q1-a): write your logic here
  if (days >= 30){
    return 'Champion';
  }
  else if (days>=7 && days <= 29){
    return 'Consistent';
  }
  else{
    return 'Starter';
  }
  
}

/// Returns the sum of the streak of every habit (0 for an empty list).
int totalStreak(List<Habit> habits) {
  // TODO (Q1-b): use a loop
  int sum = 0;
  for (Habit habit in habits){
    sum = sum + habit.streak;
  }
  return habits.isEmpty ? 0 : sum ;
}
// <<< Q1 END
