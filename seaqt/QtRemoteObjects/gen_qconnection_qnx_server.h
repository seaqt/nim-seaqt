#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTION_QNX_SERVER_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTION_QNX_SERVER_H

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
class QQnxNativeServer;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQnxNativeServer QQnxNativeServer;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQQnxNativeServer VirtualQQnxNativeServer;
typedef struct QQnxNativeServer_VTable{
	void (*destructor)(VirtualQQnxNativeServer* self);
	QMetaObject* (*metaObject)(const VirtualQQnxNativeServer* self);
	void* (*metacast)(VirtualQQnxNativeServer* self, const char* param1);
	int (*metacall)(VirtualQQnxNativeServer* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQnxNativeServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQQnxNativeServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQnxNativeServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQnxNativeServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQQnxNativeServer* self, QEvent* event);
	void (*connectNotify)(VirtualQQnxNativeServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQnxNativeServer* self, QMetaMethod* signal);
}QQnxNativeServer_VTable;

void* QQnxNativeServer_vdata(VirtualQQnxNativeServer* self);
VirtualQQnxNativeServer* vdata_QQnxNativeServer(void* vdata);

VirtualQQnxNativeServer* QQnxNativeServer_new(const QQnxNativeServer_VTable* vtbl, size_t vdata);
VirtualQQnxNativeServer* QQnxNativeServer_new_parent(const QQnxNativeServer_VTable* vtbl, size_t vdata, QObject* parent);

void QQnxNativeServer_virtbase(QQnxNativeServer* src, QObject** outptr_QObject);
QMetaObject* QQnxNativeServer_metaObject(const QQnxNativeServer* self);
void* QQnxNativeServer_metacast(QQnxNativeServer* self, const char* param1);
int QQnxNativeServer_metacall(QQnxNativeServer* self, int param1, int param2, void** param3);
struct seaqt_string QQnxNativeServer_tr_s(const char* s);
void QQnxNativeServer_newConnection(QQnxNativeServer* self);
void QQnxNativeServer_connect_newConnection(QQnxNativeServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQnxNativeServer_close(QQnxNativeServer* self);
bool QQnxNativeServer_hasPendingConnections(const QQnxNativeServer* self);
bool QQnxNativeServer_isListening(const QQnxNativeServer* self);
bool QQnxNativeServer_listen(QQnxNativeServer* self, struct seaqt_string name);
struct seaqt_string QQnxNativeServer_serverName(const QQnxNativeServer* self);
bool QQnxNativeServer_waitForNewConnection(QQnxNativeServer* self);
struct seaqt_string QQnxNativeServer_tr_s_c(const char* s, const char* c);
struct seaqt_string QQnxNativeServer_tr_s_c_n(const char* s, const char* c, int n);
bool QQnxNativeServer_waitForNewConnection_msec(QQnxNativeServer* self, int msec);
bool QQnxNativeServer_waitForNewConnection_msec_timedOut(QQnxNativeServer* self, int msec, bool* timedOut);

QMetaObject* QQnxNativeServer_virtualbase_metaObject(const VirtualQQnxNativeServer* self);
void* QQnxNativeServer_virtualbase_metacast(VirtualQQnxNativeServer* self, const char* param1);
int QQnxNativeServer_virtualbase_metacall(VirtualQQnxNativeServer* self, int param1, int param2, void** param3);
bool QQnxNativeServer_virtualbase_event(VirtualQQnxNativeServer* self, QEvent* event);
bool QQnxNativeServer_virtualbase_eventFilter(VirtualQQnxNativeServer* self, QObject* watched, QEvent* event);
void QQnxNativeServer_virtualbase_timerEvent(VirtualQQnxNativeServer* self, QTimerEvent* event);
void QQnxNativeServer_virtualbase_childEvent(VirtualQQnxNativeServer* self, QChildEvent* event);
void QQnxNativeServer_virtualbase_customEvent(VirtualQQnxNativeServer* self, QEvent* event);
void QQnxNativeServer_virtualbase_connectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal);
void QQnxNativeServer_virtualbase_disconnectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal);

QObject* QQnxNativeServer_protectedbase_sender(const VirtualQQnxNativeServer* self);
int QQnxNativeServer_protectedbase_senderSignalIndex(const VirtualQQnxNativeServer* self);
int QQnxNativeServer_protectedbase_receivers(const VirtualQQnxNativeServer* self, const char* signal);
bool QQnxNativeServer_protectedbase_isSignalConnected(const VirtualQQnxNativeServer* self, QMetaMethod* signal);

const QMetaObject* QQnxNativeServer_staticMetaObject();
void QQnxNativeServer_delete(QQnxNativeServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
