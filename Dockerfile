# Specify the base image
FROM ubuntu:latest

# Set environment variables
ENV APP_HOME /app
ENV LANG C.UTF-8

# Install required packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git

# Set the working directory
WORKDIR $APP_HOME

# Copy application code into the container
COPY . $APP_HOME

# Copy myinfo.html and style.css files
COPY myinfo.html style.css $APP_HOME

# Expose any necessary ports
EXPOSE 8000

# Define the entry point command or script
CMD ["python3", "app.py"]

