INC=$(pkg-config --cflags python2 opencv)
PYCFLAGS=$(pkg-config --libs python2)
g++ -fPIC ${INC} -c _cvblob.C
g++ -shared -Wl ${PYCFLAGS} _cvblob.o \
    -lopencv_core -lcvblob -lboost_python -o _cvblob.so
