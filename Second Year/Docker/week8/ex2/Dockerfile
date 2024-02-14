
# Use the .NET 7 SDK as the base image
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

# Set the working directory in the container
WORKDIR /ex2

# Copy everything from the current directory to the working directory in the container
COPY . ./

# Restore the necessary packages
RUN dotnet restore

# Build the application in Release mode
RUN dotnet build -c Release -o ex2

# Publish the application in Release mode without restoring packages again
RUN dotnet publish --no-restore -c Release -o ex2

# Specify the entry point of the application
ENTRYPOINT ["dotnet", "ex2.dll"]