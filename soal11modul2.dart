class Mahasiswa {
  String nim;
  String nama;

  Mahasiswa(this.nim, this.nama);

  @override
  String toString() {
    return 'NIM: $nim, Nama: $nama';
  }
}

void bubbleSortFlag(List<Mahasiswa> arr) {
  int i = 0, j;
  bool didSwap = true;
  Mahasiswa temp;

  while (i < arr.length - 1 && didSwap) {
    didSwap = false;
    for (j = 0; j < arr.length - i - 1; j++) {
      if (arr[j].nim.compareTo(arr[j + 1].nim) > 0) {
        temp = arr[j + 1];
        arr[j + 1] = arr[j];
        arr[j] = temp;
        didSwap = true;
      }
    }
    i++;
  }
}

void display(List<Mahasiswa> data) {
  for (Mahasiswa objek in data) {
    print('$objek');
  }
  print('');
}

void main() {
  List<Mahasiswa> arr8 = [
    Mahasiswa("02", "Budi"),
    Mahasiswa("01", "Andi"),
    Mahasiswa("04", "Udin"),
    Mahasiswa("03", "Candra"),
  ];

  print('Data Sebelum Pengurutan:');
  display(arr8);

  DateTime start = DateTime.now();
  bubbleSortFlag(arr8);
  Duration elapsedTime = DateTime.now().difference(start);

  print('Data Setelah Pengurutan:');
  display(arr8);

  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}