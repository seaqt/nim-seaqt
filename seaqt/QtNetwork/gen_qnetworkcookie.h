#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKCOOKIE_H
#define SEAQT_QTNETWORK_GEN_QNETWORKCOOKIE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QMetaObject;
class QNetworkCookie;
class QUrl;
#else
typedef struct QDateTime QDateTime;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkCookie QNetworkCookie;
typedef struct QUrl QUrl;
#endif

QNetworkCookie* QNetworkCookie_new();
QNetworkCookie* QNetworkCookie_new2(QNetworkCookie* other);
QNetworkCookie* QNetworkCookie_new3(struct seaqt_string name);
QNetworkCookie* QNetworkCookie_new4(struct seaqt_string name, struct seaqt_string value);

void QNetworkCookie_operatorAssign(QNetworkCookie* self, QNetworkCookie* other);
void QNetworkCookie_swap(QNetworkCookie* self, QNetworkCookie* other);
bool QNetworkCookie_operatorEqual(const QNetworkCookie* self, QNetworkCookie* other);
bool QNetworkCookie_operatorNotEqual(const QNetworkCookie* self, QNetworkCookie* other);
bool QNetworkCookie_isSecure(const QNetworkCookie* self);
void QNetworkCookie_setSecure(QNetworkCookie* self, bool enable);
bool QNetworkCookie_isHttpOnly(const QNetworkCookie* self);
void QNetworkCookie_setHttpOnly(QNetworkCookie* self, bool enable);
int QNetworkCookie_sameSitePolicy(const QNetworkCookie* self);
void QNetworkCookie_setSameSitePolicy(QNetworkCookie* self, int sameSite);
bool QNetworkCookie_isSessionCookie(const QNetworkCookie* self);
QDateTime* QNetworkCookie_expirationDate(const QNetworkCookie* self);
void QNetworkCookie_setExpirationDate(QNetworkCookie* self, QDateTime* date);
struct seaqt_string QNetworkCookie_domain(const QNetworkCookie* self);
void QNetworkCookie_setDomain(QNetworkCookie* self, struct seaqt_string domain);
struct seaqt_string QNetworkCookie_path(const QNetworkCookie* self);
void QNetworkCookie_setPath(QNetworkCookie* self, struct seaqt_string path);
struct seaqt_string QNetworkCookie_name(const QNetworkCookie* self);
void QNetworkCookie_setName(QNetworkCookie* self, struct seaqt_string cookieName);
struct seaqt_string QNetworkCookie_value(const QNetworkCookie* self);
void QNetworkCookie_setValue(QNetworkCookie* self, struct seaqt_string value);
struct seaqt_string QNetworkCookie_toRawForm(const QNetworkCookie* self);
bool QNetworkCookie_hasSameIdentifier(const QNetworkCookie* self, QNetworkCookie* other);
void QNetworkCookie_normalize(QNetworkCookie* self, QUrl* url);
struct seaqt_array /* of QNetworkCookie* */  QNetworkCookie_parseCookies(struct seaqt_string cookieString);
struct seaqt_string QNetworkCookie_toRawFormWithForm(const QNetworkCookie* self, int form);

const QMetaObject* QNetworkCookie_staticMetaObject();
void QNetworkCookie_delete(QNetworkCookie* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
