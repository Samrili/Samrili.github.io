@echo off
chcp 65001 >nul
echo ============================================================================
echo   SAMRILI.GITHUB.IO - KISISEL PORTFOLYO YAYINLAMA ARACI (GITHUB PAGES)
echo ============================================================================
echo.

cd /d "%~dp0"

if not exist "cv" mkdir "cv"
copy /Y "..\Muhammed_Yusuf_Bayazitoglu_CV_EN.pdf" "cv\" >nul
copy /Y "..\Muhammed_Yusuf_Bayazitoglu_CV_TR.pdf" "cv\" >nul
copy /Y "..\Muhammed_Yusuf_Bayazitoglu_CV_PL.pdf" "cv\" >nul
echo [OK] Guncel Ingilizce, Turkce ve Lehce PDF CV'ler site klasorune kopyalandi.

if not exist ".git" (
    git init
    git branch -M main
    git remote add origin https://github.com/Samrili/Samrili.github.io.git
)

git add .
git commit -m "feat: deploy personal engineering portfolio and multilingual CVs"

echo.
echo GitHub'a yukleniyor (https://github.com/Samrili/Samrili.github.io.git)...
echo Eger henuz GitHub uzerinde 'Samrili.github.io' adinda Public bir repo acmadiysaniz:
echo   1. Tarayicida https://github.com/new adresine gidin.
echo   2. Repository name kismina tam olarak: Samrili.github.io yazin (Public secin).
echo   3. Create repository butonuna basip bu dosyayi tekrar calistirin.
echo.

git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================================
    echo [BASARILI!] Siteniz yayinlandi!
    echo 1-2 dakika icinde https://samrili.github.io adresinden erisebilirsiniz.
    echo ============================================================================
) else (
    echo.
    echo [BILGI] Henuz GitHub'da 'Samrili.github.io' reposunu olusturmadiysaniz
    echo simdi tarayicida repo olusturma sayfasi aciliyor...
    start https://github.com/new
)
pause

