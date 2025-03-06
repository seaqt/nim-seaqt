#pragma once
#ifndef SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEPROFILE_H
#define SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEPROFILE_H

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
class QQuickWebEngineProfile;
class QTimerEvent;
class QWebEngineClientCertificateStore;
class QWebEngineCookieStore;
class QWebEngineNotification;
class QWebEngineUrlRequestInterceptor;
class QWebEngineUrlSchemeHandler;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuickWebEngineProfile QQuickWebEngineProfile;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebEngineClientCertificateStore QWebEngineClientCertificateStore;
typedef struct QWebEngineCookieStore QWebEngineCookieStore;
typedef struct QWebEngineNotification QWebEngineNotification;
typedef struct QWebEngineUrlRequestInterceptor QWebEngineUrlRequestInterceptor;
typedef struct QWebEngineUrlSchemeHandler QWebEngineUrlSchemeHandler;
#endif

QQuickWebEngineProfile* QQuickWebEngineProfile_new();
QQuickWebEngineProfile* QQuickWebEngineProfile_new2(QObject* parent);
void QQuickWebEngineProfile_virtbase(QQuickWebEngineProfile* src, QObject** outptr_QObject);
QMetaObject* QQuickWebEngineProfile_metaObject(const QQuickWebEngineProfile* self);
void* QQuickWebEngineProfile_metacast(QQuickWebEngineProfile* self, const char* param1);
struct miqt_string QQuickWebEngineProfile_tr(const char* s);
struct miqt_string QQuickWebEngineProfile_storageName(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setStorageName(QQuickWebEngineProfile* self, struct miqt_string name);
bool QQuickWebEngineProfile_isOffTheRecord(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setOffTheRecord(QQuickWebEngineProfile* self, bool offTheRecord);
struct miqt_string QQuickWebEngineProfile_persistentStoragePath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setPersistentStoragePath(QQuickWebEngineProfile* self, struct miqt_string path);
struct miqt_string QQuickWebEngineProfile_cachePath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setCachePath(QQuickWebEngineProfile* self, struct miqt_string path);
struct miqt_string QQuickWebEngineProfile_httpUserAgent(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpUserAgent(QQuickWebEngineProfile* self, struct miqt_string userAgent);
int QQuickWebEngineProfile_httpCacheType(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpCacheType(QQuickWebEngineProfile* self, int httpCacheType);
int QQuickWebEngineProfile_persistentCookiesPolicy(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setPersistentCookiesPolicy(QQuickWebEngineProfile* self, int persistentCookiesPolicy);
int QQuickWebEngineProfile_httpCacheMaximumSize(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpCacheMaximumSize(QQuickWebEngineProfile* self, int maxSize);
struct miqt_string QQuickWebEngineProfile_httpAcceptLanguage(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpAcceptLanguage(QQuickWebEngineProfile* self, struct miqt_string httpAcceptLanguage);
QWebEngineCookieStore* QQuickWebEngineProfile_cookieStore(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setUrlRequestInterceptor(QQuickWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor);
QWebEngineUrlSchemeHandler* QQuickWebEngineProfile_urlSchemeHandler(const QQuickWebEngineProfile* self, struct miqt_string param1);
void QQuickWebEngineProfile_installUrlSchemeHandler(QQuickWebEngineProfile* self, struct miqt_string scheme, QWebEngineUrlSchemeHandler* param2);
void QQuickWebEngineProfile_removeUrlScheme(QQuickWebEngineProfile* self, struct miqt_string scheme);
void QQuickWebEngineProfile_removeUrlSchemeHandler(QQuickWebEngineProfile* self, QWebEngineUrlSchemeHandler* param1);
void QQuickWebEngineProfile_removeAllUrlSchemeHandlers(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_clearHttpCache(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setSpellCheckLanguages(QQuickWebEngineProfile* self, struct miqt_array /* of struct miqt_string */  languages);
struct miqt_array /* of struct miqt_string */  QQuickWebEngineProfile_spellCheckLanguages(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setSpellCheckEnabled(QQuickWebEngineProfile* self, bool enabled);
bool QQuickWebEngineProfile_isSpellCheckEnabled(const QQuickWebEngineProfile* self);
struct miqt_string QQuickWebEngineProfile_downloadPath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setDownloadPath(QQuickWebEngineProfile* self, struct miqt_string path);
QWebEngineClientCertificateStore* QQuickWebEngineProfile_clientCertificateStore(QQuickWebEngineProfile* self);
QQuickWebEngineProfile* QQuickWebEngineProfile_defaultProfile();
void QQuickWebEngineProfile_storageNameChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_storageNameChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_offTheRecordChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_offTheRecordChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_persistentStoragePathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_persistentStoragePathChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_cachePathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_cachePathChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_httpUserAgentChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpUserAgentChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_httpCacheTypeChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpCacheTypeChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_httpAcceptLanguageChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpAcceptLanguageChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_spellCheckLanguagesChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_spellCheckLanguagesChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_spellCheckEnabledChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_spellCheckEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_downloadPathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_downloadPathChanged(QQuickWebEngineProfile* self, intptr_t slot);
void QQuickWebEngineProfile_presentNotification(QQuickWebEngineProfile* self, QWebEngineNotification* notification);
void QQuickWebEngineProfile_connect_presentNotification(QQuickWebEngineProfile* self, intptr_t slot);
struct miqt_string QQuickWebEngineProfile_tr2(const char* s, const char* c);
struct miqt_string QQuickWebEngineProfile_tr3(const char* s, const char* c, int n);
bool QQuickWebEngineProfile_override_virtual_event(void* self, intptr_t slot);
bool QQuickWebEngineProfile_virtualbase_event(void* self, QEvent* event);
bool QQuickWebEngineProfile_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickWebEngineProfile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickWebEngineProfile_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickWebEngineProfile_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickWebEngineProfile_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickWebEngineProfile_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickWebEngineProfile_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickWebEngineProfile_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickWebEngineProfile_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickWebEngineProfile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickWebEngineProfile_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickWebEngineProfile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickWebEngineProfile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickWebEngineProfile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickWebEngineProfile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickWebEngineProfile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickWebEngineProfile_delete(QQuickWebEngineProfile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
