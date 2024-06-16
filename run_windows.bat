@echo off
REM Change directory to frontend_blue
cd frontend_blue
REM Build the Docker image for frontend_blue
docker build . --tag cooopeir/conint_frontend:blue
REM Change back to the root directory
cd ..

REM Change directory to frontend_green
cd frontend_green
REM Build the Docker image for frontend_green
docker build . --tag cooopeir/conint_frontend:green
REM Change back to the root directory
cd ..

REM Bring up the Docker Compose services
docker compose up -d
