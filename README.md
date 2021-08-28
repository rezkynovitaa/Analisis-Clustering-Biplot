# Analisis Clustering Biplot
Clustering merupakan langkah dalam mengelompokkan anggota dari setiap bagian yang mempunyai kesamaan. Sementara itu, analisis cluster meupakan teknik analisis data yang memiliki tujuan mengelompokkan objek ke dalam beberapa kelompok yang memiliki sifat sama dan antar kelompok lain sifatnya berbeda. kali ini, kita akan mengelompokkan 2 standar nasional pendidikan yaitu standar isi dan standar kompetensi lulusan berdasarkan akreditasi sekolah. Standar isi dan standar kompetensi lulusan memiliki karakteristik yang sama, dimana keduanya sama sama merupakan pedoman penilaian. Standar isi berkaitan dengan sistem pendidikannya yang nantinya akan berdampak dalam penentuan kelulusan peserta didik yang meliputi kompetensi untuk seluruh mata pelajaran, serta mencakup aspek sikap, pengetahuan dan keterampilan. Seperti yang diketahui pula, standar isi dan standar kompetensi lulusan sangat berpengaruh terhadap penentuan akreditasi. 2 standar nasional tersebut akan diclusterkan berdasarkan akreditasi sekolah yang terdiri dari akreditasi A, B, C dan Tidak Terakreditasi. Data yang digunakan adalah data sekolah di Sulawesi Selatan

# Tahap Analisis CLustering Biplot
adapun langkah-langkah dalam analisis cluster adalah :
1. Menetapkan ukuran jarak data
2. Melakukan standarisasi apabila satuan data tidak sama
3. Menentukan cluster data. Penentuan cluster yang digunakan adalah metode non-hierarki. Metode non-hierarki di mulai dengan menentukan terlebih dahulu jumlah cluster yang diinginkan. Setelah jumlah cluster diketahui, baru proses cluster dilakukan tanpa mengikuti proses hierarki. Metode ini juga disebut K-Means cluster. 
4. Melakukan penamaan cluster

# Melakukan Tahap Analisis CLuster
![image](https://user-images.githubusercontent.com/85878732/131205001-00fd64cf-0674-4d14-b85e-447c110add3e.png)

Dari hasil output K-Means diatas dengan menggunakan K=4 maka muncul “K-means clustering with 4 clusters of sizes 64, 39, 21, 24”. Artinya, terdapat 4 jenis pengelompokkan (cluster) berdasarkan Akreditasi SMK di Sulawesi Selatan dimana nilai clusternya terdiri dari 64, 39, 21, 24. Namun, belum diketahui cluster mana saja yang mendapatkan nilai 64, 39, 21, 24. Sehingga dilakukan uji lanjut untuk menentukan jumlah cluster Akreditas SMK di Sulawesi Selatan.
selain itu, kita dapat melihat melalui plot clustering Biplot yang dihasilkan. 
![image](https://user-images.githubusercontent.com/85878732/131205056-fa4e0f6c-0702-4640-a152-81bddb6cb514.png)

Berdasarkan plot di atas, dapat disimpukan bahwa terdapat 4 kelompok yang terbentuk dengan melihat titik pusat cluster, dimana setiap cluster memilki perbedaan pengelompokan dengan melihat titik warna yang ada pada plot.

# Melihat jumlah masing-masing CLuster 
![image](https://user-images.githubusercontent.com/85878732/131205087-1019e005-ae39-43dc-b453-de31753f1048.png)

Dari hasil output diatas, dapat diketahui bahwa SMK di Sulawesi Selatan yang mendapatkan akreditasi A sebanyak 24 sekolah, akreditasi B sebanyak 64 sekolah, akreditasi C sebanyak 39 sekolah, dan Tidak Terakreditasi (TT) sebanyak 21 sekolah.

# Melihat Hasil Clustering Biplot
![image](https://user-images.githubusercontent.com/85878732/131205103-8eb25223-59a6-41d1-b06e-373a2b1641d1.png)

Dari hasil output diatas, dapat disimpulkan bahwa plot diatas terbagi menjadi empat cluster yang dibedakan berdasarkan skor standar akreditasi SMK di Sulawesi Selatan. Dimana akreditas A memiliki skor 85-100 yang terdapat sebanyak 24 sekolah. Akreditas B memiliki skor 79-85 yang terdapat sebanyak 64 sekolah. Akreditas C memiliki skor 65-79 yang terdapat sebanyak 39 sekolah dan Tidak Terakreditasi (TT) memiliki skor <60 yang terdapat sebanyak 21 sekolah. Berdasarkan kedekatan antar objek, kedua peubah ini memiliki karakteristik yang berbeda dimana S1 mengukur standar akreditas dari segi Standar Isi, sedangkan S3 mengukur standar akreditas dari segi Standar Kempotensi Kelulusan. Hubungan antar peubah S1 dan S3 memiliki sudut dibawah 90 derajat sehingga memiliki korelasi positif.
Terlihat pada plot, sekolah yang memiliki akreditasi A Standar isi dan standar kompetensi lulusan yang baik, terlihat dari posisi objek yang dekat dengan vektor standar isi dan standar kompetensi lulusan. Berbanding terbalik dengan sekolah dengan akreditasi B, C dan tidak terakreditasi, posisi objek jauh dari vektor standar isi dan standar kompetensi lulusan. hal tersebut berarti untuk sekolah dengan akreditasi A dapat dikatakan sudah memiliki standar isi dan standar kompetensi lulusan yang baik, berbeda dengan akreditasi B, C dan tidak terakreditasi standar isi dan standar kompetensi lulusan yang belum memadai.

# Hasil Pembagian Sekolah Berdasarkan Akreditasi
# Akreditasi A
![image](https://user-images.githubusercontent.com/85878732/131205148-6d9c7b22-8cc7-4dca-90ed-5df1a0435995.png)

# Akreditasi B
![image](https://user-images.githubusercontent.com/85878732/131205157-e47a27f9-23fd-421b-b1e3-eb9d50bf4a99.png)

![image](https://user-images.githubusercontent.com/85878732/131205168-90e3b2ec-e66c-4ecf-b57f-4faae7adf79e.png)

# Akreditasi C
![image](https://user-images.githubusercontent.com/85878732/131205176-bc446d61-78da-48aa-9e80-457aa66f83b6.png)

# Tidak Terakreditasi
![image](https://user-images.githubusercontent.com/85878732/131205184-436a9dbf-577e-42d7-9e59-75c64ef60848.png)
