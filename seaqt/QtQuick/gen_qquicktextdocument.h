#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKTEXTDOCUMENT_H
#define SEAQT_QTQUICK_GEN_QQUICKTEXTDOCUMENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQuickItem;
class QQuickTextDocument;
class QTextDocument;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickTextDocument QQuickTextDocument;
typedef struct QTextDocument QTextDocument;
typedef struct QTimerEvent QTimerEvent;
#endif

QQuickTextDocument* QQuickTextDocument_new(QQuickItem* parent);
void QQuickTextDocument_virtbase(QQuickTextDocument* src, QObject** outptr_QObject);
QMetaObject* QQuickTextDocument_metaObject(const QQuickTextDocument* self);
void* QQuickTextDocument_metacast(QQuickTextDocument* self, const char* param1);
int QQuickTextDocument_metacall(QQuickTextDocument* self, int param1, int param2, void** param3);
struct miqt_string QQuickTextDocument_tr(const char* s);
struct miqt_string QQuickTextDocument_trUtf8(const char* s);
QTextDocument* QQuickTextDocument_textDocument(const QQuickTextDocument* self);
struct miqt_string QQuickTextDocument_tr2(const char* s, const char* c);
struct miqt_string QQuickTextDocument_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickTextDocument_trUtf82(const char* s, const char* c);
struct miqt_string QQuickTextDocument_trUtf83(const char* s, const char* c, int n);
bool QQuickTextDocument_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QQuickTextDocument_virtualbase_metaObject(const void* self);
bool QQuickTextDocument_override_virtual_metacast(void* self, intptr_t slot);
void* QQuickTextDocument_virtualbase_metacast(void* self, const char* param1);
bool QQuickTextDocument_override_virtual_metacall(void* self, intptr_t slot);
int QQuickTextDocument_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQuickTextDocument_override_virtual_event(void* self, intptr_t slot);
bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event);
bool QQuickTextDocument_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickTextDocument_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickTextDocument_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickTextDocument_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickTextDocument_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickTextDocument_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickTextDocument_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickTextDocument_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickTextDocument_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickTextDocument_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQuickTextDocument_staticMetaObject();
void QQuickTextDocument_delete(QQuickTextDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
