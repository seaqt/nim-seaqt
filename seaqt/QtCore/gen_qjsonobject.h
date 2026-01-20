#pragma once
#ifndef SEAQT_QTCORE_GEN_QJSONOBJECT_H
#define SEAQT_QTCORE_GEN_QJSONOBJECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QJsonObject;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonObject__const_iterator)
typedef QJsonObject::const_iterator QJsonObject__const_iterator;
#else
class QJsonObject__const_iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonObject__iterator)
typedef QJsonObject::iterator QJsonObject__iterator;
#else
class QJsonObject__iterator;
#endif
class QJsonValue;
class QJsonValuePtr;
class QJsonValueRef;
class QJsonValueRefPtr;
class QVariant;
#else
typedef struct QJsonObject QJsonObject;
typedef struct QJsonObject__const_iterator QJsonObject__const_iterator;
typedef struct QJsonObject__iterator QJsonObject__iterator;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValuePtr QJsonValuePtr;
typedef struct QJsonValueRef QJsonValueRef;
typedef struct QJsonValueRefPtr QJsonValueRefPtr;
typedef struct QVariant QVariant;
#endif

QJsonObject* QJsonObject_new();
QJsonObject* QJsonObject_new_from(QJsonObject* from);

void QJsonObject_operatorAssign(QJsonObject* self, QJsonObject* from);
void QJsonObject_swap(QJsonObject* self, QJsonObject* other);
QJsonObject* QJsonObject_fromVariantMap(struct seaqt_map /* of struct seaqt_string to QVariant* */  map);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QJsonObject_toVariantMap(const QJsonObject* self);
QJsonObject* QJsonObject_fromVariantHash(struct seaqt_map /* of struct seaqt_string to QVariant* */  map);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QJsonObject_toVariantHash(const QJsonObject* self);
struct seaqt_array /* of struct seaqt_string */  QJsonObject_keys(const QJsonObject* self);
int QJsonObject_size(const QJsonObject* self);
int QJsonObject_count(const QJsonObject* self);
int QJsonObject_length(const QJsonObject* self);
bool QJsonObject_isEmpty(const QJsonObject* self);
QJsonValue* QJsonObject_value_QString(const QJsonObject* self, struct seaqt_string key);
QJsonValue* QJsonObject_operatorSubscript_const_cQString(const QJsonObject* self, struct seaqt_string key);
QJsonValueRef* QJsonObject_operatorSubscript_cQString(QJsonObject* self, struct seaqt_string key);
void QJsonObject_remove_QString(QJsonObject* self, struct seaqt_string key);
QJsonValue* QJsonObject_take_QString(QJsonObject* self, struct seaqt_string key);
bool QJsonObject_contains_QString(const QJsonObject* self, struct seaqt_string key);
bool QJsonObject_operatorEqual(const QJsonObject* self, QJsonObject* other);
bool QJsonObject_operatorNotEqual(const QJsonObject* self, QJsonObject* other);
QJsonObject__iterator* QJsonObject_begin(QJsonObject* self);
QJsonObject__const_iterator* QJsonObject_begin_const(const QJsonObject* self);
QJsonObject__const_iterator* QJsonObject_constBegin(const QJsonObject* self);
QJsonObject__iterator* QJsonObject_end(QJsonObject* self);
QJsonObject__const_iterator* QJsonObject_end_const(const QJsonObject* self);
QJsonObject__const_iterator* QJsonObject_constEnd(const QJsonObject* self);
QJsonObject__iterator* QJsonObject_erase(QJsonObject* self, QJsonObject__iterator* it);
QJsonObject__iterator* QJsonObject_find_cQString(QJsonObject* self, struct seaqt_string key);
QJsonObject__const_iterator* QJsonObject_find_const_cQString(const QJsonObject* self, struct seaqt_string key);
QJsonObject__const_iterator* QJsonObject_constFind_QString(const QJsonObject* self, struct seaqt_string key);
QJsonObject__iterator* QJsonObject_insert_QString_QJsonValue(QJsonObject* self, struct seaqt_string key, QJsonValue* value);
bool QJsonObject_empty(const QJsonObject* self);

void QJsonObject_delete(QJsonObject* self);

QJsonObject__iterator* QJsonObject__iterator_new();
QJsonObject__iterator* QJsonObject__iterator_new_obj_index(QJsonObject* obj, int index);
QJsonObject__iterator* QJsonObject__iterator_new_from(QJsonObject__iterator* from);

struct seaqt_string QJsonObject__iterator_key(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_value(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_operatorMultiply(const QJsonObject__iterator* self);
QJsonValueRefPtr* QJsonObject__iterator_operatorMinusGreater(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_operatorSubscript(QJsonObject__iterator* self, int j);
bool QJsonObject__iterator_operatorEqual_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
bool QJsonObject__iterator_operatorNotEqual_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
bool QJsonObject__iterator_operatorLesser_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
bool QJsonObject__iterator_operatorLesserOrEqual_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
bool QJsonObject__iterator_operatorGreater_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
bool QJsonObject__iterator_operatorGreaterOrEqual_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* other);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusPlus(QJsonObject__iterator* self);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusPlus_int(QJsonObject__iterator* self, int param1);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusMinus(QJsonObject__iterator* self);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusMinus_int(QJsonObject__iterator* self, int param1);
QJsonObject__iterator* QJsonObject__iterator_operatorPlus(const QJsonObject__iterator* self, int j);
QJsonObject__iterator* QJsonObject__iterator_operatorMinus_int(const QJsonObject__iterator* self, int j);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusAssign(QJsonObject__iterator* self, int j);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusAssign(QJsonObject__iterator* self, int j);
int QJsonObject__iterator_operatorMinus_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* j);
bool QJsonObject__iterator_operatorEqual_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__iterator_operatorNotEqual_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__iterator_operatorLesser_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__iterator_operatorLesserOrEqual_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__iterator_operatorGreater_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__iterator_operatorGreaterOrEqual_QJsonObject_const_iterator(const QJsonObject__iterator* self, QJsonObject__const_iterator* other);

void QJsonObject__iterator_delete(QJsonObject__iterator* self);

QJsonObject__const_iterator* QJsonObject__const_iterator_new();
QJsonObject__const_iterator* QJsonObject__const_iterator_new_obj_index(QJsonObject* obj, int index);
QJsonObject__const_iterator* QJsonObject__const_iterator_new_other(QJsonObject__iterator* other);
QJsonObject__const_iterator* QJsonObject__const_iterator_new_from(QJsonObject__const_iterator* from);

struct seaqt_string QJsonObject__const_iterator_key(const QJsonObject__const_iterator* self);
QJsonValue* QJsonObject__const_iterator_value(const QJsonObject__const_iterator* self);
QJsonValue* QJsonObject__const_iterator_operatorMultiply(const QJsonObject__const_iterator* self);
QJsonValuePtr* QJsonObject__const_iterator_operatorMinusGreater(const QJsonObject__const_iterator* self);
QJsonValue* QJsonObject__const_iterator_operatorSubscript(QJsonObject__const_iterator* self, int j);
bool QJsonObject__const_iterator_operatorEqual_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__const_iterator_operatorNotEqual_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__const_iterator_operatorLesser_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__const_iterator_operatorLesserOrEqual_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__const_iterator_operatorGreater_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
bool QJsonObject__const_iterator_operatorGreaterOrEqual_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* other);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusPlus(QJsonObject__const_iterator* self);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusPlus_int(QJsonObject__const_iterator* self, int param1);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusMinus(QJsonObject__const_iterator* self);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusMinus_int(QJsonObject__const_iterator* self, int param1);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlus(const QJsonObject__const_iterator* self, int j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinus_int(const QJsonObject__const_iterator* self, int j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusAssign(QJsonObject__const_iterator* self, int j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusAssign(QJsonObject__const_iterator* self, int j);
int QJsonObject__const_iterator_operatorMinus_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* j);
bool QJsonObject__const_iterator_operatorEqual_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);
bool QJsonObject__const_iterator_operatorNotEqual_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);
bool QJsonObject__const_iterator_operatorLesser_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);
bool QJsonObject__const_iterator_operatorLesserOrEqual_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);
bool QJsonObject__const_iterator_operatorGreater_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);
bool QJsonObject__const_iterator_operatorGreaterOrEqual_QJsonObject_iterator(const QJsonObject__const_iterator* self, QJsonObject__iterator* other);

void QJsonObject__const_iterator_delete(QJsonObject__const_iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
