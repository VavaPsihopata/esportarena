set "client=%~1"
echo %client%
IF "%client%"=="" ( goto :eof )

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

EthDcrMiner64.exe -epool eu1.ethermine.org:4444 -epsw x -mode 1 -dbg -1 -erate 0 -ewal 0xd5551cdd27871c27d656d4063cf7fd7e753bffc0.%client%