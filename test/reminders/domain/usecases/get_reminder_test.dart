import 'package:app_clean/reminders/domain/entities/reminder.dart';
import 'package:app_clean/reminders/domain/repositories/reminder_repository.dart';
import 'package:app_clean/reminders/domain/usecases/get_reminder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockReminderRepository extends Mock implements ReminderRepository {}

void main() {
  GetReminder? usecase;
  MockReminderRepository? repository;

  setUp(() {
    repository = MockReminderRepository();
    usecase = GetReminder(repository!);
  });
 final  tReminder = Reminder(id: 1, title:  'title', description: 'description');
  test('should return an entity reminder', () async {
    //arrage
  
  when(repository!.getReminder(1)).thenAnswer((_)  async => tReminder );
    //acts

    final result =  await usecase!.execute(1);
    //asserts

    expect(result, tReminder);
    verify(repository!.getReminder(1));
    verifyNoMoreInteractions(repository);
  });

}
