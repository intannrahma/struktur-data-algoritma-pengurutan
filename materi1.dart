import 'coba.dart';
import 'dart:io';

void main() {
  List<int> arr = [5,7,10,3,2,1]; // Pastikan fungsi ini mengembalikan List<int>

  stdout.write('Unsorted List : ');
  printArray(arr);

  DateTime start = DateTime.now();
  int n = arr.length;
  quickSort(arr, 0, n - 1);
  stdout.write('Hasil Pengurutan: ');
  printArray(arr);
  DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms}");
}