#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLDATABASE_H
#define SEAQT_QTSQL_GEN_QSQLDATABASE_H

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
class QSqlDatabase;
class QSqlDatabaseDefaultConnectionName;
class QSqlDriver;
class QSqlDriverCreatorBase;
class QSqlError;
class QSqlIndex;
class QSqlQuery;
class QSqlRecord;
class QThread;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QSqlDatabase QSqlDatabase;
typedef struct QSqlDatabaseDefaultConnectionName QSqlDatabaseDefaultConnectionName;
typedef struct QSqlDriver QSqlDriver;
typedef struct QSqlDriverCreatorBase QSqlDriverCreatorBase;
typedef struct QSqlError QSqlError;
typedef struct QSqlIndex QSqlIndex;
typedef struct QSqlQuery QSqlQuery;
typedef struct QSqlRecord QSqlRecord;
typedef struct QThread QThread;
#endif

QSqlDriver* QSqlDriverCreatorBase_createObject(const QSqlDriverCreatorBase* self);
void QSqlDriverCreatorBase_operatorAssign(QSqlDriverCreatorBase* self, QSqlDriverCreatorBase* from);

void QSqlDriverCreatorBase_delete(QSqlDriverCreatorBase* self);

struct seaqt_string QSqlDatabaseDefaultConnectionName_defaultConnectionName();

void QSqlDatabaseDefaultConnectionName_delete(QSqlDatabaseDefaultConnectionName* self);

QSqlDatabase* QSqlDatabase_new();
QSqlDatabase* QSqlDatabase_new_from(QSqlDatabase* from);

void QSqlDatabase_virtbase(QSqlDatabase* src, QSqlDatabaseDefaultConnectionName** outptr_QSqlDatabaseDefaultConnectionName);
void QSqlDatabase_operatorAssign(QSqlDatabase* self, QSqlDatabase* from);
bool QSqlDatabase_open(QSqlDatabase* self);
bool QSqlDatabase_open_user_password(QSqlDatabase* self, struct seaqt_string user, struct seaqt_string password);
void QSqlDatabase_close(QSqlDatabase* self);
bool QSqlDatabase_isOpen(const QSqlDatabase* self);
bool QSqlDatabase_isOpenError(const QSqlDatabase* self);
struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_tables(const QSqlDatabase* self);
QSqlIndex* QSqlDatabase_primaryIndex(const QSqlDatabase* self, struct seaqt_string tablename);
QSqlRecord* QSqlDatabase_record(const QSqlDatabase* self, struct seaqt_string tablename);
QSqlQuery* QSqlDatabase_exec(const QSqlDatabase* self);
QSqlError* QSqlDatabase_lastError(const QSqlDatabase* self);
bool QSqlDatabase_isValid(const QSqlDatabase* self);
bool QSqlDatabase_transaction(QSqlDatabase* self);
bool QSqlDatabase_commit(QSqlDatabase* self);
bool QSqlDatabase_rollback(QSqlDatabase* self);
void QSqlDatabase_setDatabaseName(QSqlDatabase* self, struct seaqt_string name);
void QSqlDatabase_setUserName(QSqlDatabase* self, struct seaqt_string name);
void QSqlDatabase_setPassword(QSqlDatabase* self, struct seaqt_string password);
void QSqlDatabase_setHostName(QSqlDatabase* self, struct seaqt_string host);
void QSqlDatabase_setPort(QSqlDatabase* self, int p);
void QSqlDatabase_setConnectOptions(QSqlDatabase* self);
struct seaqt_string QSqlDatabase_databaseName(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_userName(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_password(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_hostName(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_driverName(const QSqlDatabase* self);
int QSqlDatabase_port(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_connectOptions(const QSqlDatabase* self);
struct seaqt_string QSqlDatabase_connectionName(const QSqlDatabase* self);
void QSqlDatabase_setNumericalPrecisionPolicy(QSqlDatabase* self, int precisionPolicy);
int QSqlDatabase_numericalPrecisionPolicy(const QSqlDatabase* self);
bool QSqlDatabase_moveToThread(QSqlDatabase* self, QThread* targetThread);
QThread* QSqlDatabase_thread(const QSqlDatabase* self);
QSqlDriver* QSqlDatabase_driver(const QSqlDatabase* self);
QSqlDatabase* QSqlDatabase_addDatabase_type(struct seaqt_string type);
QSqlDatabase* QSqlDatabase_addDatabase_driver(QSqlDriver* driver);
QSqlDatabase* QSqlDatabase_cloneDatabase_QSqlDatabase_QString(QSqlDatabase* other, struct seaqt_string connectionName);
QSqlDatabase* QSqlDatabase_cloneDatabase_QString_QString(struct seaqt_string other, struct seaqt_string connectionName);
QSqlDatabase* QSqlDatabase_database();
void QSqlDatabase_removeDatabase(struct seaqt_string connectionName);
bool QSqlDatabase_contains();
struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_drivers();
struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_connectionNames();
void QSqlDatabase_registerSqlDriver(struct seaqt_string name, QSqlDriverCreatorBase* creator);
bool QSqlDatabase_isDriverAvailable(struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QSqlDatabase_tables_type(const QSqlDatabase* self, int type);
QSqlQuery* QSqlDatabase_exec_query(const QSqlDatabase* self, struct seaqt_string query);
void QSqlDatabase_setConnectOptions_options(QSqlDatabase* self, struct seaqt_string options);
QSqlDatabase* QSqlDatabase_addDatabase_type_connectionName(struct seaqt_string type, struct seaqt_string connectionName);
QSqlDatabase* QSqlDatabase_addDatabase_driver_connectionName(QSqlDriver* driver, struct seaqt_string connectionName);
QSqlDatabase* QSqlDatabase_database_connectionName(struct seaqt_string connectionName);
QSqlDatabase* QSqlDatabase_database_connectionName_open(struct seaqt_string connectionName, bool open);
bool QSqlDatabase_contains_connectionName(struct seaqt_string connectionName);

const QMetaObject* QSqlDatabase_staticMetaObject();
void QSqlDatabase_delete(QSqlDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
