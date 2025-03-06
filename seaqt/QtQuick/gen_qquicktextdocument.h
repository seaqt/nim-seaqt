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

struct QQuickTextDocument_VTable {
	void (*destructor)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self);
	QMetaObject* (*metaObject)(struct QQuickTextDocument_VTable* vtbl, const QQuickTextDocument* self);
	void* (*metacast)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, const char* param1);
	int (*metacall)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, int param1, int param2, void** param3);
	bool (*event)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QEvent* event);
	bool (*eventFilter)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QChildEvent* event);
	void (*customEvent)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QEvent* event);
	void (*connectNotify)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickTextDocument_VTable* vtbl, QQuickTextDocument* self, QMetaMethod* signal);
};
QQuickTextDocument* QQuickTextDocument_new(struct QQuickTextDocument_VTable* vtbl, QQuickItem* parent);
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
QMetaObject* QQuickTextDocument_virtualbase_metaObject(const void* self);
void* QQuickTextDocument_virtualbase_metacast(void* self, const char* param1);
int QQuickTextDocument_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event);
bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event);
void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal);
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
