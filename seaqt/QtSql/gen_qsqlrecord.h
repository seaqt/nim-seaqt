#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLRECORD_H
#define SEAQT_QTSQL_GEN_QSQLRECORD_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSqlField;
class QSqlRecord;
class QVariant;
#else
typedef struct QSqlField QSqlField;
typedef struct QSqlRecord QSqlRecord;
typedef struct QVariant QVariant;
#endif

QSqlRecord* QSqlRecord_new();
QSqlRecord* QSqlRecord_new_from(QSqlRecord* from);

void QSqlRecord_operatorAssign(QSqlRecord* self, QSqlRecord* from);
bool QSqlRecord_operatorEqual(const QSqlRecord* self, QSqlRecord* other);
bool QSqlRecord_operatorNotEqual(const QSqlRecord* self, QSqlRecord* other);
QVariant* QSqlRecord_value_i(const QSqlRecord* self, int i);
QVariant* QSqlRecord_value_name(const QSqlRecord* self, struct seaqt_string name);
void QSqlRecord_setValue_i_val(QSqlRecord* self, int i, QVariant* val);
void QSqlRecord_setValue_name_val(QSqlRecord* self, struct seaqt_string name, QVariant* val);
void QSqlRecord_setNull_i(QSqlRecord* self, int i);
void QSqlRecord_setNull_name(QSqlRecord* self, struct seaqt_string name);
bool QSqlRecord_isNull_i(const QSqlRecord* self, int i);
bool QSqlRecord_isNull_name(const QSqlRecord* self, struct seaqt_string name);
int QSqlRecord_indexOf(const QSqlRecord* self, struct seaqt_string name);
struct seaqt_string QSqlRecord_fieldName(const QSqlRecord* self, int i);
QSqlField* QSqlRecord_field_i(const QSqlRecord* self, int i);
QSqlField* QSqlRecord_field_name(const QSqlRecord* self, struct seaqt_string name);
bool QSqlRecord_isGenerated_i(const QSqlRecord* self, int i);
bool QSqlRecord_isGenerated_name(const QSqlRecord* self, struct seaqt_string name);
void QSqlRecord_setGenerated_name_generated(QSqlRecord* self, struct seaqt_string name, bool generated);
void QSqlRecord_setGenerated_i_generated(QSqlRecord* self, int i, bool generated);
void QSqlRecord_append(QSqlRecord* self, QSqlField* field);
void QSqlRecord_replace(QSqlRecord* self, int pos, QSqlField* field);
void QSqlRecord_insert(QSqlRecord* self, int pos, QSqlField* field);
void QSqlRecord_remove(QSqlRecord* self, int pos);
bool QSqlRecord_isEmpty(const QSqlRecord* self);
bool QSqlRecord_contains(const QSqlRecord* self, struct seaqt_string name);
void QSqlRecord_clear(QSqlRecord* self);
void QSqlRecord_clearValues(QSqlRecord* self);
int QSqlRecord_count(const QSqlRecord* self);
QSqlRecord* QSqlRecord_keyValues(const QSqlRecord* self, QSqlRecord* keyFields);

void QSqlRecord_delete(QSqlRecord* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
