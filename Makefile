build: examples/example.s
	cargo build --release --workspace
	as examples/example.s -o target/example.o
	gcc target/example.o target/release/libof.a -o asm_example

joy: build
	./asm_example
