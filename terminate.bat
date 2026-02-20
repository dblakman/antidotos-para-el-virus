@echo off
title [TERMINAL KERNEL] - SECURE BOOT BYPASS
color 0A

:: --- FASE 1: PURGA DE PROCESOS ---
echo [!] INICIANDO PURGA DE SUBPROCESOS HUERFANOS...


:: --- FASE 2: ESCANEO DMA (15 SEGUNDOS), PAYLOAD Y AUTO-DESTRUCCIÓN ---
powershell -NoProfile -ExecutionPolicy Bypass -Command "& { $Host.UI.RawUI.BufferSize = New-Object Management.Automation.Host.Size (120, 3000); Write-Host '[!] INICIALIZANDO BYPASS DE ACCESO DIRECTO A MEMORIA (DMA)...' -ForegroundColor Red; Start-Sleep -Milliseconds 600; for($i=0; $i -lt 1000; $i++) { $ptr = '{0:X12}' -f (Get-Random -Min 281474976710656 -Max 2814749767106560); $dump = (-join ((1..8) | %% { '{0:X2} ' -f (Get-Random -Max 255) })); Write-Host ('[TID:' + '{0:D4}' -f (Get-Random -Max 9999) + '] 0x' + $ptr + ' | ' + $dump) -ForegroundColor DarkGreen; Start-Sleep -Milliseconds (Get-Random -Min 10 -Max 20) }; Clear-Host; Write-Host 'AUTH_USER: EMILIO // KERNEL OVERRIDE ACCEPTED' -ForegroundColor Cyan; Write-Host '  ____    _    _____ ___  _   _ ' -ForegroundColor Red; Write-Host ' / ___|  / \  |  ___/ _ \| \ | |' -ForegroundColor Red; Write-Host ' \___ \ / _ \ | |_ | | | |  \| |' -ForegroundColor Red; Write-Host '  ___) / ___ \|  _|| |_| | |\  |' -ForegroundColor Red; Write-Host ' |____/_/   \_\_|   \___/|_| \_|' -ForegroundColor Red; Write-Host ''; Write-Host '       ._________________. ' -ForegroundColor Yellow; Write-Host '       |.---------------.| ' -ForegroundColor Yellow; Write-Host '       ||   SYS_ROOT    || ' -ForegroundColor Yellow; Write-Host '       ||   INJECTED    || ' -ForegroundColor Yellow; Write-Host '       |''---------------''| ' -ForegroundColor Yellow; Write-Host '       /=================\ ' -ForegroundColor DarkGray; Write-Host '      /                   \ ' -ForegroundColor DarkGray; Write-Host '     /_____________________\ ' -ForegroundColor DarkGray; Write-Host '     [_____________________]' -ForegroundColor DarkGray; Write-Host '`n[SYS_HALT] Sincronizacion de ciclos completada. Evaporando terminal en 4 segundos...' -ForegroundColor DarkGray; Start-Sleep -Seconds 4; }"
echo [!] INICIANDO PURGA DE SUBPROCESOS HUERFANOS...
taskkill /F /IM powershell.exe /T > nul 2>&1
echo.
echo Proceso de tortuga detenido.
echo [OK] Vectores de ejecucion despejados. Iniciando inyeccion...
timeout /t 2 > nul
echo [!] INICIANDO PURGA DE SUBPROCESOS HUERFANOS...
taskkill /F /IM powershell.exe /T > nul 2>&1
echo.
echo Proceso de tortuga detenido.
echo [OK] Vectores de ejecucion despejados. Iniciando inyeccion...
timeout /t 2 > nul
start-sleep -seconds 2

:: --- FASE 3: CIERRE LIMPIO ---
exit