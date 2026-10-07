# -O3 turns on compiler optimizations; the original -O0 build took ~6.5x longer
all:
	g++ -Wall -g -O3 Sim.cpp Sim_Math.cpp TimeCode.cpp TimeCodeTests.cpp BigInteger.cpp -o traffic-simulation -lsqlite3 -I/usr/include


tests: Tests.cpp Sim_Math.cpp TimeCode.cpp TimeCodeTests.cpp BigInteger.cpp BigIntegerTests.cpp 
	g++ -Wall -g -O0 Tests.cpp Sim_Math.cpp TimeCode.cpp TimeCodeTests.cpp BigInteger.cpp BigIntegerTests.cpp -o tests -lsqlite3 -I/usr/include

	
clean:
	rm -rf tests traffic-simulation