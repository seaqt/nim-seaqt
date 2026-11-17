#pragma once
#ifndef SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEPROFILE_H
#define SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEPROFILE_H

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

typedef struct VirtualQQuickWebEngineProfile VirtualQQuickWebEngineProfile;
typedef struct QQuickWebEngineProfile_VTable{
	void (*destructor)(VirtualQQuickWebEngineProfile* self);
	QMetaObject* (*metaObject)(const VirtualQQuickWebEngineProfile* self);
	void* (*metacast)(VirtualQQuickWebEngineProfile* self, const char* param1);
	int (*metacall)(VirtualQQuickWebEngineProfile* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQuickWebEngineProfile* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickWebEngineProfile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickWebEngineProfile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickWebEngineProfile* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickWebEngineProfile* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);
}QQuickWebEngineProfile_VTable;

void* QQuickWebEngineProfile_vdata(VirtualQQuickWebEngineProfile* self);
VirtualQQuickWebEngineProfile* vdata_QQuickWebEngineProfile(void* vdata);

VirtualQQuickWebEngineProfile* QQuickWebEngineProfile_new(const QQuickWebEngineProfile_VTable* vtbl, size_t vdata);
VirtualQQuickWebEngineProfile* QQuickWebEngineProfile_new_parent(const QQuickWebEngineProfile_VTable* vtbl, size_t vdata, QObject* parent);

void QQuickWebEngineProfile_virtbase(QQuickWebEngineProfile* src, QObject** outptr_QObject);
QMetaObject* QQuickWebEngineProfile_metaObject(const QQuickWebEngineProfile* self);
void* QQuickWebEngineProfile_metacast(QQuickWebEngineProfile* self, const char* param1);
int QQuickWebEngineProfile_metacall(QQuickWebEngineProfile* self, int param1, int param2, void** param3);
struct seaqt_string QQuickWebEngineProfile_tr_s(const char* s);
struct seaqt_string QQuickWebEngineProfile_storageName(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setStorageName(QQuickWebEngineProfile* self, struct seaqt_string name);
bool QQuickWebEngineProfile_isOffTheRecord(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setOffTheRecord(QQuickWebEngineProfile* self, bool offTheRecord);
struct seaqt_string QQuickWebEngineProfile_persistentStoragePath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setPersistentStoragePath(QQuickWebEngineProfile* self, struct seaqt_string path);
struct seaqt_string QQuickWebEngineProfile_cachePath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setCachePath(QQuickWebEngineProfile* self, struct seaqt_string path);
struct seaqt_string QQuickWebEngineProfile_httpUserAgent(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpUserAgent(QQuickWebEngineProfile* self, struct seaqt_string userAgent);
int QQuickWebEngineProfile_httpCacheType(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpCacheType(QQuickWebEngineProfile* self, int httpCacheType);
int QQuickWebEngineProfile_persistentCookiesPolicy(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setPersistentCookiesPolicy(QQuickWebEngineProfile* self, int persistentCookiesPolicy);
int QQuickWebEngineProfile_httpCacheMaximumSize(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpCacheMaximumSize(QQuickWebEngineProfile* self, int maxSize);
struct seaqt_string QQuickWebEngineProfile_httpAcceptLanguage(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setHttpAcceptLanguage(QQuickWebEngineProfile* self, struct seaqt_string httpAcceptLanguage);
QWebEngineCookieStore* QQuickWebEngineProfile_cookieStore(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setUrlRequestInterceptor(QQuickWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor);
QWebEngineUrlSchemeHandler* QQuickWebEngineProfile_urlSchemeHandler(const QQuickWebEngineProfile* self, struct seaqt_string param1);
void QQuickWebEngineProfile_installUrlSchemeHandler(QQuickWebEngineProfile* self, struct seaqt_string scheme, QWebEngineUrlSchemeHandler* param2);
void QQuickWebEngineProfile_removeUrlScheme(QQuickWebEngineProfile* self, struct seaqt_string scheme);
void QQuickWebEngineProfile_removeUrlSchemeHandler(QQuickWebEngineProfile* self, QWebEngineUrlSchemeHandler* param1);
void QQuickWebEngineProfile_removeAllUrlSchemeHandlers(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_clearHttpCache(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setSpellCheckLanguages(QQuickWebEngineProfile* self, struct seaqt_array /* of struct seaqt_string */  languages);
struct seaqt_array /* of struct seaqt_string */  QQuickWebEngineProfile_spellCheckLanguages(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setSpellCheckEnabled(QQuickWebEngineProfile* self, bool enabled);
bool QQuickWebEngineProfile_isSpellCheckEnabled(const QQuickWebEngineProfile* self);
struct seaqt_string QQuickWebEngineProfile_downloadPath(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setDownloadPath(QQuickWebEngineProfile* self, struct seaqt_string path);
bool QQuickWebEngineProfile_isPushServiceEnabled(const QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_setPushServiceEnabled(QQuickWebEngineProfile* self, bool enable);
QWebEngineClientCertificateStore* QQuickWebEngineProfile_clientCertificateStore(QQuickWebEngineProfile* self);
QQuickWebEngineProfile* QQuickWebEngineProfile_defaultProfile();
void QQuickWebEngineProfile_storageNameChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_storageNameChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_offTheRecordChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_offTheRecordChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_persistentStoragePathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_persistentStoragePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_cachePathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_cachePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_httpUserAgentChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpUserAgentChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_httpCacheTypeChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpCacheTypeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_httpAcceptLanguageChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_httpAcceptLanguageChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_spellCheckLanguagesChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_spellCheckLanguagesChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_spellCheckEnabledChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_spellCheckEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_downloadPathChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_downloadPathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_pushServiceEnabledChanged(QQuickWebEngineProfile* self);
void QQuickWebEngineProfile_connect_pushServiceEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWebEngineProfile_presentNotification(QQuickWebEngineProfile* self, QWebEngineNotification* notification);
void QQuickWebEngineProfile_connect_presentNotification(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineNotification*), void (*release)(intptr_t));
struct seaqt_string QQuickWebEngineProfile_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickWebEngineProfile_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QQuickWebEngineProfile_virtualbase_metaObject(const VirtualQQuickWebEngineProfile* self);
void* QQuickWebEngineProfile_virtualbase_metacast(VirtualQQuickWebEngineProfile* self, const char* param1);
int QQuickWebEngineProfile_virtualbase_metacall(VirtualQQuickWebEngineProfile* self, int param1, int param2, void** param3);
bool QQuickWebEngineProfile_virtualbase_event(VirtualQQuickWebEngineProfile* self, QEvent* event);
bool QQuickWebEngineProfile_virtualbase_eventFilter(VirtualQQuickWebEngineProfile* self, QObject* watched, QEvent* event);
void QQuickWebEngineProfile_virtualbase_timerEvent(VirtualQQuickWebEngineProfile* self, QTimerEvent* event);
void QQuickWebEngineProfile_virtualbase_childEvent(VirtualQQuickWebEngineProfile* self, QChildEvent* event);
void QQuickWebEngineProfile_virtualbase_customEvent(VirtualQQuickWebEngineProfile* self, QEvent* event);
void QQuickWebEngineProfile_virtualbase_connectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);
void QQuickWebEngineProfile_virtualbase_disconnectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);

QObject* QQuickWebEngineProfile_protectedbase_sender(const VirtualQQuickWebEngineProfile* self);
int QQuickWebEngineProfile_protectedbase_senderSignalIndex(const VirtualQQuickWebEngineProfile* self);
int QQuickWebEngineProfile_protectedbase_receivers(const VirtualQQuickWebEngineProfile* self, const char* signal);
bool QQuickWebEngineProfile_protectedbase_isSignalConnected(const VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);

const QMetaObject* QQuickWebEngineProfile_staticMetaObject();
void QQuickWebEngineProfile_delete(QQuickWebEngineProfile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
