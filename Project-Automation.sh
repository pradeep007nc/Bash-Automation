#!/bin/bash

# Function to cleanup and terminate both processes
cleanup() {
  echo "Cleaning up and terminating processes..."
  
  # Terminate the frontend process
  kill -SIGINT "$frontend_pid"
  
  # Terminate the backend process
  kill -SIGINT "$backend_pid"
  
  # Wait for both processes to finish
  wait
  
  echo "Processes terminated. Goodbye!"
  exit 0
}

# Trap signals to call the cleanup function
trap 'cleanup' SIGINT SIGTERM

echo "Wanna automate nigga? Have some patience."

# Start the frontend script
echo "Starting frontend... nigga"
cd /home/pilli007/Documents/MajorProject/MajorProjectFrontend
npm start &
frontend_pid=$!

# Start the backend script
echo "Starting backend... nigger"
cd /home/pilli007/Documents/MajorProject/MajorProjectBackend
mvn spring-boot:run &
backend_pid=$!

# Wait for both scripts to finish
wait

