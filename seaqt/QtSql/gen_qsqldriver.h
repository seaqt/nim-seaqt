#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLDRIVER_H
#define SEAQT_QTSQL_GEN_QSQLDRIVER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSqlDriver;
class QSqlError;
class QSqlField;
class QSqlIndex;
class QSqlRecord;
class QSqlResult;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSqlDriver QSqlDriver;
typedef struct QSqlError QSqlError;
typedef struct QSqlField QSqlField;
typedef struct QSqlIndex QSqlIndex;
typedef struct QSqlRecord QSqlRecord;
typedef struct QSqlResult QSqlResult;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSqlDriver VirtualQSqlDriver;
typedef struct QSqlDriver_VTable{
	void (*destructor)(VirtualQSqlDriver* self);
	QMetaObject* (*metaObject)(const VirtualQSqlDriver* self);
	void* (*metacast)(VirtualQSqlDriver* self, const char* param1);
	int (*metacall)(VirtualQSqlDriver* self, int param1, int param2, void** param3);
	bool (*isOpen)(const VirtualQSqlDriver* self);
	bool (*beginTransaction)(VirtualQSqlDriver* self);
	bool (*commitTransaction)(VirtualQSqlDriver* self);
	bool (*rollbackTransaction)(VirtualQSqlDriver* self);
	struct seaqt_array /* of struct seaqt_string */  (*tables)(const VirtualQSqlDriver* self, int tableType);
	QSqlIndex* (*primaryIndex)(const VirtualQSqlDriver* self, struct seaqt_string tableName);
	QSqlRecord* (*record)(const VirtualQSqlDriver* self, struct seaqt_string tableName);
	struct seaqt_string (*formatValue)(const VirtualQSqlDriver* self, QSqlField* field, bool trimStrings);
	struct seaqt_string (*escapeIdentifier)(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
	struct seaqt_string (*sqlStatement)(const VirtualQSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement);
	QVariant* (*handle)(const VirtualQSqlDriver* self);
	bool (*hasFeature)(const VirtualQSqlDriver* self, int f);
	void (*close)(VirtualQSqlDriver* self);
	QSqlResult* (*createResult)(const VirtualQSqlDriver* self);
	bool (*open)(VirtualQSqlDriver* self, struct seaqt_string db, struct seaqt_string user, struct seaqt_string password, struct seaqt_string host, int port, struct seaqt_string connOpts);
	bool (*subscribeToNotification)(VirtualQSqlDriver* self, struct seaqt_string name);
	bool (*unsubscribeFromNotification)(VirtualQSqlDriver* self, struct seaqt_string name);
	struct seaqt_array /* of struct seaqt_string */  (*subscribedToNotifications)(const VirtualQSqlDriver* self);
	bool (*isIdentifierEscaped)(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
	struct seaqt_string (*stripDelimiters)(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
	int (*maximumIdentifierLength)(const VirtualQSqlDriver* self, int type);
	bool (*cancelQuery)(VirtualQSqlDriver* self);
	void (*setOpen)(VirtualQSqlDriver* self, bool o);
	void (*setOpenError)(VirtualQSqlDriver* self, bool e);
	void (*setLastError)(VirtualQSqlDriver* self, QSqlError* e);
	bool (*event)(VirtualQSqlDriver* self, QEvent* event);
	bool (*eventFilter)(VirtualQSqlDriver* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSqlDriver* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSqlDriver* self, QChildEvent* event);
	void (*customEvent)(VirtualQSqlDriver* self, QEvent* event);
	void (*connectNotify)(VirtualQSqlDriver* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSqlDriver* self, QMetaMethod* signal);
}QSqlDriver_VTable;

void* QSqlDriver_vdata(VirtualQSqlDriver* self);
VirtualQSqlDriver* vdata_QSqlDriver(void* vdata);

VirtualQSqlDriver* QSqlDriver_new(const QSqlDriver_VTable* vtbl, size_t vdata);
VirtualQSqlDriver* QSqlDriver_new_parent(const QSqlDriver_VTable* vtbl, size_t vdata, QObject* parent);

void QSqlDriver_virtbase(QSqlDriver* src, QObject** outptr_QObject);
QMetaObject* QSqlDriver_metaObject(const QSqlDriver* self);
void* QSqlDriver_metacast(QSqlDriver* self, const char* param1);
int QSqlDriver_metacall(QSqlDriver* self, int param1, int param2, void** param3);
struct seaqt_string QSqlDriver_tr_s(const char* s);
bool QSqlDriver_isOpen(const QSqlDriver* self);
bool QSqlDriver_isOpenError(const QSqlDriver* self);
bool QSqlDriver_beginTransaction(QSqlDriver* self);
bool QSqlDriver_commitTransaction(QSqlDriver* self);
bool QSqlDriver_rollbackTransaction(QSqlDriver* self);
struct seaqt_array /* of struct seaqt_string */  QSqlDriver_tables(const QSqlDriver* self, int tableType);
QSqlIndex* QSqlDriver_primaryIndex(const QSqlDriver* self, struct seaqt_string tableName);
QSqlRecord* QSqlDriver_record(const QSqlDriver* self, struct seaqt_string tableName);
struct seaqt_string QSqlDriver_formatValue(const QSqlDriver* self, QSqlField* field, bool trimStrings);
struct seaqt_string QSqlDriver_escapeIdentifier(const QSqlDriver* self, struct seaqt_string identifier, int type);
struct seaqt_string QSqlDriver_sqlStatement(const QSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement);
QSqlError* QSqlDriver_lastError(const QSqlDriver* self);
QVariant* QSqlDriver_handle(const QSqlDriver* self);
bool QSqlDriver_hasFeature(const QSqlDriver* self, int f);
void QSqlDriver_close(QSqlDriver* self);
QSqlResult* QSqlDriver_createResult(const QSqlDriver* self);
bool QSqlDriver_open(QSqlDriver* self, struct seaqt_string db, struct seaqt_string user, struct seaqt_string password, struct seaqt_string host, int port, struct seaqt_string connOpts);
bool QSqlDriver_subscribeToNotification(QSqlDriver* self, struct seaqt_string name);
bool QSqlDriver_unsubscribeFromNotification(QSqlDriver* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QSqlDriver_subscribedToNotifications(const QSqlDriver* self);
bool QSqlDriver_isIdentifierEscaped(const QSqlDriver* self, struct seaqt_string identifier, int type);
struct seaqt_string QSqlDriver_stripDelimiters(const QSqlDriver* self, struct seaqt_string identifier, int type);
void QSqlDriver_setNumericalPrecisionPolicy(QSqlDriver* self, int precisionPolicy);
int QSqlDriver_numericalPrecisionPolicy(const QSqlDriver* self);
int QSqlDriver_dbmsType(const QSqlDriver* self);
int QSqlDriver_maximumIdentifierLength(const QSqlDriver* self, int type);
struct seaqt_string QSqlDriver_connectionName(const QSqlDriver* self);
bool QSqlDriver_cancelQuery(QSqlDriver* self);
void QSqlDriver_notification(QSqlDriver* self, struct seaqt_string name, int source, QVariant* payload);
void QSqlDriver_connect_notification(QSqlDriver* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, int, QVariant*), void (*release)(intptr_t));
void QSqlDriver_setOpen(QSqlDriver* self, bool o);
void QSqlDriver_setOpenError(QSqlDriver* self, bool e);
void QSqlDriver_setLastError(QSqlDriver* self, QSqlError* e);
struct seaqt_string QSqlDriver_tr_s_c(const char* s, const char* c);
struct seaqt_string QSqlDriver_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QSqlDriver_virtualbase_metaObject(const VirtualQSqlDriver* self);
void* QSqlDriver_virtualbase_metacast(VirtualQSqlDriver* self, const char* param1);
int QSqlDriver_virtualbase_metacall(VirtualQSqlDriver* self, int param1, int param2, void** param3);
bool QSqlDriver_virtualbase_isOpen(const VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_beginTransaction(VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_commitTransaction(VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_rollbackTransaction(VirtualQSqlDriver* self);
struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_tables(const VirtualQSqlDriver* self, int tableType);
QSqlIndex* QSqlDriver_virtualbase_primaryIndex(const VirtualQSqlDriver* self, struct seaqt_string tableName);
QSqlRecord* QSqlDriver_virtualbase_record(const VirtualQSqlDriver* self, struct seaqt_string tableName);
struct seaqt_string QSqlDriver_virtualbase_formatValue(const VirtualQSqlDriver* self, QSqlField* field, bool trimStrings);
struct seaqt_string QSqlDriver_virtualbase_escapeIdentifier(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
struct seaqt_string QSqlDriver_virtualbase_sqlStatement(const VirtualQSqlDriver* self, int type, struct seaqt_string tableName, QSqlRecord* rec, bool preparedStatement);
QVariant* QSqlDriver_virtualbase_handle(const VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_hasFeature(const VirtualQSqlDriver* self, int f);
void QSqlDriver_virtualbase_close(VirtualQSqlDriver* self);
QSqlResult* QSqlDriver_virtualbase_createResult(const VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_open(VirtualQSqlDriver* self, struct seaqt_string db, struct seaqt_string user, struct seaqt_string password, struct seaqt_string host, int port, struct seaqt_string connOpts);
bool QSqlDriver_virtualbase_subscribeToNotification(VirtualQSqlDriver* self, struct seaqt_string name);
bool QSqlDriver_virtualbase_unsubscribeFromNotification(VirtualQSqlDriver* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QSqlDriver_virtualbase_subscribedToNotifications(const VirtualQSqlDriver* self);
bool QSqlDriver_virtualbase_isIdentifierEscaped(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
struct seaqt_string QSqlDriver_virtualbase_stripDelimiters(const VirtualQSqlDriver* self, struct seaqt_string identifier, int type);
int QSqlDriver_virtualbase_maximumIdentifierLength(const VirtualQSqlDriver* self, int type);
bool QSqlDriver_virtualbase_cancelQuery(VirtualQSqlDriver* self);
void QSqlDriver_virtualbase_setOpen(VirtualQSqlDriver* self, bool o);
void QSqlDriver_virtualbase_setOpenError(VirtualQSqlDriver* self, bool e);
void QSqlDriver_virtualbase_setLastError(VirtualQSqlDriver* self, QSqlError* e);
bool QSqlDriver_virtualbase_event(VirtualQSqlDriver* self, QEvent* event);
bool QSqlDriver_virtualbase_eventFilter(VirtualQSqlDriver* self, QObject* watched, QEvent* event);
void QSqlDriver_virtualbase_timerEvent(VirtualQSqlDriver* self, QTimerEvent* event);
void QSqlDriver_virtualbase_childEvent(VirtualQSqlDriver* self, QChildEvent* event);
void QSqlDriver_virtualbase_customEvent(VirtualQSqlDriver* self, QEvent* event);
void QSqlDriver_virtualbase_connectNotify(VirtualQSqlDriver* self, QMetaMethod* signal);
void QSqlDriver_virtualbase_disconnectNotify(VirtualQSqlDriver* self, QMetaMethod* signal);

QObject* QSqlDriver_protectedbase_sender(const VirtualQSqlDriver* self);
int QSqlDriver_protectedbase_senderSignalIndex(const VirtualQSqlDriver* self);
int QSqlDriver_protectedbase_receivers(const VirtualQSqlDriver* self, const char* signal);
bool QSqlDriver_protectedbase_isSignalConnected(const VirtualQSqlDriver* self, QMetaMethod* signal);

const QMetaObject* QSqlDriver_staticMetaObject();
void QSqlDriver_delete(QSqlDriver* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
