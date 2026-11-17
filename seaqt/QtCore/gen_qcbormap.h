#pragma once
#ifndef SEAQT_QTCORE_GEN_QCBORMAP_H
#define SEAQT_QTCORE_GEN_QCBORMAP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCborMap;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborMap__ConstIterator)
typedef QCborMap::ConstIterator QCborMap__ConstIterator;
#else
class QCborMap__ConstIterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborMap__Iterator)
typedef QCborMap::Iterator QCborMap__Iterator;
#else
class QCborMap__Iterator;
#endif
class QCborValue;
class QCborValueConstRef;
class QCborValueRef;
class QJsonObject;
class QVariant;
#else
typedef struct QCborMap QCborMap;
typedef struct QCborMap__ConstIterator QCborMap__ConstIterator;
typedef struct QCborMap__Iterator QCborMap__Iterator;
typedef struct QCborValue QCborValue;
typedef struct QCborValueConstRef QCborValueConstRef;
typedef struct QCborValueRef QCborValueRef;
typedef struct QJsonObject QJsonObject;
typedef struct QVariant QVariant;
#endif

QCborMap* QCborMap_new();
QCborMap* QCborMap_new_from(QCborMap* from);

void QCborMap_operatorAssign(QCborMap* self, QCborMap* from);
void QCborMap_swap(QCborMap* self, QCborMap* other);
QCborValue* QCborMap_toCborValue(const QCborMap* self);
ptrdiff_t QCborMap_size(const QCborMap* self);
bool QCborMap_isEmpty(const QCborMap* self);
void QCborMap_clear(QCborMap* self);
struct seaqt_array /* of QCborValue* */  QCborMap_keys(const QCborMap* self);
QCborValue* QCborMap_value_qint64(const QCborMap* self, long long key);
QCborValue* QCborMap_value_QString(const QCborMap* self, struct seaqt_string key);
QCborValue* QCborMap_value_QCborValue(const QCborMap* self, QCborValue* key);
QCborValue* QCborMap_operatorSubscript_const_qint64(const QCborMap* self, long long key);
QCborValue* QCborMap_operatorSubscript_const_cQString(const QCborMap* self, struct seaqt_string key);
QCborValue* QCborMap_operatorSubscript_const_cQCborValue(const QCborMap* self, QCborValue* key);
QCborValueRef* QCborMap_operatorSubscript_qint64(QCborMap* self, long long key);
QCborValueRef* QCborMap_operatorSubscript_cQString(QCborMap* self, struct seaqt_string key);
QCborValueRef* QCborMap_operatorSubscript_cQCborValue(QCborMap* self, QCborValue* key);
QCborValue* QCborMap_take_qint64(QCborMap* self, long long key);
QCborValue* QCborMap_take_QString(QCborMap* self, struct seaqt_string key);
QCborValue* QCborMap_take_QCborValue(QCborMap* self, QCborValue* key);
void QCborMap_remove_qint64(QCborMap* self, long long key);
void QCborMap_remove_QString(QCborMap* self, struct seaqt_string key);
void QCborMap_remove_QCborValue(QCborMap* self, QCborValue* key);
bool QCborMap_contains_qint64(const QCborMap* self, long long key);
bool QCborMap_contains_QString(const QCborMap* self, struct seaqt_string key);
bool QCborMap_contains_QCborValue(const QCborMap* self, QCborValue* key);
int QCborMap_compare(const QCborMap* self, QCborMap* other);
QCborMap__Iterator* QCborMap_begin(QCborMap* self);
QCborMap__ConstIterator* QCborMap_constBegin(const QCborMap* self);
QCborMap__ConstIterator* QCborMap_begin_const(const QCborMap* self);
QCborMap__ConstIterator* QCborMap_cbegin(const QCborMap* self);
QCborMap__Iterator* QCborMap_end(QCborMap* self);
QCborMap__ConstIterator* QCborMap_constEnd(const QCborMap* self);
QCborMap__ConstIterator* QCborMap_end_const(const QCborMap* self);
QCborMap__ConstIterator* QCborMap_cend(const QCborMap* self);
QCborMap__Iterator* QCborMap_erase_QCborMap_iterator(QCborMap* self, QCborMap__Iterator* it);
QCborMap__Iterator* QCborMap_erase_QCborMap_const_iterator(QCborMap* self, QCborMap__ConstIterator* it);
QCborValue* QCborMap_extract_QCborMap_iterator(QCborMap* self, QCborMap__Iterator* it);
QCborValue* QCborMap_extract_QCborMap_const_iterator(QCborMap* self, QCborMap__ConstIterator* it);
bool QCborMap_empty(const QCborMap* self);
QCborMap__Iterator* QCborMap_find_qint64(QCborMap* self, long long key);
QCborMap__Iterator* QCborMap_find_cQString(QCborMap* self, struct seaqt_string key);
QCborMap__Iterator* QCborMap_find_cQCborValue(QCborMap* self, QCborValue* key);
QCborMap__ConstIterator* QCborMap_constFind_qint64(const QCborMap* self, long long key);
QCborMap__ConstIterator* QCborMap_constFind_QString(const QCborMap* self, struct seaqt_string key);
QCborMap__ConstIterator* QCborMap_constFind_QCborValue(const QCborMap* self, QCborValue* key);
QCborMap__ConstIterator* QCborMap_find_const_qint64(const QCborMap* self, long long key);
QCborMap__ConstIterator* QCborMap_find_const_cQString(const QCborMap* self, struct seaqt_string key);
QCborMap__ConstIterator* QCborMap_find_const_cQCborValue(const QCborMap* self, QCborValue* key);
QCborMap__Iterator* QCborMap_insert_qint64_QCborValue(QCborMap* self, long long key, QCborValue* value_);
QCborMap__Iterator* QCborMap_insert_QString_QCborValue(QCborMap* self, struct seaqt_string key, QCborValue* value_);
QCborMap__Iterator* QCborMap_insert_QCborValue_QCborValue(QCborMap* self, QCborValue* key, QCborValue* value_);
QCborMap* QCborMap_fromVariantMap(struct seaqt_map /* of struct seaqt_string to QVariant* */  map);
QCborMap* QCborMap_fromVariantHash(struct seaqt_map /* of struct seaqt_string to QVariant* */  hash);
QCborMap* QCborMap_fromJsonObject(QJsonObject* o);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QCborMap_toVariantMap(const QCborMap* self);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QCborMap_toVariantHash(const QCborMap* self);
QJsonObject* QCborMap_toJsonObject(const QCborMap* self);

void QCborMap_delete(QCborMap* self);

QCborMap__Iterator* QCborMap__Iterator_new();
QCborMap__Iterator* QCborMap__Iterator_new_from(QCborMap__Iterator* from);

void QCborMap__Iterator_operatorAssign(QCborMap__Iterator* self, QCborMap__Iterator* from);
QCborValueRef* QCborMap__Iterator_operatorMinusGreater(QCborMap__Iterator* self);
QCborValueConstRef* QCborMap__Iterator_operatorMinusGreater_const(const QCborMap__Iterator* self);
QCborValue* QCborMap__Iterator_key(const QCborMap__Iterator* self);
QCborValueConstRef* QCborMap__Iterator_keyRef(const QCborMap__Iterator* self);
QCborValueRef* QCborMap__Iterator_value(const QCborMap__Iterator* self);
QCborMap__Iterator* QCborMap__Iterator_operatorPlusPlus(QCborMap__Iterator* self);
QCborMap__Iterator* QCborMap__Iterator_operatorPlusPlus_int(QCborMap__Iterator* self, int param1);
QCborMap__Iterator* QCborMap__Iterator_operatorMinusMinus(QCborMap__Iterator* self);
QCborMap__Iterator* QCborMap__Iterator_operatorMinusMinus_int(QCborMap__Iterator* self, int param1);
QCborMap__Iterator* QCborMap__Iterator_operatorPlusAssign(QCborMap__Iterator* self, ptrdiff_t j);
QCborMap__Iterator* QCborMap__Iterator_operatorMinusAssign(QCborMap__Iterator* self, ptrdiff_t j);
QCborMap__Iterator* QCborMap__Iterator_operatorPlus(const QCborMap__Iterator* self, ptrdiff_t j);
QCborMap__Iterator* QCborMap__Iterator_operatorMinus_qsizetype(const QCborMap__Iterator* self, ptrdiff_t j);
ptrdiff_t QCborMap__Iterator_operatorMinus_QCborMap_Iterator(const QCborMap__Iterator* self, QCborMap__Iterator* j);

void QCborMap__Iterator_delete(QCborMap__Iterator* self);

QCborMap__ConstIterator* QCborMap__ConstIterator_new();
QCborMap__ConstIterator* QCborMap__ConstIterator_new_from(QCborMap__ConstIterator* from);

void QCborMap__ConstIterator_operatorAssign(QCborMap__ConstIterator* self, QCborMap__ConstIterator* from);
QCborValueConstRef* QCborMap__ConstIterator_operatorMinusGreater(const QCborMap__ConstIterator* self);
QCborValue* QCborMap__ConstIterator_key(const QCborMap__ConstIterator* self);
QCborValueConstRef* QCborMap__ConstIterator_keyRef(const QCborMap__ConstIterator* self);
QCborValueConstRef* QCborMap__ConstIterator_value(const QCborMap__ConstIterator* self);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorPlusPlus(QCborMap__ConstIterator* self);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorPlusPlus_int(QCborMap__ConstIterator* self, int param1);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorMinusMinus(QCborMap__ConstIterator* self);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorMinusMinus_int(QCborMap__ConstIterator* self, int param1);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorPlusAssign(QCborMap__ConstIterator* self, ptrdiff_t j);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorMinusAssign(QCborMap__ConstIterator* self, ptrdiff_t j);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorPlus(const QCborMap__ConstIterator* self, ptrdiff_t j);
QCborMap__ConstIterator* QCborMap__ConstIterator_operatorMinus_qsizetype(const QCborMap__ConstIterator* self, ptrdiff_t j);
ptrdiff_t QCborMap__ConstIterator_operatorMinus_QCborMap_ConstIterator(const QCborMap__ConstIterator* self, QCborMap__ConstIterator* j);

void QCborMap__ConstIterator_delete(QCborMap__ConstIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
