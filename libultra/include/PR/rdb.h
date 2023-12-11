#ifndef _RDB_H
#define _RDB_H

/* U64 side address */
#define	RDB_BASE_REG		0xc0000000
#define RDB_WRITE_INTR_REG	(RDB_BASE_REG + 0x8)
#define RDB_READ_INTR_REG	(RDB_BASE_REG + 0xc)
#define RDB_BASE_VIRTUAL_ADDR	0x80000000

/* packet type */
#define RDB_TYPE_INVALID	0
#define RDB_TYPE_PRINT		1
#define RDB_TYPE_DEBUG		2

/* GIO side address */
#define GIO_RDB_BASE_REG	0xbf480000
#define	GIO_RDB_WRITE_INTR_REG	(GIO_RDB_BASE_REG + 0x8)
#define GIO_RDB_READ_INTR_REG	(GIO_RDB_BASE_REG + 0xc)

/* minor device number */
#define GIO_RDB_PRINT_MINOR		1
#define GIO_RDB_DEBUG_MINOR		2

/* interrupt bit */
#define GIO_RDB_WRITE_INTR_BIT	0x80000000
#define GIO_RDB_READ_INTR_BIT	0x40000000

/* debug command */
#define DEBUG_COMMAND_NULL	0
#define DEBUG_COMMAND_MEMORY	1
#define DEBUG_COMMAND_REGISTER	2
#define DEBUG_COMMAND_INVALID	255

/* debug state */
#define DEBUG_STATE_NULL	0
#define DEBUG_STATE_RECEIVE	1
#define DEBUG_STATE_INVALID	255

#ifdef _LANGUAGE_C

/* Structure for debug port */
typedef struct {
	unsigned type : 2;	/* 0: invalid, 1: print, 2: debug */
	unsigned      : 4;	/* padding */
	unsigned length : 2;	/* 1, 2, or 3 */
	char buf[3];		/* character buffer */
} rdbPacket;

extern unsigned int	__osRdbWriteOK;
extern unsigned int	__osRdbSendMessage;

#endif /* _LANGUAGE_C */

#endif /* !_RDB_H */
