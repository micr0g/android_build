# Configuration for Linux on ARM.
# Generating binaries for the ARMv7-a architecture and higher with NEON
#
ARCH_ARM_HAVE_ARMV7A            := true
ARCH_ARM_HAVE_VFP               := true
ARCH_ARM_HAVE_VFP_D32           := true
ARCH_ARM_HAVE_NEON              := true

ENABLE_GRAPHITE                 := true

TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 64
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

arch_variant_cflags += \
    -mfloat-abi=softfp \
    -mfpu=neon \
    -DHARDFLOAT \
    -DSK_HARDWARE_FLOAT \
    -DNDEBUG \
    -mcpu=cortex-a15 \
    -mtune=cortex-a15 \
    -fira-loop-pressure \
    -mvectorize-with-neon-quad \
    -fforce-addr \
    -funsafe-loop-optimizations \
    -funroll-loops \
    -fsection-anchors \
    -fivopts \
    -ftree-loop-im \
    -ftree-loop-ivcanon \
    -ffunction-sections \
    -fgcse-las \
    -fgcse-sm \
    -fweb \
    -ffp-contract=fast \
    -fgraphite-identity \
    -floop-flatten \
    -ftree-loop-linear \
    -floop-interchange \
    -ftree-loop-distribution \
    -Wno-unused-parameter \
    -Wno-unused-value \
    -Wno-unused-function \
    -pipe
    

arch_variant_ldflags := \
	-Wl,--fix-cortex-a8
