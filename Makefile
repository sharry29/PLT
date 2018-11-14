hippograph.native:
	opam config exec -- \
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 \
		hippograph.native

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf ocamlllvm *.diff

redo:
	ocamlbuild -clean
	rm -rf ocamlllvm *.diff
	make hippograph.native