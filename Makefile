CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra
LDFLAGS = -lglfw -lGLEW -lGL -lm

TARGET = Tut06
SOURCES = Tut06.cpp
HEADERS = OBJloader.h OBJloaderV2.h shaderloader.h

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(SOURCES) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCES) $(LDFLAGS)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

install-deps:
	sudo apt-get update
	sudo apt-get install -y build-essential libglfw3-dev libglew-dev libglm-dev freeglut3-dev 