@echo off
:begin
echo ====================================================
echo          RDP BY HENCODERS BERHASIL DIBUAT!
echo ====================================================
tasklist | find /i "ngrok.exe" >nul && goto check || (
    echo Gagal mendapatkan tunnel NGROK.
    echo Pastikan NGROK_AUTH_TOKEN sudah benar di Settings > Secrets > Repository Secret.
    echo Mungkin VM sebelumnya masih berjalan:
    echo https://dashboard.ngrok.com/status/tunnels
    ping 127.0.0.1 >nul
    exit
)
:check
ping 127.0.0.1 >nul
cls
echo ====================================================
echo           RDP BERHASIL DIBUAT!
echo  Silakan periksa NGROK untuk informasi tunnel.
echo ====================================================
goto check
