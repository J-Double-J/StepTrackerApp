class StepTracker {
  String _day;
  var _steps;
  Map<String, int>stepMap = {};

  StepTracker(day, steps) {
    _day = day;
    _steps = steps;

    stepMap[day] = steps;
  }
}