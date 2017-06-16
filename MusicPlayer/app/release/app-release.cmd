@echo OFF
if not .%1. == .. (
	@REM youxiao
	goto youxiao
) else (
	@REM echo wuxiao
	goto  install
)
:youxiao
if %1==ui (
	goto uninstall
) else (
	goto install
)
goto end

:uninstall
@REM call adb uninstall com.google.android.glass.sample.compass
@REM call adb uninstall com.google.android.glass.sample.compass
@REM call adb uninstall com.kenny.music
call adb uninstall com.shoukaiseki.glass.kenny.music
goto end
:install
@REM call adb uninstall com.google.android.glass.sample.compass
@REM call adb uninstall com.kenny.music
call adb uninstall com.shoukaiseki.glass.kenny.music
call adb install app-release.apk
goto end
:end
pause
