set(SUPPORTED_EMU_PLATFORMS qemu)
set(QEMU_ARCH aarch64)

set(QEMU_CPU_TYPE_${ARCH} cortex-a57)

set(QEMU_KERNEL_OPTION -kernel ${ZEPHYR_BINARY_DIR}/xen)
set(QEMU_FLAGS_${ARCH}
   -gdb tcp::4224
   -cpu ${QEMU_CPU_TYPE_${ARCH}} -m 6G
   -nographic
   -machine virt,gic-version=2,virtualization=true
   -device loader,file=${ZEPHYR_BINARY_DIR}/zephyr.bin,addr=0x40600000
   -dtb ${ZEPHYR_BINARY_DIR}/virt_gicv2.dtb
)

