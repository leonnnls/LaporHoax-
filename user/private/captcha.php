<?php
session_start();
// file untuk generate captcha
//menghasilkan bilangan acak 5 digit
$bilangan = rand(10000, 99999);

// mendaftarkan variabel di dalam sesion
$_SESSION["bilangan"] = $bilangan;

// membuat gambar captcha
$gambar = imagecreatetruecolor(65,30);
$background = imagecolorallocate ($gambar, 255, 255, 255); // warna background (putih)
$foreground = imagecolorallocate ($gambar, 0, 0, 0); // warna teks (hitam)
imagefill($gambar, 0, 0, $background);
imagestring($gambar, 10, 10, 6, $bilangan, $foreground); // menampilkan teks captcha

// menentukan header
header("cache-control: no-cache, must-revalidate");
header("content-type: image/png");
imagepng($gambar);
imagedestroy($gambar);
?>
