@ECHO OFF
SETLOCAL EnableDelayedExpansion

cd "%SRC_DIR%\R"
for %%f in (h2o_*.tar.gz) do (
    "%R%" CMD INSTALL "%%f" -l "%PREFIX%\lib\R\library"
)
IF ERRORLEVEL 1 (
    ENDLOCAL
    EXIT /B 1
)

ENDLOCAL
EXIT /B 0
