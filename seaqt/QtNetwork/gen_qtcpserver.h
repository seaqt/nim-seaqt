#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QTCPSERVER_H
#define SEAQT_QTNETWORK_GEN_QTCPSERVER_H

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
class QHostAddress;
class QMetaMethod;
class QMetaObject;
class QNetworkProxy;
class QObject;
class QTcpServer;
class QTcpSocket;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QObject QObject;
typedef struct QTcpServer QTcpServer;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QTcpServer_VTable {
	void (*destructor)(struct QTcpServer_VTable* vtbl, QTcpServer* self);
	QMetaObject* (*metaObject)(struct QTcpServer_VTable* vtbl, const QTcpServer* self);
	void* (*metacast)(struct QTcpServer_VTable* vtbl, QTcpServer* self, const char* param1);
	int (*metacall)(struct QTcpServer_VTable* vtbl, QTcpServer* self, int param1, int param2, void** param3);
	bool (*hasPendingConnections)(struct QTcpServer_VTable* vtbl, const QTcpServer* self);
	QTcpSocket* (*nextPendingConnection)(struct QTcpServer_VTable* vtbl, QTcpServer* self);
	void (*incomingConnection)(struct QTcpServer_VTable* vtbl, QTcpServer* self, intptr_t handle);
	bool (*event)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QEvent* event);
	bool (*eventFilter)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QTimerEvent* event);
	void (*childEvent)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QChildEvent* event);
	void (*customEvent)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QEvent* event);
	void (*connectNotify)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTcpServer_VTable* vtbl, QTcpServer* self, QMetaMethod* signal);
};
QTcpServer* QTcpServer_new(struct QTcpServer_VTable* vtbl);
QTcpServer* QTcpServer_new2(struct QTcpServer_VTable* vtbl, QObject* parent);
void QTcpServer_virtbase(QTcpServer* src, QObject** outptr_QObject);
QMetaObject* QTcpServer_metaObject(const QTcpServer* self);
void* QTcpServer_metacast(QTcpServer* self, const char* param1);
int QTcpServer_metacall(QTcpServer* self, int param1, int param2, void** param3);
struct miqt_string QTcpServer_tr(const char* s);
bool QTcpServer_listen(QTcpServer* self);
void QTcpServer_close(QTcpServer* self);
bool QTcpServer_isListening(const QTcpServer* self);
void QTcpServer_setMaxPendingConnections(QTcpServer* self, int numConnections);
int QTcpServer_maxPendingConnections(const QTcpServer* self);
void QTcpServer_setListenBacklogSize(QTcpServer* self, int size);
int QTcpServer_listenBacklogSize(const QTcpServer* self);
uint16_t QTcpServer_serverPort(const QTcpServer* self);
QHostAddress* QTcpServer_serverAddress(const QTcpServer* self);
intptr_t QTcpServer_socketDescriptor(const QTcpServer* self);
bool QTcpServer_setSocketDescriptor(QTcpServer* self, intptr_t socketDescriptor);
bool QTcpServer_waitForNewConnection(QTcpServer* self);
bool QTcpServer_hasPendingConnections(const QTcpServer* self);
QTcpSocket* QTcpServer_nextPendingConnection(QTcpServer* self);
int QTcpServer_serverError(const QTcpServer* self);
struct miqt_string QTcpServer_errorString(const QTcpServer* self);
void QTcpServer_pauseAccepting(QTcpServer* self);
void QTcpServer_resumeAccepting(QTcpServer* self);
void QTcpServer_setProxy(QTcpServer* self, QNetworkProxy* networkProxy);
QNetworkProxy* QTcpServer_proxy(const QTcpServer* self);
void QTcpServer_incomingConnection(QTcpServer* self, intptr_t handle);
void QTcpServer_newConnection(QTcpServer* self);
void QTcpServer_connect_newConnection(QTcpServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QTcpServer_acceptError(QTcpServer* self, int socketError);
void QTcpServer_connect_acceptError(QTcpServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QTcpServer_tr2(const char* s, const char* c);
struct miqt_string QTcpServer_tr3(const char* s, const char* c, int n);
bool QTcpServer_listen1(QTcpServer* self, QHostAddress* address);
bool QTcpServer_listen2(QTcpServer* self, QHostAddress* address, uint16_t port);
bool QTcpServer_waitForNewConnection1(QTcpServer* self, int msec);
bool QTcpServer_waitForNewConnection2(QTcpServer* self, int msec, bool* timedOut);
QMetaObject* QTcpServer_virtualbase_metaObject(const void* self);
void* QTcpServer_virtualbase_metacast(void* self, const char* param1);
int QTcpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTcpServer_virtualbase_hasPendingConnections(const void* self);
QTcpSocket* QTcpServer_virtualbase_nextPendingConnection(void* self);
void QTcpServer_virtualbase_incomingConnection(void* self, intptr_t handle);
bool QTcpServer_virtualbase_event(void* self, QEvent* event);
bool QTcpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTcpServer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTcpServer_virtualbase_childEvent(void* self, QChildEvent* event);
void QTcpServer_virtualbase_customEvent(void* self, QEvent* event);
void QTcpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTcpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTcpServer_protectedbase_addPendingConnection(void* self, QTcpSocket* socket);
QObject* QTcpServer_protectedbase_sender(const void* self);
int QTcpServer_protectedbase_senderSignalIndex(const void* self);
int QTcpServer_protectedbase_receivers(const void* self, const char* signal);
bool QTcpServer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTcpServer_staticMetaObject();
void QTcpServer_delete(QTcpServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
