import 'dart:io';
import 'dart:math';

void main() {
  List<int> data = generateRandomData(100);

  printMenu();
  int algorithmChoice = getUserChoice();

  printOrderMenu();
  int orderChoice = getUserChoice();

  DateTime startTime = DateTime.now();
  List<int> sortedData = sortData(data, algorithmChoice, orderChoice);
  Duration elapsedTime = DateTime.now().difference(startTime);

  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}

void printMenu() {
  print('ALGORITMA SORTING');
  print('1. Insertion');
  print('2. Selection');
  print('3. Bubble');
  print('4. Shell');
  print('5. Quick');
  print('6. Merge');
  print('Pilihan: ');
}

void printOrderMenu() {
  print('1. Ascending');
  print('2. Descending');
  print('Pilihan: ');
}

int getUserChoice() {
  return int.parse(stdin.readLineSync()!);
}

List<int> generateRandomData(int size) {
  Random random = Random();
  return List.generate(size, (_) => random.nextInt(1000));
}

List<int> sortData(List<int> data, int algorithmChoice, int orderChoice) {
  switch (algorithmChoice) {
    case 1:
      return insertionSort(data, orderChoice);
    case 2:
      return selectionSort(data, orderChoice);
    case 3:
      return bubbleSort(data, orderChoice);
    case 4:
      return shellSort(data, orderChoice);
    case 5:
      return quickSort(data, orderChoice);
    case 6:
      return mergeSort(data, orderChoice);
    default:
      return data;
  }
}

List<int> insertionSort(List<int> arr, int orderChoice) {
  // Implementasi Insertion Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}

List<int> selectionSort(List<int> arr, int orderChoice) {
  // Implementasi Selection Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}

List<int> bubbleSort(List<int> arr, int orderChoice) {
  // Implementasi Bubble Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}

List<int> shellSort(List<int> arr, int orderChoice) {
  // Implementasi Shell Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}

List<int> quickSort(List<int> arr, int orderChoice) {
  // Implementasi Quick Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}

List<int> mergeSort(List<int> arr, int orderChoice) {
  // Implementasi Merge Sort (ascending/descending)
  // ... (Tambahkan logika pengurutan di sini) ...
  return arr; // Tambahkan pernyataan return
}