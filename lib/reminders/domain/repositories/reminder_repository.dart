import 'package:app_clean/reminders/domain/entities/reminder.dart';




abstract class ReminderRepository {
  Future<Reminder> getReminder(int id);
}
