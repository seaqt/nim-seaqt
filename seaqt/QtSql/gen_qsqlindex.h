#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLINDEX_H
#define SEAQT_QTSQL_GEN_QSQLINDEX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QSqlField;
class QSqlIndex;
class QSqlRecord;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QSqlField QSqlField;
typedef struct QSqlIndex QSqlIndex;
typedef struct QSqlRecord QSqlRecord;
#endif

QSqlIndex* QSqlIndex_new();
QSqlIndex* QSqlIndex_new_from(QSqlIndex* from);
QSqlIndex* QSqlIndex_new_cursorName(struct seaqt_string cursorName);
QSqlIndex* QSqlIndex_new_cursorName_name(struct seaqt_string cursorName, struct seaqt_string name);

void QSqlIndex_virtbase(QSqlIndex* src, QSqlRecord** outptr_QSqlRecord);
void QSqlIndex_operatorAssign(QSqlIndex* self, QSqlIndex* from);
void QSqlIndex_swap(QSqlIndex* self, QSqlIndex* other);
void QSqlIndex_setCursorName(QSqlIndex* self, struct seaqt_string cursorName);
struct seaqt_string QSqlIndex_cursorName(const QSqlIndex* self);
void QSqlIndex_setName(QSqlIndex* self, struct seaqt_string name);
struct seaqt_string QSqlIndex_name(const QSqlIndex* self);
void QSqlIndex_append_field(QSqlIndex* self, QSqlField* field);
void QSqlIndex_append_field_desc(QSqlIndex* self, QSqlField* field, bool desc);
bool QSqlIndex_isDescending(const QSqlIndex* self, int i);
void QSqlIndex_setDescending(QSqlIndex* self, int i, bool desc);

const QMetaObject* QSqlIndex_staticMetaObject();
void QSqlIndex_delete(QSqlIndex* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
