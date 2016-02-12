#!/bin/sh
original_spec=original/spec.gdoc.html
curl https://docs.google.com/document/d/1wNT25hJRyupcG51aO89UcQEiG-HkXRXusukADpFnDs4/pub > $original_spec
tidy -m -utf8 $original_spec
