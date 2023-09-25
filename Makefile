# Get all root folders to run the make in except the _build and llvm dirrectory
SUBDIRS := $(wildcard */.)
SUBDIRS := $(filter-out _build/.,$(SUBDIRS))
SUBDIRS := $(filter-out llvm/.,$(SUBDIRS))
# You can exclude folders you dont want to test here
#SUBDIRS := $(filter-out hw1/.,$(SUBDIRS))

MAKE := make test
MAKE_TEST := make zip

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@;\

zip: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE_TEST) $@;\



.PHONY: all $(SUBDIRS)