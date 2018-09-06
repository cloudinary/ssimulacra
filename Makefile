CFLAGS=`pkg-config --cflags opencv`
LDFLAGS=`pkg-config --libs opencv`

ssimulacra: ssimulacra.cpp
	g++ -std=c++11 -O2 -fstrict-aliasing -ffast-math $(CFLAGS) ssimulacra.cpp -lboost_system  -lboost_filesystem  $(LDFLAGS) -o ssimulacra
