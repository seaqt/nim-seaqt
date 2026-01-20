#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEHTTPREQUEST_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEHTTPREQUEST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QUrl;
class QWebEngineHttpRequest;
#else
typedef struct QUrl QUrl;
typedef struct QWebEngineHttpRequest QWebEngineHttpRequest;
#endif

QWebEngineHttpRequest* QWebEngineHttpRequest_new();
QWebEngineHttpRequest* QWebEngineHttpRequest_new_from(QWebEngineHttpRequest* from);
QWebEngineHttpRequest* QWebEngineHttpRequest_new_url(QUrl* url);
QWebEngineHttpRequest* QWebEngineHttpRequest_new_url_method(QUrl* url, int* method);

void QWebEngineHttpRequest_operatorAssign(QWebEngineHttpRequest* self, QWebEngineHttpRequest* from);
QWebEngineHttpRequest* QWebEngineHttpRequest_postRequest(QUrl* url, struct seaqt_map /* of struct seaqt_string to struct seaqt_string */  postData);
void QWebEngineHttpRequest_swap(QWebEngineHttpRequest* self, QWebEngineHttpRequest* other);
bool QWebEngineHttpRequest_operatorEqual(const QWebEngineHttpRequest* self, QWebEngineHttpRequest* other);
bool QWebEngineHttpRequest_operatorNotEqual(const QWebEngineHttpRequest* self, QWebEngineHttpRequest* other);
int QWebEngineHttpRequest_method(const QWebEngineHttpRequest* self);
void QWebEngineHttpRequest_setMethod(QWebEngineHttpRequest* self, int method);
QUrl* QWebEngineHttpRequest_url(const QWebEngineHttpRequest* self);
void QWebEngineHttpRequest_setUrl(QWebEngineHttpRequest* self, QUrl* url);
struct seaqt_string QWebEngineHttpRequest_postData(const QWebEngineHttpRequest* self);
void QWebEngineHttpRequest_setPostData(QWebEngineHttpRequest* self, struct seaqt_string postData);
bool QWebEngineHttpRequest_hasHeader(const QWebEngineHttpRequest* self, struct seaqt_string headerName);
struct seaqt_array /* of struct seaqt_string */  QWebEngineHttpRequest_headers(const QWebEngineHttpRequest* self);
struct seaqt_string QWebEngineHttpRequest_header(const QWebEngineHttpRequest* self, struct seaqt_string headerName);
void QWebEngineHttpRequest_setHeader(QWebEngineHttpRequest* self, struct seaqt_string headerName, struct seaqt_string value);
void QWebEngineHttpRequest_unsetHeader(QWebEngineHttpRequest* self, struct seaqt_string headerName);

void QWebEngineHttpRequest_delete(QWebEngineHttpRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
