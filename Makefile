vpath %.java ./main/
vpath %.jar ./

ifdef dbg
DEBUG:=-g
endif

JAVAFLAGS=$(DEBUG) -cp tachyon-0.3.0.jar:tachyon-0.3.0-jar-with-dependencies.jar -d ./

main.class:main.java
	javac $(JAVAFLAGS) $^
	jar -cf TachyonPerformance.jar ./main/*.class
	cp TachyonPerformance.jar ../
