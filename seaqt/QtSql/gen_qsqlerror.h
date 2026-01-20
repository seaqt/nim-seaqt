#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLERROR_H
#define SEAQT_QTSQL_GEN_QSQLERROR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSqlError;
#else
typedef struct QSqlError QSqlError;
#endif

QSqlError* QSqlError_new_driverText_databaseText_type_number(struct seaqt_string driverText, struct seaqt_string databaseText, int type, int number);
QSqlError* QSqlError_new();
QSqlError* QSqlError_new_from(QSqlError* from);
QSqlError* QSqlError_new_driverText(struct seaqt_string driverText);
QSqlError* QSqlError_new_driverText_databaseText(struct seaqt_string driverText, struct seaqt_string databaseText);
QSqlError* QSqlError_new_driverText_databaseText_type(struct seaqt_string driverText, struct seaqt_string databaseText, int type);
QSqlError* QSqlError_new_driverText_databaseText_type_errorCode(struct seaqt_string driverText, struct seaqt_string databaseText, int type, struct seaqt_string errorCode);

void QSqlError_operatorAssign(QSqlError* self, QSqlError* from);
bool QSqlError_operatorEqual(const QSqlError* self, QSqlError* other);
bool QSqlError_operatorNotEqual(const QSqlError* self, QSqlError* other);
void QSqlError_swap(QSqlError* self, QSqlError* other);
struct seaqt_string QSqlError_driverText(const QSqlError* self);
struct seaqt_string QSqlError_databaseText(const QSqlError* self);
int QSqlError_type(const QSqlError* self);
int QSqlError_number(const QSqlError* self);
struct seaqt_string QSqlError_nativeErrorCode(const QSqlError* self);
struct seaqt_string QSqlError_text(const QSqlError* self);
bool QSqlError_isValid(const QSqlError* self);
void QSqlError_setDriverText(QSqlError* self, struct seaqt_string driverText);
void QSqlError_setDatabaseText(QSqlError* self, struct seaqt_string databaseText);
void QSqlError_setType(QSqlError* self, int type);
void QSqlError_setNumber(QSqlError* self, int number);

void QSqlError_delete(QSqlError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
