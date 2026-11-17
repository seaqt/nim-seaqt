#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLFILE_H
#define SEAQT_QTQML_GEN_QQMLFILE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QObject;
class QQmlEngine;
class QQmlFile;
class QUrl;
#else
typedef struct QObject QObject;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlFile QQmlFile;
typedef struct QUrl QUrl;
#endif

QQmlFile* QQmlFile_new();
QQmlFile* QQmlFile_new_QQmlEngine_QUrl(QQmlEngine* engine, QUrl* url);
QQmlFile* QQmlFile_new_QQmlEngine_QString(QQmlEngine* engine, struct seaqt_string url);

bool QQmlFile_isNull(const QQmlFile* self);
bool QQmlFile_isReady(const QQmlFile* self);
bool QQmlFile_isError(const QQmlFile* self);
bool QQmlFile_isLoading(const QQmlFile* self);
QUrl* QQmlFile_url(const QQmlFile* self);
int QQmlFile_status(const QQmlFile* self);
struct seaqt_string QQmlFile_error(const QQmlFile* self);
long long QQmlFile_size(const QQmlFile* self);
const char* QQmlFile_data(const QQmlFile* self);
struct seaqt_string QQmlFile_dataByteArray(const QQmlFile* self);
void QQmlFile_load_QQmlEngine_QUrl(QQmlFile* self, QQmlEngine* param1, QUrl* param2);
void QQmlFile_load_QQmlEngine_QString(QQmlFile* self, QQmlEngine* param1, struct seaqt_string param2);
void QQmlFile_clear(QQmlFile* self);
void QQmlFile_clear_object(QQmlFile* self, QObject* object);
bool QQmlFile_connectFinished_QObject_char(QQmlFile* self, QObject* param1, const char* param2);
bool QQmlFile_connectFinished_QObject_int(QQmlFile* self, QObject* param1, int param2);
bool QQmlFile_connectDownloadProgress_QObject_char(QQmlFile* self, QObject* param1, const char* param2);
bool QQmlFile_connectDownloadProgress_QObject_int(QQmlFile* self, QObject* param1, int param2);
bool QQmlFile_isSynchronous_QString(struct seaqt_string url);
bool QQmlFile_isSynchronous_QUrl(QUrl* url);
bool QQmlFile_isLocalFile_QString(struct seaqt_string url);
bool QQmlFile_isLocalFile_QUrl(QUrl* url);
struct seaqt_string QQmlFile_urlToLocalFileOrQrc_QString(struct seaqt_string param1);
struct seaqt_string QQmlFile_urlToLocalFileOrQrc_QUrl(QUrl* param1);

void QQmlFile_delete(QQmlFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
