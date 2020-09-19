GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BUILDPATH=./builds/
GETPATH=src

all: clean build

test:
	$(GOTEST) -v ./...

build:
	$(GOGET) $(GETPATH)
	$(GOBUILD) -o $(BUILDPATH)/main -v $(BUILDLIB)

clean:
	$(GOCLEAN)
	rm -f $(BUILDPATH)*
