#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKTEXTDOCUMENT_H
#define SEAQT_QTQUICK_GEN_QQUICKTEXTDOCUMENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QUrl;
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
typedef struct QUrl QUrl;
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

void* QQuickTextDocument_vdata(VirtualQQuickTextDocument* self);
VirtualQQuickTextDocument* vdata_QQuickTextDocument(void* vdata);

VirtualQQuickTextDocument* QQuickTextDocument_new(const QQuickTextDocument_VTable* vtbl, size_t vdata, QQuickItem* parent);

void QQuickTextDocument_virtbase(QQuickTextDocument* src, QObject** outptr_QObject);
QMetaObject* QQuickTextDocument_metaObject(const QQuickTextDocument* self);
void* QQuickTextDocument_metacast(QQuickTextDocument* self, const char* param1);
int QQuickTextDocument_metacall(QQuickTextDocument* self, int param1, int param2, void** param3);
struct seaqt_string QQuickTextDocument_tr_s(const char* s);
QUrl* QQuickTextDocument_source(const QQuickTextDocument* self);
void QQuickTextDocument_setSource(QQuickTextDocument* self, QUrl* url);
bool QQuickTextDocument_isModified(const QQuickTextDocument* self);
void QQuickTextDocument_setModified(QQuickTextDocument* self, bool modified);
QTextDocument* QQuickTextDocument_textDocument(const QQuickTextDocument* self);
void QQuickTextDocument_setTextDocument(QQuickTextDocument* self, QTextDocument* document);
void QQuickTextDocument_save(QQuickTextDocument* self);
void QQuickTextDocument_saveAs(QQuickTextDocument* self, QUrl* url);
uint8_t QQuickTextDocument_status(const QQuickTextDocument* self);
struct seaqt_string QQuickTextDocument_errorString(const QQuickTextDocument* self);
void QQuickTextDocument_textDocumentChanged(QQuickTextDocument* self);
void QQuickTextDocument_connect_textDocumentChanged(QQuickTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickTextDocument_sourceChanged(QQuickTextDocument* self);
void QQuickTextDocument_connect_sourceChanged(QQuickTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickTextDocument_modifiedChanged(QQuickTextDocument* self);
void QQuickTextDocument_connect_modifiedChanged(QQuickTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickTextDocument_statusChanged(QQuickTextDocument* self);
void QQuickTextDocument_connect_statusChanged(QQuickTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickTextDocument_errorStringChanged(QQuickTextDocument* self);
void QQuickTextDocument_connect_errorStringChanged(QQuickTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QQuickTextDocument_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickTextDocument_tr_s_c_n(const char* s, const char* c, int n);

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
