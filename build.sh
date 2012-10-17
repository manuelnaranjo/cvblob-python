INC=$(pkg-config --cflags python2 opencv)
PYCFLAGS=$(pkg-config --libs python2)
g++ -fPIC ${INC} -o cvblob/_cvblob.o -c cvblob/_cvblob.C
g++ -shared -Wl ${PYCFLAGS} cvblob/_cvblob.o \
    -lopencv_core -lcvblob -lboost_python -o cvblob/_cvblob.so
