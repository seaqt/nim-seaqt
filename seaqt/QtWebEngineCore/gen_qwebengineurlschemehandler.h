#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLSCHEMEHANDLER_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLSCHEMEHANDLER_H

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
class QTimerEvent;
class QWebEngineUrlRequestJob;
class QWebEngineUrlSchemeHandler;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWebEngineUrlRequestJob QWebEngineUrlRequestJob;
typedef struct QWebEngineUrlSchemeHandler QWebEngineUrlSchemeHandler;
#endif

typedef struct VirtualQWebEngineUrlSchemeHandler VirtualQWebEngineUrlSchemeHandler;
typedef struct QWebEngineUrlSchemeHandler_VTable{
	void (*destructor)(VirtualQWebEngineUrlSchemeHandler* self);
	QMetaObject* (*metaObject)(const VirtualQWebEngineUrlSchemeHandler* self);
	void* (*metacast)(VirtualQWebEngineUrlSchemeHandler* self, const char* param1);
	int (*metacall)(VirtualQWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);
	void (*requestStarted)(VirtualQWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1);
	bool (*event)(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebEngineUrlSchemeHandler* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebEngineUrlSchemeHandler* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebEngineUrlSchemeHandler* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);
	void (*connectNotify)(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
}QWebEngineUrlSchemeHandler_VTable;

const QWebEngineUrlSchemeHandler_VTable* QWebEngineUrlSchemeHandler_vtbl(const VirtualQWebEngineUrlSchemeHandler* self);
void* QWebEngineUrlSchemeHandler_vdata(const VirtualQWebEngineUrlSchemeHandler* self);
void QWebEngineUrlSchemeHandler_setVdata(VirtualQWebEngineUrlSchemeHandler* self, void* vdata);

VirtualQWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new(const QWebEngineUrlSchemeHandler_VTable* vtbl, void* vdata);
VirtualQWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new2(const QWebEngineUrlSchemeHandler_VTable* vtbl, void* vdata, QObject* parent);

void QWebEngineUrlSchemeHandler_virtbase(QWebEngineUrlSchemeHandler* src, QObject** outptr_QObject);
QMetaObject* QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler* self);
void* QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler* self, const char* param1);
int QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineUrlSchemeHandler_tr(const char* s);
void QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1);
struct miqt_string QWebEngineUrlSchemeHandler_tr2(const char* s, const char* c);
struct miqt_string QWebEngineUrlSchemeHandler_tr3(const char* s, const char* c, int n);

QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const VirtualQWebEngineUrlSchemeHandler* self);
void* QWebEngineUrlSchemeHandler_virtualbase_metacast(VirtualQWebEngineUrlSchemeHandler* self, const char* param1);
int QWebEngineUrlSchemeHandler_virtualbase_metacall(VirtualQWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);
void QWebEngineUrlSchemeHandler_virtualbase_requestStarted(VirtualQWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1);
bool QWebEngineUrlSchemeHandler_virtualbase_event(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);
bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(VirtualQWebEngineUrlSchemeHandler* self, QObject* watched, QEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(VirtualQWebEngineUrlSchemeHandler* self, QTimerEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_childEvent(VirtualQWebEngineUrlSchemeHandler* self, QChildEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_customEvent(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);

QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(const VirtualQWebEngineUrlSchemeHandler* self);
int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlSchemeHandler* self);
int QWebEngineUrlSchemeHandler_protectedbase_receivers(const VirtualQWebEngineUrlSchemeHandler* self, const char* signal);
bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(const VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);

const QMetaObject* QWebEngineUrlSchemeHandler_staticMetaObject();
void QWebEngineUrlSchemeHandler_delete(QWebEngineUrlSchemeHandler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
