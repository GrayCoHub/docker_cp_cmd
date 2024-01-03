# Use the official R base image from Docker Hub
FROM r-base

# Create a directory 'app' within the container
WORKDIR /app

# Copy your local R script file into the 'app' directory of the Docker container
COPY tester.R /app/

# Run the R script when the container starts
CMD ["Rscript", "/app/tester.R"]
