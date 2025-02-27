obj-m := kmod.o
KERNELDR := ~/kernelAll/kernelSource/linux-4.4.72
PWD := $(shell pwd)

EXTRA_CFLAGS = -g

modules:  
	$(MAKE) -C $(KERNELDR) M=$(PWD) modules  

moduels_install:  
	$(MAKE) -C $(KERNELDR) M=$(PWD) modules_install  

clean:  
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions
