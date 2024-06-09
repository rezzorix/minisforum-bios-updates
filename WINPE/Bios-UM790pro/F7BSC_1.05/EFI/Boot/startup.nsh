@echo -off 
for %a run (0 15 1)
  if exist fs%a:\F7BSC.rom then
     fs%a:
     EfiFlash.nsh
     cls
  endif
endfor
