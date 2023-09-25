# Get all root folders to run the make in except the _build and llvm dirrectory
SUBDIRS := $(wildcard */.)
SUBDIRS := $(filter-out _build/.,$(SUBDIRS))
SUBDIRS := $(filter-out llvm/.,$(SUBDIRS))
# You can exclude folders you dont want to test here
#SUBDIRS := $(filter-out hw1/.,$(SUBDIRS))

MAKE_TEST := make test
MAKE_ZIP := make zip

# Define a rule to run "make test" in each subdirectory
test:
	@for dir in $(SUBDIRS); do \
		echo "Running 'make test' in $$dir"; \
		(cd $$dir && $(MAKE_TEST)); \
	done

# Define a rule to run "make zip" in each subdirectory
zip:
	@for dir in $(SUBDIRS); do \
		echo "Running 'make zip' in $$dir"; \
		(cd $$dir && $(MAKE_ZIP)); \
	done