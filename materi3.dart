import 'Coba.dart';
void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  int n = arr.length;
  
  quickSort(arr, 0, n - 1);
  print('Hasil Pengurutan: ');
  printArray(arr);
}