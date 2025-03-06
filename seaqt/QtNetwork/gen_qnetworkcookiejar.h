#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKCOOKIEJAR_H
#define SEAQT_QTNETWORK_GEN_QNETWORKCOOKIEJAR_H

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
class QNetworkCookie;
class QNetworkCookieJar;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkCookie QNetworkCookie;
typedef struct QNetworkCookieJar QNetworkCookieJar;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

struct QNetworkCookieJar_VTable {
	void (*destructor)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self);
	QMetaObject* (*metaObject)(struct QNetworkCookieJar_VTable* vtbl, const QNetworkCookieJar* self);
	void* (*metacast)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, const char* param1);
	int (*metacall)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, int param1, int param2, void** param3);
	struct miqt_array /* of QNetworkCookie* */  (*cookiesForUrl)(struct QNetworkCookieJar_VTable* vtbl, const QNetworkCookieJar* self, QUrl* url);
	bool (*setCookiesFromUrl)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);
	bool (*insertCookie)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*updateCookie)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*deleteCookie)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*validateCookie)(struct QNetworkCookieJar_VTable* vtbl, const QNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url);
	bool (*event)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QEvent* event);
	bool (*eventFilter)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QTimerEvent* event);
	void (*childEvent)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QChildEvent* event);
	void (*customEvent)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QEvent* event);
	void (*connectNotify)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QNetworkCookieJar_VTable* vtbl, QNetworkCookieJar* self, QMetaMethod* signal);
};
QNetworkCookieJar* QNetworkCookieJar_new(struct QNetworkCookieJar_VTable* vtbl);
QNetworkCookieJar* QNetworkCookieJar_new2(struct QNetworkCookieJar_VTable* vtbl, QObject* parent);
void QNetworkCookieJar_virtbase(QNetworkCookieJar* src, QObject** outptr_QObject);
QMetaObject* QNetworkCookieJar_metaObject(const QNetworkCookieJar* self);
void* QNetworkCookieJar_metacast(QNetworkCookieJar* self, const char* param1);
int QNetworkCookieJar_metacall(QNetworkCookieJar* self, int param1, int param2, void** param3);
struct miqt_string QNetworkCookieJar_tr(const char* s);
struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_cookiesForUrl(const QNetworkCookieJar* self, QUrl* url);
bool QNetworkCookieJar_setCookiesFromUrl(QNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);
bool QNetworkCookieJar_insertCookie(QNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_updateCookie(QNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_deleteCookie(QNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_validateCookie(const QNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url);
struct miqt_string QNetworkCookieJar_tr2(const char* s, const char* c);
struct miqt_string QNetworkCookieJar_tr3(const char* s, const char* c, int n);
QMetaObject* QNetworkCookieJar_virtualbase_metaObject(const void* self);
void* QNetworkCookieJar_virtualbase_metacast(void* self, const char* param1);
int QNetworkCookieJar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_virtualbase_cookiesForUrl(const void* self, QUrl* url);
bool QNetworkCookieJar_virtualbase_setCookiesFromUrl(void* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);
bool QNetworkCookieJar_virtualbase_insertCookie(void* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_updateCookie(void* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_deleteCookie(void* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_validateCookie(const void* self, QNetworkCookie* cookie, QUrl* url);
bool QNetworkCookieJar_virtualbase_event(void* self, QEvent* event);
bool QNetworkCookieJar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QNetworkCookieJar_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QNetworkCookieJar_virtualbase_childEvent(void* self, QChildEvent* event);
void QNetworkCookieJar_virtualbase_customEvent(void* self, QEvent* event);
void QNetworkCookieJar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QNetworkCookieJar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_protectedbase_allCookies(const void* self);
void QNetworkCookieJar_protectedbase_setAllCookies(void* self, struct miqt_array /* of QNetworkCookie* */  cookieList);
QObject* QNetworkCookieJar_protectedbase_sender(const void* self);
int QNetworkCookieJar_protectedbase_senderSignalIndex(const void* self);
int QNetworkCookieJar_protectedbase_receivers(const void* self, const char* signal);
bool QNetworkCookieJar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QNetworkCookieJar_staticMetaObject();
void QNetworkCookieJar_delete(QNetworkCookieJar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
