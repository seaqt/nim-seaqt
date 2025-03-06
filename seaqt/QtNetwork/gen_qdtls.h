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

struct QDtlsClientVerifier_VTable {
	void (*destructor)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self);
	QMetaObject* (*metaObject)(struct QDtlsClientVerifier_VTable* vtbl, const QDtlsClientVerifier* self);
	void* (*metacast)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, const char* param1);
	int (*metacall)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, int param1, int param2, void** param3);
	bool (*event)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QEvent* event);
	bool (*eventFilter)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QTimerEvent* event);
	void (*childEvent)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QChildEvent* event);
	void (*customEvent)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QEvent* event);
	void (*connectNotify)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDtlsClientVerifier_VTable* vtbl, QDtlsClientVerifier* self, QMetaMethod* signal);
};
QDtlsClientVerifier* QDtlsClientVerifier_new(struct QDtlsClientVerifier_VTable* vtbl);
QDtlsClientVerifier* QDtlsClientVerifier_new2(struct QDtlsClientVerifier_VTable* vtbl, QObject* parent);
void QDtlsClientVerifier_virtbase(QDtlsClientVerifier* src, QObject** outptr_QObject);
QMetaObject* QDtlsClientVerifier_metaObject(const QDtlsClientVerifier* self);
void* QDtlsClientVerifier_metacast(QDtlsClientVerifier* self, const char* param1);
int QDtlsClientVerifier_metacall(QDtlsClientVerifier* self, int param1, int param2, void** param3);
struct miqt_string QDtlsClientVerifier_tr(const char* s);
struct miqt_string QDtlsClientVerifier_trUtf8(const char* s);
bool QDtlsClientVerifier_setCookieGeneratorParameters(QDtlsClientVerifier* self, QDtlsClientVerifier__GeneratorParameters* params);
QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier_cookieGeneratorParameters(const QDtlsClientVerifier* self);
bool QDtlsClientVerifier_verifyClient(QDtlsClientVerifier* self, QUdpSocket* socket, struct miqt_string dgram, QHostAddress* address, uint16_t port);
struct miqt_string QDtlsClientVerifier_verifiedHello(const QDtlsClientVerifier* self);
unsigned char QDtlsClientVerifier_dtlsError(const QDtlsClientVerifier* self);
struct miqt_string QDtlsClientVerifier_dtlsErrorString(const QDtlsClientVerifier* self);
struct miqt_string QDtlsClientVerifier_tr2(const char* s, const char* c);
struct miqt_string QDtlsClientVerifier_tr3(const char* s, const char* c, int n);
struct miqt_string QDtlsClientVerifier_trUtf82(const char* s, const char* c);
struct miqt_string QDtlsClientVerifier_trUtf83(const char* s, const char* c, int n);
QMetaObject* QDtlsClientVerifier_virtualbase_metaObject(const void* self);
void* QDtlsClientVerifier_virtualbase_metacast(void* self, const char* param1);
int QDtlsClientVerifier_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDtlsClientVerifier_virtualbase_event(void* self, QEvent* event);
bool QDtlsClientVerifier_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDtlsClientVerifier_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDtlsClientVerifier_virtualbase_childEvent(void* self, QChildEvent* event);
void QDtlsClientVerifier_virtualbase_customEvent(void* self, QEvent* event);
void QDtlsClientVerifier_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDtlsClientVerifier_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QDtlsClientVerifier_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDtlsClientVerifier_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDtlsClientVerifier_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDtlsClientVerifier_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDtlsClientVerifier_staticMetaObject();
void QDtlsClientVerifier_delete(QDtlsClientVerifier* self);

struct QDtls_VTable {
	void (*destructor)(struct QDtls_VTable* vtbl, QDtls* self);
	QMetaObject* (*metaObject)(struct QDtls_VTable* vtbl, const QDtls* self);
	void* (*metacast)(struct QDtls_VTable* vtbl, QDtls* self, const char* param1);
	int (*metacall)(struct QDtls_VTable* vtbl, QDtls* self, int param1, int param2, void** param3);
	bool (*event)(struct QDtls_VTable* vtbl, QDtls* self, QEvent* event);
	bool (*eventFilter)(struct QDtls_VTable* vtbl, QDtls* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDtls_VTable* vtbl, QDtls* self, QTimerEvent* event);
	void (*childEvent)(struct QDtls_VTable* vtbl, QDtls* self, QChildEvent* event);
	void (*customEvent)(struct QDtls_VTable* vtbl, QDtls* self, QEvent* event);
	void (*connectNotify)(struct QDtls_VTable* vtbl, QDtls* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDtls_VTable* vtbl, QDtls* self, QMetaMethod* signal);
};
QDtls* QDtls_new(struct QDtls_VTable* vtbl, int mode);
QDtls* QDtls_new2(struct QDtls_VTable* vtbl, int mode, QObject* parent);
void QDtls_virtbase(QDtls* src, QObject** outptr_QObject);
QMetaObject* QDtls_metaObject(const QDtls* self);
void* QDtls_metacast(QDtls* self, const char* param1);
int QDtls_metacall(QDtls* self, int param1, int param2, void** param3);
struct miqt_string QDtls_tr(const char* s);
struct miqt_string QDtls_trUtf8(const char* s);
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
void QDtls_connect_pskRequired(QDtls* self, intptr_t slot);
void QDtls_handshakeTimeout(QDtls* self);
void QDtls_connect_handshakeTimeout(QDtls* self, intptr_t slot);
struct miqt_string QDtls_tr2(const char* s, const char* c);
struct miqt_string QDtls_tr3(const char* s, const char* c, int n);
struct miqt_string QDtls_trUtf82(const char* s, const char* c);
struct miqt_string QDtls_trUtf83(const char* s, const char* c, int n);
bool QDtls_setPeer3(QDtls* self, QHostAddress* address, uint16_t port, struct miqt_string verificationName);
bool QDtls_doHandshake2(QDtls* self, QUdpSocket* socket, struct miqt_string dgram);
QMetaObject* QDtls_virtualbase_metaObject(const void* self);
void* QDtls_virtualbase_metacast(void* self, const char* param1);
int QDtls_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDtls_virtualbase_event(void* self, QEvent* event);
bool QDtls_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDtls_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDtls_virtualbase_childEvent(void* self, QChildEvent* event);
void QDtls_virtualbase_customEvent(void* self, QEvent* event);
void QDtls_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDtls_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QDtls_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDtls_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDtls_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDtls_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
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
