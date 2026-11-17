#pragma once
#ifndef SEAQT_QTCORE_GEN_QJSONARRAY_H
#define SEAQT_QTCORE_GEN_QJSONARRAY_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__const_iterator)
typedef QJsonArray::const_iterator QJsonArray__const_iterator;
#else
class QJsonArray__const_iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__iterator)
typedef QJsonArray::iterator QJsonArray__iterator;
#else
class QJsonArray__iterator;
#endif
class QJsonValue;
class QJsonValueConstRef;
class QJsonValueRef;
class QVariant;
#else
typedef struct QJsonArray QJsonArray;
typedef struct QJsonArray__const_iterator QJsonArray__const_iterator;
typedef struct QJsonArray__iterator QJsonArray__iterator;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValueConstRef QJsonValueConstRef;
typedef struct QJsonValueRef QJsonValueRef;
typedef struct QVariant QVariant;
#endif

QJsonArray* QJsonArray_new();
QJsonArray* QJsonArray_new_from(QJsonArray* from);

void QJsonArray_operatorAssign(QJsonArray* self, QJsonArray* from);
QJsonArray* QJsonArray_fromStringList(struct seaqt_array /* of struct seaqt_string */  list);
QJsonArray* QJsonArray_fromVariantList(struct seaqt_array /* of QVariant* */  list);
struct seaqt_array /* of QVariant* */  QJsonArray_toVariantList(const QJsonArray* self);
ptrdiff_t QJsonArray_size(const QJsonArray* self);
ptrdiff_t QJsonArray_count(const QJsonArray* self);
bool QJsonArray_isEmpty(const QJsonArray* self);
QJsonValue* QJsonArray_at(const QJsonArray* self, ptrdiff_t i);
QJsonValue* QJsonArray_first(const QJsonArray* self);
QJsonValue* QJsonArray_last(const QJsonArray* self);
void QJsonArray_prepend(QJsonArray* self, QJsonValue* value);
void QJsonArray_append(QJsonArray* self, QJsonValue* value);
void QJsonArray_removeAt(QJsonArray* self, ptrdiff_t i);
QJsonValue* QJsonArray_takeAt(QJsonArray* self, ptrdiff_t i);
void QJsonArray_removeFirst(QJsonArray* self);
void QJsonArray_removeLast(QJsonArray* self);
void QJsonArray_insert_i_value(QJsonArray* self, ptrdiff_t i, QJsonValue* value);
void QJsonArray_replace(QJsonArray* self, ptrdiff_t i, QJsonValue* value);
bool QJsonArray_contains(const QJsonArray* self, QJsonValue* element);
QJsonValueRef* QJsonArray_operatorSubscript_qsizetype(QJsonArray* self, ptrdiff_t i);
QJsonValue* QJsonArray_operatorSubscript_const_qsizetype(const QJsonArray* self, ptrdiff_t i);
bool QJsonArray_operatorEqual(const QJsonArray* self, QJsonArray* other);
bool QJsonArray_operatorNotEqual(const QJsonArray* self, QJsonArray* other);
void QJsonArray_swap(QJsonArray* self, QJsonArray* other);
QJsonArray__iterator* QJsonArray_begin(QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_begin_const(const QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_constBegin(const QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_cbegin(const QJsonArray* self);
QJsonArray__iterator* QJsonArray_end(QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_end_const(const QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_constEnd(const QJsonArray* self);
QJsonArray__const_iterator* QJsonArray_cend(const QJsonArray* self);
QJsonArray__iterator* QJsonArray_insert_before_value(QJsonArray* self, QJsonArray__iterator* before, QJsonValue* value);
QJsonArray__iterator* QJsonArray_erase(QJsonArray* self, QJsonArray__iterator* it);
QJsonArray* QJsonArray_operatorPlus(const QJsonArray* self, QJsonValue* v);
QJsonArray* QJsonArray_operatorPlusAssign(QJsonArray* self, QJsonValue* v);
QJsonArray* QJsonArray_operatorShiftLeft(QJsonArray* self, QJsonValue* v);
void QJsonArray_push_back(QJsonArray* self, QJsonValue* t);
void QJsonArray_push_front(QJsonArray* self, QJsonValue* t);
void QJsonArray_pop_front(QJsonArray* self);
void QJsonArray_pop_back(QJsonArray* self);
bool QJsonArray_empty(const QJsonArray* self);

void QJsonArray_delete(QJsonArray* self);

QJsonArray__iterator* QJsonArray__iterator_new();
QJsonArray__iterator* QJsonArray__iterator_new_array_index(QJsonArray* array, ptrdiff_t index);
QJsonArray__iterator* QJsonArray__iterator_new_from(QJsonArray__iterator* from);

void QJsonArray__iterator_operatorAssign(QJsonArray__iterator* self, QJsonArray__iterator* from);
QJsonValueRef* QJsonArray__iterator_operatorMultiply(const QJsonArray__iterator* self);
QJsonValueConstRef* QJsonArray__iterator_operatorMinusGreater_const(const QJsonArray__iterator* self);
QJsonValueRef* QJsonArray__iterator_operatorMinusGreater(QJsonArray__iterator* self);
QJsonValueRef* QJsonArray__iterator_operatorSubscript(const QJsonArray__iterator* self, ptrdiff_t j);
bool QJsonArray__iterator_operatorEqual_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* o);
bool QJsonArray__iterator_operatorNotEqual_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* o);
bool QJsonArray__iterator_operatorLesser_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* other);
bool QJsonArray__iterator_operatorLesserOrEqual_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* other);
bool QJsonArray__iterator_operatorGreater_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* other);
bool QJsonArray__iterator_operatorGreaterOrEqual_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* other);
bool QJsonArray__iterator_operatorEqual_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* o);
bool QJsonArray__iterator_operatorNotEqual_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* o);
bool QJsonArray__iterator_operatorLesser_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__iterator_operatorLesserOrEqual_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__iterator_operatorGreater_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__iterator_operatorGreaterOrEqual_QJsonArray_const_iterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
QJsonArray__iterator* QJsonArray__iterator_operatorPlusPlus(QJsonArray__iterator* self);
QJsonArray__iterator* QJsonArray__iterator_operatorPlusPlus_int(QJsonArray__iterator* self, int param1);
QJsonArray__iterator* QJsonArray__iterator_operatorMinusMinus(QJsonArray__iterator* self);
QJsonArray__iterator* QJsonArray__iterator_operatorMinusMinus_int(QJsonArray__iterator* self, int param1);
QJsonArray__iterator* QJsonArray__iterator_operatorPlusAssign(QJsonArray__iterator* self, ptrdiff_t j);
QJsonArray__iterator* QJsonArray__iterator_operatorMinusAssign(QJsonArray__iterator* self, ptrdiff_t j);
QJsonArray__iterator* QJsonArray__iterator_operatorPlus(const QJsonArray__iterator* self, ptrdiff_t j);
QJsonArray__iterator* QJsonArray__iterator_operatorMinus_qsizetype(const QJsonArray__iterator* self, ptrdiff_t j);
ptrdiff_t QJsonArray__iterator_operatorMinus_QJsonArray_iterator(const QJsonArray__iterator* self, QJsonArray__iterator* j);

void QJsonArray__iterator_delete(QJsonArray__iterator* self);

QJsonArray__const_iterator* QJsonArray__const_iterator_new();
QJsonArray__const_iterator* QJsonArray__const_iterator_new_array_index(QJsonArray* array, ptrdiff_t index);
QJsonArray__const_iterator* QJsonArray__const_iterator_new_o(QJsonArray__iterator* o);
QJsonArray__const_iterator* QJsonArray__const_iterator_new_from(QJsonArray__const_iterator* from);

void QJsonArray__const_iterator_operatorAssign(QJsonArray__const_iterator* self, QJsonArray__const_iterator* from);
QJsonValueConstRef* QJsonArray__const_iterator_operatorMultiply(const QJsonArray__const_iterator* self);
QJsonValueConstRef* QJsonArray__const_iterator_operatorMinusGreater(const QJsonArray__const_iterator* self);
QJsonValueConstRef* QJsonArray__const_iterator_operatorSubscript(const QJsonArray__const_iterator* self, ptrdiff_t j);
bool QJsonArray__const_iterator_operatorEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* o);
bool QJsonArray__const_iterator_operatorNotEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* o);
bool QJsonArray__const_iterator_operatorLesser(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__const_iterator_operatorLesserOrEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__const_iterator_operatorGreater(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
bool QJsonArray__const_iterator_operatorGreaterOrEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusPlus(QJsonArray__const_iterator* self);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusPlus_int(QJsonArray__const_iterator* self, int param1);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusMinus(QJsonArray__const_iterator* self);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusMinus_int(QJsonArray__const_iterator* self, int param1);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlusAssign(QJsonArray__const_iterator* self, ptrdiff_t j);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinusAssign(QJsonArray__const_iterator* self, ptrdiff_t j);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorPlus(const QJsonArray__const_iterator* self, ptrdiff_t j);
QJsonArray__const_iterator* QJsonArray__const_iterator_operatorMinus_qsizetype(const QJsonArray__const_iterator* self, ptrdiff_t j);
ptrdiff_t QJsonArray__const_iterator_operatorMinus_QJsonArray_const_iterator(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* j);

void QJsonArray__const_iterator_delete(QJsonArray__const_iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
