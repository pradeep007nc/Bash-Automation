#!/bin/bash

echo "wanna automate nigga? have some patience"

# Start the frontend script
echo "Starting frontend... nigga"
cd /home/pilli007/Documents/MajorProject/MajorProjectFrontend
npm start &

# Start the backend script
echo "Starting backend... nigger"
cd /home/pilli007/Documents/MajorProject/MajorProjectBackend
mvn spring-boot:run &

# Wait for both scripts to finish
wait
