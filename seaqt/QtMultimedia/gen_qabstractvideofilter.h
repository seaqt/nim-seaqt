#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOFILTER_H
#define SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOFILTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoFilter;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVideoFilterRunnable;
class QVideoFrame;
class QVideoSurfaceFormat;
#else
typedef struct QAbstractVideoFilter QAbstractVideoFilter;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFilterRunnable QVideoFilterRunnable;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSurfaceFormat QVideoSurfaceFormat;
#endif

QVideoFrame* QVideoFilterRunnable_run(QVideoFilterRunnable* self, QVideoFrame* input, QVideoSurfaceFormat* surfaceFormat, int flags);
void QVideoFilterRunnable_operatorAssign(QVideoFilterRunnable* self, QVideoFilterRunnable* param1);
void QVideoFilterRunnable_delete(QVideoFilterRunnable* self);

struct QAbstractVideoFilter_VTable {
	void (*destructor)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self);
	QMetaObject* (*metaObject)(struct QAbstractVideoFilter_VTable* vtbl, const QAbstractVideoFilter* self);
	void* (*metacast)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, const char* param1);
	int (*metacall)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, int param1, int param2, void** param3);
	QVideoFilterRunnable* (*createFilterRunnable)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self);
	bool (*event)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QEvent* event);
	void (*connectNotify)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractVideoFilter_VTable* vtbl, QAbstractVideoFilter* self, QMetaMethod* signal);
};
QAbstractVideoFilter* QAbstractVideoFilter_new(struct QAbstractVideoFilter_VTable* vtbl);
QAbstractVideoFilter* QAbstractVideoFilter_new2(struct QAbstractVideoFilter_VTable* vtbl, QObject* parent);
void QAbstractVideoFilter_virtbase(QAbstractVideoFilter* src, QObject** outptr_QObject);
QMetaObject* QAbstractVideoFilter_metaObject(const QAbstractVideoFilter* self);
void* QAbstractVideoFilter_metacast(QAbstractVideoFilter* self, const char* param1);
int QAbstractVideoFilter_metacall(QAbstractVideoFilter* self, int param1, int param2, void** param3);
struct miqt_string QAbstractVideoFilter_tr(const char* s);
struct miqt_string QAbstractVideoFilter_trUtf8(const char* s);
bool QAbstractVideoFilter_isActive(const QAbstractVideoFilter* self);
void QAbstractVideoFilter_setActive(QAbstractVideoFilter* self, bool v);
QVideoFilterRunnable* QAbstractVideoFilter_createFilterRunnable(QAbstractVideoFilter* self);
void QAbstractVideoFilter_activeChanged(QAbstractVideoFilter* self);
void QAbstractVideoFilter_connect_activeChanged(QAbstractVideoFilter* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAbstractVideoFilter_tr2(const char* s, const char* c);
struct miqt_string QAbstractVideoFilter_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractVideoFilter_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractVideoFilter_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractVideoFilter_virtualbase_metaObject(const void* self);
void* QAbstractVideoFilter_virtualbase_metacast(void* self, const char* param1);
int QAbstractVideoFilter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QVideoFilterRunnable* QAbstractVideoFilter_virtualbase_createFilterRunnable(void* self);
bool QAbstractVideoFilter_virtualbase_event(void* self, QEvent* event);
bool QAbstractVideoFilter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractVideoFilter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractVideoFilter_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractVideoFilter_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractVideoFilter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractVideoFilter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAbstractVideoFilter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAbstractVideoFilter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAbstractVideoFilter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAbstractVideoFilter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractVideoFilter_staticMetaObject();
void QAbstractVideoFilter_delete(QAbstractVideoFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
