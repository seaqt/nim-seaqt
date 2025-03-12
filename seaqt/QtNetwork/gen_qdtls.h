#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QDTLS_H
#define SEAQT_QTNETWORK_GEN_QDTLS_H

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
class QDtls;
class QDtlsClientVerifier;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QDtlsClientVerifier__GeneratorParameters)
typedef QDtlsClientVerifier::GeneratorParameters QDtlsClientVerifier__GeneratorParameters;
#else
class QDtlsClientVerifier__GeneratorParameters;
#endif
class QEvent;
class QHostAddress;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSslCipher;
class QSslConfiguration;
class QSslError;
class QSslPreSharedKeyAuthenticator;
class QTimerEvent;
class QUdpSocket;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDtls QDtls;
typedef struct QDtlsClientVerifier QDtlsClientVerifier;
typedef struct QDtlsClientVerifier__GeneratorParameters QDtlsClientVerifier__GeneratorParameters;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSslCipher QSslCipher;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUdpSocket QUdpSocket;
#endif

typedef struct VirtualQDtlsClientVerifier VirtualQDtlsClientVerifier;
typedef struct QDtlsClientVerifier_VTable{
	void (*destructor)(VirtualQDtlsClientVerifier* self);
	QMetaObject* (*metaObject)(const VirtualQDtlsClientVerifier* self);
	void* (*metacast)(VirtualQDtlsClientVerifier* self, const char* param1);
	int (*metacall)(VirtualQDtlsClientVerifier* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQDtlsClientVerifier* self, QEvent* event);
	bool (*eventFilter)(VirtualQDtlsClientVerifier* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDtlsClientVerifier* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDtlsClientVerifier* self, QChildEvent* event);
	void (*customEvent)(VirtualQDtlsClientVerifier* self, QEvent* event);
	void (*connectNotify)(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);
}QDtlsClientVerifier_VTable;

const QDtlsClientVerifier_VTable* QDtlsClientVerifier_vtbl(const VirtualQDtlsClientVerifier* self);
void* QDtlsClientVerifier_vdata(const VirtualQDtlsClientVerifier* self);
void QDtlsClientVerifier_setVdata(VirtualQDtlsClientVerifier* self, void* vdata);

VirtualQDtlsClientVerifier* QDtlsClientVerifier_new(const QDtlsClientVerifier_VTable* vtbl, void* vdata);
VirtualQDtlsClientVerifier* QDtlsClientVerifier_new2(const QDtlsClientVerifier_VTable* vtbl, void* vdata, QObject* parent);

void QDtlsClientVerifier_virtbase(QDtlsClientVerifier* src, QObject** outptr_QObject);
QMetaObject* QDtlsClientVerifier_metaObject(const QDtlsClientVerifier* self);
void* QDtlsClientVerifier_metacast(QDtlsClientVerifier* self, const char* param1);
int QDtlsClientVerifier_metacall(QDtlsClientVerifier* self, int param1, int param2, void** param3);
struct miqt_string QDtlsClientVerifier_tr(const char* s);
bool QDtlsClientVerifier_setCookieGeneratorParameters(QDtlsClientVerifier* self, QDtlsClientVerifier__GeneratorParameters* params);
QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier_cookieGeneratorParameters(const QDtlsClientVerifier* self);
bool QDtlsClientVerifier_verifyClient(QDtlsClientVerifier* self, QUdpSocket* socket, struct miqt_string dgram, QHostAddress* address, uint16_t port);
struct miqt_string QDtlsClientVerifier_verifiedHello(const QDtlsClientVerifier* self);
unsigned char QDtlsClientVerifier_dtlsError(const QDtlsClientVerifier* self);
struct miqt_string QDtlsClientVerifier_dtlsErrorString(const QDtlsClientVerifier* self);
struct miqt_string QDtlsClientVerifier_tr2(const char* s, const char* c);
struct miqt_string QDtlsClientVerifier_tr3(const char* s, const char* c, int n);

QMetaObject* QDtlsClientVerifier_virtualbase_metaObject(const VirtualQDtlsClientVerifier* self);
void* QDtlsClientVerifier_virtualbase_metacast(VirtualQDtlsClientVerifier* self, const char* param1);
int QDtlsClientVerifier_virtualbase_metacall(VirtualQDtlsClientVerifier* self, int param1, int param2, void** param3);
bool QDtlsClientVerifier_virtualbase_event(VirtualQDtlsClientVerifier* self, QEvent* event);
bool QDtlsClientVerifier_virtualbase_eventFilter(VirtualQDtlsClientVerifier* self, QObject* watched, QEvent* event);
void QDtlsClientVerifier_virtualbase_timerEvent(VirtualQDtlsClientVerifier* self, QTimerEvent* event);
void QDtlsClientVerifier_virtualbase_childEvent(VirtualQDtlsClientVerifier* self, QChildEvent* event);
void QDtlsClientVerifier_virtualbase_customEvent(VirtualQDtlsClientVerifier* self, QEvent* event);
void QDtlsClientVerifier_virtualbase_connectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);
void QDtlsClientVerifier_virtualbase_disconnectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);

QObject* QDtlsClientVerifier_protectedbase_sender(const VirtualQDtlsClientVerifier* self);
int QDtlsClientVerifier_protectedbase_senderSignalIndex(const VirtualQDtlsClientVerifier* self);
int QDtlsClientVerifier_protectedbase_receivers(const VirtualQDtlsClientVerifier* self, const char* signal);
bool QDtlsClientVerifier_protectedbase_isSignalConnected(const VirtualQDtlsClientVerifier* self, QMetaMethod* signal);

const QMetaObject* QDtlsClientVerifier_staticMetaObject();
void QDtlsClientVerifier_delete(QDtlsClientVerifier* self);

typedef struct VirtualQDtls VirtualQDtls;
typedef struct QDtls_VTable{
	void (*destructor)(VirtualQDtls* self);
	QMetaObject* (*metaObject)(const VirtualQDtls* self);
	void* (*metacast)(VirtualQDtls* self, const char* param1);
	int (*metacall)(VirtualQDtls* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQDtls* self, QEvent* event);
	bool (*eventFilter)(VirtualQDtls* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDtls* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDtls* self, QChildEvent* event);
	void (*customEvent)(VirtualQDtls* self, QEvent* event);
	void (*connectNotify)(VirtualQDtls* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDtls* self, QMetaMethod* signal);
}QDtls_VTable;

const QDtls_VTable* QDtls_vtbl(const VirtualQDtls* self);
void* QDtls_vdata(const VirtualQDtls* self);
void QDtls_setVdata(VirtualQDtls* self, void* vdata);

VirtualQDtls* QDtls_new(const QDtls_VTable* vtbl, void* vdata, int mode);
VirtualQDtls* QDtls_new2(const QDtls_VTable* vtbl, void* vdata, int mode, QObject* parent);

void QDtls_virtbase(QDtls* src, QObject** outptr_QObject);
QMetaObject* QDtls_metaObject(const QDtls* self);
void* QDtls_metacast(QDtls* self, const char* param1);
int QDtls_metacall(QDtls* self, int param1, int param2, void** param3);
struct miqt_string QDtls_tr(const char* s);
bool QDtls_setPeer(QDtls* self, QHostAddress* address, uint16_t port);
bool QDtls_setPeerVerificationName(QDtls* self, struct miqt_string name);
QHostAddress* QDtls_peerAddress(const QDtls* self);
uint16_t QDtls_peerPort(const QDtls* self);
struct miqt_string QDtls_peerVerificationName(const QDtls* self);
int QDtls_sslMode(const QDtls* self);
void QDtls_setMtuHint(QDtls* self, uint16_t mtuHint);
uint16_t QDtls_mtuHint(const QDtls* self);
bool QDtls_setCookieGeneratorParameters(QDtls* self, QDtlsClientVerifier__GeneratorParameters* params);
QDtlsClientVerifier__GeneratorParameters* QDtls_cookieGeneratorParameters(const QDtls* self);
bool QDtls_setDtlsConfiguration(QDtls* self, QSslConfiguration* configuration);
QSslConfiguration* QDtls_dtlsConfiguration(const QDtls* self);
int QDtls_handshakeState(const QDtls* self);
bool QDtls_doHandshake(QDtls* self, QUdpSocket* socket);
bool QDtls_handleTimeout(QDtls* self, QUdpSocket* socket);
bool QDtls_resumeHandshake(QDtls* self, QUdpSocket* socket);
bool QDtls_abortHandshake(QDtls* self, QUdpSocket* socket);
bool QDtls_shutdown(QDtls* self, QUdpSocket* socket);
bool QDtls_isConnectionEncrypted(const QDtls* self);
QSslCipher* QDtls_sessionCipher(const QDtls* self);
int QDtls_sessionProtocol(const QDtls* self);
long long QDtls_writeDatagramEncrypted(QDtls* self, QUdpSocket* socket, struct miqt_string dgram);
struct miqt_string QDtls_decryptDatagram(QDtls* self, QUdpSocket* socket, struct miqt_string dgram);
unsigned char QDtls_dtlsError(const QDtls* self);
struct miqt_string QDtls_dtlsErrorString(const QDtls* self);
struct miqt_array /* of QSslError* */  QDtls_peerVerificationErrors(const QDtls* self);
void QDtls_ignoreVerificationErrors(QDtls* self, struct miqt_array /* of QSslError* */  errorsToIgnore);
void QDtls_pskRequired(QDtls* self, QSslPreSharedKeyAuthenticator* authenticator);
void QDtls_connect_pskRequired(VirtualQDtls* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QDtls_handshakeTimeout(QDtls* self);
void QDtls_connect_handshakeTimeout(VirtualQDtls* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QDtls_tr2(const char* s, const char* c);
struct miqt_string QDtls_tr3(const char* s, const char* c, int n);
bool QDtls_setPeer3(QDtls* self, QHostAddress* address, uint16_t port, struct miqt_string verificationName);
bool QDtls_doHandshake2(QDtls* self, QUdpSocket* socket, struct miqt_string dgram);

QMetaObject* QDtls_virtualbase_metaObject(const VirtualQDtls* self);
void* QDtls_virtualbase_metacast(VirtualQDtls* self, const char* param1);
int QDtls_virtualbase_metacall(VirtualQDtls* self, int param1, int param2, void** param3);
bool QDtls_virtualbase_event(VirtualQDtls* self, QEvent* event);
bool QDtls_virtualbase_eventFilter(VirtualQDtls* self, QObject* watched, QEvent* event);
void QDtls_virtualbase_timerEvent(VirtualQDtls* self, QTimerEvent* event);
void QDtls_virtualbase_childEvent(VirtualQDtls* self, QChildEvent* event);
void QDtls_virtualbase_customEvent(VirtualQDtls* self, QEvent* event);
void QDtls_virtualbase_connectNotify(VirtualQDtls* self, QMetaMethod* signal);
void QDtls_virtualbase_disconnectNotify(VirtualQDtls* self, QMetaMethod* signal);

QObject* QDtls_protectedbase_sender(const VirtualQDtls* self);
int QDtls_protectedbase_senderSignalIndex(const VirtualQDtls* self);
int QDtls_protectedbase_receivers(const VirtualQDtls* self, const char* signal);
bool QDtls_protectedbase_isSignalConnected(const VirtualQDtls* self, QMetaMethod* signal);

const QMetaObject* QDtls_staticMetaObject();
void QDtls_delete(QDtls* self);

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new();
QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new2(int a, struct miqt_string s);
QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new3(QDtlsClientVerifier__GeneratorParameters* param1);

void QDtlsClientVerifier__GeneratorParameters_operatorAssign(QDtlsClientVerifier__GeneratorParameters* self, QDtlsClientVerifier__GeneratorParameters* param1);

void QDtlsClientVerifier__GeneratorParameters_delete(QDtlsClientVerifier__GeneratorParameters* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
