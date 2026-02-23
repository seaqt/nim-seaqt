#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLREQUESTJOB_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLREQUESTJOB_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QUrl;
class QWebEngineUrlRequestJob;
#else
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineUrlRequestJob QWebEngineUrlRequestJob;
#endif

void QWebEngineUrlRequestJob_virtbase(QWebEngineUrlRequestJob* src, QObject** outptr_QObject);
QMetaObject* QWebEngineUrlRequestJob_metaObject(const QWebEngineUrlRequestJob* self);
void* QWebEngineUrlRequestJob_metacast(QWebEngineUrlRequestJob* self, const char* param1);
int QWebEngineUrlRequestJob_metacall(QWebEngineUrlRequestJob* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineUrlRequestJob_tr_s(const char* s);
QUrl* QWebEngineUrlRequestJob_requestUrl(const QWebEngineUrlRequestJob* self);
struct seaqt_string QWebEngineUrlRequestJob_requestMethod(const QWebEngineUrlRequestJob* self);
QUrl* QWebEngineUrlRequestJob_initiator(const QWebEngineUrlRequestJob* self);
void QWebEngineUrlRequestJob_reply(QWebEngineUrlRequestJob* self, struct seaqt_string contentType, QIODevice* device);
void QWebEngineUrlRequestJob_fail(QWebEngineUrlRequestJob* self, int error);
void QWebEngineUrlRequestJob_redirect(QWebEngineUrlRequestJob* self, QUrl* url);
struct seaqt_string QWebEngineUrlRequestJob_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineUrlRequestJob_tr_s_c_n(const char* s, const char* c, int n);

void QWebEngineUrlRequestJob_delete(QWebEngineUrlRequestJob* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
