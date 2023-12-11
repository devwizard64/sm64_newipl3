#ifndef __SM64_BANK_H__
#define __SM64_BANK_H__

#define TABLE()     .word (table_end-table)/8, 0
#define BANK(name)  .word name, name##_end-name

#endif /* __SM64_BANK_H__ */
