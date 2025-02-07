@echo off

if exist docs (
    del /s /q /f docs\*.*
    rd /s /q docs
)

mkdir docs

copy .\.nojekyll docs\.nojekyll
xcopy /e /i /q build\html\*.* docs\

pause
