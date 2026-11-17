#pragma once
#ifndef SEAQT_QTCORE_GEN_QJSONVALUE_H
#define SEAQT_QTCORE_GEN_QJSONVALUE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJsonArray;
class QJsonObject;
class QJsonValue;
class QJsonValuePtr;
class QJsonValueRef;
class QJsonValueRefPtr;
class QVariant;
#else
typedef struct QJsonArray QJsonArray;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValuePtr QJsonValuePtr;
typedef struct QJsonValueRef QJsonValueRef;
typedef struct QJsonValueRefPtr QJsonValueRefPtr;
typedef struct QVariant QVariant;
#endif

QJsonValue* QJsonValue_new();
QJsonValue* QJsonValue_new_bool(bool b);
QJsonValue* QJsonValue_new_double(double n);
QJsonValue* QJsonValue_new_int(int n);
QJsonValue* QJsonValue_new_qint64(long long v);
QJsonValue* QJsonValue_new_QString(struct seaqt_string s);
QJsonValue* QJsonValue_new_char(const char* s);
QJsonValue* QJsonValue_new_QJsonArray(QJsonArray* a);
QJsonValue* QJsonValue_new_QJsonObject(QJsonObject* o);
QJsonValue* QJsonValue_new_QJsonValue(QJsonValue* from);
QJsonValue* QJsonValue_new_QJsonValue_Type(int param1);

void QJsonValue_operatorAssign(QJsonValue* self, QJsonValue* from);
void QJsonValue_swap(QJsonValue* self, QJsonValue* other);
QJsonValue* QJsonValue_fromVariant(QVariant* variant);
QVariant* QJsonValue_toVariant(const QJsonValue* self);
int QJsonValue_type(const QJsonValue* self);
bool QJsonValue_isNull(const QJsonValue* self);
bool QJsonValue_isBool(const QJsonValue* self);
bool QJsonValue_isDouble(const QJsonValue* self);
bool QJsonValue_isString(const QJsonValue* self);
bool QJsonValue_isArray(const QJsonValue* self);
bool QJsonValue_isObject(const QJsonValue* self);
bool QJsonValue_isUndefined(const QJsonValue* self);
bool QJsonValue_toBool(const QJsonValue* self);
int QJsonValue_toInt(const QJsonValue* self);
double QJsonValue_toDouble(const QJsonValue* self);
struct seaqt_string QJsonValue_toString(const QJsonValue* self);
struct seaqt_string QJsonValue_toString_defaultValue(const QJsonValue* self, struct seaqt_string defaultValue);
QJsonArray* QJsonValue_toArray(const QJsonValue* self);
QJsonArray* QJsonValue_toArray_defaultValue(const QJsonValue* self, QJsonArray* defaultValue);
QJsonObject* QJsonValue_toObject(const QJsonValue* self);
QJsonObject* QJsonValue_toObject_defaultValue(const QJsonValue* self, QJsonObject* defaultValue);
QJsonValue* QJsonValue_operatorSubscript_QString(const QJsonValue* self, struct seaqt_string key);
QJsonValue* QJsonValue_operatorSubscript_int(const QJsonValue* self, int i);
bool QJsonValue_operatorEqual(const QJsonValue* self, QJsonValue* other);
bool QJsonValue_operatorNotEqual(const QJsonValue* self, QJsonValue* other);
bool QJsonValue_toBool_defaultValue(const QJsonValue* self, bool defaultValue);
int QJsonValue_toInt_defaultValue(const QJsonValue* self, int defaultValue);
double QJsonValue_toDouble_defaultValue(const QJsonValue* self, double defaultValue);

void QJsonValue_delete(QJsonValue* self);

QJsonValueRef* QJsonValueRef_new_from(QJsonValueRef* from);
QJsonValueRef* QJsonValueRef_new_array_idx(QJsonArray* array, int idx);
QJsonValueRef* QJsonValueRef_new_object_idx(QJsonObject* object, int idx);

QJsonValue* QJsonValueRef_ToQJsonValue(const QJsonValueRef* self);
void QJsonValueRef_operatorAssign_val(QJsonValueRef* self, QJsonValue* val);
void QJsonValueRef_operatorAssign_from(QJsonValueRef* self, QJsonValueRef* from);
QVariant* QJsonValueRef_toVariant(const QJsonValueRef* self);
int QJsonValueRef_type(const QJsonValueRef* self);
bool QJsonValueRef_isNull(const QJsonValueRef* self);
bool QJsonValueRef_isBool(const QJsonValueRef* self);
bool QJsonValueRef_isDouble(const QJsonValueRef* self);
bool QJsonValueRef_isString(const QJsonValueRef* self);
bool QJsonValueRef_isArray(const QJsonValueRef* self);
bool QJsonValueRef_isObject(const QJsonValueRef* self);
bool QJsonValueRef_isUndefined(const QJsonValueRef* self);
bool QJsonValueRef_toBool(const QJsonValueRef* self);
int QJsonValueRef_toInt(const QJsonValueRef* self);
double QJsonValueRef_toDouble(const QJsonValueRef* self);
struct seaqt_string QJsonValueRef_toString(const QJsonValueRef* self);
QJsonArray* QJsonValueRef_toArray(const QJsonValueRef* self);
QJsonObject* QJsonValueRef_toObject(const QJsonValueRef* self);
bool QJsonValueRef_toBool_defaultValue(const QJsonValueRef* self, bool defaultValue);
int QJsonValueRef_toInt_defaultValue(const QJsonValueRef* self, int defaultValue);
double QJsonValueRef_toDouble_defaultValue(const QJsonValueRef* self, double defaultValue);
struct seaqt_string QJsonValueRef_toString_defaultValue(const QJsonValueRef* self, struct seaqt_string defaultValue);
bool QJsonValueRef_operatorEqual(const QJsonValueRef* self, QJsonValue* other);
bool QJsonValueRef_operatorNotEqual(const QJsonValueRef* self, QJsonValue* other);

void QJsonValueRef_delete(QJsonValueRef* self);

QJsonValuePtr* QJsonValuePtr_new_val(QJsonValue* val);
QJsonValuePtr* QJsonValuePtr_new_from(QJsonValuePtr* from);

QJsonValue* QJsonValuePtr_operatorMultiply(QJsonValuePtr* self);
QJsonValue* QJsonValuePtr_operatorMinusGreater(QJsonValuePtr* self);
void QJsonValuePtr_operatorAssign(QJsonValuePtr* self, QJsonValuePtr* from);

void QJsonValuePtr_delete(QJsonValuePtr* self);

QJsonValueRefPtr* QJsonValueRefPtr_new_array_idx(QJsonArray* array, int idx);
QJsonValueRefPtr* QJsonValueRefPtr_new_object_idx(QJsonObject* object, int idx);
QJsonValueRefPtr* QJsonValueRefPtr_new_from(QJsonValueRefPtr* from);

QJsonValueRef* QJsonValueRefPtr_operatorMultiply(QJsonValueRefPtr* self);
QJsonValueRef* QJsonValueRefPtr_operatorMinusGreater(QJsonValueRefPtr* self);
void QJsonValueRefPtr_operatorAssign(QJsonValueRefPtr* self, QJsonValueRefPtr* from);

void QJsonValueRefPtr_delete(QJsonValueRefPtr* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
