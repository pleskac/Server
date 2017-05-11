FROM golang
MAINTAINER Mark Pleskac

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/pleskac/SpotLocator

# Build the project inside the container.
RUN go install github.com/pleskac/Server

# Run the file
ENTRYPOINT /go/bin/SpotLocator

# Document that the service listens on port 8080.
EXPOSE 8080