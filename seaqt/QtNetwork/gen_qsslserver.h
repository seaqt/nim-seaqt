#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLSERVER_H
#define SEAQT_QTNETWORK_GEN_QSSLSERVER_H

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

typedef struct VirtualQSslServer VirtualQSslServer;
typedef struct QSslServer_VTable{
	void (*destructor)(VirtualQSslServer* self);
	QMetaObject* (*metaObject)(const VirtualQSslServer* self);
	void* (*metacast)(VirtualQSslServer* self, const char* param1);
	int (*metacall)(VirtualQSslServer* self, int param1, int param2, void** param3);
	void (*incomingConnection)(VirtualQSslServer* self, intptr_t socket);
	bool (*hasPendingConnections)(const VirtualQSslServer* self);
	QTcpSocket* (*nextPendingConnection)(VirtualQSslServer* self);
	bool (*event)(VirtualQSslServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQSslServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSslServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSslServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQSslServer* self, QEvent* event);
	void (*connectNotify)(VirtualQSslServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSslServer* self, QMetaMethod* signal);
}QSslServer_VTable;

void* QSslServer_vdata(VirtualQSslServer* self);
VirtualQSslServer* vdata_QSslServer(void* vdata);

VirtualQSslServer* QSslServer_new(const QSslServer_VTable* vtbl, size_t vdata);
VirtualQSslServer* QSslServer_new_parent(const QSslServer_VTable* vtbl, size_t vdata, QObject* parent);

void QSslServer_virtbase(QSslServer* src, QTcpServer** outptr_QTcpServer);
QMetaObject* QSslServer_metaObject(const QSslServer* self);
void* QSslServer_metacast(QSslServer* self, const char* param1);
int QSslServer_metacall(QSslServer* self, int param1, int param2, void** param3);
struct seaqt_string QSslServer_tr_s(const char* s);
void QSslServer_setSslConfiguration(QSslServer* self, QSslConfiguration* sslConfiguration);
QSslConfiguration* QSslServer_sslConfiguration(const QSslServer* self);
void QSslServer_setHandshakeTimeout(QSslServer* self, int timeout);
int QSslServer_handshakeTimeout(const QSslServer* self);
void QSslServer_sslErrors(QSslServer* self, QSslSocket* socket, struct seaqt_array /* of QSslError* */  errors);
void QSslServer_connect_sslErrors(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QSslServer_peerVerifyError(QSslServer* self, QSslSocket* socket, QSslError* error);
void QSslServer_connect_peerVerifyError(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslError*), void (*release)(intptr_t));
void QSslServer_errorOccurred(QSslServer* self, QSslSocket* socket, int error);
void QSslServer_connect_errorOccurred(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int), void (*release)(intptr_t));
void QSslServer_preSharedKeyAuthenticationRequired(QSslServer* self, QSslSocket* socket, QSslPreSharedKeyAuthenticator* authenticator);
void QSslServer_connect_preSharedKeyAuthenticationRequired(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QSslServer_alertSent(QSslServer* self, QSslSocket* socket, int level, int type, struct seaqt_string description);
void QSslServer_connect_alertSent(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int, int, struct seaqt_string), void (*release)(intptr_t));
void QSslServer_alertReceived(QSslServer* self, QSslSocket* socket, int level, int type, struct seaqt_string description);
void QSslServer_connect_alertReceived(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, int, int, struct seaqt_string), void (*release)(intptr_t));
void QSslServer_handshakeInterruptedOnError(QSslServer* self, QSslSocket* socket, QSslError* error);
void QSslServer_connect_handshakeInterruptedOnError(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*, QSslError*), void (*release)(intptr_t));
void QSslServer_startedEncryptionHandshake(QSslServer* self, QSslSocket* socket);
void QSslServer_connect_startedEncryptionHandshake(QSslServer* self, intptr_t slot, void (*callback)(intptr_t, QSslSocket*), void (*release)(intptr_t));
void QSslServer_incomingConnection(QSslServer* self, intptr_t socket);
struct seaqt_string QSslServer_tr_s_c(const char* s, const char* c);
struct seaqt_string QSslServer_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QSslServer_virtualbase_metaObject(const VirtualQSslServer* self);
void* QSslServer_virtualbase_metacast(VirtualQSslServer* self, const char* param1);
int QSslServer_virtualbase_metacall(VirtualQSslServer* self, int param1, int param2, void** param3);
void QSslServer_virtualbase_incomingConnection(VirtualQSslServer* self, intptr_t socket);
bool QSslServer_virtualbase_hasPendingConnections(const VirtualQSslServer* self);
QTcpSocket* QSslServer_virtualbase_nextPendingConnection(VirtualQSslServer* self);
bool QSslServer_virtualbase_event(VirtualQSslServer* self, QEvent* event);
bool QSslServer_virtualbase_eventFilter(VirtualQSslServer* self, QObject* watched, QEvent* event);
void QSslServer_virtualbase_timerEvent(VirtualQSslServer* self, QTimerEvent* event);
void QSslServer_virtualbase_childEvent(VirtualQSslServer* self, QChildEvent* event);
void QSslServer_virtualbase_customEvent(VirtualQSslServer* self, QEvent* event);
void QSslServer_virtualbase_connectNotify(VirtualQSslServer* self, QMetaMethod* signal);
void QSslServer_virtualbase_disconnectNotify(VirtualQSslServer* self, QMetaMethod* signal);

void QSslServer_protectedbase_addPendingConnection(VirtualQSslServer* self, QTcpSocket* socket);
QObject* QSslServer_protectedbase_sender(const VirtualQSslServer* self);
int QSslServer_protectedbase_senderSignalIndex(const VirtualQSslServer* self);
int QSslServer_protectedbase_receivers(const VirtualQSslServer* self, const char* signal);
bool QSslServer_protectedbase_isSignalConnected(const VirtualQSslServer* self, QMetaMethod* signal);

void QSslServer_delete(QSslServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
