#pragma once
#ifndef SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEDOWNLOADREQUEST_H
#define SEAQT_QTWEBENGINEQUICK_GEN_QQUICKWEBENGINEDOWNLOADREQUEST_H

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
class QObject;
class QQuickWebEngineDownloadRequest;
class QWebEngineDownloadRequest;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuickWebEngineDownloadRequest QQuickWebEngineDownloadRequest;
typedef struct QWebEngineDownloadRequest QWebEngineDownloadRequest;
#endif

void QQuickWebEngineDownloadRequest_virtbase(QQuickWebEngineDownloadRequest* src, QWebEngineDownloadRequest** outptr_QWebEngineDownloadRequest);
QMetaObject* QQuickWebEngineDownloadRequest_metaObject(const QQuickWebEngineDownloadRequest* self);
void* QQuickWebEngineDownloadRequest_metacast(QQuickWebEngineDownloadRequest* self, const char* param1);
int QQuickWebEngineDownloadRequest_metacall(QQuickWebEngineDownloadRequest* self, int param1, int param2, void** param3);
struct seaqt_string QQuickWebEngineDownloadRequest_tr_s(const char* s);
void QQuickWebEngineDownloadRequest_qmlMarker_uncreatable(QQuickWebEngineDownloadRequest* self);
struct seaqt_string QQuickWebEngineDownloadRequest_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickWebEngineDownloadRequest_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QQuickWebEngineDownloadRequest_staticMetaObject();
void QQuickWebEngineDownloadRequest_delete(QQuickWebEngineDownloadRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
