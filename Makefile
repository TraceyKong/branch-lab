CXXFLAGS=-std=c++14
OBJECTS=rect.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

main.o: main.cpp rect.h

rect.o: rect.cpp rect.h

tests: tests.o $(OBJECTS)
	g++ -o tests tests.o $(OBJECTS)

clean:
	rm main.o $(OBJECTS)
