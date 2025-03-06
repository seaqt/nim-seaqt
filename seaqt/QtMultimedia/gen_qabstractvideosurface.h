#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOSURFACE_H
#define SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOSURFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoSurface;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSize;
class QTimerEvent;
class QVideoFrame;
class QVideoSurfaceFormat;
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSurfaceFormat QVideoSurfaceFormat;
#endif

struct QAbstractVideoSurface_VTable {
	void (*destructor)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self);
	QMetaObject* (*metaObject)(struct QAbstractVideoSurface_VTable* vtbl, const QAbstractVideoSurface* self);
	void* (*metacast)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, const char* param1);
	int (*metacall)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, int param1, int param2, void** param3);
	struct miqt_array /* of int */  (*supportedPixelFormats)(struct QAbstractVideoSurface_VTable* vtbl, const QAbstractVideoSurface* self, int type);
	bool (*isFormatSupported)(struct QAbstractVideoSurface_VTable* vtbl, const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	QVideoSurfaceFormat* (*nearestFormat)(struct QAbstractVideoSurface_VTable* vtbl, const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	bool (*start)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	void (*stop)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self);
	bool (*present)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QVideoFrame* frame);
	bool (*event)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QEvent* event);
	void (*connectNotify)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractVideoSurface_VTable* vtbl, QAbstractVideoSurface* self, QMetaMethod* signal);
};
QAbstractVideoSurface* QAbstractVideoSurface_new(struct QAbstractVideoSurface_VTable* vtbl);
QAbstractVideoSurface* QAbstractVideoSurface_new2(struct QAbstractVideoSurface_VTable* vtbl, QObject* parent);
void QAbstractVideoSurface_virtbase(QAbstractVideoSurface* src, QObject** outptr_QObject);
QMetaObject* QAbstractVideoSurface_metaObject(const QAbstractVideoSurface* self);
void* QAbstractVideoSurface_metacast(QAbstractVideoSurface* self, const char* param1);
int QAbstractVideoSurface_metacall(QAbstractVideoSurface* self, int param1, int param2, void** param3);
struct miqt_string QAbstractVideoSurface_tr(const char* s);
struct miqt_string QAbstractVideoSurface_trUtf8(const char* s);
struct miqt_array /* of int */  QAbstractVideoSurface_supportedPixelFormats(const QAbstractVideoSurface* self, int type);
bool QAbstractVideoSurface_isFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_nearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_surfaceFormat(const QAbstractVideoSurface* self);
QSize* QAbstractVideoSurface_nativeResolution(const QAbstractVideoSurface* self);
bool QAbstractVideoSurface_start(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_stop(QAbstractVideoSurface* self);
bool QAbstractVideoSurface_isActive(const QAbstractVideoSurface* self);
bool QAbstractVideoSurface_present(QAbstractVideoSurface* self, QVideoFrame* frame);
int QAbstractVideoSurface_error(const QAbstractVideoSurface* self);
void QAbstractVideoSurface_activeChanged(QAbstractVideoSurface* self, bool active);
void QAbstractVideoSurface_connect_activeChanged(QAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAbstractVideoSurface_surfaceFormatChanged(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_connect_surfaceFormatChanged(QAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QVideoSurfaceFormat*), void (*release)(intptr_t));
void QAbstractVideoSurface_supportedFormatsChanged(QAbstractVideoSurface* self);
void QAbstractVideoSurface_connect_supportedFormatsChanged(QAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractVideoSurface_nativeResolutionChanged(QAbstractVideoSurface* self, QSize* resolution);
void QAbstractVideoSurface_connect_nativeResolutionChanged(QAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
struct miqt_string QAbstractVideoSurface_tr2(const char* s, const char* c);
struct miqt_string QAbstractVideoSurface_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractVideoSurface_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractVideoSurface_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractVideoSurface_virtualbase_metaObject(const void* self);
void* QAbstractVideoSurface_virtualbase_metacast(void* self, const char* param1);
int QAbstractVideoSurface_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_array /* of int */  QAbstractVideoSurface_virtualbase_supportedPixelFormats(const void* self, int type);
bool QAbstractVideoSurface_virtualbase_isFormatSupported(const void* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_virtualbase_nearestFormat(const void* self, QVideoSurfaceFormat* format);
bool QAbstractVideoSurface_virtualbase_start(void* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_virtualbase_stop(void* self);
bool QAbstractVideoSurface_virtualbase_present(void* self, QVideoFrame* frame);
bool QAbstractVideoSurface_virtualbase_event(void* self, QEvent* event);
bool QAbstractVideoSurface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractVideoSurface_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractVideoSurface_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractVideoSurface_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractVideoSurface_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractVideoSurface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractVideoSurface_protectedbase_setError(bool* _dynamic_cast_ok, void* self, int error);
void QAbstractVideoSurface_protectedbase_setNativeResolution(bool* _dynamic_cast_ok, void* self, QSize* resolution);
QObject* QAbstractVideoSurface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAbstractVideoSurface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAbstractVideoSurface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAbstractVideoSurface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractVideoSurface_staticMetaObject();
void QAbstractVideoSurface_delete(QAbstractVideoSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
