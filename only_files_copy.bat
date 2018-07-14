REM copy all files with a certain ext from subdirs to 1 dir
REM input & output dirs must be different
@echo on
for /r %root_dir_with_subdirs% %f in (*.ext) do @copy "%f" %output_dir%
