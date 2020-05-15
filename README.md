Linking with c-ares when calling `ares_init_options` now
[requires](https://travis-ci.com/github/ripple/rippled/jobs/333363018#L985-L997)
linking with `resolv`, whereas it didn't seem to with
[1.16.0](https://travis-ci.com/github/ripple/rippled/jobs/319792644#L910-L913).

```
$ make bad
g++ -c main.cpp
g++ -o main /usr/local/Cellar/c-ares/1.16.1/lib/libcares.a main.o
Undefined symbols for architecture x86_64:
  "_res_9_getservers", referenced from:
      _ares_init_options in libcares.a(libcares_la-ares_init.o)
  "_res_9_ndestroy", referenced from:
      _ares_init_options in libcares.a(libcares_la-ares_init.o)
  "_res_9_ninit", referenced from:
      _ares_init_options in libcares.a(libcares_la-ares_init.o)
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [bad] Error 1
$ make good
g++ -c main.cpp
g++ -o main -lresolv /usr/local/Cellar/c-ares/1.16.1/lib/libcares.a main.o
```
