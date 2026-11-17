#pragma once
#ifndef SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEDOWNLOADITEM_H
#define SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEDOWNLOADITEM_H

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
class QUrl;
class QWebEngineDownloadItem;
class QWebEnginePage;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineDownloadItem QWebEngineDownloadItem;
typedef struct QWebEnginePage QWebEnginePage;
#endif

void QWebEngineDownloadItem_virtbase(QWebEngineDownloadItem* src, QObject** outptr_QObject);
QMetaObject* QWebEngineDownloadItem_metaObject(const QWebEngineDownloadItem* self);
void* QWebEngineDownloadItem_metacast(QWebEngineDownloadItem* self, const char* param1);
int QWebEngineDownloadItem_metacall(QWebEngineDownloadItem* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineDownloadItem_tr_s(const char* s);
struct seaqt_string QWebEngineDownloadItem_trUtf8_s(const char* s);
unsigned int QWebEngineDownloadItem_id(const QWebEngineDownloadItem* self);
int QWebEngineDownloadItem_state(const QWebEngineDownloadItem* self);
long long QWebEngineDownloadItem_totalBytes(const QWebEngineDownloadItem* self);
long long QWebEngineDownloadItem_receivedBytes(const QWebEngineDownloadItem* self);
QUrl* QWebEngineDownloadItem_url(const QWebEngineDownloadItem* self);
struct seaqt_string QWebEngineDownloadItem_mimeType(const QWebEngineDownloadItem* self);
struct seaqt_string QWebEngineDownloadItem_path(const QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_setPath(QWebEngineDownloadItem* self, struct seaqt_string path);
bool QWebEngineDownloadItem_isFinished(const QWebEngineDownloadItem* self);
bool QWebEngineDownloadItem_isPaused(const QWebEngineDownloadItem* self);
int QWebEngineDownloadItem_savePageFormat(const QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_setSavePageFormat(QWebEngineDownloadItem* self, int format);
int QWebEngineDownloadItem_type(const QWebEngineDownloadItem* self);
int QWebEngineDownloadItem_interruptReason(const QWebEngineDownloadItem* self);
struct seaqt_string QWebEngineDownloadItem_interruptReasonString(const QWebEngineDownloadItem* self);
bool QWebEngineDownloadItem_isSavePageDownload(const QWebEngineDownloadItem* self);
struct seaqt_string QWebEngineDownloadItem_suggestedFileName(const QWebEngineDownloadItem* self);
struct seaqt_string QWebEngineDownloadItem_downloadDirectory(const QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_setDownloadDirectory(QWebEngineDownloadItem* self, struct seaqt_string directory);
struct seaqt_string QWebEngineDownloadItem_downloadFileName(const QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_setDownloadFileName(QWebEngineDownloadItem* self, struct seaqt_string fileName);
QWebEnginePage* QWebEngineDownloadItem_page(const QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_accept(QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_cancel(QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_pause(QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_resume(QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_finished(QWebEngineDownloadItem* self);
void QWebEngineDownloadItem_connect_finished(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEngineDownloadItem_stateChanged(QWebEngineDownloadItem* self, int state);
void QWebEngineDownloadItem_connect_stateChanged(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEngineDownloadItem_downloadProgress(QWebEngineDownloadItem* self, long long bytesReceived, long long bytesTotal);
void QWebEngineDownloadItem_connect_downloadProgress(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, long long, long long), void (*release)(intptr_t));
void QWebEngineDownloadItem_isPausedChanged(QWebEngineDownloadItem* self, bool isPaused);
void QWebEngineDownloadItem_connect_isPausedChanged(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QWebEngineDownloadItem_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineDownloadItem_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QWebEngineDownloadItem_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineDownloadItem_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QWebEngineDownloadItem_staticMetaObject();
void QWebEngineDownloadItem_delete(QWebEngineDownloadItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
