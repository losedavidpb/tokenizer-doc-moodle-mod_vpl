:: This file is part of VPL for Moodle - http://vpl.dis.ulpgc.es/
::
:: VPL for Moodle is free software: you can redistribute it and/or modify
:: it under the terms of the GNU General Public License as published by
:: the Free Software Foundation, either version 3 of the License, or
:: (at your option) any later version.
::
:: VPL for Moodle is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:: GNU General Public License for more details.
::
:: You should have received a copy of the GNU General Public License
:: along with VPL for Moodle.  If not, see <http://www.gnu.org/licenses/>.

:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Batfile for VPL Tokenizer Documentation         ::
::                                                 ::
::	@author 	- David Parreño Barbuzano          ::
::	@contact	- losedavidpb@gmail.com   		   ::
::	@source  	- Sphinx Documentation             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF

:: Push current directory
pushd %~dp0

:::::: Configuration

:: The command to use instead of sphinx-build.
if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD = sphinx-build
)

:: The build directory to use instead of the one
:: chosen in sphinx-quickstart.
set BUILDDIR = build

:: When set (regardless of value), sphinx-build will not use color in terminal output.
:: NO_COLOR takes precedence over FORCE_COLOR. See no-color.org for other libraries supporting this community standard.
::NO_COLOR = true

:: When set (regardless of value), sphinx-build will use color in terminal output.
:: NO_COLOR takes precedence over FORCE_COLOR.
set FORCE_COLOR = true

:: The source directory to use instead of the one
:: chosen in sphinx-quickstart.
set SOURCEDIR = source

:: Additional options for sphinx-build. These options can also
:: be set via the shortcut variable O (capital ‘o’).
set SPHINXOPTS ?=

:: Check that sphinx-build is truly a command
%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

:: Help command would be used if any option has been typed
if "%1" == "" goto help

:: Build command ----
%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:: Help command ----
:help
	%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:: Finish script restaring current pushed directory
:end
	popd
