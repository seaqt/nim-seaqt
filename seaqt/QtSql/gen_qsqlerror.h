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

QSqlError* QSqlError_new();
QSqlError* QSqlError_new2(QSqlError* other);
QSqlError* QSqlError_new3(struct seaqt_string driverText);
QSqlError* QSqlError_new4(struct seaqt_string driverText, struct seaqt_string databaseText);
QSqlError* QSqlError_new5(struct seaqt_string driverText, struct seaqt_string databaseText, int type);
QSqlError* QSqlError_new6(struct seaqt_string driverText, struct seaqt_string databaseText, int type, struct seaqt_string errorCode);

void QSqlError_operatorAssign(QSqlError* self, QSqlError* other);
bool QSqlError_operatorEqual(const QSqlError* self, QSqlError* other);
bool QSqlError_operatorNotEqual(const QSqlError* self, QSqlError* other);
void QSqlError_swap(QSqlError* self, QSqlError* other);
struct seaqt_string QSqlError_driverText(const QSqlError* self);
struct seaqt_string QSqlError_databaseText(const QSqlError* self);
int QSqlError_type(const QSqlError* self);
struct seaqt_string QSqlError_nativeErrorCode(const QSqlError* self);
struct seaqt_string QSqlError_text(const QSqlError* self);
bool QSqlError_isValid(const QSqlError* self);

void QSqlError_delete(QSqlError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
