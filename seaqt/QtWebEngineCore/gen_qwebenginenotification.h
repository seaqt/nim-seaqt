#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINENOTIFICATION_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINENOTIFICATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QUrl;
class QWebEngineNotification;
#else
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
typedef struct QWebEngineNotification QWebEngineNotification;
#endif

void QWebEngineNotification_virtbase(QWebEngineNotification* src, QObject** outptr_QObject);
QMetaObject* QWebEngineNotification_metaObject(const QWebEngineNotification* self);
void* QWebEngineNotification_metacast(QWebEngineNotification* self, const char* param1);
int QWebEngineNotification_metacall(QWebEngineNotification* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineNotification_tr_s(const char* s);
bool QWebEngineNotification_matches(const QWebEngineNotification* self, QWebEngineNotification* other);
QUrl* QWebEngineNotification_origin(const QWebEngineNotification* self);
QImage* QWebEngineNotification_icon(const QWebEngineNotification* self);
struct seaqt_string QWebEngineNotification_title(const QWebEngineNotification* self);
struct seaqt_string QWebEngineNotification_message(const QWebEngineNotification* self);
struct seaqt_string QWebEngineNotification_tag(const QWebEngineNotification* self);
struct seaqt_string QWebEngineNotification_language(const QWebEngineNotification* self);
int QWebEngineNotification_direction(const QWebEngineNotification* self);
void QWebEngineNotification_show(const QWebEngineNotification* self);
void QWebEngineNotification_click(const QWebEngineNotification* self);
void QWebEngineNotification_close(const QWebEngineNotification* self);
void QWebEngineNotification_closed(QWebEngineNotification* self);
void QWebEngineNotification_connect_closed(QWebEngineNotification* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QWebEngineNotification_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineNotification_tr_s_c_n(const char* s, const char* c, int n);

void QWebEngineNotification_delete(QWebEngineNotification* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
