CXX = g++
BAIT_CXXFLAGS = -I . -O3

OBJECTS1 = bait-fisher-helper.o bait-fisher.o Csequence_cluster_and_center_sequence.o mydir-unix.o
OBJECTS2 = bait-filter.o global-types-and-parameters.o

%.o: %.cpp
	$(CXX) $(CPPFLAGS) $(BAIT_CXXFLAGS) $(CXXFLAGS) -c $< -o $@

default: BaitFisher-v1.2.8 BaitFilter-v1.0.6

BaitFisher-v1.2.8: $(OBJECTS1)
	$(CXX) $(BAIT_CXXFLAGS) $(CXXFLAGS) $(LDFLAGS) -lstdc++ $(OBJECTS1) -o $@

BaitFilter-v1.0.6: $(OBJECTS2)
	$(CXX) $(BAIT_CXXFLAGS) $(CXXFLAGS) $(LDFLAGS) -lstdc++ $(OBJECTS2) -o $@

clean:
	rm -f *.o
	rm -f BaitFisher-v1.2.8
	rm -f BaitFilter-v1.0.6
