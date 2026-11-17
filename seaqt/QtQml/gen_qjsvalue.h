#pragma once
#ifndef SEAQT_QTQML_GEN_QJSVALUE_H
#define SEAQT_QTQML_GEN_QJSVALUE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QJSEngine;
class QJSValue;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QDateTime QDateTime;
typedef struct QJSEngine QJSEngine;
typedef struct QJSValue QJSValue;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

QJSValue* QJSValue_new();
QJSValue* QJSValue_new_bool(bool value);
QJSValue* QJSValue_new_int(int value);
QJSValue* QJSValue_new_uint(unsigned int value);
QJSValue* QJSValue_new_double(double value);
QJSValue* QJSValue_new_QString(struct seaqt_string value);
QJSValue* QJSValue_new_char(const char* str);
QJSValue* QJSValue_new_QJSValue_SpecialValue(int value);

bool QJSValue_isBool(const QJSValue* self);
bool QJSValue_isNumber(const QJSValue* self);
bool QJSValue_isNull(const QJSValue* self);
bool QJSValue_isString(const QJSValue* self);
bool QJSValue_isUndefined(const QJSValue* self);
bool QJSValue_isVariant(const QJSValue* self);
bool QJSValue_isQObject(const QJSValue* self);
bool QJSValue_isQMetaObject(const QJSValue* self);
bool QJSValue_isObject(const QJSValue* self);
bool QJSValue_isDate(const QJSValue* self);
bool QJSValue_isRegExp(const QJSValue* self);
bool QJSValue_isArray(const QJSValue* self);
bool QJSValue_isError(const QJSValue* self);
struct seaqt_string QJSValue_toString(const QJSValue* self);
double QJSValue_toNumber(const QJSValue* self);
int QJSValue_toInt(const QJSValue* self);
unsigned int QJSValue_toUInt(const QJSValue* self);
bool QJSValue_toBool(const QJSValue* self);
QVariant* QJSValue_toVariant(const QJSValue* self);
QObject* QJSValue_toQObject(const QJSValue* self);
QMetaObject* QJSValue_toQMetaObject(const QJSValue* self);
QDateTime* QJSValue_toDateTime(const QJSValue* self);
QJSValue* QJSValue_prototype(const QJSValue* self);
QJSValue* QJSValue_property_name(const QJSValue* self, struct seaqt_string name);
bool QJSValue_hasProperty(const QJSValue* self, struct seaqt_string name);
bool QJSValue_hasOwnProperty(const QJSValue* self, struct seaqt_string name);
QJSValue* QJSValue_property_arrayIndex(const QJSValue* self, unsigned int arrayIndex);
bool QJSValue_deleteProperty(QJSValue* self, struct seaqt_string name);
bool QJSValue_isCallable(const QJSValue* self);
QJSValue* QJSValue_call(QJSValue* self);
QJSValue* QJSValue_callAsConstructor(QJSValue* self);
int QJSValue_errorType(const QJSValue* self);
QJSEngine* QJSValue_engine(const QJSValue* self);
QJSValue* QJSValue_call_args(QJSValue* self, struct seaqt_array /* of QJSValue* */  args);
QJSValue* QJSValue_callAsConstructor_args(QJSValue* self, struct seaqt_array /* of QJSValue* */  args);

void QJSValue_delete(QJSValue* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
