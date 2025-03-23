void merge(List<int> arr, int l, int m, int r) {
  int n1 = m - l + 1;
  int n2 = r - m;
  List<int> L = List<int>.filled(n1, 0);
  List<int> R = List<int>.filled(n2, 0);
  for (int i = 0; i < n1; ++i) {
    L[i] = arr[l + i];
  }
  for (int j = 0; j < n2; ++j) {
    R[j] = arr[m + 1 + j];
  }
  int i = 0, j = 0;
  int k = l;
  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}

void mergeSort(List<int> arr, int l, int r) {
  if (l < r) {
    int m = l + ((r - l) ~/ 2);
    mergeSort(arr, l, m);
    mergeSort(arr, m + 1, r);
    merge(arr, l, m, r);
  }
}

void printArray(List<int> arr) {
  int size = arr.length;
  for (int i = 0; i < size; i++) {
    print('${arr[i]} ');
  }
  print('');
}