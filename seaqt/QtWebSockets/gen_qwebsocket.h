#pragma once
#ifndef SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKET_H
#define SEAQT_QTWEBSOCKETS_GEN_QWEBSOCKET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAuthenticator;
class QChildEvent;
class QEvent;
class QHostAddress;
class QMaskGenerator;
class QMetaMethod;
class QMetaObject;
class QNetworkProxy;
class QNetworkRequest;
class QObject;
class QSslConfiguration;
class QSslError;
class QSslPreSharedKeyAuthenticator;
class QTimerEvent;
class QUrl;
class QWebSocket;
class QWebSocketHandshakeOptions;
#else
typedef struct QAuthenticator QAuthenticator;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QMaskGenerator QMaskGenerator;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QWebSocket QWebSocket;
typedef struct QWebSocketHandshakeOptions QWebSocketHandshakeOptions;
#endif

typedef struct VirtualQWebSocket VirtualQWebSocket;
typedef struct QWebSocket_VTable{
	void (*destructor)(VirtualQWebSocket* self);
	QMetaObject* (*metaObject)(const VirtualQWebSocket* self);
	void* (*metacast)(VirtualQWebSocket* self, const char* param1);
	int (*metacall)(VirtualQWebSocket* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQWebSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQWebSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebSocket* self, QMetaMethod* signal);
}QWebSocket_VTable;

void* QWebSocket_vdata(VirtualQWebSocket* self);
VirtualQWebSocket* vdata_QWebSocket(void* vdata);

VirtualQWebSocket* QWebSocket_new(const QWebSocket_VTable* vtbl, size_t vdata);
VirtualQWebSocket* QWebSocket_new_origin(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin);
VirtualQWebSocket* QWebSocket_new_origin_version(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin, int version);
VirtualQWebSocket* QWebSocket_new_origin_version_parent(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin, int version, QObject* parent);

void QWebSocket_virtbase(QWebSocket* src, QObject** outptr_QObject);
QMetaObject* QWebSocket_metaObject(const QWebSocket* self);
void* QWebSocket_metacast(QWebSocket* self, const char* param1);
int QWebSocket_metacall(QWebSocket* self, int param1, int param2, void** param3);
struct seaqt_string QWebSocket_tr_s(const char* s);
void QWebSocket_abort(QWebSocket* self);
int QWebSocket_error(const QWebSocket* self);
struct seaqt_string QWebSocket_errorString(const QWebSocket* self);
bool QWebSocket_flush(QWebSocket* self);
bool QWebSocket_isValid(const QWebSocket* self);
QHostAddress* QWebSocket_localAddress(const QWebSocket* self);
unsigned short QWebSocket_localPort(const QWebSocket* self);
int QWebSocket_pauseMode(const QWebSocket* self);
QHostAddress* QWebSocket_peerAddress(const QWebSocket* self);
struct seaqt_string QWebSocket_peerName(const QWebSocket* self);
unsigned short QWebSocket_peerPort(const QWebSocket* self);
QNetworkProxy* QWebSocket_proxy(const QWebSocket* self);
void QWebSocket_setProxy(QWebSocket* self, QNetworkProxy* networkProxy);
void QWebSocket_setMaskGenerator(QWebSocket* self, QMaskGenerator* maskGenerator);
QMaskGenerator* QWebSocket_maskGenerator(const QWebSocket* self);
long long QWebSocket_readBufferSize(const QWebSocket* self);
void QWebSocket_setReadBufferSize(QWebSocket* self, long long size);
void QWebSocket_resume(QWebSocket* self);
void QWebSocket_setPauseMode(QWebSocket* self, int pauseMode);
int QWebSocket_state(const QWebSocket* self);
int QWebSocket_version(const QWebSocket* self);
struct seaqt_string QWebSocket_resourceName(const QWebSocket* self);
QUrl* QWebSocket_requestUrl(const QWebSocket* self);
QNetworkRequest* QWebSocket_request(const QWebSocket* self);
QWebSocketHandshakeOptions* QWebSocket_handshakeOptions(const QWebSocket* self);
struct seaqt_string QWebSocket_origin(const QWebSocket* self);
struct seaqt_string QWebSocket_subprotocol(const QWebSocket* self);
int QWebSocket_closeCode(const QWebSocket* self);
struct seaqt_string QWebSocket_closeReason(const QWebSocket* self);
long long QWebSocket_sendTextMessage(QWebSocket* self, struct seaqt_string message);
long long QWebSocket_sendBinaryMessage(QWebSocket* self, struct seaqt_string data);
void QWebSocket_ignoreSslErrors_errors(QWebSocket* self, struct seaqt_array /* of QSslError* */  errors);
void QWebSocket_continueInterruptedHandshake(QWebSocket* self);
void QWebSocket_setSslConfiguration(QWebSocket* self, QSslConfiguration* sslConfiguration);
QSslConfiguration* QWebSocket_sslConfiguration(const QWebSocket* self);
long long QWebSocket_bytesToWrite(const QWebSocket* self);
void QWebSocket_setMaxAllowedIncomingFrameSize(QWebSocket* self, unsigned long long maxAllowedIncomingFrameSize);
unsigned long long QWebSocket_maxAllowedIncomingFrameSize(const QWebSocket* self);
void QWebSocket_setMaxAllowedIncomingMessageSize(QWebSocket* self, unsigned long long maxAllowedIncomingMessageSize);
unsigned long long QWebSocket_maxAllowedIncomingMessageSize(const QWebSocket* self);
unsigned long long QWebSocket_maxIncomingMessageSize();
unsigned long long QWebSocket_maxIncomingFrameSize();
void QWebSocket_setOutgoingFrameSize(QWebSocket* self, unsigned long long outgoingFrameSize);
unsigned long long QWebSocket_outgoingFrameSize(const QWebSocket* self);
unsigned long long QWebSocket_maxOutgoingFrameSize();
void QWebSocket_close(QWebSocket* self);
void QWebSocket_open_url(QWebSocket* self, QUrl* url);
void QWebSocket_open_request(QWebSocket* self, QNetworkRequest* request);
void QWebSocket_open_url_options(QWebSocket* self, QUrl* url, QWebSocketHandshakeOptions* options);
void QWebSocket_open_request_options(QWebSocket* self, QNetworkRequest* request, QWebSocketHandshakeOptions* options);
void QWebSocket_ping(QWebSocket* self);
void QWebSocket_ignoreSslErrors(QWebSocket* self);
void QWebSocket_aboutToClose(QWebSocket* self);
void QWebSocket_connect_aboutToClose(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebSocket_connected(QWebSocket* self);
void QWebSocket_connect_connected(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebSocket_disconnected(QWebSocket* self);
void QWebSocket_connect_disconnected(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebSocket_stateChanged(QWebSocket* self, int state);
void QWebSocket_connect_stateChanged(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebSocket_proxyAuthenticationRequired(QWebSocket* self, QNetworkProxy* proxy, QAuthenticator* pAuthenticator);
void QWebSocket_connect_proxyAuthenticationRequired(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t));
void QWebSocket_readChannelFinished(QWebSocket* self);
void QWebSocket_connect_readChannelFinished(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebSocket_textFrameReceived(QWebSocket* self, struct seaqt_string frame, bool isLastFrame);
void QWebSocket_connect_textFrameReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, bool), void (*release)(intptr_t));
void QWebSocket_binaryFrameReceived(QWebSocket* self, struct seaqt_string frame, bool isLastFrame);
void QWebSocket_connect_binaryFrameReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, bool), void (*release)(intptr_t));
void QWebSocket_textMessageReceived(QWebSocket* self, struct seaqt_string message);
void QWebSocket_connect_textMessageReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QWebSocket_binaryMessageReceived(QWebSocket* self, struct seaqt_string message);
void QWebSocket_connect_binaryMessageReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QWebSocket_error_error(QWebSocket* self, int error);
void QWebSocket_connect_error_error(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebSocket_pong(QWebSocket* self, unsigned long long elapsedTime, struct seaqt_string payload);
void QWebSocket_connect_pong(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, unsigned long long, struct seaqt_string), void (*release)(intptr_t));
void QWebSocket_bytesWritten(QWebSocket* self, long long bytes);
void QWebSocket_connect_bytesWritten(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QWebSocket_peerVerifyError(QWebSocket* self, QSslError* error);
void QWebSocket_connect_peerVerifyError(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t));
void QWebSocket_sslErrors(QWebSocket* self, struct seaqt_array /* of QSslError* */  errors);
void QWebSocket_connect_sslErrors(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QWebSocket_preSharedKeyAuthenticationRequired(QWebSocket* self, QSslPreSharedKeyAuthenticator* authenticator);
void QWebSocket_connect_preSharedKeyAuthenticationRequired(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QWebSocket_alertSent(QWebSocket* self, int level, int type, struct seaqt_string description);
void QWebSocket_connect_alertSent(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t));
void QWebSocket_alertReceived(QWebSocket* self, int level, int type, struct seaqt_string description);
void QWebSocket_connect_alertReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t));
void QWebSocket_handshakeInterruptedOnError(QWebSocket* self, QSslError* error);
void QWebSocket_connect_handshakeInterruptedOnError(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t));
struct seaqt_string QWebSocket_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebSocket_tr_s_c_n(const char* s, const char* c, int n);
void QWebSocket_close_closeCode(QWebSocket* self, int closeCode);
void QWebSocket_close_closeCode_reason(QWebSocket* self, int closeCode, struct seaqt_string reason);
void QWebSocket_ping_payload(QWebSocket* self, struct seaqt_string payload);

QMetaObject* QWebSocket_virtualbase_metaObject(const VirtualQWebSocket* self);
void* QWebSocket_virtualbase_metacast(VirtualQWebSocket* self, const char* param1);
int QWebSocket_virtualbase_metacall(VirtualQWebSocket* self, int param1, int param2, void** param3);
bool QWebSocket_virtualbase_event(VirtualQWebSocket* self, QEvent* event);
bool QWebSocket_virtualbase_eventFilter(VirtualQWebSocket* self, QObject* watched, QEvent* event);
void QWebSocket_virtualbase_timerEvent(VirtualQWebSocket* self, QTimerEvent* event);
void QWebSocket_virtualbase_childEvent(VirtualQWebSocket* self, QChildEvent* event);
void QWebSocket_virtualbase_customEvent(VirtualQWebSocket* self, QEvent* event);
void QWebSocket_virtualbase_connectNotify(VirtualQWebSocket* self, QMetaMethod* signal);
void QWebSocket_virtualbase_disconnectNotify(VirtualQWebSocket* self, QMetaMethod* signal);

QObject* QWebSocket_protectedbase_sender(const VirtualQWebSocket* self);
int QWebSocket_protectedbase_senderSignalIndex(const VirtualQWebSocket* self);
int QWebSocket_protectedbase_receivers(const VirtualQWebSocket* self, const char* signal);
bool QWebSocket_protectedbase_isSignalConnected(const VirtualQWebSocket* self, QMetaMethod* signal);

void QWebSocket_delete(QWebSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
