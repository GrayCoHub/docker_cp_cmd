# Use the official R base image from Docker Hub
FROM r-base

# Create a directory 'app' within the container
WORKDIR /app

# Copy the local R script file into the 'app' directory of the Docker container
COPY tester.R /app/

# When the container starts: run the Rscript.exe - (the cmd line, non-interactive R interpreter) 
# and perform this execution of the script file located in the /app/ directory
CMD ["Rscript", "/app/tester.R"]
