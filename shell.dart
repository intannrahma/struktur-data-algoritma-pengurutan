import 'dart:math';

void shellSort(List<int> arr) {
  int n = arr.length;
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i++) {
      int temp = arr[i];
      int j;
      for (j = i; j >= gap && arr[j - gap] > temp; j -= gap) {
        arr[j] = arr[j - gap];
      }
      arr[j] = temp;
    }
  }
}

void main() {
  // Membuat list dengan 10 nomor acak antara 1 dan 100
  List<int> data = List<int>.generate(500000, (index) => Random().nextInt(100) + 1);
  DateTime start = DateTime.now();
  print('Data sebelum pengurutan:');
  print(data);
  shellSort(data);
  print('\nData setelah pengurutan:');
  print(data);
  DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}