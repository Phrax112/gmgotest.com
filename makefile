GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BUILDPATH=./builds/
BUILDNAME=gmgotest.com
GETPATH=src/
BUILDLIB=src/main.go

all: clean build

test:
	$(GOTEST) -v ./...

build:
	#$(GOGET) $(GETPATH)
	mkdir -pv $(BUILDPATH)
	$(GOBUILD) -o $(BUILDPATH)/$(BUILDNAME) -v $(BUILDLIB)

clean:
	$(GOCLEAN)
	rm -f $(BUILDPATH)/$(BUILDNAME)
