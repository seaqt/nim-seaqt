#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPROFILE_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEPROFILE_H

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
class QTimerEvent;
class QUrl;
class QWebEngineClientCertificateStore;
class QWebEngineCookieStore;
class QWebEngineDownloadRequest;
class QWebEngineProfile;
class QWebEngineScriptCollection;
class QWebEngineSettings;
class QWebEngineUrlRequestInterceptor;
class QWebEngineUrlSchemeHandler;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QWebEngineClientCertificateStore QWebEngineClientCertificateStore;
typedef struct QWebEngineCookieStore QWebEngineCookieStore;
typedef struct QWebEngineDownloadRequest QWebEngineDownloadRequest;
typedef struct QWebEngineProfile QWebEngineProfile;
typedef struct QWebEngineScriptCollection QWebEngineScriptCollection;
typedef struct QWebEngineSettings QWebEngineSettings;
typedef struct QWebEngineUrlRequestInterceptor QWebEngineUrlRequestInterceptor;
typedef struct QWebEngineUrlSchemeHandler QWebEngineUrlSchemeHandler;
#endif

typedef struct VirtualQWebEngineProfile VirtualQWebEngineProfile;
typedef struct QWebEngineProfile_VTable{
	void (*destructor)(VirtualQWebEngineProfile* self);
	QMetaObject* (*metaObject)(const VirtualQWebEngineProfile* self);
	void* (*metacast)(VirtualQWebEngineProfile* self, const char* param1);
	int (*metacall)(VirtualQWebEngineProfile* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQWebEngineProfile* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebEngineProfile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebEngineProfile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebEngineProfile* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebEngineProfile* self, QEvent* event);
	void (*connectNotify)(VirtualQWebEngineProfile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebEngineProfile* self, QMetaMethod* signal);
}QWebEngineProfile_VTable;

const QWebEngineProfile_VTable* QWebEngineProfile_vtbl(const VirtualQWebEngineProfile* self);
void* QWebEngineProfile_vdata(const VirtualQWebEngineProfile* self);
void QWebEngineProfile_setVdata(VirtualQWebEngineProfile* self, void* vdata);

VirtualQWebEngineProfile* QWebEngineProfile_new(const QWebEngineProfile_VTable* vtbl, void* vdata);
VirtualQWebEngineProfile* QWebEngineProfile_new2(const QWebEngineProfile_VTable* vtbl, void* vdata, struct miqt_string name);
VirtualQWebEngineProfile* QWebEngineProfile_new3(const QWebEngineProfile_VTable* vtbl, void* vdata, QObject* parent);
VirtualQWebEngineProfile* QWebEngineProfile_new4(const QWebEngineProfile_VTable* vtbl, void* vdata, struct miqt_string name, QObject* parent);

void QWebEngineProfile_virtbase(QWebEngineProfile* src, QObject** outptr_QObject);
QMetaObject* QWebEngineProfile_metaObject(const QWebEngineProfile* self);
void* QWebEngineProfile_metacast(QWebEngineProfile* self, const char* param1);
int QWebEngineProfile_metacall(QWebEngineProfile* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineProfile_tr(const char* s);
struct miqt_string QWebEngineProfile_storageName(const QWebEngineProfile* self);
bool QWebEngineProfile_isOffTheRecord(const QWebEngineProfile* self);
struct miqt_string QWebEngineProfile_persistentStoragePath(const QWebEngineProfile* self);
void QWebEngineProfile_setPersistentStoragePath(QWebEngineProfile* self, struct miqt_string path);
struct miqt_string QWebEngineProfile_cachePath(const QWebEngineProfile* self);
void QWebEngineProfile_setCachePath(QWebEngineProfile* self, struct miqt_string path);
struct miqt_string QWebEngineProfile_httpUserAgent(const QWebEngineProfile* self);
void QWebEngineProfile_setHttpUserAgent(QWebEngineProfile* self, struct miqt_string userAgent);
int QWebEngineProfile_httpCacheType(const QWebEngineProfile* self);
void QWebEngineProfile_setHttpCacheType(QWebEngineProfile* self, int httpCacheType);
void QWebEngineProfile_setHttpAcceptLanguage(QWebEngineProfile* self, struct miqt_string httpAcceptLanguage);
struct miqt_string QWebEngineProfile_httpAcceptLanguage(const QWebEngineProfile* self);
int QWebEngineProfile_persistentCookiesPolicy(const QWebEngineProfile* self);
void QWebEngineProfile_setPersistentCookiesPolicy(QWebEngineProfile* self, int persistentCookiesPolicy);
int QWebEngineProfile_httpCacheMaximumSize(const QWebEngineProfile* self);
void QWebEngineProfile_setHttpCacheMaximumSize(QWebEngineProfile* self, int maxSize);
QWebEngineCookieStore* QWebEngineProfile_cookieStore(QWebEngineProfile* self);
void QWebEngineProfile_setUrlRequestInterceptor(QWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor);
void QWebEngineProfile_clearAllVisitedLinks(QWebEngineProfile* self);
void QWebEngineProfile_clearVisitedLinks(QWebEngineProfile* self, struct miqt_array /* of QUrl* */  urls);
bool QWebEngineProfile_visitedLinksContainsUrl(const QWebEngineProfile* self, QUrl* url);
QWebEngineSettings* QWebEngineProfile_settings(const QWebEngineProfile* self);
QWebEngineScriptCollection* QWebEngineProfile_scripts(const QWebEngineProfile* self);
QWebEngineUrlSchemeHandler* QWebEngineProfile_urlSchemeHandler(const QWebEngineProfile* self, struct miqt_string param1);
void QWebEngineProfile_installUrlSchemeHandler(QWebEngineProfile* self, struct miqt_string scheme, QWebEngineUrlSchemeHandler* param2);
void QWebEngineProfile_removeUrlScheme(QWebEngineProfile* self, struct miqt_string scheme);
void QWebEngineProfile_removeUrlSchemeHandler(QWebEngineProfile* self, QWebEngineUrlSchemeHandler* param1);
void QWebEngineProfile_removeAllUrlSchemeHandlers(QWebEngineProfile* self);
void QWebEngineProfile_clearHttpCache(QWebEngineProfile* self);
void QWebEngineProfile_setSpellCheckLanguages(QWebEngineProfile* self, struct miqt_array /* of struct miqt_string */  languages);
struct miqt_array /* of struct miqt_string */  QWebEngineProfile_spellCheckLanguages(const QWebEngineProfile* self);
void QWebEngineProfile_setSpellCheckEnabled(QWebEngineProfile* self, bool enabled);
bool QWebEngineProfile_isSpellCheckEnabled(const QWebEngineProfile* self);
struct miqt_string QWebEngineProfile_downloadPath(const QWebEngineProfile* self);
void QWebEngineProfile_setDownloadPath(QWebEngineProfile* self, struct miqt_string path);
QWebEngineClientCertificateStore* QWebEngineProfile_clientCertificateStore(QWebEngineProfile* self);
QWebEngineProfile* QWebEngineProfile_defaultProfile();
void QWebEngineProfile_downloadRequested(QWebEngineProfile* self, QWebEngineDownloadRequest* download);
void QWebEngineProfile_connect_downloadRequested(VirtualQWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineDownloadRequest*), void (*release)(intptr_t));
struct miqt_string QWebEngineProfile_tr2(const char* s, const char* c);
struct miqt_string QWebEngineProfile_tr3(const char* s, const char* c, int n);

QMetaObject* QWebEngineProfile_virtualbase_metaObject(const VirtualQWebEngineProfile* self);
void* QWebEngineProfile_virtualbase_metacast(VirtualQWebEngineProfile* self, const char* param1);
int QWebEngineProfile_virtualbase_metacall(VirtualQWebEngineProfile* self, int param1, int param2, void** param3);
bool QWebEngineProfile_virtualbase_event(VirtualQWebEngineProfile* self, QEvent* event);
bool QWebEngineProfile_virtualbase_eventFilter(VirtualQWebEngineProfile* self, QObject* watched, QEvent* event);
void QWebEngineProfile_virtualbase_timerEvent(VirtualQWebEngineProfile* self, QTimerEvent* event);
void QWebEngineProfile_virtualbase_childEvent(VirtualQWebEngineProfile* self, QChildEvent* event);
void QWebEngineProfile_virtualbase_customEvent(VirtualQWebEngineProfile* self, QEvent* event);
void QWebEngineProfile_virtualbase_connectNotify(VirtualQWebEngineProfile* self, QMetaMethod* signal);
void QWebEngineProfile_virtualbase_disconnectNotify(VirtualQWebEngineProfile* self, QMetaMethod* signal);

QObject* QWebEngineProfile_protectedbase_sender(const VirtualQWebEngineProfile* self);
int QWebEngineProfile_protectedbase_senderSignalIndex(const VirtualQWebEngineProfile* self);
int QWebEngineProfile_protectedbase_receivers(const VirtualQWebEngineProfile* self, const char* signal);
bool QWebEngineProfile_protectedbase_isSignalConnected(const VirtualQWebEngineProfile* self, QMetaMethod* signal);

const QMetaObject* QWebEngineProfile_staticMetaObject();
void QWebEngineProfile_delete(QWebEngineProfile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
