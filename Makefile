CXX      = g++
CXXFLAGS = -Wall -Wextra -std=c++11 -O2 $(shell pkg-config --cflags glfw3)
LDLIBS   = $(shell pkg-config --libs glfw3) -lGLU -lGL -lm
TARGET   = sample_GL
SRCS     = sample_GL.cpp GLMetaseq.cpp
OBJS     = $(SRCS:.cpp=.o)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.cpp GLMetaseq.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean
