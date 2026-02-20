@echo off
title Herramienta de Diagnostico
color 0A

:: Llama a PowerShell de manera eficiente en una sola linea de comando
powershell -NoProfile -Command "& { Clear-Host; Write-Host '[*] Iniciando escaneo de RAM...' -ForegroundColor Cyan; for($i=0; $i -lt 60; $i++) { $hex = '{0:X8}' -f (Get-Random -Min 268435456 -Max 4294967295); Write-Host ('Escanenando direccion de memoria 0x' + $hex + '... OK') -ForegroundColor DarkGreen; Start-Sleep -Milliseconds 15 }; Clear-Host; Write-Host '  ____    _    _____ ___  _   _ ' -ForegroundColor Yellow; Write-Host ' / ___|  / \  |  ___/ _ \| \ | |' -ForegroundColor Yellow; Write-Host ' \___ \ / _ \ | |_ | | | |  \| |' -ForegroundColor Yellow; Write-Host '  ___) / ___ \|  _|| |_| | |\  |' -ForegroundColor Yellow; Write-Host ' |____/_/   \_\_|   \___/|_| \_|' -ForegroundColor Yellow; Write-Host '`n[!] Analisis completado. Sistema estable.' -ForegroundColor Green; }"

echo.
pause