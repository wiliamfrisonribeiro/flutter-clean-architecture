import 'package:app_clean/reminders/domain/repositories/reminder_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockReminderRepository extends Mock implements ReminderRepository {}

void main() {
  GetReminder usecase;
  ReminderRepository repository;

  setUp(() {
    repository = MockReminderRepository();
    usecase = GetReminder();
  });
}
