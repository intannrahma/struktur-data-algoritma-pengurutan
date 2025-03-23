import 'dart:math';

void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);

    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = (low - 1);

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;

      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}

void main() {
  // Membuat list dengan 10 nomor acak antara 1 dan 100
  List<int> data = List<int>.generate(500000, (index) => Random().nextInt(100) + 1);
DateTime start = DateTime.now();
  print('Data sebelum pengurutan:');
  print(data);
  quickSort(data, 0, data.length - 1);
  print('\nData setelah pengurutan:');
  print(data);
  DateTime end = DateTime.now();
  print("waktu eksekusi: ${end.difference(start).inMilliseconds} ms");
}