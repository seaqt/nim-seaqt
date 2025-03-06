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

struct QWebEngineUrlSchemeHandler_VTable {
	void (*destructor)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self);
	QMetaObject* (*metaObject)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, const QWebEngineUrlSchemeHandler* self);
	void* (*metacast)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, const char* param1);
	int (*metacall)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);
	void (*requestStarted)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1);
	bool (*event)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QEvent* event);
	bool (*eventFilter)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QTimerEvent* event);
	void (*childEvent)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QChildEvent* event);
	void (*customEvent)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QEvent* event);
	void (*connectNotify)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
};
QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new(struct QWebEngineUrlSchemeHandler_VTable* vtbl);
QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new2(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent);
void QWebEngineUrlSchemeHandler_virtbase(QWebEngineUrlSchemeHandler* src, QObject** outptr_QObject);
QMetaObject* QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler* self);
void* QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler* self, const char* param1);
int QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineUrlSchemeHandler_tr(const char* s);
void QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1);
struct miqt_string QWebEngineUrlSchemeHandler_tr2(const char* s, const char* c);
struct miqt_string QWebEngineUrlSchemeHandler_tr3(const char* s, const char* c, int n);
QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self);
void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1);
int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QWebEngineUrlSchemeHandler_virtualbase_requestStarted(void* self, QWebEngineUrlRequestJob* param1);
bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event);
bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event);
void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebEngineUrlSchemeHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWebEngineUrlSchemeHandler_staticMetaObject();
void QWebEngineUrlSchemeHandler_delete(QWebEngineUrlSchemeHandler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
