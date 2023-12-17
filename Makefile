wasm:
	@wasm-pack build --release --target web
	@wasm-opt -Oz -o ./pkg/firnas_wasm_bg.wasm ./pkg/firnas_wasm_bg.wasm

publish:
	@cd pkg && npm publish
