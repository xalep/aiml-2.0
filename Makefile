ORIGINAL_SPEC = original/spec.gdoc.html

spec.html: *.asciidoc
	asciidoctor spec.asciidoc

fetch:
	curl https://docs.google.com/document/d/1wNT25hJRyupcG51aO89UcQEiG-HkXRXusukADpFnDs4/pub > $(ORIGINAL_SPEC)
	-tidy -quiet -m -utf8 $(ORIGINAL_SPEC) 2> /dev/null

