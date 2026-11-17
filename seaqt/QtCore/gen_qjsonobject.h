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
class QAnyStringView;
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
class QJsonValueConstRef;
class QJsonValueRef;
class QVariant;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonObject__const_iterator QJsonObject__const_iterator;
typedef struct QJsonObject__iterator QJsonObject__iterator;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValueConstRef QJsonValueConstRef;
typedef struct QJsonValueRef QJsonValueRef;
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
ptrdiff_t QJsonObject_size(const QJsonObject* self);
ptrdiff_t QJsonObject_count(const QJsonObject* self);
ptrdiff_t QJsonObject_length(const QJsonObject* self);
bool QJsonObject_isEmpty(const QJsonObject* self);
QJsonValue* QJsonObject_value_QString(const QJsonObject* self, struct seaqt_string key);
QJsonValue* QJsonObject_operatorSubscript_const_cQString(const QJsonObject* self, struct seaqt_string key);
QJsonValueRef* QJsonObject_operatorSubscript_cQString(QJsonObject* self, struct seaqt_string key);
void QJsonObject_remove_QString(QJsonObject* self, struct seaqt_string key);
QJsonValue* QJsonObject_take_QString(QJsonObject* self, struct seaqt_string key);
bool QJsonObject_contains_QString(const QJsonObject* self, struct seaqt_string key);
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
QJsonObject__iterator* QJsonObject__iterator_new_obj_index(QJsonObject* obj, ptrdiff_t index);
QJsonObject__iterator* QJsonObject__iterator_new_from(QJsonObject__iterator* from);

void QJsonObject__iterator_operatorAssign(QJsonObject__iterator* self, QJsonObject__iterator* from);
struct seaqt_string QJsonObject__iterator_key(const QJsonObject__iterator* self);
struct seaqt_string QJsonObject__iterator_keyView(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_value(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_operatorMultiply(const QJsonObject__iterator* self);
QJsonValueConstRef* QJsonObject__iterator_operatorMinusGreater_const(const QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_operatorMinusGreater(QJsonObject__iterator* self);
QJsonValueRef* QJsonObject__iterator_operatorSubscript(const QJsonObject__iterator* self, ptrdiff_t j);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusPlus(QJsonObject__iterator* self);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusPlus_int(QJsonObject__iterator* self, int param1);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusMinus(QJsonObject__iterator* self);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusMinus_int(QJsonObject__iterator* self, int param1);
QJsonObject__iterator* QJsonObject__iterator_operatorPlus(const QJsonObject__iterator* self, ptrdiff_t j);
QJsonObject__iterator* QJsonObject__iterator_operatorMinus_qsizetype(const QJsonObject__iterator* self, ptrdiff_t j);
QJsonObject__iterator* QJsonObject__iterator_operatorPlusAssign(QJsonObject__iterator* self, ptrdiff_t j);
QJsonObject__iterator* QJsonObject__iterator_operatorMinusAssign(QJsonObject__iterator* self, ptrdiff_t j);
ptrdiff_t QJsonObject__iterator_operatorMinus_QJsonObject_iterator(const QJsonObject__iterator* self, QJsonObject__iterator* j);

void QJsonObject__iterator_delete(QJsonObject__iterator* self);

QJsonObject__const_iterator* QJsonObject__const_iterator_new();
QJsonObject__const_iterator* QJsonObject__const_iterator_new_obj_index(QJsonObject* obj, ptrdiff_t index);
QJsonObject__const_iterator* QJsonObject__const_iterator_new_other(QJsonObject__iterator* other);
QJsonObject__const_iterator* QJsonObject__const_iterator_new_from(QJsonObject__const_iterator* from);

void QJsonObject__const_iterator_operatorAssign(QJsonObject__const_iterator* self, QJsonObject__const_iterator* from);
struct seaqt_string QJsonObject__const_iterator_key(const QJsonObject__const_iterator* self);
struct seaqt_string QJsonObject__const_iterator_keyView(const QJsonObject__const_iterator* self);
QJsonValueConstRef* QJsonObject__const_iterator_value(const QJsonObject__const_iterator* self);
QJsonValueConstRef* QJsonObject__const_iterator_operatorMultiply(const QJsonObject__const_iterator* self);
QJsonValueConstRef* QJsonObject__const_iterator_operatorMinusGreater(const QJsonObject__const_iterator* self);
QJsonValueConstRef* QJsonObject__const_iterator_operatorSubscript(const QJsonObject__const_iterator* self, ptrdiff_t j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusPlus(QJsonObject__const_iterator* self);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusPlus_int(QJsonObject__const_iterator* self, int param1);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusMinus(QJsonObject__const_iterator* self);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusMinus_int(QJsonObject__const_iterator* self, int param1);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlus(const QJsonObject__const_iterator* self, ptrdiff_t j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinus_qsizetype(const QJsonObject__const_iterator* self, ptrdiff_t j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorPlusAssign(QJsonObject__const_iterator* self, ptrdiff_t j);
QJsonObject__const_iterator* QJsonObject__const_iterator_operatorMinusAssign(QJsonObject__const_iterator* self, ptrdiff_t j);
ptrdiff_t QJsonObject__const_iterator_operatorMinus_QJsonObject_const_iterator(const QJsonObject__const_iterator* self, QJsonObject__const_iterator* j);

void QJsonObject__const_iterator_delete(QJsonObject__const_iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
