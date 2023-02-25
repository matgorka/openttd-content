@echo off
<default_railwagons.pnml tcc -E - > out.nml
nmlc out.nml
md default_railwagons 2>NUL
move out.grf default_railwagons\default_railwagons.grf >NUL
copy *.txt default_railwagons\ >NUL
del default_railwagons\custom_tags.txt 2>NUL
tar -cf 01164d00-default_railwagons.tar default_railwagons
rd /S /Q default_railwagons
del out.nml
