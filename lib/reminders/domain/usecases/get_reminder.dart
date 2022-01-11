
import 'package:app_clean/reminders/domain/entities/reminder.dart';
import 'package:app_clean/reminders/domain/repositories/reminder_repository.dart';



class GetReminder {
 

final ReminderRepository repository;

  GetReminder(this.repository);


  Future<Reminder> execute(int id) {

    return repository.getReminder(id);  
  }

}