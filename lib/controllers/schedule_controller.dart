import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/schedule_model.dart';

class ScheduleController {
  DateTime today = DateTime.now();
  DateTime focusedDay = DateTime.now();

  // Method untuk memperbarui tanggal yang dipilih
  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    today = selectedDay;
    this.focusedDay = focusedDay;
  }

  // Mengembalikan formatted date
  String getFormattedDate() {
    return DateFormat('yyyy-MM-dd').format(today);
  }

  // Menyediakan data model untuk ditampilkan di View
  List<ScheduleModel> getScheduleData(String formattedDate) {
    return [
      ScheduleModel(
        selectedDate: today,
        hotelName: "The Aston Vill Hotel",
        hotelImage: 'assets/hotelaston.png',
        pricePerNight: 165.3,
      ),
      // Tambahkan data hotel lainnya jika diperlukan
    ];
  }
}
