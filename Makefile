VERSION = 0.0.1

.PHONY: all
all: tags

.PHONY: install
install: all
	install cmdline-player /usr/local/bin/cmdline-player

.PHONY: uninstall
uninstall:
	rm -f /usr/local/bin/cmdline-player

.PHONY: clean
clean:
	rm tags

tags: cmdline-player
	ctags --language-force=sh cmdline-player

# vim:noet:ts=2:sw=2
