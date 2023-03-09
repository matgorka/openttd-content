@echo off
for /F %%L in (build.cfg) do set %%L
<%grf_main% %cc% %cc_args% - > out.nml
nmlc out.nml
md %grf_name% 2>NUL
move out.grf %grf_name%\%grf_name%.grf >NUL
for %%F in (changelog.txt license.txt readme.txt) do copy %%F %grf_name%\ >NUL
tar -cf %grf_id%-%grf_name%_%grf_version%.tar %grf_name%
rd /S /Q %grf_name%
del out.nml
