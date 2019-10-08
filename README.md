# wasm-fibo
Calculates the fibonacci number of n : Fn.

The purpose of this repo is to dive in Web Assembly and Wasmer.
The implementation of this fibo is in C++ and not optimized (no multi-threading).


## How to build Web Assembly

### Pre-requisite

1. Install emscripten by following the instructions of [emscripten.org](https://emscripten.org/)

Or 

1. Use a Docker image like this one:
```
docker run -it --name wasm --rm -v $PWD:/src robertaboukhalil/emsdk:1.38.26 bash
```

### Build

After you installed emscripten you should be able to build the `.wasm` file:
```
make wasm
```

### Test

After the compilation, you can test the wasm binary file by typing the following command line:
```
node target/fibo.js 11 # should display "F(11) = 144"
```


## How to run from Wasmer

### Pre-requisite

1. Build Web Assembly
1. Install wasmer by following the instructions of [wasmer.io](https://wasmer.io/)

### Run

Just run it with wasmer:
```
wasmer run target/fibo.wasm 11 # should display "F(11) = 144"
```


## How to publish to [wapm.io](https://wapm.io)

### Pre-requisite

1. Build Web Assembly
1. Install wasmer by following the instructions of [wasmer.io](https://wasmer.io/)

### Publish

After you installed wasmer and built the `.wasm` file you should be able to publish it as a package after you logged in:
```
wapm login
wapm publish
```


## How to run from WAPM

### Pre-requisite

1. Install wasmer by following the instructions of [wasmer.io](https://wasmer.io/)

### Run

Just install the wasm package `lhauspie/fibo` from wapm and then run it:
```
wapm install -g lhauspie/fibo
fibo 11 # should display "F(11) = 144"
```
