/*
 * STM32F4xx high density linker script for
 * JTAG (bare metal, no bootloader) builds.
 */

MEMORY
{
  ram (rwx) : ORIGIN = 0x20000000, LENGTH = 112K
  ccm (rwx) : ORIGIN = 0x10000000, LENGTH = 64K
  rom (rx)  : ORIGIN = 0x08010000, LENGTH = 1024K
  bkpsram (rw) : ORIGIN = 0x40024000, LENGTH = 0x00001000
}

/* GROUP(libcs3_stm32_high_density.a) */

REGION_ALIAS("REGION_TEXT", rom);
REGION_ALIAS("REGION_DATA", ram);
REGION_ALIAS("REGION_BSS", ram);
REGION_ALIAS("REGION_RODATA", rom);
REGION_ALIAS("REGION_CCM", ccm);
REGION_ALIAS("REGION_BKPSRAM", bkpsram);


_FLASH_BUILD = 1;
INCLUDE common.inc
