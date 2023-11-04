import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class Calendar extends StatefulWidget {
  const Calendar({super.key});
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  DateTime today=DateTime.now();

  void _onDaySelect(DateTime day, DateTime forcusDay){
    setState(() {
      today=day;
    });
  }


  @override
  build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
        child: Column(
          children: [
            TableCalendar(
              rowHeight: 32,
              locale: "vi_VN",
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: today,
              onDaySelected: _onDaySelect,
              selectedDayPredicate: (day)=>isSameDay(day, today),
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                  titleCentered: true
              ),
              availableCalendarFormats: {
                CalendarFormat.month: 'Month',
              },
            )
          ],
        ),
      ),
    );
  }
}