# CONINT_semester_project

Windows:
run run_windows.bat to run the project

Linux:

chmod +x build_and_up.sh
./build_and_up.sh


to change the envirenment in nginx.conf file in line 20:

Change from GREEN to BLUE:
proxy_pass http://frontend_blue; # Change this to switch traffic to frontend_green


Change from BLUE to GREEN:
proxy_pass http://frontend_green; # Change this to switch traffic to frontend_green

then run:
docker-compose exec nginx nginx -s reload