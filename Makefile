obj-m += bmi323_core.o
obj-m += bmi323_i2c.o
obj-m += bmi323_spi.o

obj-m += bmc150-accel-core.o
obj-m += bmc150-accel-i2c.o
obj-m += bmc150-accel-spi.o

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build

all default: modules
install: modules_install

modules modules_install help clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(shell pwd) $@
