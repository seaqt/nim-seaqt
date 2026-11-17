#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLDRIVERPLUGIN_H
#define SEAQT_QTSQL_GEN_QSQLDRIVERPLUGIN_H

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
class QSqlDriverPlugin;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSqlDriver QSqlDriver;
typedef struct QSqlDriverPlugin QSqlDriverPlugin;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSqlDriverPlugin VirtualQSqlDriverPlugin;
typedef struct QSqlDriverPlugin_VTable{
	void (*destructor)(VirtualQSqlDriverPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQSqlDriverPlugin* self);
	void* (*metacast)(VirtualQSqlDriverPlugin* self, const char* param1);
	int (*metacall)(VirtualQSqlDriverPlugin* self, int param1, int param2, void** param3);
	QSqlDriver* (*create)(VirtualQSqlDriverPlugin* self, struct seaqt_string key);
	bool (*event)(VirtualQSqlDriverPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQSqlDriverPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSqlDriverPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSqlDriverPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQSqlDriverPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);
}QSqlDriverPlugin_VTable;

void* QSqlDriverPlugin_vdata(VirtualQSqlDriverPlugin* self);
VirtualQSqlDriverPlugin* vdata_QSqlDriverPlugin(void* vdata);

VirtualQSqlDriverPlugin* QSqlDriverPlugin_new(const QSqlDriverPlugin_VTable* vtbl, size_t vdata);
VirtualQSqlDriverPlugin* QSqlDriverPlugin_new2(const QSqlDriverPlugin_VTable* vtbl, size_t vdata, QObject* parent);

void QSqlDriverPlugin_virtbase(QSqlDriverPlugin* src, QObject** outptr_QObject);
QMetaObject* QSqlDriverPlugin_metaObject(const QSqlDriverPlugin* self);
void* QSqlDriverPlugin_metacast(QSqlDriverPlugin* self, const char* param1);
int QSqlDriverPlugin_metacall(QSqlDriverPlugin* self, int param1, int param2, void** param3);
struct seaqt_string QSqlDriverPlugin_tr(const char* s);
struct seaqt_string QSqlDriverPlugin_trUtf8(const char* s);
QSqlDriver* QSqlDriverPlugin_create(QSqlDriverPlugin* self, struct seaqt_string key);
struct seaqt_string QSqlDriverPlugin_tr2(const char* s, const char* c);
struct seaqt_string QSqlDriverPlugin_tr3(const char* s, const char* c, int n);
struct seaqt_string QSqlDriverPlugin_trUtf82(const char* s, const char* c);
struct seaqt_string QSqlDriverPlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSqlDriverPlugin_virtualbase_metaObject(const VirtualQSqlDriverPlugin* self);
void* QSqlDriverPlugin_virtualbase_metacast(VirtualQSqlDriverPlugin* self, const char* param1);
int QSqlDriverPlugin_virtualbase_metacall(VirtualQSqlDriverPlugin* self, int param1, int param2, void** param3);
QSqlDriver* QSqlDriverPlugin_virtualbase_create(VirtualQSqlDriverPlugin* self, struct seaqt_string key);
bool QSqlDriverPlugin_virtualbase_event(VirtualQSqlDriverPlugin* self, QEvent* event);
bool QSqlDriverPlugin_virtualbase_eventFilter(VirtualQSqlDriverPlugin* self, QObject* watched, QEvent* event);
void QSqlDriverPlugin_virtualbase_timerEvent(VirtualQSqlDriverPlugin* self, QTimerEvent* event);
void QSqlDriverPlugin_virtualbase_childEvent(VirtualQSqlDriverPlugin* self, QChildEvent* event);
void QSqlDriverPlugin_virtualbase_customEvent(VirtualQSqlDriverPlugin* self, QEvent* event);
void QSqlDriverPlugin_virtualbase_connectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);
void QSqlDriverPlugin_virtualbase_disconnectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);

QObject* QSqlDriverPlugin_protectedbase_sender(const VirtualQSqlDriverPlugin* self);
int QSqlDriverPlugin_protectedbase_senderSignalIndex(const VirtualQSqlDriverPlugin* self);
int QSqlDriverPlugin_protectedbase_receivers(const VirtualQSqlDriverPlugin* self, const char* signal);
bool QSqlDriverPlugin_protectedbase_isSignalConnected(const VirtualQSqlDriverPlugin* self, QMetaMethod* signal);

const QMetaObject* QSqlDriverPlugin_staticMetaObject();
void QSqlDriverPlugin_delete(QSqlDriverPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
