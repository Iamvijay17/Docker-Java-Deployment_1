@echo off
REM Replace 'your-dockerhub-username' with your actual Docker Hub username
REM Replace 'your-repo-name' with your desired repository name
REM Replace 'your-tag' with the tag you want (e.g., latest, v1.0)

set DOCKERHUB_USERNAME=your-dockerhub-username
set REPO_NAME=your-repo-name
set TAG=your-tag

echo Building Docker image...
docker build -t %DOCKERHUB_USERNAME%/%REPO_NAME%:%TAG% .

echo Logging in to Docker Hub...
docker login

echo Pushing image to Docker Hub...
docker push %DOCKERHUB_USERNAME%/%REPO_NAME%:%TAG%

echo Done!
