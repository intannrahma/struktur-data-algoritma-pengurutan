class Mahasiswa implements Comparable<Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa(this.nrp, this.nama);

  @override
  String toString() {
    return 'Mahasiswa{nrp: $nrp, nama: $nama}';
  }

  @override
  int compareTo(Mahasiswa other) {
    return nrp.compareTo(other.nrp); // Membandingkan berdasarkan NRP
  }
}

class Latihan {
  static int partition<T extends Comparable<T>>(List<T> arr, int low, int high) {
    T pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
      if (arr[j].compareTo(pivot) < 0) {
        i++;
        T temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
    T temp = arr[i + 1];
    arr[i + 1] = arr[high];
    arr[high] = temp;
    return i + 1;
  }

  static void quicksort<T extends Comparable<T>>(List<T> arr, int low, int high) {
    if (low < high) {
      int pi = partition(arr, low, high);
      quicksort(arr, low, pi - 1);
      quicksort(arr, pi + 1, high);
    }
  }

  static void tampil<T>(List<T> data) {
    for (var item in data) {
      print(item);
    }
  }

  static void main() {
    List<Mahasiswa> arr = [
      Mahasiswa("02", "intan"),
      Mahasiswa("01", "rahma"),
      Mahasiswa("04", "fege"),
      Mahasiswa("03", "keyny"),
    ];

    DateTime startTime = DateTime.now();
    quicksort(arr, 0, arr.length - 1);
    tampil(arr);
    Duration elapsedTime = DateTime.now().difference(startTime);
    print("Waktu ${elapsedTime.inMilliseconds} milliseconds");
  }
}

void main() {
  Latihan.main();
}