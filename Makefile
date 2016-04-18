CPU ?= lm32

nexys_minisoc:
	rm -rf build
	./nexys_base.py --with-ethernet --nocompile-gateware --cpu-type $(CPU)
	cd firmware && make clean all
	./nexys_base.py --with-ethernet --cpu-type $(CPU)

nexys_etherbone:
	rm -rf build
	./nexys_etherbone.py --cpu-type $(CPU)
load:
	./load.py

firmware:
	cd firmware && make clean all

load-firmware:
	litex_term --kernel firmware/firmware.bin --kernel-adr 0x20000000 COM5

.PHONY: load firmware load-firmware
