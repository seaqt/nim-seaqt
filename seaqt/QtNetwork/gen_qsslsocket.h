#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSSLSOCKET_H
#define SEAQT_QTNETWORK_GEN_QSSLSOCKET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSocket;
class QChildEvent;
class QEvent;
class QHostAddress;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QObject;
class QOcspResponse;
class QSslCertificate;
class QSslCipher;
class QSslConfiguration;
class QSslError;
class QSslKey;
class QSslPreSharedKeyAuthenticator;
class QSslSocket;
class QTcpSocket;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractSocket QAbstractSocket;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QOcspResponse QOcspResponse;
typedef struct QSslCertificate QSslCertificate;
typedef struct QSslCipher QSslCipher;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslKey QSslKey;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QSslSocket QSslSocket;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSslSocket VirtualQSslSocket;
typedef struct QSslSocket_VTable{
	void (*destructor)(VirtualQSslSocket* self);
	QMetaObject* (*metaObject)(const VirtualQSslSocket* self);
	void* (*metacast)(VirtualQSslSocket* self, const char* param1);
	int (*metacall)(VirtualQSslSocket* self, int param1, int param2, void** param3);
	void (*resume)(VirtualQSslSocket* self);
	bool (*setSocketDescriptor)(VirtualQSslSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*connectToHost)(VirtualQSslSocket* self, struct seaqt_string hostName, unsigned short port, int openMode, int protocol);
	void (*disconnectFromHost)(VirtualQSslSocket* self);
	void (*setSocketOption)(VirtualQSslSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(VirtualQSslSocket* self, int option);
	long long (*bytesAvailable)(const VirtualQSslSocket* self);
	long long (*bytesToWrite)(const VirtualQSslSocket* self);
	bool (*canReadLine)(const VirtualQSslSocket* self);
	void (*close)(VirtualQSslSocket* self);
	bool (*atEnd)(const VirtualQSslSocket* self);
	void (*setReadBufferSize)(VirtualQSslSocket* self, long long size);
	bool (*waitForConnected)(VirtualQSslSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQSslSocket* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQSslSocket* self, int msecs);
	bool (*waitForDisconnected)(VirtualQSslSocket* self, int msecs);
	long long (*readData)(VirtualQSslSocket* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQSslSocket* self, long long maxSize);
	long long (*writeData)(VirtualQSslSocket* self, const char* data, long long len);
	bool (*bind)(VirtualQSslSocket* self, QHostAddress* address, unsigned short port, int mode);
	intptr_t (*socketDescriptor)(const VirtualQSslSocket* self);
	bool (*isSequential)(const VirtualQSslSocket* self);
	long long (*readLineData)(VirtualQSslSocket* self, char* data, long long maxlen);
	bool (*open)(VirtualQSslSocket* self, int mode);
	long long (*pos)(const VirtualQSslSocket* self);
	long long (*size)(const VirtualQSslSocket* self);
	bool (*seek)(VirtualQSslSocket* self, long long pos);
	bool (*reset)(VirtualQSslSocket* self);
	bool (*event)(VirtualQSslSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQSslSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSslSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSslSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQSslSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQSslSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSslSocket* self, QMetaMethod* signal);
}QSslSocket_VTable;

void* QSslSocket_vdata(VirtualQSslSocket* self);
VirtualQSslSocket* vdata_QSslSocket(void* vdata);

VirtualQSslSocket* QSslSocket_new(const QSslSocket_VTable* vtbl, size_t vdata);
VirtualQSslSocket* QSslSocket_new2(const QSslSocket_VTable* vtbl, size_t vdata, QObject* parent);

void QSslSocket_virtbase(QSslSocket* src, QTcpSocket** outptr_QTcpSocket);
QMetaObject* QSslSocket_metaObject(const QSslSocket* self);
void* QSslSocket_metacast(QSslSocket* self, const char* param1);
int QSslSocket_metacall(QSslSocket* self, int param1, int param2, void** param3);
struct seaqt_string QSslSocket_tr(const char* s);
void QSslSocket_resume(QSslSocket* self);
void QSslSocket_connectToHostEncrypted(QSslSocket* self, struct seaqt_string hostName, unsigned short port);
void QSslSocket_connectToHostEncrypted2(QSslSocket* self, struct seaqt_string hostName, unsigned short port, struct seaqt_string sslPeerName);
bool QSslSocket_setSocketDescriptor(QSslSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QSslSocket_connectToHost(QSslSocket* self, struct seaqt_string hostName, unsigned short port, int openMode, int protocol);
void QSslSocket_disconnectFromHost(QSslSocket* self);
void QSslSocket_setSocketOption(QSslSocket* self, int option, QVariant* value);
QVariant* QSslSocket_socketOption(QSslSocket* self, int option);
int QSslSocket_mode(const QSslSocket* self);
bool QSslSocket_isEncrypted(const QSslSocket* self);
int QSslSocket_protocol(const QSslSocket* self);
void QSslSocket_setProtocol(QSslSocket* self, int protocol);
int QSslSocket_peerVerifyMode(const QSslSocket* self);
void QSslSocket_setPeerVerifyMode(QSslSocket* self, int mode);
int QSslSocket_peerVerifyDepth(const QSslSocket* self);
void QSslSocket_setPeerVerifyDepth(QSslSocket* self, int depth);
struct seaqt_string QSslSocket_peerVerifyName(const QSslSocket* self);
void QSslSocket_setPeerVerifyName(QSslSocket* self, struct seaqt_string hostName);
long long QSslSocket_bytesAvailable(const QSslSocket* self);
long long QSslSocket_bytesToWrite(const QSslSocket* self);
bool QSslSocket_canReadLine(const QSslSocket* self);
void QSslSocket_close(QSslSocket* self);
bool QSslSocket_atEnd(const QSslSocket* self);
void QSslSocket_setReadBufferSize(QSslSocket* self, long long size);
long long QSslSocket_encryptedBytesAvailable(const QSslSocket* self);
long long QSslSocket_encryptedBytesToWrite(const QSslSocket* self);
QSslConfiguration* QSslSocket_sslConfiguration(const QSslSocket* self);
void QSslSocket_setSslConfiguration(QSslSocket* self, QSslConfiguration* config);
void QSslSocket_setLocalCertificateChain(QSslSocket* self, struct seaqt_array /* of QSslCertificate* */  localChain);
struct seaqt_array /* of QSslCertificate* */  QSslSocket_localCertificateChain(const QSslSocket* self);
void QSslSocket_setLocalCertificate(QSslSocket* self, QSslCertificate* certificate);
void QSslSocket_setLocalCertificateWithFileName(QSslSocket* self, struct seaqt_string fileName);
QSslCertificate* QSslSocket_localCertificate(const QSslSocket* self);
QSslCertificate* QSslSocket_peerCertificate(const QSslSocket* self);
struct seaqt_array /* of QSslCertificate* */  QSslSocket_peerCertificateChain(const QSslSocket* self);
QSslCipher* QSslSocket_sessionCipher(const QSslSocket* self);
int QSslSocket_sessionProtocol(const QSslSocket* self);
struct seaqt_array /* of QOcspResponse* */  QSslSocket_ocspResponses(const QSslSocket* self);
void QSslSocket_setPrivateKey(QSslSocket* self, QSslKey* key);
void QSslSocket_setPrivateKeyWithFileName(QSslSocket* self, struct seaqt_string fileName);
QSslKey* QSslSocket_privateKey(const QSslSocket* self);
bool QSslSocket_waitForConnected(QSslSocket* self, int msecs);
bool QSslSocket_waitForEncrypted(QSslSocket* self);
bool QSslSocket_waitForReadyRead(QSslSocket* self, int msecs);
bool QSslSocket_waitForBytesWritten(QSslSocket* self, int msecs);
bool QSslSocket_waitForDisconnected(QSslSocket* self, int msecs);
struct seaqt_array /* of QSslError* */  QSslSocket_sslHandshakeErrors(const QSslSocket* self);
bool QSslSocket_supportsSsl();
long QSslSocket_sslLibraryVersionNumber();
struct seaqt_string QSslSocket_sslLibraryVersionString();
long QSslSocket_sslLibraryBuildVersionNumber();
struct seaqt_string QSslSocket_sslLibraryBuildVersionString();
struct seaqt_array /* of struct seaqt_string */  QSslSocket_availableBackends();
struct seaqt_string QSslSocket_activeBackend();
bool QSslSocket_setActiveBackend(struct seaqt_string backendName);
struct seaqt_array /* of int */  QSslSocket_supportedProtocols();
bool QSslSocket_isProtocolSupported(int protocol);
struct seaqt_array /* of int */  QSslSocket_implementedClasses();
bool QSslSocket_isClassImplemented(int cl);
struct seaqt_array /* of int */  QSslSocket_supportedFeatures();
bool QSslSocket_isFeatureSupported(int feat);
void QSslSocket_ignoreSslErrors(QSslSocket* self, struct seaqt_array /* of QSslError* */  errors);
void QSslSocket_continueInterruptedHandshake(QSslSocket* self);
void QSslSocket_startClientEncryption(QSslSocket* self);
void QSslSocket_startServerEncryption(QSslSocket* self);
void QSslSocket_ignoreSslErrors2(QSslSocket* self);
void QSslSocket_encrypted(QSslSocket* self);
void QSslSocket_connect_encrypted(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSslSocket_peerVerifyError(QSslSocket* self, QSslError* error);
void QSslSocket_connect_peerVerifyError(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t));
void QSslSocket_sslErrors(QSslSocket* self, struct seaqt_array /* of QSslError* */  errors);
void QSslSocket_connect_sslErrors(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QSslSocket_modeChanged(QSslSocket* self, int newMode);
void QSslSocket_connect_modeChanged(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSslSocket_encryptedBytesWritten(QSslSocket* self, long long totalBytes);
void QSslSocket_connect_encryptedBytesWritten(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QSslSocket_preSharedKeyAuthenticationRequired(QSslSocket* self, QSslPreSharedKeyAuthenticator* authenticator);
void QSslSocket_connect_preSharedKeyAuthenticationRequired(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
void QSslSocket_newSessionTicketReceived(QSslSocket* self);
void QSslSocket_connect_newSessionTicketReceived(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSslSocket_alertSent(QSslSocket* self, int level, int type, struct seaqt_string description);
void QSslSocket_connect_alertSent(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t));
void QSslSocket_alertReceived(QSslSocket* self, int level, int type, struct seaqt_string description);
void QSslSocket_connect_alertReceived(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t));
void QSslSocket_handshakeInterruptedOnError(QSslSocket* self, QSslError* error);
void QSslSocket_connect_handshakeInterruptedOnError(QSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t));
long long QSslSocket_readData(QSslSocket* self, char* data, long long maxlen);
long long QSslSocket_skipData(QSslSocket* self, long long maxSize);
long long QSslSocket_writeData(QSslSocket* self, const char* data, long long len);
struct seaqt_string QSslSocket_tr2(const char* s, const char* c);
struct seaqt_string QSslSocket_tr3(const char* s, const char* c, int n);
void QSslSocket_connectToHostEncrypted3(QSslSocket* self, struct seaqt_string hostName, unsigned short port, int mode);
void QSslSocket_connectToHostEncrypted4(QSslSocket* self, struct seaqt_string hostName, unsigned short port, int mode, int protocol);
void QSslSocket_connectToHostEncrypted5(QSslSocket* self, struct seaqt_string hostName, unsigned short port, struct seaqt_string sslPeerName, int mode);
void QSslSocket_connectToHostEncrypted6(QSslSocket* self, struct seaqt_string hostName, unsigned short port, struct seaqt_string sslPeerName, int mode, int protocol);
void QSslSocket_setLocalCertificate2(QSslSocket* self, struct seaqt_string fileName, int format);
void QSslSocket_setPrivateKey2(QSslSocket* self, struct seaqt_string fileName, int algorithm);
void QSslSocket_setPrivateKey3(QSslSocket* self, struct seaqt_string fileName, int algorithm, int format);
void QSslSocket_setPrivateKey4(QSslSocket* self, struct seaqt_string fileName, int algorithm, int format, struct seaqt_string passPhrase);
bool QSslSocket_waitForEncryptedWithMsecs(QSslSocket* self, int msecs);
struct seaqt_array /* of int */  QSslSocket_supportedProtocolsWithBackendName(struct seaqt_string backendName);
bool QSslSocket_isProtocolSupported2(int protocol, struct seaqt_string backendName);
struct seaqt_array /* of int */  QSslSocket_implementedClassesWithBackendName(struct seaqt_string backendName);
bool QSslSocket_isClassImplemented2(int cl, struct seaqt_string backendName);
struct seaqt_array /* of int */  QSslSocket_supportedFeaturesWithBackendName(struct seaqt_string backendName);
bool QSslSocket_isFeatureSupported2(int feat, struct seaqt_string backendName);

QMetaObject* QSslSocket_virtualbase_metaObject(const VirtualQSslSocket* self);
void* QSslSocket_virtualbase_metacast(VirtualQSslSocket* self, const char* param1);
int QSslSocket_virtualbase_metacall(VirtualQSslSocket* self, int param1, int param2, void** param3);
void QSslSocket_virtualbase_resume(VirtualQSslSocket* self);
bool QSslSocket_virtualbase_setSocketDescriptor(VirtualQSslSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QSslSocket_virtualbase_connectToHost(VirtualQSslSocket* self, struct seaqt_string hostName, unsigned short port, int openMode, int protocol);
void QSslSocket_virtualbase_disconnectFromHost(VirtualQSslSocket* self);
void QSslSocket_virtualbase_setSocketOption(VirtualQSslSocket* self, int option, QVariant* value);
QVariant* QSslSocket_virtualbase_socketOption(VirtualQSslSocket* self, int option);
long long QSslSocket_virtualbase_bytesAvailable(const VirtualQSslSocket* self);
long long QSslSocket_virtualbase_bytesToWrite(const VirtualQSslSocket* self);
bool QSslSocket_virtualbase_canReadLine(const VirtualQSslSocket* self);
void QSslSocket_virtualbase_close(VirtualQSslSocket* self);
bool QSslSocket_virtualbase_atEnd(const VirtualQSslSocket* self);
void QSslSocket_virtualbase_setReadBufferSize(VirtualQSslSocket* self, long long size);
bool QSslSocket_virtualbase_waitForConnected(VirtualQSslSocket* self, int msecs);
bool QSslSocket_virtualbase_waitForReadyRead(VirtualQSslSocket* self, int msecs);
bool QSslSocket_virtualbase_waitForBytesWritten(VirtualQSslSocket* self, int msecs);
bool QSslSocket_virtualbase_waitForDisconnected(VirtualQSslSocket* self, int msecs);
long long QSslSocket_virtualbase_readData(VirtualQSslSocket* self, char* data, long long maxlen);
long long QSslSocket_virtualbase_skipData(VirtualQSslSocket* self, long long maxSize);
long long QSslSocket_virtualbase_writeData(VirtualQSslSocket* self, const char* data, long long len);
bool QSslSocket_virtualbase_bind(VirtualQSslSocket* self, QHostAddress* address, unsigned short port, int mode);
intptr_t QSslSocket_virtualbase_socketDescriptor(const VirtualQSslSocket* self);
bool QSslSocket_virtualbase_isSequential(const VirtualQSslSocket* self);
long long QSslSocket_virtualbase_readLineData(VirtualQSslSocket* self, char* data, long long maxlen);
bool QSslSocket_virtualbase_open(VirtualQSslSocket* self, int mode);
long long QSslSocket_virtualbase_pos(const VirtualQSslSocket* self);
long long QSslSocket_virtualbase_size(const VirtualQSslSocket* self);
bool QSslSocket_virtualbase_seek(VirtualQSslSocket* self, long long pos);
bool QSslSocket_virtualbase_reset(VirtualQSslSocket* self);
bool QSslSocket_virtualbase_event(VirtualQSslSocket* self, QEvent* event);
bool QSslSocket_virtualbase_eventFilter(VirtualQSslSocket* self, QObject* watched, QEvent* event);
void QSslSocket_virtualbase_timerEvent(VirtualQSslSocket* self, QTimerEvent* event);
void QSslSocket_virtualbase_childEvent(VirtualQSslSocket* self, QChildEvent* event);
void QSslSocket_virtualbase_customEvent(VirtualQSslSocket* self, QEvent* event);
void QSslSocket_virtualbase_connectNotify(VirtualQSslSocket* self, QMetaMethod* signal);
void QSslSocket_virtualbase_disconnectNotify(VirtualQSslSocket* self, QMetaMethod* signal);

void QSslSocket_protectedbase_setSocketState(VirtualQSslSocket* self, int state);
void QSslSocket_protectedbase_setSocketError(VirtualQSslSocket* self, int socketError);
void QSslSocket_protectedbase_setLocalPort(VirtualQSslSocket* self, unsigned short port);
void QSslSocket_protectedbase_setLocalAddress(VirtualQSslSocket* self, QHostAddress* address);
void QSslSocket_protectedbase_setPeerPort(VirtualQSslSocket* self, unsigned short port);
void QSslSocket_protectedbase_setPeerAddress(VirtualQSslSocket* self, QHostAddress* address);
void QSslSocket_protectedbase_setPeerName(VirtualQSslSocket* self, struct seaqt_string name);
void QSslSocket_protectedbase_setOpenMode(VirtualQSslSocket* self, int openMode);
void QSslSocket_protectedbase_setErrorString(VirtualQSslSocket* self, struct seaqt_string errorString);
QObject* QSslSocket_protectedbase_sender(const VirtualQSslSocket* self);
int QSslSocket_protectedbase_senderSignalIndex(const VirtualQSslSocket* self);
int QSslSocket_protectedbase_receivers(const VirtualQSslSocket* self, const char* signal);
bool QSslSocket_protectedbase_isSignalConnected(const VirtualQSslSocket* self, QMetaMethod* signal);

const QMetaObject* QSslSocket_staticMetaObject();
void QSslSocket_delete(QSslSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
