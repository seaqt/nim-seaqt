#pragma once
#ifndef SEAQT_QTQML_GEN_QJSPRIMITIVEVALUE_H
#define SEAQT_QTQML_GEN_QJSPRIMITIVEVALUE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJSPrimitiveNull;
class QJSPrimitiveUndefined;
class QJSPrimitiveValue;
class QMetaType;
class QVariant;
#else
typedef struct QJSPrimitiveNull QJSPrimitiveNull;
typedef struct QJSPrimitiveUndefined QJSPrimitiveUndefined;
typedef struct QJSPrimitiveValue QJSPrimitiveValue;
typedef struct QMetaType QMetaType;
typedef struct QVariant QVariant;
#endif

QJSPrimitiveUndefined* QJSPrimitiveUndefined_new();
QJSPrimitiveUndefined* QJSPrimitiveUndefined_new_from(QJSPrimitiveUndefined* from);

void QJSPrimitiveUndefined_delete(QJSPrimitiveUndefined* self);

QJSPrimitiveNull* QJSPrimitiveNull_new();
QJSPrimitiveNull* QJSPrimitiveNull_new_from(QJSPrimitiveNull* from);

void QJSPrimitiveNull_delete(QJSPrimitiveNull* self);

QJSPrimitiveValue* QJSPrimitiveValue_new();
QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveUndefined(QJSPrimitiveUndefined* undefined);
QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveNull(QJSPrimitiveNull* null);
QJSPrimitiveValue* QJSPrimitiveValue_new_bool(bool value);
QJSPrimitiveValue* QJSPrimitiveValue_new_int(int value);
QJSPrimitiveValue* QJSPrimitiveValue_new_double(double value);
QJSPrimitiveValue* QJSPrimitiveValue_new_QString(struct seaqt_string string);
QJSPrimitiveValue* QJSPrimitiveValue_new_QMetaType_void(QMetaType* type, const void* value);
QJSPrimitiveValue* QJSPrimitiveValue_new_QVariant(QVariant* variant);
QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveValue(QJSPrimitiveValue* from);

uint8_t QJSPrimitiveValue_type(const QJSPrimitiveValue* self);
bool QJSPrimitiveValue_toBoolean(const QJSPrimitiveValue* self);
int QJSPrimitiveValue_toInteger(const QJSPrimitiveValue* self);
double QJSPrimitiveValue_toDouble(const QJSPrimitiveValue* self);
struct seaqt_string QJSPrimitiveValue_toString(const QJSPrimitiveValue* self);
QVariant* QJSPrimitiveValue_toVariant(const QJSPrimitiveValue* self);
QJSPrimitiveValue* QJSPrimitiveValue_operatorPlusPlus(QJSPrimitiveValue* self);
QJSPrimitiveValue* QJSPrimitiveValue_operatorPlusPlus_int(QJSPrimitiveValue* self, int param1);
QJSPrimitiveValue* QJSPrimitiveValue_operatorMinusMinus(QJSPrimitiveValue* self);
QJSPrimitiveValue* QJSPrimitiveValue_operatorMinusMinus_int(QJSPrimitiveValue* self, int param1);
QJSPrimitiveValue* QJSPrimitiveValue_operatorPlus(QJSPrimitiveValue* self);
QJSPrimitiveValue* QJSPrimitiveValue_operatorMinus(QJSPrimitiveValue* self);
bool QJSPrimitiveValue_strictlyEquals(const QJSPrimitiveValue* self, QJSPrimitiveValue* other);
bool QJSPrimitiveValue_equals(const QJSPrimitiveValue* self, QJSPrimitiveValue* other);
void QJSPrimitiveValue_operatorAssign(QJSPrimitiveValue* self, QJSPrimitiveValue* from);

void QJSPrimitiveValue_delete(QJSPrimitiveValue* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
