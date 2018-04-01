REM copy all files with a certain ext from subdirs to 1 dir
@echo on
for /r %root_dir_with_subdirs% %f in (*.ext) do @copy "%f" %output_dir%