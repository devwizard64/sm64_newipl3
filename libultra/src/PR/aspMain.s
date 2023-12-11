.globl aspMainTextStart
aspMainTextStart:
.incbin "libultra/src/PR/aspMain.text.bin"
.globl aspMainTextEnd
aspMainTextEnd:

.data

.globl aspMainDataStart
aspMainDataStart:
.incbin "libultra/src/PR/aspMain.data.bin"
.globl aspMainDataEnd
aspMainDataEnd:
