DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-hcookies/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-hcookies
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-hcookies
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/hcookies'  ; cp bin/hcookies    $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
