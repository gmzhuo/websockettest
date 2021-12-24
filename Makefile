all:echoserver echoclient

echoserver: server.cpp
	$(CXX) -o $@ $^ $(LDFLAGS) -lpthread
 
echoclient: client.cpp
	$(CXX) -o $@ $^ $(LDFLAGS)


