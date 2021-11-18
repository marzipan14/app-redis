UK_ROOT ?= $(PWD)/../../unikraft
UK_LIBS ?= $(PWD)/../../libs
LIBS := $(UK_LIBS)/newlib:$(UK_LIBS)/tlsf:$(UK_LIBS)/lwip:$(UK_LIBS)/redis:$(UK_LIBS)/pthread-embedded
all:
		@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS)
$(MAKECMDGOALS):
		@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) $(MAKECMDGOALS)
