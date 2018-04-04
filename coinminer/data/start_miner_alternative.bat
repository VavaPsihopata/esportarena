set "client=%~1"
echo %client%
IF "%client%"=="" ( goto :eof )

set "gpu=%~2"
echo %gpu%
IF "%gpu%"=="" ( goto :eof )

IF "%gpu%"=="amd" (
   set "param=-G"
) ELSE (
   set "param=-U"
)

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

ethminer.exe %param% --farm-recheck 200 -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O 0xd5551cdd27871c27d656d4063cf7fd7e753bffc0.%client%