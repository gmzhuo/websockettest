all:echoserver echoclient

echoserver: server.cpp
	$(CXX) -o $@ $^ $(LDFLAGS) -lpthread
 
echoclient: client.cpp
	$(CXX) -o $@ $^ $(LDFLAGS) -lpthread

install:
	install -d $(DESTDIR)$(bindir)
	install -m 0755 echoserver  $(DESTDIR)$(bindir)
	install -m 0755 echoclient  $(DESTDIR)$(bindir)

