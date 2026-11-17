#pragma once
#ifndef SEAQT_QTCORE_GEN_QBITARRAY_H
#define SEAQT_QTCORE_GEN_QBITARRAY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitArray;
class QBitRef;
#else
typedef struct QBitArray QBitArray;
typedef struct QBitRef QBitRef;
#endif

QBitArray* QBitArray_new();
QBitArray* QBitArray_new_size(ptrdiff_t size);
QBitArray* QBitArray_new_from(QBitArray* from);
QBitArray* QBitArray_new_size_val(ptrdiff_t size, bool val);

void QBitArray_operatorAssign(QBitArray* self, QBitArray* from);
void QBitArray_swap(QBitArray* self, QBitArray* other);
ptrdiff_t QBitArray_size(const QBitArray* self);
ptrdiff_t QBitArray_count(const QBitArray* self);
ptrdiff_t QBitArray_count_on(const QBitArray* self, bool on);
bool QBitArray_isEmpty(const QBitArray* self);
bool QBitArray_isNull(const QBitArray* self);
void QBitArray_resize(QBitArray* self, ptrdiff_t size);
void QBitArray_detach(QBitArray* self);
bool QBitArray_isDetached(const QBitArray* self);
void QBitArray_clear(QBitArray* self);
bool QBitArray_testBit(const QBitArray* self, ptrdiff_t i);
void QBitArray_setBit_i(QBitArray* self, ptrdiff_t i);
void QBitArray_setBit_i_val(QBitArray* self, ptrdiff_t i, bool val);
void QBitArray_clearBit(QBitArray* self, ptrdiff_t i);
bool QBitArray_toggleBit(QBitArray* self, ptrdiff_t i);
bool QBitArray_at(const QBitArray* self, ptrdiff_t i);
QBitRef* QBitArray_operatorSubscript_qsizetype(QBitArray* self, ptrdiff_t i);
bool QBitArray_operatorSubscript_const_qsizetype(const QBitArray* self, ptrdiff_t i);
void QBitArray_operatorBitwiseAndAssign(QBitArray* self, QBitArray* param1);
void QBitArray_operatorBitwiseOrAssign(QBitArray* self, QBitArray* param1);
void QBitArray_operatorBitwiseNotAssign(QBitArray* self, QBitArray* param1);
bool QBitArray_fill_aval(QBitArray* self, bool aval);
void QBitArray_fill_val_first_last(QBitArray* self, bool val, ptrdiff_t first, ptrdiff_t last);
void QBitArray_truncate(QBitArray* self, ptrdiff_t pos);
const char* QBitArray_bits(const QBitArray* self);
QBitArray* QBitArray_fromBits(const char* data, ptrdiff_t len);
unsigned int QBitArray_toUInt32_endianness(const QBitArray* self, int endianness);
bool QBitArray_fill_aval_asize(QBitArray* self, bool aval, ptrdiff_t asize);
unsigned int QBitArray_toUInt32_endianness_ok(const QBitArray* self, int endianness, bool* ok);

void QBitArray_delete(QBitArray* self);

QBitRef* QBitRef_new(QBitRef* from);

bool QBitRef_ToBool(const QBitRef* self);
bool QBitRef_operatorNot(const QBitRef* self);
void QBitRef_operatorAssign_from(QBitRef* self, QBitRef* from);
void QBitRef_operatorAssign_val(QBitRef* self, bool val);

void QBitRef_delete(QBitRef* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
