SUBDIRS = dumbproxy smartproxy python-lounge 

.PHONY: SUBDIRS $(SUBDIRS)
.PHONY: install clean

all: $(SUBDIRS)

install: $(SUBDIRS)
	$(MAKE) -C dumbproxy install
	$(MAKE) -C smartproxy install
	$(MAKE) -C replicator install
	$(MAKE) -C python-lounge install

clean:
	$(MAKE) -C dumbproxy clean
	$(MAKE) -C smartproxy clean
	$(MAKE) -C python-lounge clean

distclean:
	echo "distclean stub"

SUBDIRS: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

