#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORARRAY_H
#define SEAQT_QTCORE_GEN_QCBORARRAY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborArray;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__ConstIterator)
typedef QCborArray::ConstIterator QCborArray__ConstIterator;
#else
class QCborArray__ConstIterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__Iterator)
typedef QCborArray::Iterator QCborArray__Iterator;
#else
class QCborArray__Iterator;
#endif
class QCborValue;
class QCborValueConstRef;
class QCborValueRef;
class QJsonArray;
class QVariant;
#else
typedef struct QCborArray QCborArray;
typedef struct QCborArray__ConstIterator QCborArray__ConstIterator;
typedef struct QCborArray__Iterator QCborArray__Iterator;
typedef struct QCborValue QCborValue;
typedef struct QCborValueConstRef QCborValueConstRef;
typedef struct QCborValueRef QCborValueRef;
typedef struct QJsonArray QJsonArray;
typedef struct QVariant QVariant;
#endif

QCborArray* QCborArray_new();
QCborArray* QCborArray_new_from(QCborArray* from);

void QCborArray_operatorAssign(QCborArray* self, QCborArray* from);
void QCborArray_swap(QCborArray* self, QCborArray* other);
QCborValue* QCborArray_toCborValue(const QCborArray* self);
ptrdiff_t QCborArray_size(const QCborArray* self);
bool QCborArray_isEmpty(const QCborArray* self);
void QCborArray_clear(QCborArray* self);
QCborValue* QCborArray_at(const QCborArray* self, ptrdiff_t i);
QCborValue* QCborArray_first_const(const QCborArray* self);
QCborValue* QCborArray_last_const(const QCborArray* self);
QCborValue* QCborArray_operatorSubscript_const_qsizetype(const QCborArray* self, ptrdiff_t i);
QCborValueRef* QCborArray_first(QCborArray* self);
QCborValueRef* QCborArray_last(QCborArray* self);
QCborValueRef* QCborArray_operatorSubscript_qsizetype(QCborArray* self, ptrdiff_t i);
void QCborArray_insert_qsizetype_QCborValue(QCborArray* self, ptrdiff_t i, QCborValue* value);
void QCborArray_prepend(QCborArray* self, QCborValue* value);
void QCborArray_append(QCborArray* self, QCborValue* value);
QCborValue* QCborArray_extract_QCborArray_ConstIterator(QCborArray* self, QCborArray__ConstIterator* it);
QCborValue* QCborArray_extract_QCborArray_Iterator(QCborArray* self, QCborArray__Iterator* it);
void QCborArray_removeAt(QCborArray* self, ptrdiff_t i);
QCborValue* QCborArray_takeAt(QCborArray* self, ptrdiff_t i);
void QCborArray_removeFirst(QCborArray* self);
void QCborArray_removeLast(QCborArray* self);
QCborValue* QCborArray_takeFirst(QCborArray* self);
QCborValue* QCborArray_takeLast(QCborArray* self);
bool QCborArray_contains(const QCborArray* self, QCborValue* value);
int QCborArray_compare(const QCborArray* self, QCborArray* other);
bool QCborArray_operatorEqual(const QCborArray* self, QCborArray* other);
bool QCborArray_operatorNotEqual(const QCborArray* self, QCborArray* other);
bool QCborArray_operatorLesser(const QCborArray* self, QCborArray* other);
QCborArray__Iterator* QCborArray_begin(QCborArray* self);
QCborArray__ConstIterator* QCborArray_constBegin(const QCborArray* self);
QCborArray__ConstIterator* QCborArray_begin_const(const QCborArray* self);
QCborArray__ConstIterator* QCborArray_cbegin(const QCborArray* self);
QCborArray__Iterator* QCborArray_end(QCborArray* self);
QCborArray__ConstIterator* QCborArray_constEnd(const QCborArray* self);
QCborArray__ConstIterator* QCborArray_end_const(const QCborArray* self);
QCborArray__ConstIterator* QCborArray_cend(const QCborArray* self);
QCborArray__Iterator* QCborArray_insert_QCborArray_iterator_QCborValue(QCborArray* self, QCborArray__Iterator* before, QCborValue* value);
QCborArray__Iterator* QCborArray_insert_QCborArray_const_iterator_QCborValue(QCborArray* self, QCborArray__ConstIterator* before, QCborValue* value);
QCborArray__Iterator* QCborArray_erase_QCborArray_iterator(QCborArray* self, QCborArray__Iterator* it);
QCborArray__Iterator* QCborArray_erase_QCborArray_const_iterator(QCborArray* self, QCborArray__ConstIterator* it);
void QCborArray_push_back(QCborArray* self, QCborValue* t);
void QCborArray_push_front(QCborArray* self, QCborValue* t);
void QCborArray_pop_front(QCborArray* self);
void QCborArray_pop_back(QCborArray* self);
bool QCborArray_empty(const QCborArray* self);
QCborArray* QCborArray_operatorPlus(const QCborArray* self, QCborValue* v);
QCborArray* QCborArray_operatorPlusAssign(QCborArray* self, QCborValue* v);
QCborArray* QCborArray_operatorShiftLeft(QCborArray* self, QCborValue* v);
QCborArray* QCborArray_fromStringList(struct seaqt_array /* of struct seaqt_string */  list);
QCborArray* QCborArray_fromVariantList(struct seaqt_array /* of QVariant* */  list);
QCborArray* QCborArray_fromJsonArray(QJsonArray* array);
struct seaqt_array /* of QVariant* */  QCborArray_toVariantList(const QCborArray* self);
QJsonArray* QCborArray_toJsonArray(const QCborArray* self);

void QCborArray_delete(QCborArray* self);

QCborArray__Iterator* QCborArray__Iterator_new();
QCborArray__Iterator* QCborArray__Iterator_new_from(QCborArray__Iterator* from);

void QCborArray__Iterator_operatorAssign(QCborArray__Iterator* self, QCborArray__Iterator* from);
QCborValueRef* QCborArray__Iterator_operatorMultiply(const QCborArray__Iterator* self);
QCborValueRef* QCborArray__Iterator_operatorMinusGreater(QCborArray__Iterator* self);
QCborValueConstRef* QCborArray__Iterator_operatorMinusGreater_const(const QCborArray__Iterator* self);
QCborValueRef* QCborArray__Iterator_operatorSubscript(const QCborArray__Iterator* self, ptrdiff_t j);
bool QCborArray__Iterator_operatorEqual_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* o);
bool QCborArray__Iterator_operatorNotEqual_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* o);
bool QCborArray__Iterator_operatorLesser_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* other);
bool QCborArray__Iterator_operatorLesserOrEqual_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* other);
bool QCborArray__Iterator_operatorGreater_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* other);
bool QCborArray__Iterator_operatorGreaterOrEqual_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* other);
bool QCborArray__Iterator_operatorEqual_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* o);
bool QCborArray__Iterator_operatorNotEqual_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* o);
bool QCborArray__Iterator_operatorLesser_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
bool QCborArray__Iterator_operatorLesserOrEqual_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
bool QCborArray__Iterator_operatorGreater_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
bool QCborArray__Iterator_operatorGreaterOrEqual_QCborArray_ConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
QCborArray__Iterator* QCborArray__Iterator_operatorPlusPlus(QCborArray__Iterator* self);
QCborArray__Iterator* QCborArray__Iterator_operatorPlusPlus_int(QCborArray__Iterator* self, int param1);
QCborArray__Iterator* QCborArray__Iterator_operatorMinusMinus(QCborArray__Iterator* self);
QCborArray__Iterator* QCborArray__Iterator_operatorMinusMinus_int(QCborArray__Iterator* self, int param1);
QCborArray__Iterator* QCborArray__Iterator_operatorPlusAssign(QCborArray__Iterator* self, ptrdiff_t j);
QCborArray__Iterator* QCborArray__Iterator_operatorMinusAssign(QCborArray__Iterator* self, ptrdiff_t j);
QCborArray__Iterator* QCborArray__Iterator_operatorPlus(const QCborArray__Iterator* self, ptrdiff_t j);
QCborArray__Iterator* QCborArray__Iterator_operatorMinus_qsizetype(const QCborArray__Iterator* self, ptrdiff_t j);
ptrdiff_t QCborArray__Iterator_operatorMinus_QCborArray_Iterator(const QCborArray__Iterator* self, QCborArray__Iterator* j);

void QCborArray__Iterator_delete(QCborArray__Iterator* self);

QCborArray__ConstIterator* QCborArray__ConstIterator_new();
QCborArray__ConstIterator* QCborArray__ConstIterator_new_from(QCborArray__ConstIterator* from);

void QCborArray__ConstIterator_operatorAssign(QCborArray__ConstIterator* self, QCborArray__ConstIterator* from);
QCborValueConstRef* QCborArray__ConstIterator_operatorMultiply(const QCborArray__ConstIterator* self);
QCborValueConstRef* QCborArray__ConstIterator_operatorMinusGreater(const QCborArray__ConstIterator* self);
QCborValueConstRef* QCborArray__ConstIterator_operatorSubscript(const QCborArray__ConstIterator* self, ptrdiff_t j);
bool QCborArray__ConstIterator_operatorEqual_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* o);
bool QCborArray__ConstIterator_operatorNotEqual_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* o);
bool QCborArray__ConstIterator_operatorLesser_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
bool QCborArray__ConstIterator_operatorLesserOrEqual_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
bool QCborArray__ConstIterator_operatorGreater_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
bool QCborArray__ConstIterator_operatorGreaterOrEqual_QCborArray_Iterator(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
bool QCborArray__ConstIterator_operatorEqual_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* o);
bool QCborArray__ConstIterator_operatorNotEqual_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* o);
bool QCborArray__ConstIterator_operatorLesser_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
bool QCborArray__ConstIterator_operatorLesserOrEqual_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
bool QCborArray__ConstIterator_operatorGreater_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
bool QCborArray__ConstIterator_operatorGreaterOrEqual_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusPlus(QCborArray__ConstIterator* self);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusPlus_int(QCborArray__ConstIterator* self, int param1);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusMinus(QCborArray__ConstIterator* self);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusMinus_int(QCborArray__ConstIterator* self, int param1);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlusAssign(QCborArray__ConstIterator* self, ptrdiff_t j);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinusAssign(QCborArray__ConstIterator* self, ptrdiff_t j);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorPlus(const QCborArray__ConstIterator* self, ptrdiff_t j);
QCborArray__ConstIterator* QCborArray__ConstIterator_operatorMinus_qsizetype(const QCborArray__ConstIterator* self, ptrdiff_t j);
ptrdiff_t QCborArray__ConstIterator_operatorMinus_QCborArray_ConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* j);

void QCborArray__ConstIterator_delete(QCborArray__ConstIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
