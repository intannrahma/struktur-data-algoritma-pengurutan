import 'dart:math';

void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  // Membuat list dengan 10 nomor acak antara 1 dan 100
  List<int> data = List<int>.generate(500000, (index) => Random().nextInt(100) + 1);
 DateTime start = DateTime.now();
  print('Data sebelum pengurutan:');
  print(data);
  insertionSort(data);
  print('\nData setelah pengurutan:');
  print(data);
   DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}