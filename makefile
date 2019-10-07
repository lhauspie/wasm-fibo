compile:
	g++ fibo.cpp -o fibo

wasm:
	em++ -Os fibo.cpp -g -o fibo.js

clean:
	rm -rf fibo fibo.wast fibo.wasm fibo.wasm.map fibo.js fibo.html
