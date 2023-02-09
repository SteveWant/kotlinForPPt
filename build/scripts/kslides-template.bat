@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  kslides-template startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and KSLIDES_TEMPLATE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\kslides-template-1.2.5.jar;%APP_HOME%\lib\kslides-core-0.10.6.jar;%APP_HOME%\lib\srcref-1.0.8.jar;%APP_HOME%\lib\ktor-server-utils-1.27.0.jar;%APP_HOME%\lib\core-utils-1.27.0.jar;%APP_HOME%\lib\ktor-server-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-cio-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-sessions-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-html-builder-jvm-2.0.2.jar;%APP_HOME%\lib\plotlykt-core-jvm-0.5.2-dev-2.jar;%APP_HOME%\lib\dataforge-meta-jvm-0.5.2.jar;%APP_HOME%\lib\kotlin-css-jvm-1.0.0-pre.343.jar;%APP_HOME%\lib\ktor-server-call-id-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-call-logging-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-compression-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-client-cio-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-client-core-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-default-headers-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-auto-head-response-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-caching-headers-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-partial-content-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-conditional-headers-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-content-negotiation-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-cors-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-data-conversion-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-double-receive-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-forwarded-header-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-hsts-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-http-redirect-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-status-pages-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-method-override-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-host-common-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-core-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-http-cio-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-websocket-serialization-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-serialization-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-websockets-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-network-tls-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-network-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-events-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-http-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-utils-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-io-jvm-2.0.2.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.6.2.jar;%APP_HOME%\lib\kotlinx-coroutines-slf4j-1.6.2.jar;%APP_HOME%\lib\kotlinx-coroutines-core-jvm-1.6.2.jar;%APP_HOME%\lib\kotlin-logging-jvm-2.1.23.jar;%APP_HOME%\lib\kotlinx-html-jvm-0.7.5.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.7.0.jar;%APP_HOME%\lib\logback-syslog4j-1.0.0.jar;%APP_HOME%\lib\logback-classic-1.2.11.jar;%APP_HOME%\lib\junit-4.13.2.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.7.0.jar;%APP_HOME%\lib\kotlin-reflect-1.7.0.jar;%APP_HOME%\lib\kotlinx-serialization-json-jvm-1.3.1.jar;%APP_HOME%\lib\kotlinx-serialization-core-jvm-1.3.1.jar;%APP_HOME%\lib\kotlin-stdlib-1.7.0.jar;%APP_HOME%\lib\commons-text-1.9.jar;%APP_HOME%\lib\logback-core-1.2.11.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.7.0.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\commons-lang3-3.11.jar;%APP_HOME%\lib\syslog4j-0.9.30.jar;%APP_HOME%\lib\jansi-2.4.0.jar;%APP_HOME%\lib\config-1.4.1.jar


@rem Execute kslides-template
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %KSLIDES_TEMPLATE_OPTS%  -classpath "%CLASSPATH%" SlidesKt %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable KSLIDES_TEMPLATE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%KSLIDES_TEMPLATE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
