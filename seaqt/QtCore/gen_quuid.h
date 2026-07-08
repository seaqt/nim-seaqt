#pragma once
#ifndef SEAQT_QTCORE_GEN_QUUID_H
#define SEAQT_QTCORE_GEN_QUUID_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QUuid;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QUuid QUuid;
#endif

QUuid* QUuid_new();
QUuid* QUuid_new_l_w1_w2_b1_b2_b3_b4_b5_b6_b7_b8(unsigned int l, unsigned short w1, unsigned short w2, unsigned char b1, unsigned char b2, unsigned char b3, unsigned char b4, unsigned char b5, unsigned char b6, unsigned char b7, unsigned char b8);
QUuid* QUuid_new_string(struct seaqt_string string);
QUuid* QUuid_new_from(QUuid* from);

QUuid* QUuid_fromString(struct seaqt_string string);
struct seaqt_string QUuid_toString(const QUuid* self);
struct seaqt_string QUuid_toByteArray(const QUuid* self);
struct seaqt_string QUuid_toRfc4122(const QUuid* self);
QUuid* QUuid_fromBytes_bytes(const void* bytes);
QUuid* QUuid_fromRfc4122(struct seaqt_string param1);
bool QUuid_isNull(const QUuid* self);
QUuid* QUuid_createUuid();
QUuid* QUuid_createUuidV5(QUuid* ns, struct seaqt_string baseData);
QUuid* QUuid_createUuidV3(QUuid* ns, struct seaqt_string baseData);
QUuid* QUuid_createUuidV7();
int QUuid_variant(const QUuid* self);
int QUuid_version(const QUuid* self);
unsigned int QUuid_data1(const QUuid* self);
void QUuid_setData1(QUuid* self, unsigned int data1);
unsigned short QUuid_data2(const QUuid* self);
void QUuid_setData2(QUuid* self, unsigned short data2);
unsigned short QUuid_data3(const QUuid* self);
void QUuid_setData3(QUuid* self, unsigned short data3);
struct seaqt_string QUuid_toString_mode(const QUuid* self, int mode);
struct seaqt_string QUuid_toByteArray_mode(const QUuid* self, int mode);
QUuid* QUuid_fromBytes_bytes_order(const void* bytes, int order);

void QUuid_delete(QUuid* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
