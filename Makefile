all:echoserver echoclient

echoserver: server.cpp
	$(CXX) -o $@ $^ $(LDFLAGS)
 
echoclient: client.cpp
	$(CXX) -o $@ $^ $(LDFLAGS)


