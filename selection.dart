import 'dart:math';

void selectionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    // Tukar elemen minimum dengan elemen pertama dari bagian yang belum diurutkan
    int temp = arr[minIndex];
    arr[minIndex] = arr[i];
    arr[i] = temp;
  }
}

void main() {
  // Membuat list dengan 10 nomor acak antara 1 dan 100
  List<int> data = List<int>.generate(500000, (index) => Random().nextInt(100) + 1);
  DateTime start = DateTime.now();
  print('Data sebelum pengurutan:');
  print(data);
  selectionSort(data);
  print('\nData setelah pengurutan:');
  print(data);
  DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}