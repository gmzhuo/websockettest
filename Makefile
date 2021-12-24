all:echoserver echoclient

echoserver: server.cpp
	$(CXX) -o $@ $^ $(LDFLAGS) -lpthread
 
echoclient: client.cpp
	$(CXX) -o $@ $^ $(LDFLAGS) -lpthread

install:
	printenv
	install -d $(bindir)
	install -m 0755 echoserver  $(bindir)
	install -m 0755 echoclient  $(bindir)

