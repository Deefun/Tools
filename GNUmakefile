
SUBPROJECTS := $(shell ./subprojects.sh)

all: $(SUBPROJECTS) common.mk
	for each in $(SUBPROJECTS); do make -C $$each; done
.PHONY: all clean ignore

clean: $(SUBPROJECTS)
	for each in $(SUBPROJECTS); do make -C $$each clean; done

ignore: .gitignore

.gitignore: $(SUBPROJECTS) gitignore.preamble
	cat gitignore.preamble > .gitignore
	for each in $(SUBPROJECTS); do make -C $$each target-name >> .gitignore; done

