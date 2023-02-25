<default_railwagons.pnml tcc -E - >out.nml
nmlc out.nml
mkdir default_railwagons 2>/dev/null
mv out.grf default_railwagons/default_railwagons.grf
cp *.txt default_railwagons/
rm default_railwagons/custom_tags.txt 2>/dev/null
tar -cf 01164d00-default_railwagons.tar default_railwagons
rm -r default_railwagons
rm out.nml
