CXXFLAGS=-std=c++14
OBJECTS=rect.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

tests_rect: tests_rect.o rect.o
	g++ -o tests_rect tests_rect.o rect.o

tests_triangle: tests_triangle.o triangle.o
	g++ -o tests_triangle tests_triangle.o triangle.o

main.o: main.cpp rect.h

rect.o: rect.cpp rect.h

triangle.o: triangle.cpp rect.h

tests_rect.o: tests_rect.cpp rect.h

tests_triangle.o: tests_triangle.cpp rect.h

clean:
	rm main.o tests_rect.o tests_triangle.o $(OBJECTS)
