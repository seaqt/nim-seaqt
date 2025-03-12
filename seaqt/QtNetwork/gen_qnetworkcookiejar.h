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

typedef struct VirtualQNetworkCookieJar VirtualQNetworkCookieJar;
typedef struct QNetworkCookieJar_VTable{
	void (*destructor)(VirtualQNetworkCookieJar* self);
	QMetaObject* (*metaObject)(const VirtualQNetworkCookieJar* self);
	void* (*metacast)(VirtualQNetworkCookieJar* self, const char* param1);
	int (*metacall)(VirtualQNetworkCookieJar* self, int param1, int param2, void** param3);
	struct miqt_array /* of QNetworkCookie* */  (*cookiesForUrl)(const VirtualQNetworkCookieJar* self, QUrl* url);
	bool (*setCookiesFromUrl)(VirtualQNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);
	bool (*insertCookie)(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*updateCookie)(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*deleteCookie)(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
	bool (*validateCookie)(const VirtualQNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url);
	bool (*event)(VirtualQNetworkCookieJar* self, QEvent* event);
	bool (*eventFilter)(VirtualQNetworkCookieJar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNetworkCookieJar* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNetworkCookieJar* self, QChildEvent* event);
	void (*customEvent)(VirtualQNetworkCookieJar* self, QEvent* event);
	void (*connectNotify)(VirtualQNetworkCookieJar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNetworkCookieJar* self, QMetaMethod* signal);
}QNetworkCookieJar_VTable;

const QNetworkCookieJar_VTable* QNetworkCookieJar_vtbl(const VirtualQNetworkCookieJar* self);
void* QNetworkCookieJar_vdata(const VirtualQNetworkCookieJar* self);
void QNetworkCookieJar_setVdata(VirtualQNetworkCookieJar* self, void* vdata);

VirtualQNetworkCookieJar* QNetworkCookieJar_new(const QNetworkCookieJar_VTable* vtbl, void* vdata);
VirtualQNetworkCookieJar* QNetworkCookieJar_new2(const QNetworkCookieJar_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QNetworkCookieJar_virtualbase_metaObject(const VirtualQNetworkCookieJar* self);
void* QNetworkCookieJar_virtualbase_metacast(VirtualQNetworkCookieJar* self, const char* param1);
int QNetworkCookieJar_virtualbase_metacall(VirtualQNetworkCookieJar* self, int param1, int param2, void** param3);
struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_virtualbase_cookiesForUrl(const VirtualQNetworkCookieJar* self, QUrl* url);
bool QNetworkCookieJar_virtualbase_setCookiesFromUrl(VirtualQNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);
bool QNetworkCookieJar_virtualbase_insertCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_updateCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_deleteCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);
bool QNetworkCookieJar_virtualbase_validateCookie(const VirtualQNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url);
bool QNetworkCookieJar_virtualbase_event(VirtualQNetworkCookieJar* self, QEvent* event);
bool QNetworkCookieJar_virtualbase_eventFilter(VirtualQNetworkCookieJar* self, QObject* watched, QEvent* event);
void QNetworkCookieJar_virtualbase_timerEvent(VirtualQNetworkCookieJar* self, QTimerEvent* event);
void QNetworkCookieJar_virtualbase_childEvent(VirtualQNetworkCookieJar* self, QChildEvent* event);
void QNetworkCookieJar_virtualbase_customEvent(VirtualQNetworkCookieJar* self, QEvent* event);
void QNetworkCookieJar_virtualbase_connectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal);
void QNetworkCookieJar_virtualbase_disconnectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal);

struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_protectedbase_allCookies(const VirtualQNetworkCookieJar* self);
void QNetworkCookieJar_protectedbase_setAllCookies(VirtualQNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList);
QObject* QNetworkCookieJar_protectedbase_sender(const VirtualQNetworkCookieJar* self);
int QNetworkCookieJar_protectedbase_senderSignalIndex(const VirtualQNetworkCookieJar* self);
int QNetworkCookieJar_protectedbase_receivers(const VirtualQNetworkCookieJar* self, const char* signal);
bool QNetworkCookieJar_protectedbase_isSignalConnected(const VirtualQNetworkCookieJar* self, QMetaMethod* signal);

const QMetaObject* QNetworkCookieJar_staticMetaObject();
void QNetworkCookieJar_delete(QNetworkCookieJar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
