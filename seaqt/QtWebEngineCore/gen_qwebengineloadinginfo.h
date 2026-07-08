#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINELOADINGINFO_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINELOADINGINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QUrl;
class QWebEngineLoadingInfo;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineLoadingInfo QWebEngineLoadingInfo;
#endif

QWebEngineLoadingInfo* QWebEngineLoadingInfo_new();
QWebEngineLoadingInfo* QWebEngineLoadingInfo_new_from(QWebEngineLoadingInfo* from);

void QWebEngineLoadingInfo_operatorAssign(QWebEngineLoadingInfo* self, QWebEngineLoadingInfo* from);
QUrl* QWebEngineLoadingInfo_url(const QWebEngineLoadingInfo* self);
bool QWebEngineLoadingInfo_isErrorPage(const QWebEngineLoadingInfo* self);
int QWebEngineLoadingInfo_status(const QWebEngineLoadingInfo* self);
struct seaqt_string QWebEngineLoadingInfo_errorString(const QWebEngineLoadingInfo* self);
int QWebEngineLoadingInfo_errorDomain(const QWebEngineLoadingInfo* self);
int QWebEngineLoadingInfo_errorCode(const QWebEngineLoadingInfo* self);
bool QWebEngineLoadingInfo_isDownload(const QWebEngineLoadingInfo* self);

const QMetaObject* QWebEngineLoadingInfo_staticMetaObject();
void QWebEngineLoadingInfo_delete(QWebEngineLoadingInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
