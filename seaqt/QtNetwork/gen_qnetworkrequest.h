#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKREQUEST_H
#define SEAQT_QTNETWORK_GEN_QNETWORKREQUEST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QHttp1Configuration;
class QHttp2Configuration;
class QHttpHeaders;
class QMetaObject;
class QNetworkRequest;
class QObject;
class QSslConfiguration;
class QUrl;
class QVariant;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QHttp1Configuration QHttp1Configuration;
typedef struct QHttp2Configuration QHttp2Configuration;
typedef struct QHttpHeaders QHttpHeaders;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QNetworkRequest* QNetworkRequest_new();
QNetworkRequest* QNetworkRequest_new_url(QUrl* url);
QNetworkRequest* QNetworkRequest_new_from(QNetworkRequest* from);

void QNetworkRequest_operatorAssign(QNetworkRequest* self, QNetworkRequest* from);
void QNetworkRequest_swap(QNetworkRequest* self, QNetworkRequest* other);
bool QNetworkRequest_operatorEqual(const QNetworkRequest* self, QNetworkRequest* other);
bool QNetworkRequest_operatorNotEqual(const QNetworkRequest* self, QNetworkRequest* other);
QUrl* QNetworkRequest_url(const QNetworkRequest* self);
void QNetworkRequest_setUrl(QNetworkRequest* self, QUrl* url);
QHttpHeaders* QNetworkRequest_headers(const QNetworkRequest* self);
void QNetworkRequest_setHeaders(QNetworkRequest* self, QHttpHeaders* newHeaders);
QVariant* QNetworkRequest_header(const QNetworkRequest* self, int header);
void QNetworkRequest_setHeader(QNetworkRequest* self, int header, QVariant* value);
bool QNetworkRequest_hasRawHeader(const QNetworkRequest* self, struct seaqt_string headerName);
struct seaqt_array /* of struct seaqt_string */  QNetworkRequest_rawHeaderList(const QNetworkRequest* self);
struct seaqt_string QNetworkRequest_rawHeader(const QNetworkRequest* self, struct seaqt_string headerName);
void QNetworkRequest_setRawHeader(QNetworkRequest* self, struct seaqt_string headerName, struct seaqt_string value);
QVariant* QNetworkRequest_attribute_code(const QNetworkRequest* self, int code);
void QNetworkRequest_setAttribute(QNetworkRequest* self, int code, QVariant* value);
QSslConfiguration* QNetworkRequest_sslConfiguration(const QNetworkRequest* self);
void QNetworkRequest_setSslConfiguration(QNetworkRequest* self, QSslConfiguration* configuration);
void QNetworkRequest_setOriginatingObject(QNetworkRequest* self, QObject* object);
QObject* QNetworkRequest_originatingObject(const QNetworkRequest* self);
int QNetworkRequest_priority(const QNetworkRequest* self);
void QNetworkRequest_setPriority(QNetworkRequest* self, int priority);
int QNetworkRequest_maximumRedirectsAllowed(const QNetworkRequest* self);
void QNetworkRequest_setMaximumRedirectsAllowed(QNetworkRequest* self, int maximumRedirectsAllowed);
struct seaqt_string QNetworkRequest_peerVerifyName(const QNetworkRequest* self);
void QNetworkRequest_setPeerVerifyName(QNetworkRequest* self, struct seaqt_string peerName);
QHttp1Configuration* QNetworkRequest_http1Configuration(const QNetworkRequest* self);
void QNetworkRequest_setHttp1Configuration(QNetworkRequest* self, QHttp1Configuration* configuration);
QHttp2Configuration* QNetworkRequest_http2Configuration(const QNetworkRequest* self);
void QNetworkRequest_setHttp2Configuration(QNetworkRequest* self, QHttp2Configuration* configuration);
long long QNetworkRequest_decompressedSafetyCheckThreshold(const QNetworkRequest* self);
void QNetworkRequest_setDecompressedSafetyCheckThreshold(QNetworkRequest* self, long long threshold);
int QNetworkRequest_transferTimeout(const QNetworkRequest* self);
void QNetworkRequest_setTransferTimeout_timeout(QNetworkRequest* self, int timeout);
void QNetworkRequest_setTransferTimeout(QNetworkRequest* self);
QVariant* QNetworkRequest_attribute_code_defaultValue(const QNetworkRequest* self, int code, QVariant* defaultValue);

const QMetaObject* QNetworkRequest_staticMetaObject();
void QNetworkRequest_delete(QNetworkRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
