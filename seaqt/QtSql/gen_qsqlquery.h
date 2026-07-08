#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLQUERY_H
#define SEAQT_QTSQL_GEN_QSQLQUERY_H

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
class QMetaObject;
class QSqlDatabase;
class QSqlDriver;
class QSqlError;
class QSqlQuery;
class QSqlRecord;
class QSqlResult;
class QVariant;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QMetaObject QMetaObject;
typedef struct QSqlDatabase QSqlDatabase;
typedef struct QSqlDriver QSqlDriver;
typedef struct QSqlError QSqlError;
typedef struct QSqlQuery QSqlQuery;
typedef struct QSqlRecord QSqlRecord;
typedef struct QSqlResult QSqlResult;
typedef struct QVariant QVariant;
#endif

QSqlQuery* QSqlQuery_new_r(QSqlResult* r);
QSqlQuery* QSqlQuery_new();
QSqlQuery* QSqlQuery_new_db(QSqlDatabase* db);
QSqlQuery* QSqlQuery_new_other(QSqlQuery* other);
QSqlQuery* QSqlQuery_new_query(struct seaqt_string query);
QSqlQuery* QSqlQuery_new_query_db(struct seaqt_string query, QSqlDatabase* db);

void QSqlQuery_operatorAssign(QSqlQuery* self, QSqlQuery* other);
void QSqlQuery_swap(QSqlQuery* self, QSqlQuery* other);
bool QSqlQuery_isValid(const QSqlQuery* self);
bool QSqlQuery_isActive(const QSqlQuery* self);
bool QSqlQuery_isNull_field(const QSqlQuery* self, int field);
bool QSqlQuery_isNull_name(const QSqlQuery* self, struct seaqt_string name);
int QSqlQuery_at(const QSqlQuery* self);
struct seaqt_string QSqlQuery_lastQuery(const QSqlQuery* self);
int QSqlQuery_numRowsAffected(const QSqlQuery* self);
QSqlError* QSqlQuery_lastError(const QSqlQuery* self);
bool QSqlQuery_isSelect(const QSqlQuery* self);
int QSqlQuery_size(const QSqlQuery* self);
QSqlDriver* QSqlQuery_driver(const QSqlQuery* self);
QSqlResult* QSqlQuery_result(const QSqlQuery* self);
bool QSqlQuery_isForwardOnly(const QSqlQuery* self);
QSqlRecord* QSqlQuery_record(const QSqlQuery* self);
void QSqlQuery_setForwardOnly(QSqlQuery* self, bool forward);
bool QSqlQuery_exec_query(QSqlQuery* self, struct seaqt_string query);
QVariant* QSqlQuery_value_i(const QSqlQuery* self, int i);
QVariant* QSqlQuery_value_name(const QSqlQuery* self, struct seaqt_string name);
void QSqlQuery_setNumericalPrecisionPolicy(QSqlQuery* self, int precisionPolicy);
int QSqlQuery_numericalPrecisionPolicy(const QSqlQuery* self);
void QSqlQuery_setPositionalBindingEnabled(QSqlQuery* self, bool enable);
bool QSqlQuery_isPositionalBindingEnabled(const QSqlQuery* self);
bool QSqlQuery_seek_i(QSqlQuery* self, int i);
bool QSqlQuery_next(QSqlQuery* self);
bool QSqlQuery_previous(QSqlQuery* self);
bool QSqlQuery_first(QSqlQuery* self);
bool QSqlQuery_last(QSqlQuery* self);
void QSqlQuery_clear(QSqlQuery* self);
bool QSqlQuery_exec(QSqlQuery* self);
bool QSqlQuery_execBatch(QSqlQuery* self);
bool QSqlQuery_prepare(QSqlQuery* self, struct seaqt_string query);
void QSqlQuery_bindValue_placeholder_val(QSqlQuery* self, struct seaqt_string placeholder, QVariant* val);
void QSqlQuery_bindValue_pos_val(QSqlQuery* self, int pos, QVariant* val);
void QSqlQuery_addBindValue_val(QSqlQuery* self, QVariant* val);
QVariant* QSqlQuery_boundValue_placeholder(const QSqlQuery* self, struct seaqt_string placeholder);
QVariant* QSqlQuery_boundValue_pos(const QSqlQuery* self, int pos);
struct seaqt_array /* of QVariant* */  QSqlQuery_boundValues(const QSqlQuery* self);
struct seaqt_array /* of struct seaqt_string */  QSqlQuery_boundValueNames(const QSqlQuery* self);
struct seaqt_string QSqlQuery_boundValueName(const QSqlQuery* self, int pos);
struct seaqt_string QSqlQuery_executedQuery(const QSqlQuery* self);
QVariant* QSqlQuery_lastInsertId(const QSqlQuery* self);
void QSqlQuery_finish(QSqlQuery* self);
bool QSqlQuery_nextResult(QSqlQuery* self);
bool QSqlQuery_seek_i_relative(QSqlQuery* self, int i, bool relative);
bool QSqlQuery_execBatch_mode(QSqlQuery* self, int mode);
void QSqlQuery_bindValue_placeholder_val_type(QSqlQuery* self, struct seaqt_string placeholder, QVariant* val, int type);
void QSqlQuery_bindValue_pos_val_type(QSqlQuery* self, int pos, QVariant* val, int type);
void QSqlQuery_addBindValue_val_type(QSqlQuery* self, QVariant* val, int type);

const QMetaObject* QSqlQuery_staticMetaObject();
void QSqlQuery_delete(QSqlQuery* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
