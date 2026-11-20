# PASO 2 - VERDE: copia el código (lib) y vuelve a correr las pruebas (deben PASAR)
$origen = $PSScriptRoot
Set-Location (Join-Path (Split-Path $origen -Parent) 'tienda_talavera_app')
Copy-Item "$origen\lib\*" lib\ -Recurse -Force
Write-Host "`n===== VERDE: ya existe el codigo, las pruebas pasan =====`n" -ForegroundColor Green
flutter test test\dominio_test.dart --reporter expanded
flutter test
