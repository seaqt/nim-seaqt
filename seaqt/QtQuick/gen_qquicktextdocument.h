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

typedef struct VirtualQQuickTextDocument VirtualQQuickTextDocument;
typedef struct QQuickTextDocument_VTable{
	void (*destructor)(VirtualQQuickTextDocument* self);
	QMetaObject* (*metaObject)(const VirtualQQuickTextDocument* self);
	void* (*metacast)(VirtualQQuickTextDocument* self, const char* param1);
	int (*metacall)(VirtualQQuickTextDocument* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQuickTextDocument* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickTextDocument* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickTextDocument* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickTextDocument* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickTextDocument* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickTextDocument* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickTextDocument* self, QMetaMethod* signal);
}QQuickTextDocument_VTable;

const QQuickTextDocument_VTable* QQuickTextDocument_vtbl(const VirtualQQuickTextDocument* self);
void* QQuickTextDocument_vdata(const VirtualQQuickTextDocument* self);
void QQuickTextDocument_setVdata(VirtualQQuickTextDocument* self, void* vdata);

VirtualQQuickTextDocument* QQuickTextDocument_new(const QQuickTextDocument_VTable* vtbl, void* vdata, QQuickItem* parent);

void QQuickTextDocument_virtbase(QQuickTextDocument* src, QObject** outptr_QObject);
QMetaObject* QQuickTextDocument_metaObject(const QQuickTextDocument* self);
void* QQuickTextDocument_metacast(QQuickTextDocument* self, const char* param1);
int QQuickTextDocument_metacall(QQuickTextDocument* self, int param1, int param2, void** param3);
struct miqt_string QQuickTextDocument_tr(const char* s);
QTextDocument* QQuickTextDocument_textDocument(const QQuickTextDocument* self);
struct miqt_string QQuickTextDocument_tr2(const char* s, const char* c);
struct miqt_string QQuickTextDocument_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickTextDocument_virtualbase_metaObject(const VirtualQQuickTextDocument* self);
void* QQuickTextDocument_virtualbase_metacast(VirtualQQuickTextDocument* self, const char* param1);
int QQuickTextDocument_virtualbase_metacall(VirtualQQuickTextDocument* self, int param1, int param2, void** param3);
bool QQuickTextDocument_virtualbase_event(VirtualQQuickTextDocument* self, QEvent* event);
bool QQuickTextDocument_virtualbase_eventFilter(VirtualQQuickTextDocument* self, QObject* watched, QEvent* event);
void QQuickTextDocument_virtualbase_timerEvent(VirtualQQuickTextDocument* self, QTimerEvent* event);
void QQuickTextDocument_virtualbase_childEvent(VirtualQQuickTextDocument* self, QChildEvent* event);
void QQuickTextDocument_virtualbase_customEvent(VirtualQQuickTextDocument* self, QEvent* event);
void QQuickTextDocument_virtualbase_connectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal);
void QQuickTextDocument_virtualbase_disconnectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal);

QObject* QQuickTextDocument_protectedbase_sender(const VirtualQQuickTextDocument* self);
int QQuickTextDocument_protectedbase_senderSignalIndex(const VirtualQQuickTextDocument* self);
int QQuickTextDocument_protectedbase_receivers(const VirtualQQuickTextDocument* self, const char* signal);
bool QQuickTextDocument_protectedbase_isSignalConnected(const VirtualQQuickTextDocument* self, QMetaMethod* signal);

const QMetaObject* QQuickTextDocument_staticMetaObject();
void QQuickTextDocument_delete(QQuickTextDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
