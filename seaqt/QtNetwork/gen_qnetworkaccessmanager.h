#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKACCESSMANAGER_H
#define SEAQT_QTNETWORK_GEN_QNETWORKACCESSMANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractNetworkCache;
class QAuthenticator;
class QChildEvent;
class QEvent;
class QHstsPolicy;
class QHttpMultiPart;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QNetworkAccessManager;
class QNetworkCookieJar;
class QNetworkProxy;
class QNetworkProxyFactory;
class QNetworkReply;
class QNetworkRequest;
class QObject;
class QSslConfiguration;
class QSslError;
class QSslPreSharedKeyAuthenticator;
class QTimerEvent;
#else
typedef struct QAbstractNetworkCache QAbstractNetworkCache;
typedef struct QAuthenticator QAuthenticator;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHstsPolicy QHstsPolicy;
typedef struct QHttpMultiPart QHttpMultiPart;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkAccessManager QNetworkAccessManager;
typedef struct QNetworkCookieJar QNetworkCookieJar;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QNetworkProxyFactory QNetworkProxyFactory;
typedef struct QNetworkReply QNetworkReply;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QNetworkAccessManager_VTable {
	void (*destructor)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self);
	QMetaObject* (*metaObject)(struct QNetworkAccessManager_VTable* vtbl, const QNetworkAccessManager* self);
	void* (*metacast)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, const char* param1);
	int (*metacall)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, int param1, int param2, void** param3);
	struct miqt_array /* of struct miqt_string */  (*supportedSchemes)(struct QNetworkAccessManager_VTable* vtbl, const QNetworkAccessManager* self);
	QNetworkReply* (*createRequest)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, int op, QNetworkRequest* request, QIODevice* outgoingData);
	bool (*event)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QEvent* event);
	bool (*eventFilter)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QTimerEvent* event);
	void (*childEvent)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QChildEvent* event);
	void (*customEvent)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QEvent* event);
	void (*connectNotify)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QNetworkAccessManager_VTable* vtbl, QNetworkAccessManager* self, QMetaMethod* signal);
};
QNetworkAccessManager* QNetworkAccessManager_new(struct QNetworkAccessManager_VTable* vtbl);
QNetworkAccessManager* QNetworkAccessManager_new2(struct QNetworkAccessManager_VTable* vtbl, QObject* parent);
void QNetworkAccessManager_virtbase(QNetworkAccessManager* src, QObject** outptr_QObject);
QMetaObject* QNetworkAccessManager_metaObject(const QNetworkAccessManager* self);
void* QNetworkAccessManager_metacast(QNetworkAccessManager* self, const char* param1);
int QNetworkAccessManager_metacall(QNetworkAccessManager* self, int param1, int param2, void** param3);
struct miqt_string QNetworkAccessManager_tr(const char* s);
struct miqt_array /* of struct miqt_string */  QNetworkAccessManager_supportedSchemes(const QNetworkAccessManager* self);
void QNetworkAccessManager_clearAccessCache(QNetworkAccessManager* self);
void QNetworkAccessManager_clearConnectionCache(QNetworkAccessManager* self);
QNetworkProxy* QNetworkAccessManager_proxy(const QNetworkAccessManager* self);
void QNetworkAccessManager_setProxy(QNetworkAccessManager* self, QNetworkProxy* proxy);
QNetworkProxyFactory* QNetworkAccessManager_proxyFactory(const QNetworkAccessManager* self);
void QNetworkAccessManager_setProxyFactory(QNetworkAccessManager* self, QNetworkProxyFactory* factory);
QAbstractNetworkCache* QNetworkAccessManager_cache(const QNetworkAccessManager* self);
void QNetworkAccessManager_setCache(QNetworkAccessManager* self, QAbstractNetworkCache* cache);
QNetworkCookieJar* QNetworkAccessManager_cookieJar(const QNetworkAccessManager* self);
void QNetworkAccessManager_setCookieJar(QNetworkAccessManager* self, QNetworkCookieJar* cookieJar);
void QNetworkAccessManager_setStrictTransportSecurityEnabled(QNetworkAccessManager* self, bool enabled);
bool QNetworkAccessManager_isStrictTransportSecurityEnabled(const QNetworkAccessManager* self);
void QNetworkAccessManager_enableStrictTransportSecurityStore(QNetworkAccessManager* self, bool enabled);
bool QNetworkAccessManager_isStrictTransportSecurityStoreEnabled(const QNetworkAccessManager* self);
void QNetworkAccessManager_addStrictTransportSecurityHosts(QNetworkAccessManager* self, struct miqt_array /* of QHstsPolicy* */  knownHosts);
struct miqt_array /* of QHstsPolicy* */  QNetworkAccessManager_strictTransportSecurityHosts(const QNetworkAccessManager* self);
QNetworkReply* QNetworkAccessManager_head(QNetworkAccessManager* self, QNetworkRequest* request);
QNetworkReply* QNetworkAccessManager_get(QNetworkAccessManager* self, QNetworkRequest* request);
QNetworkReply* QNetworkAccessManager_post(QNetworkAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QNetworkAccessManager_post2(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string data);
QNetworkReply* QNetworkAccessManager_put(QNetworkAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QNetworkAccessManager_put2(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string data);
QNetworkReply* QNetworkAccessManager_deleteResource(QNetworkAccessManager* self, QNetworkRequest* request);
QNetworkReply* QNetworkAccessManager_sendCustomRequest(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string verb);
QNetworkReply* QNetworkAccessManager_sendCustomRequest2(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string verb, struct miqt_string data);
QNetworkReply* QNetworkAccessManager_post3(QNetworkAccessManager* self, QNetworkRequest* request, QHttpMultiPart* multiPart);
QNetworkReply* QNetworkAccessManager_put3(QNetworkAccessManager* self, QNetworkRequest* request, QHttpMultiPart* multiPart);
QNetworkReply* QNetworkAccessManager_sendCustomRequest3(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string verb, QHttpMultiPart* multiPart);
void QNetworkAccessManager_connectToHostEncrypted(QNetworkAccessManager* self, struct miqt_string hostName);
void QNetworkAccessManager_connectToHostEncrypted2(QNetworkAccessManager* self, struct miqt_string hostName, uint16_t port, QSslConfiguration* sslConfiguration, struct miqt_string peerName);
void QNetworkAccessManager_connectToHost(QNetworkAccessManager* self, struct miqt_string hostName);
void QNetworkAccessManager_setRedirectPolicy(QNetworkAccessManager* self, int policy);
int QNetworkAccessManager_redirectPolicy(const QNetworkAccessManager* self);
bool QNetworkAccessManager_autoDeleteReplies(const QNetworkAccessManager* self);
void QNetworkAccessManager_setAutoDeleteReplies(QNetworkAccessManager* self, bool autoDelete);
int QNetworkAccessManager_transferTimeout(const QNetworkAccessManager* self);
void QNetworkAccessManager_setTransferTimeout(QNetworkAccessManager* self);
void QNetworkAccessManager_proxyAuthenticationRequired(QNetworkAccessManager* self, QNetworkProxy* proxy, QAuthenticator* authenticator);
void QNetworkAccessManager_connect_proxyAuthenticationRequired(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t));
void QNetworkAccessManager_authenticationRequired(QNetworkAccessManager* self, QNetworkReply* reply, QAuthenticator* authenticator);
void QNetworkAccessManager_connect_authenticationRequired(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*, QAuthenticator*), void (*release)(intptr_t));
void QNetworkAccessManager_finished(QNetworkAccessManager* self, QNetworkReply* reply);
void QNetworkAccessManager_connect_finished(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*), void (*release)(intptr_t));
void QNetworkAccessManager_encrypted(QNetworkAccessManager* self, QNetworkReply* reply);
void QNetworkAccessManager_connect_encrypted(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*), void (*release)(intptr_t));
void QNetworkAccessManager_sslErrors(QNetworkAccessManager* self, QNetworkReply* reply, struct miqt_array /* of QSslError* */  errors);
void QNetworkAccessManager_connect_sslErrors(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*, struct miqt_array /* of QSslError* */ ), void (*release)(intptr_t));
void QNetworkAccessManager_preSharedKeyAuthenticationRequired(QNetworkAccessManager* self, QNetworkReply* reply, QSslPreSharedKeyAuthenticator* authenticator);
void QNetworkAccessManager_connect_preSharedKeyAuthenticationRequired(QNetworkAccessManager* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t));
QNetworkReply* QNetworkAccessManager_createRequest(QNetworkAccessManager* self, int op, QNetworkRequest* request, QIODevice* outgoingData);
struct miqt_string QNetworkAccessManager_tr2(const char* s, const char* c);
struct miqt_string QNetworkAccessManager_tr3(const char* s, const char* c, int n);
void QNetworkAccessManager_enableStrictTransportSecurityStore2(QNetworkAccessManager* self, bool enabled, struct miqt_string storeDir);
QNetworkReply* QNetworkAccessManager_sendCustomRequest32(QNetworkAccessManager* self, QNetworkRequest* request, struct miqt_string verb, QIODevice* data);
void QNetworkAccessManager_connectToHostEncrypted22(QNetworkAccessManager* self, struct miqt_string hostName, uint16_t port);
void QNetworkAccessManager_connectToHostEncrypted3(QNetworkAccessManager* self, struct miqt_string hostName, uint16_t port, QSslConfiguration* sslConfiguration);
void QNetworkAccessManager_connectToHost2(QNetworkAccessManager* self, struct miqt_string hostName, uint16_t port);
void QNetworkAccessManager_setTransferTimeout1(QNetworkAccessManager* self, int timeout);
QMetaObject* QNetworkAccessManager_virtualbase_metaObject(const void* self);
void* QNetworkAccessManager_virtualbase_metacast(void* self, const char* param1);
int QNetworkAccessManager_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_array /* of struct miqt_string */  QNetworkAccessManager_virtualbase_supportedSchemes(const void* self);
QNetworkReply* QNetworkAccessManager_virtualbase_createRequest(void* self, int op, QNetworkRequest* request, QIODevice* outgoingData);
bool QNetworkAccessManager_virtualbase_event(void* self, QEvent* event);
bool QNetworkAccessManager_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QNetworkAccessManager_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QNetworkAccessManager_virtualbase_childEvent(void* self, QChildEvent* event);
void QNetworkAccessManager_virtualbase_customEvent(void* self, QEvent* event);
void QNetworkAccessManager_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QNetworkAccessManager_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of struct miqt_string */  QNetworkAccessManager_protectedbase_supportedSchemesImplementation(bool* _dynamic_cast_ok, const void* self);
QObject* QNetworkAccessManager_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QNetworkAccessManager_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QNetworkAccessManager_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QNetworkAccessManager_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QNetworkAccessManager_staticMetaObject();
void QNetworkAccessManager_delete(QNetworkAccessManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
