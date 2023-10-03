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
      appBar: AppBar(
        backgroundColor: Color(0xFFe67e22),
        title: Text("Lịch quản lý"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TableCalendar(
              rowHeight: 43,
              locale: "en_US",
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: today,
              onDaySelected: _onDaySelect,
              selectedDayPredicate: (day)=>isSameDay(day, today),
            )
          ],
        ),
      ),
    );
  }
}