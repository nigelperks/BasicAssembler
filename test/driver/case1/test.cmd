@rem test that basl driver passes on case-sensitivity options
basl --case-sensitive -fcom file1.asm -o file1.com
@if errorlevel 1 goto error
fc /b file1.co_ file1.com
@if errorlevel 1 goto error
exit 0
:error
exit 1
