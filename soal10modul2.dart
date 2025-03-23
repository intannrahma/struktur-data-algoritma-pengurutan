class Mahasiswa implements Comparable<Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa(this.nrp, this.nama);

  @override
  int compareTo(Mahasiswa other) {
    return this.nrp.compareTo(other.nrp);
  }

  @override
  String toString() {
    return 'NRP: $nrp, Nama: $nama';
  }
}

void main() {
  Mahasiswa m1 = Mahasiswa("02099", "intan");
  Mahasiswa m2 = Mahasiswa("36245", "rahma");

  // Membandingkan objek m1 dan m2 
  int hasilPerbandingan = m1.compareTo(m2);

  // Mencetak hasil perbandingan
  if (hasilPerbandingan < 0) {
    print("${m1.nama} lebih kecil dari ${m2.nama}");
  } else if (hasilPerbandingan > 0) {
    print("${m1.nama} lebih besar dari ${m2.nama}");
  } else {
    print("${m1.nama} sama dengan ${m2.nama}");
  }

  // Mencetak representasi string objek
  print(m1);
  print(m2);
}