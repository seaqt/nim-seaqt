#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLSERVER_H
#define SEAQT_QTNETWORK_GEN_QSSLSERVER_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QSslConfiguration;
class QSslError;
class QSslPreSharedKeyAuthenticator;
class QSslServer;
class QSslSocket;
class QTcpServer;
class QTcpSocket;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QSslServer QSslServer;
typedef struct QSslSocket QSslSocket;
typedef struct QTcpServer QTcpServer;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSslServer_VTable {
	void (*destructor)(struct QSslServer_VTable* vtbl, QSslServer* self);
	QMetaObject* (*metaObject)(struct QSslServer_VTable* vtbl, const QSslServer* self);
	void* (*metacast)(struct QSslServer_VTable* vtbl, QSslServer* self, const char* param1);
	int (*metacall)(struct QSslServer_VTable* vtbl, QSslServer* self, int param1, int param2, void** param3);
	void (*incomingConnection)(struct QSslServer_VTable* vtbl, QSslServer* self, intptr_t socket);
	bool (*hasPendingConnections)(struct QSslServer_VTable* vtbl, const QSslServer* self);
	QTcpSocket* (*nextPendingConnection)(struct QSslServer_VTable* vtbl, QSslServer* self);
	bool (*event)(struct QSslServer_VTable* vtbl, QSslServer* self, QEvent* event);
	bool (*eventFilter)(struct QSslServer_VTable* vtbl, QSslServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSslServer_VTable* vtbl, QSslServer* self, QTimerEvent* event);
	void (*childEvent)(struct QSslServer_VTable* vtbl, QSslServer* self, QChildEvent* event);
	void (*customEvent)(struct QSslServer_VTable* vtbl, QSslServer* self, QEvent* event);
	void (*connectNotify)(struct QSslServer_VTable* vtbl, QSslServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSslServer_VTable* vtbl, QSslServer* self, QMetaMethod* signal);
};
QSslServer* QSslServer_new(struct QSslServer_VTable* vtbl);
QSslServer* QSslServer_new2(struct QSslServer_VTable* vtbl, QObject* parent);
void QSslServer_virtbase(QSslServer* src, QTcpServer** outptr_QTcpServer);
QMetaObject* QSslServer_metaObject(const QSslServer* self);
void* QSslServer_metacast(QSslServer* self, const char* param1);
int QSslServer_metacall(QSslServer* self, int param1, int param2, void** param3);
struct miqt_string QSslServer_tr(const char* s);
void QSslServer_setSslConfiguration(QSslServer* self, QSslConfiguration* sslConfiguration);
QSslConfiguration* QSslServer_sslConfiguration(const QSslServer* self);
void QSslServer_setHandshakeTimeout(QSslServer* self, int timeout);
int QSslServer_handshakeTimeout(const QSslServer* self);
void QSslServer_sslErrors(QSslServer* self, QSslSocket* socket, struct miqt_array /* of QSslError* */  errors);
void QSslServer_connect_sslErrors(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, struct miqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QSslServer_peerVerifyError(QSslServer* self, QSslSocket* socket, QSslError* error);
void QSslServer_connect_peerVerifyError(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslError*), void (*release)(intptr_t));
void QSslServer_errorOccurred(QSslServer* self, QSslSocket* socket, int error);
void QSslServer_connect_errorOccurred(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int), void (*release)(intptr_t));
void QSslServer_preSharedKeyAuthenticationRequired(QSslServer* self, QSslSocket* socket, QSslPreSharedKeyAuthenticator* authenticator);
void QSslServer_connect_preSharedKeyAuthenticationRequired(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QSslServer_alertSent(QSslServer* self, QSslSocket* socket, int level, int type, struct miqt_string description);
void QSslServer_connect_alertSent(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int, int, struct miqt_string), void (*release)(intptr_t));
void QSslServer_alertReceived(QSslServer* self, QSslSocket* socket, int level, int type, struct miqt_string description);
void QSslServer_connect_alertReceived(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int, int, struct miqt_string), void (*release)(intptr_t));
void QSslServer_handshakeInterruptedOnError(QSslServer* self, QSslSocket* socket, QSslError* error);
void QSslServer_connect_handshakeInterruptedOnError(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslError*), void (*release)(intptr_t));
void QSslServer_startedEncryptionHandshake(QSslServer* self, QSslSocket* socket);
void QSslServer_connect_startedEncryptionHandshake(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*), void (*release)(intptr_t));
void QSslServer_incomingConnection(QSslServer* self, intptr_t socket);
struct miqt_string QSslServer_tr2(const char* s, const char* c);
struct miqt_string QSslServer_tr3(const char* s, const char* c, int n);
QMetaObject* QSslServer_virtualbase_metaObject(const void* self);
void* QSslServer_virtualbase_metacast(void* self, const char* param1);
int QSslServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSslServer_virtualbase_incomingConnection(void* self, intptr_t socket);
bool QSslServer_virtualbase_hasPendingConnections(const void* self);
QTcpSocket* QSslServer_virtualbase_nextPendingConnection(void* self);
bool QSslServer_virtualbase_event(void* self, QEvent* event);
bool QSslServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSslServer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSslServer_virtualbase_childEvent(void* self, QChildEvent* event);
void QSslServer_virtualbase_customEvent(void* self, QEvent* event);
void QSslServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSslServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSslServer_protectedbase_addPendingConnection(void* self, QTcpSocket* socket);
QObject* QSslServer_protectedbase_sender(const void* self);
int QSslServer_protectedbase_senderSignalIndex(const void* self);
int QSslServer_protectedbase_receivers(const void* self, const char* signal);
bool QSslServer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSslServer_staticMetaObject();
void QSslServer_delete(QSslServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
