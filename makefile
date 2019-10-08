prepare:
	mkdir -p target

compile: prepare
	g++ fibo.cpp -o target/fibo

wasm: prepare
	em++ fibo.cpp -g -o target/fibo.html

clean:
	rm -rf target
