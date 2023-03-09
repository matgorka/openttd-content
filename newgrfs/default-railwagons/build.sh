source ./build.cfg
<$grf_main $cc $cc_args - >out.nml
nmlc out.nml
mkdir $grf_name 2>/dev/null
mv out.grf $grf_name/$grf_name.grf
cp changelog.txt license.txt readme.txt $grf_name/ 2>/dev/null
tar -cf $grf_id-${grf_name}_$grf_version.tar $grf_name
rm -r $grf_name
rm out.nml
