#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECOOKIESTORE_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECOOKIESTORE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QNetworkCookie;
class QObject;
class QUrl;
class QWebEngineCookieStore;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebEngineCookieStore__FilterRequest)
typedef QWebEngineCookieStore::FilterRequest QWebEngineCookieStore__FilterRequest;
#else
class QWebEngineCookieStore__FilterRequest;
#endif
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkCookie QNetworkCookie;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineCookieStore QWebEngineCookieStore;
typedef struct QWebEngineCookieStore__FilterRequest QWebEngineCookieStore__FilterRequest;
#endif

void QWebEngineCookieStore_virtbase(QWebEngineCookieStore* src, QObject** outptr_QObject);
QMetaObject* QWebEngineCookieStore_metaObject(const QWebEngineCookieStore* self);
void* QWebEngineCookieStore_metacast(QWebEngineCookieStore* self, const char* param1);
int QWebEngineCookieStore_metacall(QWebEngineCookieStore* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineCookieStore_tr_s(const char* s);
void QWebEngineCookieStore_setCookie_cookie(QWebEngineCookieStore* self, QNetworkCookie* cookie);
void QWebEngineCookieStore_deleteCookie_cookie(QWebEngineCookieStore* self, QNetworkCookie* cookie);
void QWebEngineCookieStore_deleteSessionCookies(QWebEngineCookieStore* self);
void QWebEngineCookieStore_deleteAllCookies(QWebEngineCookieStore* self);
void QWebEngineCookieStore_loadAllCookies(QWebEngineCookieStore* self);
void QWebEngineCookieStore_cookieAdded(QWebEngineCookieStore* self, QNetworkCookie* cookie);
void QWebEngineCookieStore_connect_cookieAdded(QWebEngineCookieStore* self, intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t));
void QWebEngineCookieStore_cookieRemoved(QWebEngineCookieStore* self, QNetworkCookie* cookie);
void QWebEngineCookieStore_connect_cookieRemoved(QWebEngineCookieStore* self, intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t));
struct seaqt_string QWebEngineCookieStore_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineCookieStore_tr_s_c_n(const char* s, const char* c, int n);
void QWebEngineCookieStore_setCookie_cookie_origin(QWebEngineCookieStore* self, QNetworkCookie* cookie, QUrl* origin);
void QWebEngineCookieStore_deleteCookie_cookie_origin(QWebEngineCookieStore* self, QNetworkCookie* cookie, QUrl* origin);

const QMetaObject* QWebEngineCookieStore_staticMetaObject();
void QWebEngineCookieStore_delete(QWebEngineCookieStore* self);

QWebEngineCookieStore__FilterRequest* QWebEngineCookieStore__FilterRequest_new(QWebEngineCookieStore__FilterRequest* from);

QUrl* QWebEngineCookieStore__FilterRequest_firstPartyUrl(const QWebEngineCookieStore__FilterRequest* self);
void QWebEngineCookieStore__FilterRequest_setFirstPartyUrl(QWebEngineCookieStore__FilterRequest* self, QUrl* firstPartyUrl);
QUrl* QWebEngineCookieStore__FilterRequest_origin(const QWebEngineCookieStore__FilterRequest* self);
void QWebEngineCookieStore__FilterRequest_setOrigin(QWebEngineCookieStore__FilterRequest* self, QUrl* origin);
bool QWebEngineCookieStore__FilterRequest_thirdParty(const QWebEngineCookieStore__FilterRequest* self);
void QWebEngineCookieStore__FilterRequest_setThirdParty(QWebEngineCookieStore__FilterRequest* self, bool thirdParty);
bool QWebEngineCookieStore__FilterRequest__reservedFlag(const QWebEngineCookieStore__FilterRequest* self);
void QWebEngineCookieStore__FilterRequest_set_reservedFlag(QWebEngineCookieStore__FilterRequest* self, bool _reservedFlag);
unsigned short QWebEngineCookieStore__FilterRequest__reservedType(const QWebEngineCookieStore__FilterRequest* self);
void QWebEngineCookieStore__FilterRequest_set_reservedType(QWebEngineCookieStore__FilterRequest* self, unsigned short _reservedType);
void QWebEngineCookieStore__FilterRequest_operatorAssign(QWebEngineCookieStore__FilterRequest* self, QWebEngineCookieStore__FilterRequest* from);

void QWebEngineCookieStore__FilterRequest_delete(QWebEngineCookieStore__FilterRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
