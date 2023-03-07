REM Cmd de limpeza e reparo do sistema
REM Versão 1.0 by Brayam_Barros - Suporte em TI
@echo off
cls
:menu
cls
COLOR A

REM Menu
echo              CMD SUPORTE TI 3.0
echo       ***Execute como Administrador***
echo ============================================
echo * 1) Limpar arquivos temporarios           *   ######  ##     ## ######## 
echo * 2) Limpar Logs de sistema                *  ##    ## ###   ### ##     ## 
echo * 3) Verificar arquivos de sistema         *  ##       #### #### ##     ## 
echo * 4) Corrigir Imagem ISO                   *  ##       ## ### ## ##     ## 
echo * 5) Corrigir erros de DISCO (HDD)         *  ##    ## ##     ## ##     ## 
echo * 6) Suporte dos comandos        (7)PG 1/2 *   ######  ##     ## ########  
echo ============================================           SUPORTE TI

REM Opções
set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% LEQ 0 goto menu
if %opcao% equ 1 goto opcao01
if %opcao% equ 2 goto opcao02
if %opcao% equ 3 goto opcao03
if %opcao% equ 4 goto opcao04
if %opcao% equ 5 goto opcao05
if %opcao% equ 6 goto ajudaCMD
if %opcao% equ 7 goto menu2
if %opcao% GEQ 8 goto menu
echo ------------------------------

@echo off
cls
:menu2
cls
COLOR A

REM Menu2
echo              CMD SUPORTE TI 3.0
echo       ***Execute como Administrador***
echo ============================================
echo * 1) Detalhes do sistema                   *   ######  ##     ## ######## 
echo * 2) Limpar rastro de arquivos apagados HDD*  ##    ## ###   ### ##     ## 
echo * 3) Informacoes de REDE TCI/IP            *  ##       #### #### ##     ## 
echo * 4) Verificar configuracao do servidor DNS*  ##       ## ### ## ##     ## 
echo * 5) AntiVirus MRT                         *  ##    ## ##     ## ##     ## 
echo * 6) Desligamento Automatico     (7)PG 2/2 *   ######  ##     ## ########  
echo ============================================           SUPORTE TI

REM ============================================================================

REM Opções
set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% LEQ 0 goto menu2
if %opcao% equ 1 goto opcao08
if %opcao% equ 2 goto rastroHDD
if %opcao% equ 3 goto opcao10
if %opcao% equ 4 goto opcao11
if %opcao% equ 5 goto opcao12
if %opcao% equ 6 goto menu3
if %opcao% equ 7 goto menu
if %opcao% GEQ 8 goto menu2
echo ------------------------------

REM ******************** WINDOWS 7,8,10 e 11 ********************

REM Limpador de arquivos temporario
@echo off
:opcao01
@echo off
CLS

REM Apaga todas as pastas temporárias e arquivos temporários do usuário

REM Apaga os arquivos Temp
takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\
icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\
md C:\Users\%USERNAME%\AppData\Local\Temp\

REM Apaga os arquivos %Temp%
takeown /A /R /D Y /F C:\windows\temp\
icacls C:\windows\temp\ /grant administradores:F /T /C
rmdir /q /s c:\windows\temp\
md c:\windows\temp\

REM Apaga os arquivos Prefetch
takeown /A /R /D Y /F C:\Windows\Prefetch\
icacls C:\Windows\Prefetch\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\Prefetch\
md C:\Windows\Prefetch\

REM Apaga os arquivos Recent
takeown /A /R /D Y /F C:\Users\%USERNAME%\Recent\
icacls C:\Users\%USERNAME%\Recent\ /grant administradores:F /T /C
rmdir /q /s C:\Users\%USERNAME%\Recent\
md C:\Users\%USERNAME%\Recent\

REM Apaga arquivos log
del c:\windows\logs\cbs\*.log
del C:\Windows\Logs\MoSetup\*.log
del C:\Windows\Panther\*.log /s /q
del C:\Windows\inf\*.log /s /q
del C:\Windows\logs\*.log /s /q
del C:\Windows\SoftwareDistribution\*.log /s /q
del C:\Windows\Microsoft.NET\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\

REM Arquivos temporarios do navegador EDGE
taskkill /F /IM "msedge.exe"
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\

REM Arquivos temporarios do navegador FIREFOX
taskkill /F /IM "firefox.exe"
REM define qual é a pasta Profile do usuário e apaga os arquivos temporários de lá
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q

REM Arquivos temporarios do navegador VIVALDI
taskkill /F /IM "vivaldi.exe"
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\

REM Arquivos temporarios do navegador BRAVE
taskkill /F /IM "brave.exe"
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\

REM Arquivos temporarios do navegador CHROME
taskkill /F /IM "chrome.exe"
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\

goto menu

REM Limpa todos os logs do sistema
@echo off
:opcao02
@echo off
CLS
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Os registros de eventos foram apagados! ^<Pressione qualquer tecla^>
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof
:noAdmin
echo Você deve executar este script como administrador!
echo ^<Pressione qualquer tecla^>
:theEnd

goto menu

REM faz uma verificação no sistema em busca de arquivos corrompidos e os corrige
@echo off
:opcao03
sfc /scannow

goto menu

REM Examina a imagem/ISO do sistema e corrige usando uma imagem/ISO online
@echo off
:opcao04
@echo off
CLS
dism /Online /Cleanup-Image /ScanHealth
dism /online /cleanup-image /restorehealth

goto menu

REM checa o disco rigido e repara os blocos danificados
@echo off
:opcao05
@echo off
CLS
chkdsk /r

goto menu

REM ============================================================================

REM Pequeno menu de suporte
@echo off
:ajudaCMD
@echo off
CLS
echo ===========================================================================
echo * Comando (1) Limpa todos os arquivos tempotarios do sistema e navegadores*
echo * Comando (2) Limpa todos os logs de administrador do sistema             *
echo * Comando (3) Verifica e corrige todos os arquivos corrompidos do sistema *
echo * Comando (4) Corrige a ISO do Sistema Windows usando uma IMAGEM ONLINE   *
echo * Comando (5) Corrige blocos defeituosos do disco rigido                  *
echo * Comando (8) Mostra especificacoes do sistema de forma detalhada         *
echo * Comando (9) Apaga todos os rastros de qualquer arquivo excluido do HDD  *
echo * Comando (10)Informacoes dinamicas de REDE/INTERNET PORTAS/TCI/IP        *
echo * Comando (11)Descobrir um IP associado a um dominio DNS                  *
echo * Comando (12)AntiVirus MRT, sistema de verificacao de virus gratuito     *
echo * Comando (13)Agende o desligamento de seu sistema ou o cancele           *
echo * Mais atualizacoes em breve.                               Brayam_Barros *
echo ===========================================================================

set /p opcao= Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Mostra de forma detalhada as informações de seu computador
@echo off
:opcao08
@echo off
CLS
systeminfo
set /p opcao= Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM ============================================================================

@echo off
cls
:rastroHDD
cls
COLOR A
REM Limpa todos os rastro de qualquer arquivo já excluido do disco rigido/HDD
echo Atencao: Processo demorado, nao feche o cmd ou desligue o computador enquanto o procedimento estiver em execucao

set /p opcao= Selecione uma unidade de disco(LETRA), EX: discoC :
REM ============================================================================

REM Opções rastroHDD
echo ------------------------------
if %opcao% equ discoA goto :discoA
if %opcao% equ discoB goto :discoB
if %opcao% equ discoC goto :discoC
if %opcao% equ discoD goto :discoD
if %opcao% equ discoE goto :discoE
if %opcao% equ discoF goto :discoF
if %opcao% equ discoG goto :discoG
if %opcao% equ discoH goto :discoH
if %opcao% equ discoI goto :discoI
if %opcao% equ discoJ goto :discoJ
if %opcao% equ discoK goto :discoK
if %opcao% equ discoL goto :discoL
if %opcao% equ discoM goto :discoM
if %opcao% equ discoN goto :discoN
if %opcao% equ discoO goto :discoO
if %opcao% equ discoP goto :discoP
if %opcao% equ discoQ goto :discoQ
if %opcao% equ discoR goto :discoR
if %opcao% equ discoS goto :discoS
if %opcao% equ discoT goto :discoT
if %opcao% equ discoU goto :discoU
if %opcao% equ discoV goto :discoV
if %opcao% equ discoW goto :discoW
if %opcao% equ discoX goto :discoX
if %opcao% equ discoY goto :discoY
if %opcao% equ discoZ goto :discoZ
if %opcao% equ discoa goto :discoA
if %opcao% equ discob goto :discoB
if %opcao% equ discoc goto :discoC
if %opcao% equ discod goto :discoD
if %opcao% equ discoe goto :discoE
if %opcao% equ discof goto :discoF
if %opcao% equ discog goto :discoG
if %opcao% equ discoh goto :discoH
if %opcao% equ discoi goto :discoI
if %opcao% equ discoj goto :discoJ
if %opcao% equ discok goto :discoK
if %opcao% equ discol goto :discoL
if %opcao% equ discom goto :discoM
if %opcao% equ discon goto :discoN
if %opcao% equ discoo goto :discoO
if %opcao% equ discop goto :discoP
if %opcao% equ discoq goto :discoQ
if %opcao% equ discor goto :discoR
if %opcao% equ discos goto :discoS
if %opcao% equ discot goto :discoT
if %opcao% equ discou goto :discoU
if %opcao% equ discov goto :discoV
if %opcao% equ discow goto :discoW
if %opcao% equ discox goto :discoX
if %opcao% equ discoy goto :discoY
if %opcao% equ discoz goto :discoZ
echo ------------------------------

REM ============================================================================

REM Limpando rastro do HDD A
@echo off
:discoA
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:A
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD B
@echo off
:discoB
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:B
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD C
@echo off
:discoC
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:C
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD D
@echo off
:discoD
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:D
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD E
@echo off
:discoE
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:E
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD F
@echo off
:discoF
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:F
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD G
@echo off
:discoG
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:G
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD H
@echo off
:discoH
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:H
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD I
@echo off
:discoI
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:I
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD J
@echo off
:discoJ
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:J
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD K
@echo off
:discoK
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:K
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD L
@echo off
:discoL
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:L
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD M
@echo off
:discoM
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:M
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD N
@echo off
:discoN
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:N
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD O
@echo off
:discoO
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:O
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD P
@echo off
:discoP
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:P
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD Q
@echo off
:discoQ
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:Q
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD R
@echo off
:discoR
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:R
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD S
@echo off
:discoS
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:S
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD T
@echo off
:discoT
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:T
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD U
@echo off
:discoU
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:U
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD V
@echo off
:discoV
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:V
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD W
@echo off
:discoW
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:W
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD X
@echo off
:discoX
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:X
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD Y
@echo off
:discoY
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:Y
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM Limpando rastro do HDD Z
@echo off
:discoZ
@echo off
CLS
echo Processo iniciado, aguarde...
cipher /w:Z
set /p opcao= Processo Finalizado Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM ============================================================================

REM Informações de REDE de internet TCI/IP 
@echo off
:opcao10
@echo off
CLS
echo Portas do computador.
netstat
ipconfig /all
set /p opcao= Pressione qualquer tecla para voltar ao menu: 
goto menu
pause>NUL

REM 
@echo off
:opcao11
@echo off
CLS
echo Use Ctrl + C para sair do modo input. 
echo Digite um servidor DNS, EX: www.youtube.com :
nslookup
goto menu
pause>NUL

REM 
@echo off
:opcao12
@echo off
CLS
mrt
goto menu

REM ============================================================================

REM Comando para automatizar o desligamento do sistema
@echo off
cls
:menu3
cls
COLOR A
echo              CMD SUPORTE TI 3.0
echo       ***Execute como Administrador***
echo ============================================
echo *           0) Voltar para o Menu          *   ######  ##     ## ########  
echo * 1) 30 Minutos - 2) 1 Hora - 3) 2 Horas   *  ##    ## ###   ### ##     ## 
echo * 4) 3 Horas    - 5) 4 Horas- 6) 5 Horas   *  ##       #### #### ##     ## 
echo * 7) 6 Horas    - 8) 7 Horas- 9) 8 Horas   *  ##       ## ### ## ##     ## 
echo * 10)9 Horas     11)10 Horas -----------   *  ##    ## ##     ## ##     ## 
echo *         12) Cancelar Desligamento        *   ######  ##     ## ########  
echo ============================================           SUPORTE TI

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 0 goto menu
if %opcao% equ 1 goto desliga01
if %opcao% equ 2 goto desliga02
if %opcao% equ 3 goto desliga03
if %opcao% equ 4 goto desliga04
if %opcao% equ 5 goto desliga05
if %opcao% equ 6 goto desliga06
if %opcao% equ 7 goto desliga07
if %opcao% equ 8 goto desliga08
if %opcao% equ 9 goto desliga09
if %opcao% equ 10 goto desliga010
if %opcao% equ 11 goto desliga011
if %opcao% equ 12 goto desliga12
echo ------------------------------

@echo off
:desliga01
echo Desligamento Automatico de 30 minutos
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga1

@echo off
:desliga02
echo Desligamento Automatico de 1 hora
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga2

@echo off
:desliga03
echo Desligamento Automatico de 2 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto ::menu
if %opcao% equ sim goto :desliga3

@echo off
:desliga04
echo Desligamento Automatico de 3 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga4

@echo off
:desliga05
echo Desligamento Automatico de 4 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga5

@echo off
:desliga06
echo Desligamento Automatico de 5 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga6

@echo off
:desliga07
echo Desligamento Automatico de 6 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga7

@echo off
:desliga08
echo Desligamento Automatico de 7 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga8

@echo off
:desliga09
echo Desligamento Automatico de 8 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga9

@echo off
:desliga010
echo Desligamento Automatico de 9 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga10

@echo off
:desliga011
echo Desligamento Automatico de 10 horas
set /p opcao= Digite (sim) para confirmar e (nao) para cancelar: 

if %opcao% equ nao goto :menu
if %opcao% equ sim goto :desliga11

:desliga1
cls
shutdown -s -t 1800
echo Seu computador ira desligar daqui 30 minutos
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga2
cls
shutdown -s -t 3600
echo Seu computador ira desligar daqui 1 hora
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga3
cls
shutdown -s -t 7200
echo Seu computador ira desligar daqui 2 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga4
cls
shutdown -s -t 10800
echo Seu computador ira desligar daqui 3 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga5
cls
shutdown -s -t 14400
echo Seu computador ira desligar daqui 4 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga6
cls
shutdown -s -t 18000
echo Seu computador ira desligar daqui 5 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga7
cls
shutdown -s -t 21600
echo Seu computador ira desligar daqui 6 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga8
cls
shutdown -s -t 25200
echo Seu computador ira desligar daqui 7 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga9
cls
shutdown -s -t 28800
echo Seu computador ira desligar daqui 8 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga10
cls
shutdown -s -t 32400
echo Seu computador ira desligar daqui 9 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga11
cls
shutdown -s -t 36000
echo Seu computador ira desligar daqui 10 horas
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

:desliga12
cls
shutdown -a
echo Desligamento cancelado com sucesso
echo Aguarde ou pressione enter para voltar ao menu
TIMEOUT /T 5
goto menu

REM ============================================================================