CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);
CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT REFERENCES siswa(id),
    mata_pelajaran VARCHAR(50),
    nilai INT
);
INSERT INTO siswa (nama, umur, jurusan)
VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eka', 16, 'IPS');
INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, 'Matematika', 85),
(1, 'Bahasa Inggris', 90),
(2, 'Matematika', 78),
(2, 'Bahasa Inggris', 88),
(3, 'Matematika', 92),
(3, 'Bahasa Inggris', 87),
(4, 'Matematika', 80),
(4, 'Bahasa Inggris', 84),
(5, 'Matematika', 76),
(5, 'Bahasa Inggris', 82);
SELECT * FROM siswa;
SELECT nama, umur, jurusan
FROM siswa
WHERE jurusan = 'IPA';
SELECT siswa.nama, AVG(nilai.nilai) AS rata_rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama
ORDER BY siswa.nama;
UPDATE siswa
SET jurusan = 'IPS'
WHERE nama = 'Citra';
DELETE FROM nilai
WHERE siswa_id = 2 AND mata_pelajaran = 'Bahasa Inggris';
SELECT * FROM nilai;
