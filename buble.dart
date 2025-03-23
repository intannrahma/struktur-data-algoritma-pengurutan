import 'dart:math';

void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Tukar elemen jika elemen ditemukan dalam urutan yang salah
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void main() {
  // Membuat list dengan 10 nomor acak antara 1 dan 100
  List<int> data = List<int>.generate(500000, (index) => Random().nextInt(100) + 1);
DateTime start = DateTime.now();
  print('Data sebelum pengurutan:');
  print(data);
  bubbleSort(data);
  print('\nData setelah pengurutan:');
  print(data);
  DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}