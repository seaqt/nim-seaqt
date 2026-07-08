#pragma once
#ifndef SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETSERVER_H
#define SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKETSERVER_H

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
class QHostAddress;
class QMetaMethod;
class QMetaObject;
class QNetworkProxy;
class QObject;
class QSslConfiguration;
class QSslError;
class QSslPreSharedKeyAuthenticator;
class QTcpSocket;
class QTimerEvent;
class QUrl;
class QWebSocket;
class QWebSocketCorsAuthenticator;
class QWebSocketServer;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QObject QObject;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QWebSocket QWebSocket;
typedef struct QWebSocketCorsAuthenticator QWebSocketCorsAuthenticator;
typedef struct QWebSocketServer QWebSocketServer;
#endif

typedef struct VirtualQWebSocketServer VirtualQWebSocketServer;
typedef struct QWebSocketServer_VTable{
	void (*destructor)(VirtualQWebSocketServer* self);
	QMetaObject* (*metaObject)(const VirtualQWebSocketServer* self);
	void* (*metacast)(VirtualQWebSocketServer* self, const char* param1);
	int (*metacall)(VirtualQWebSocketServer* self, int param1, int param2, void** param3);
	QWebSocket* (*nextPendingConnection)(VirtualQWebSocketServer* self);
	bool (*event)(VirtualQWebSocketServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebSocketServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebSocketServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebSocketServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebSocketServer* self, QEvent* event);
	void (*connectNotify)(VirtualQWebSocketServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebSocketServer* self, QMetaMethod* signal);
}QWebSocketServer_VTable;

void* QWebSocketServer_vdata(VirtualQWebSocketServer* self);
VirtualQWebSocketServer* vdata_QWebSocketServer(void* vdata);

VirtualQWebSocketServer* QWebSocketServer_new_serverName_secureMode(const QWebSocketServer_VTable* vtbl, size_t vdata, struct seaqt_string serverName, int secureMode);
VirtualQWebSocketServer* QWebSocketServer_new_serverName_secureMode_parent(const QWebSocketServer_VTable* vtbl, size_t vdata, struct seaqt_string serverName, int secureMode, QObject* parent);

void QWebSocketServer_virtbase(QWebSocketServer* src, QObject** outptr_QObject);
QMetaObject* QWebSocketServer_metaObject(const QWebSocketServer* self);
void* QWebSocketServer_metacast(QWebSocketServer* self, const char* param1);
int QWebSocketServer_metacall(QWebSocketServer* self, int param1, int param2, void** param3);
struct seaqt_string QWebSocketServer_tr_s(const char* s);
struct seaqt_string QWebSocketServer_trUtf8_s(const char* s);
bool QWebSocketServer_listen(QWebSocketServer* self);
void QWebSocketServer_close(QWebSocketServer* self);
bool QWebSocketServer_isListening(const QWebSocketServer* self);
void QWebSocketServer_setMaxPendingConnections(QWebSocketServer* self, int numConnections);
int QWebSocketServer_maxPendingConnections(const QWebSocketServer* self);
void QWebSocketServer_setHandshakeTimeout_int(QWebSocketServer* self, int msec);
int QWebSocketServer_handshakeTimeoutMS(const QWebSocketServer* self);
unsigned short QWebSocketServer_serverPort(const QWebSocketServer* self);
QHostAddress* QWebSocketServer_serverAddress(const QWebSocketServer* self);
QUrl* QWebSocketServer_serverUrl(const QWebSocketServer* self);
int QWebSocketServer_secureMode(const QWebSocketServer* self);
bool QWebSocketServer_setSocketDescriptor(QWebSocketServer* self, int socketDescriptor);
int QWebSocketServer_socketDescriptor(const QWebSocketServer* self);
bool QWebSocketServer_setNativeDescriptor(QWebSocketServer* self, intptr_t descriptor);
intptr_t QWebSocketServer_nativeDescriptor(const QWebSocketServer* self);
bool QWebSocketServer_hasPendingConnections(const QWebSocketServer* self);
QWebSocket* QWebSocketServer_nextPendingConnection(QWebSocketServer* self);
int QWebSocketServer_error(const QWebSocketServer* self);
struct seaqt_string QWebSocketServer_errorString(const QWebSocketServer* self);
void QWebSocketServer_pauseAccepting(QWebSocketServer* self);
void QWebSocketServer_resumeAccepting(QWebSocketServer* self);
void QWebSocketServer_setServerName(QWebSocketServer* self, struct seaqt_string serverName);
struct seaqt_string QWebSocketServer_serverName(const QWebSocketServer* self);
void QWebSocketServer_setProxy(QWebSocketServer* self, QNetworkProxy* networkProxy);
QNetworkProxy* QWebSocketServer_proxy(const QWebSocketServer* self);
void QWebSocketServer_setSslConfiguration(QWebSocketServer* self, QSslConfiguration* sslConfiguration);
QSslConfiguration* QWebSocketServer_sslConfiguration(const QWebSocketServer* self);
struct seaqt_array /* of int */  QWebSocketServer_supportedVersions(const QWebSocketServer* self);
void QWebSocketServer_handleConnection(const QWebSocketServer* self, QTcpSocket* socket);
void QWebSocketServer_acceptError(QWebSocketServer* self, int socketError);
void QWebSocketServer_connect_acceptError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebSocketServer_serverError(QWebSocketServer* self, int closeCode);
void QWebSocketServer_connect_serverError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebSocketServer_originAuthenticationRequired(QWebSocketServer* self, QWebSocketCorsAuthenticator* pAuthenticator);
void QWebSocketServer_connect_originAuthenticationRequired(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QWebSocketCorsAuthenticator*), void (*release)(intptr_t));
void QWebSocketServer_newConnection(QWebSocketServer* self);
void QWebSocketServer_connect_newConnection(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebSocketServer_peerVerifyError(QWebSocketServer* self, QSslError* error);
void QWebSocketServer_connect_peerVerifyError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t));
void QWebSocketServer_sslErrors(QWebSocketServer* self, struct seaqt_array /* of QSslError* */  errors);
void QWebSocketServer_connect_sslErrors(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QWebSocketServer_preSharedKeyAuthenticationRequired(QWebSocketServer* self, QSslPreSharedKeyAuthenticator* authenticator);
void QWebSocketServer_connect_preSharedKeyAuthenticationRequired(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QWebSocketServer_closed(QWebSocketServer* self);
void QWebSocketServer_connect_closed(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QWebSocketServer_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebSocketServer_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QWebSocketServer_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QWebSocketServer_trUtf8_s_c_n(const char* s, const char* c, int n);
bool QWebSocketServer_listen_address(QWebSocketServer* self, QHostAddress* address);
bool QWebSocketServer_listen_address_port(QWebSocketServer* self, QHostAddress* address, unsigned short port);

QMetaObject* QWebSocketServer_virtualbase_metaObject(const VirtualQWebSocketServer* self);
void* QWebSocketServer_virtualbase_metacast(VirtualQWebSocketServer* self, const char* param1);
int QWebSocketServer_virtualbase_metacall(VirtualQWebSocketServer* self, int param1, int param2, void** param3);
QWebSocket* QWebSocketServer_virtualbase_nextPendingConnection(VirtualQWebSocketServer* self);
bool QWebSocketServer_virtualbase_event(VirtualQWebSocketServer* self, QEvent* event);
bool QWebSocketServer_virtualbase_eventFilter(VirtualQWebSocketServer* self, QObject* watched, QEvent* event);
void QWebSocketServer_virtualbase_timerEvent(VirtualQWebSocketServer* self, QTimerEvent* event);
void QWebSocketServer_virtualbase_childEvent(VirtualQWebSocketServer* self, QChildEvent* event);
void QWebSocketServer_virtualbase_customEvent(VirtualQWebSocketServer* self, QEvent* event);
void QWebSocketServer_virtualbase_connectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal);
void QWebSocketServer_virtualbase_disconnectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal);

QObject* QWebSocketServer_protectedbase_sender(const VirtualQWebSocketServer* self);
int QWebSocketServer_protectedbase_senderSignalIndex(const VirtualQWebSocketServer* self);
int QWebSocketServer_protectedbase_receivers(const VirtualQWebSocketServer* self, const char* signal);
bool QWebSocketServer_protectedbase_isSignalConnected(const VirtualQWebSocketServer* self, QMetaMethod* signal);

const QMetaObject* QWebSocketServer_staticMetaObject();
void QWebSocketServer_delete(QWebSocketServer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
