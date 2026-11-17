#pragma once
#ifndef SEAQT_QTCORE_GEN_QTIPCCOMMON_H
#define SEAQT_QTCORE_GEN_QTIPCCOMMON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QNativeIpcKey;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QNativeIpcKey QNativeIpcKey;
#endif

QNativeIpcKey* QNativeIpcKey_new();
QNativeIpcKey* QNativeIpcKey_new_type(uint16_t type);
QNativeIpcKey* QNativeIpcKey_new_k(struct seaqt_string k);
QNativeIpcKey* QNativeIpcKey_new_from(QNativeIpcKey* from);
QNativeIpcKey* QNativeIpcKey_new_k_type(struct seaqt_string k, uint16_t type);

uint16_t QNativeIpcKey_legacyDefaultTypeForOs();
void QNativeIpcKey_operatorAssign(QNativeIpcKey* self, QNativeIpcKey* from);
void QNativeIpcKey_swap(QNativeIpcKey* self, QNativeIpcKey* other);
bool QNativeIpcKey_isEmpty(const QNativeIpcKey* self);
bool QNativeIpcKey_isValid(const QNativeIpcKey* self);
uint16_t QNativeIpcKey_type(const QNativeIpcKey* self);
void QNativeIpcKey_setType(QNativeIpcKey* self, uint16_t type);
struct seaqt_string QNativeIpcKey_nativeKey(const QNativeIpcKey* self);
void QNativeIpcKey_setNativeKey(QNativeIpcKey* self, struct seaqt_string newKey);
struct seaqt_string QNativeIpcKey_toString(const QNativeIpcKey* self);
QNativeIpcKey* QNativeIpcKey_fromString(struct seaqt_string string);

const QMetaObject* QNativeIpcKey_staticMetaObject();
void QNativeIpcKey_delete(QNativeIpcKey* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
