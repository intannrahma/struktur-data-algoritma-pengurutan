void main() {
  List<double> data = List<double>.generate(10, (index) => (index + 1).toDouble());
  print("Data sebelum sorting:");
  printData(data);
  
  DateTime startTime = DateTime.now();
  quickSort(data, 0, data.length - 1);
  Duration elapsedTime = DateTime.now().difference(startTime);
  
  print("Data setelah sorting:");
  printData(data);
  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}

void quickSort(List<double> arr, int p, int r) {
  if (p < r) {
    int q = partition(arr, p, r);
    quickSort(arr, p, q - 1);
    quickSort(arr, q + 1, r);
  }
}

int partition(List<double> arr, int p, int r) {
  double pivot = arr[r];
  int i = p - 1;
  for (int j = p; j < r; j++) {
    if (arr[j] <= pivot) {
      i++;
      double temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  double temp = arr[i + 1];
  arr[i + 1] = arr[r];
  arr[r] = temp;
  return i + 1;
}

void printData(List<double> data) {
  print(data.join(' '));
}