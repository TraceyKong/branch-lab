CXXFLAGS=-std=c++14
OBJECTS=rect.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

tests_rect: tests_rect.o rect.o
	g++ -o tests_rect tests_rect.o rect.o

main.o: main.cpp rect.h

rect.o: rect.cpp rect.h

tests_rect.o: tests_rect.cpp rect.h

clean:
	rm main.o test_rect.o$(OBJECTS)
