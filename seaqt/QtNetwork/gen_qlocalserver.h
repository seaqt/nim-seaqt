#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QLOCALSERVER_H
#define SEAQT_QTNETWORK_GEN_QLOCALSERVER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QLocalServer;
class QLocalSocket;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QLocalServer QLocalServer;
typedef struct QLocalSocket QLocalSocket;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQLocalServer VirtualQLocalServer;
typedef struct QLocalServer_VTable{
	void (*destructor)(VirtualQLocalServer* self);
	QMetaObject* (*metaObject)(const VirtualQLocalServer* self);
	void* (*metacast)(VirtualQLocalServer* self, const char* param1);
	int (*metacall)(VirtualQLocalServer* self, int param1, int param2, void** param3);
	bool (*hasPendingConnections)(const VirtualQLocalServer* self);
	QLocalSocket* (*nextPendingConnection)(VirtualQLocalServer* self);
	void (*incomingConnection)(VirtualQLocalServer* self, uintptr_t socketDescriptor);
	bool (*event)(VirtualQLocalServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQLocalServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLocalServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQLocalServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQLocalServer* self, QEvent* event);
	void (*connectNotify)(VirtualQLocalServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLocalServer* self, QMetaMethod* signal);
}QLocalServer_VTable;

const QLocalServer_VTable* QLocalServer_vtbl(const VirtualQLocalServer* self);
void* QLocalServer_vdata(const VirtualQLocalServer* self);
void QLocalServer_setVdata(VirtualQLocalServer* self, void* vdata);

VirtualQLocalServer* QLocalServer_new(const QLocalServer_VTable* vtbl, void* vdata);
VirtualQLocalServer* QLocalServer_new2(const QLocalServer_VTable* vtbl, void* vdata, QObject* parent);

void QLocalServer_virtbase(QLocalServer* src, QObject** outptr_QObject);
QMetaObject* QLocalServer_metaObject(const QLocalServer* self);
void* QLocalServer_metacast(QLocalServer* self, const char* param1);
int QLocalServer_metacall(QLocalServer* self, int param1, int param2, void** param3);
struct miqt_string QLocalServer_tr(const char* s);
void QLocalServer_newConnection(QLocalServer* self);
void QLocalServer_connect_newConnection(VirtualQLocalServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QLocalServer_close(QLocalServer* self);
struct miqt_string QLocalServer_errorString(const QLocalServer* self);
bool QLocalServer_hasPendingConnections(const QLocalServer* self);
bool QLocalServer_isListening(const QLocalServer* self);
bool QLocalServer_listen(QLocalServer* self, struct miqt_string name);
bool QLocalServer_listenWithSocketDescriptor(QLocalServer* self, intptr_t socketDescriptor);
int QLocalServer_maxPendingConnections(const QLocalServer* self);
QLocalSocket* QLocalServer_nextPendingConnection(QLocalServer* self);
struct miqt_string QLocalServer_serverName(const QLocalServer* self);
struct miqt_string QLocalServer_fullServerName(const QLocalServer* self);
bool QLocalServer_removeServer(struct miqt_string name);
int QLocalServer_serverError(const QLocalServer* self);
void QLocalServer_setMaxPendingConnections(QLocalServer* self, int numConnections);
bool QLocalServer_waitForNewConnection(QLocalServer* self);
void QLocalServer_setListenBacklogSize(QLocalServer* self, int size);
int QLocalServer_listenBacklogSize(const QLocalServer* self);
void QLocalServer_setSocketOptions(QLocalServer* self, int options);
int QLocalServer_socketOptions(const QLocalServer* self);
intptr_t QLocalServer_socketDescriptor(const QLocalServer* self);
void QLocalServer_incomingConnection(QLocalServer* self, uintptr_t socketDescriptor);
struct miqt_string QLocalServer_tr2(const char* s, const char* c);
struct miqt_string QLocalServer_tr3(const char* s, const char* c, int n);
bool QLocalServer_waitForNewConnection1(QLocalServer* self, int msec);
bool QLocalServer_waitForNewConnection2(QLocalServer* self, int msec, bool* timedOut);

QMetaObject* QLocalServer_virtualbase_metaObject(const VirtualQLocalServer* self);
void* QLocalServer_virtualbase_metacast(VirtualQLocalServer* self, const char* param1);
int QLocalServer_virtualbase_metacall(VirtualQLocalServer* self, int param1, int param2, void** param3);
bool QLocalServer_virtualbase_hasPendingConnections(const VirtualQLocalServer* self);
QLocalSocket* QLocalServer_virtualbase_nextPendingConnection(VirtualQLocalServer* self);
void QLocalServer_virtualbase_incomingConnection(VirtualQLocalServer* self, uintptr_t socketDescriptor);
bool QLocalServer_virtualbase_event(VirtualQLocalServer* self, QEvent* event);
bool QLocalServer_virtualbase_eventFilter(VirtualQLocalServer* self, QObject* watched, QEvent* event);
void QLocalServer_virtualbase_timerEvent(VirtualQLocalServer* self, QTimerEvent* event);
void QLocalServer_virtualbase_childEvent(VirtualQLocalServer* self, QChildEvent* event);
void QLocalServer_virtualbase_customEvent(VirtualQLocalServer* self, QEvent* event);
void QLocalServer_virtualbase_connectNotify(VirtualQLocalServer* self, QMetaMethod* signal);
void QLocalServer_virtualbase_disconnectNotify(VirtualQLocalServer* self, QMetaMethod* signal);

QObject* QLocalServer_protectedbase_sender(const VirtualQLocalServer* self);
int QLocalServer_protectedbase_senderSignalIndex(const VirtualQLocalServer* self);
int QLocalServer_protectedbase_receivers(const VirtualQLocalServer* self, const char* signal);
bool QLocalServer_protectedbase_isSignalConnected(const VirtualQLocalServer* self, QMetaMethod* signal);

const QMetaObject* QLocalServer_staticMetaObject();
void QLocalServer_delete(QLocalServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
