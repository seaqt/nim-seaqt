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

struct QLocalServer_VTable {
	void (*destructor)(struct QLocalServer_VTable* vtbl, QLocalServer* self);
	QMetaObject* (*metaObject)(struct QLocalServer_VTable* vtbl, const QLocalServer* self);
	void* (*metacast)(struct QLocalServer_VTable* vtbl, QLocalServer* self, const char* param1);
	int (*metacall)(struct QLocalServer_VTable* vtbl, QLocalServer* self, int param1, int param2, void** param3);
	bool (*hasPendingConnections)(struct QLocalServer_VTable* vtbl, const QLocalServer* self);
	QLocalSocket* (*nextPendingConnection)(struct QLocalServer_VTable* vtbl, QLocalServer* self);
	void (*incomingConnection)(struct QLocalServer_VTable* vtbl, QLocalServer* self, uintptr_t socketDescriptor);
	bool (*event)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QEvent* event);
	bool (*eventFilter)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QTimerEvent* event);
	void (*childEvent)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QChildEvent* event);
	void (*customEvent)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QEvent* event);
	void (*connectNotify)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLocalServer_VTable* vtbl, QLocalServer* self, QMetaMethod* signal);
};
QLocalServer* QLocalServer_new(struct QLocalServer_VTable* vtbl);
QLocalServer* QLocalServer_new2(struct QLocalServer_VTable* vtbl, QObject* parent);
void QLocalServer_virtbase(QLocalServer* src, QObject** outptr_QObject);
QMetaObject* QLocalServer_metaObject(const QLocalServer* self);
void* QLocalServer_metacast(QLocalServer* self, const char* param1);
int QLocalServer_metacall(QLocalServer* self, int param1, int param2, void** param3);
struct miqt_string QLocalServer_tr(const char* s);
struct miqt_string QLocalServer_trUtf8(const char* s);
void QLocalServer_newConnection(QLocalServer* self);
void QLocalServer_connect_newConnection(QLocalServer* self, intptr_t slot);
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
void QLocalServer_setSocketOptions(QLocalServer* self, int options);
int QLocalServer_socketOptions(const QLocalServer* self);
intptr_t QLocalServer_socketDescriptor(const QLocalServer* self);
void QLocalServer_incomingConnection(QLocalServer* self, uintptr_t socketDescriptor);
struct miqt_string QLocalServer_tr2(const char* s, const char* c);
struct miqt_string QLocalServer_tr3(const char* s, const char* c, int n);
struct miqt_string QLocalServer_trUtf82(const char* s, const char* c);
struct miqt_string QLocalServer_trUtf83(const char* s, const char* c, int n);
bool QLocalServer_waitForNewConnection1(QLocalServer* self, int msec);
bool QLocalServer_waitForNewConnection2(QLocalServer* self, int msec, bool* timedOut);
QMetaObject* QLocalServer_virtualbase_metaObject(const void* self);
void* QLocalServer_virtualbase_metacast(void* self, const char* param1);
int QLocalServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QLocalServer_virtualbase_hasPendingConnections(const void* self);
QLocalSocket* QLocalServer_virtualbase_nextPendingConnection(void* self);
void QLocalServer_virtualbase_incomingConnection(void* self, uintptr_t socketDescriptor);
bool QLocalServer_virtualbase_event(void* self, QEvent* event);
bool QLocalServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLocalServer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLocalServer_virtualbase_childEvent(void* self, QChildEvent* event);
void QLocalServer_virtualbase_customEvent(void* self, QEvent* event);
void QLocalServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLocalServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QLocalServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QLocalServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QLocalServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QLocalServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QLocalServer_staticMetaObject();
void QLocalServer_delete(QLocalServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
