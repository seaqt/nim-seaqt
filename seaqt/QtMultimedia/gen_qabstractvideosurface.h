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

typedef struct VirtualQAbstractVideoSurface VirtualQAbstractVideoSurface;
typedef struct QAbstractVideoSurface_VTable{
	void (*destructor)(VirtualQAbstractVideoSurface* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractVideoSurface* self);
	void* (*metacast)(VirtualQAbstractVideoSurface* self, const char* param1);
	int (*metacall)(VirtualQAbstractVideoSurface* self, int param1, int param2, void** param3);
	struct miqt_array /* of int */  (*supportedPixelFormats)(const VirtualQAbstractVideoSurface* self, int type);
	bool (*isFormatSupported)(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	QVideoSurfaceFormat* (*nearestFormat)(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	bool (*start)(VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
	void (*stop)(VirtualQAbstractVideoSurface* self);
	bool (*present)(VirtualQAbstractVideoSurface* self, QVideoFrame* frame);
	bool (*event)(VirtualQAbstractVideoSurface* self, QEvent* event);
	bool (*eventFilter)(VirtualQAbstractVideoSurface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractVideoSurface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractVideoSurface* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractVideoSurface* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);
}QAbstractVideoSurface_VTable;

const QAbstractVideoSurface_VTable* QAbstractVideoSurface_vtbl(const VirtualQAbstractVideoSurface* self);
void* QAbstractVideoSurface_vdata(const VirtualQAbstractVideoSurface* self);
void QAbstractVideoSurface_setVdata(VirtualQAbstractVideoSurface* self, void* vdata);

VirtualQAbstractVideoSurface* QAbstractVideoSurface_new(const QAbstractVideoSurface_VTable* vtbl, void* vdata);
VirtualQAbstractVideoSurface* QAbstractVideoSurface_new2(const QAbstractVideoSurface_VTable* vtbl, void* vdata, QObject* parent);

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
void QAbstractVideoSurface_connect_activeChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAbstractVideoSurface_surfaceFormatChanged(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_connect_surfaceFormatChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QVideoSurfaceFormat*), void (*release)(intptr_t));
void QAbstractVideoSurface_supportedFormatsChanged(QAbstractVideoSurface* self);
void QAbstractVideoSurface_connect_supportedFormatsChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractVideoSurface_nativeResolutionChanged(QAbstractVideoSurface* self, QSize* resolution);
void QAbstractVideoSurface_connect_nativeResolutionChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
struct miqt_string QAbstractVideoSurface_tr2(const char* s, const char* c);
struct miqt_string QAbstractVideoSurface_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractVideoSurface_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractVideoSurface_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAbstractVideoSurface_virtualbase_metaObject(const VirtualQAbstractVideoSurface* self);
void* QAbstractVideoSurface_virtualbase_metacast(VirtualQAbstractVideoSurface* self, const char* param1);
int QAbstractVideoSurface_virtualbase_metacall(VirtualQAbstractVideoSurface* self, int param1, int param2, void** param3);
struct miqt_array /* of int */  QAbstractVideoSurface_virtualbase_supportedPixelFormats(const VirtualQAbstractVideoSurface* self, int type);
bool QAbstractVideoSurface_virtualbase_isFormatSupported(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_virtualbase_nearestFormat(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
bool QAbstractVideoSurface_virtualbase_start(VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_virtualbase_stop(VirtualQAbstractVideoSurface* self);
bool QAbstractVideoSurface_virtualbase_present(VirtualQAbstractVideoSurface* self, QVideoFrame* frame);
bool QAbstractVideoSurface_virtualbase_event(VirtualQAbstractVideoSurface* self, QEvent* event);
bool QAbstractVideoSurface_virtualbase_eventFilter(VirtualQAbstractVideoSurface* self, QObject* watched, QEvent* event);
void QAbstractVideoSurface_virtualbase_timerEvent(VirtualQAbstractVideoSurface* self, QTimerEvent* event);
void QAbstractVideoSurface_virtualbase_childEvent(VirtualQAbstractVideoSurface* self, QChildEvent* event);
void QAbstractVideoSurface_virtualbase_customEvent(VirtualQAbstractVideoSurface* self, QEvent* event);
void QAbstractVideoSurface_virtualbase_connectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_virtualbase_disconnectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);

void QAbstractVideoSurface_protectedbase_setError(VirtualQAbstractVideoSurface* self, int error);
void QAbstractVideoSurface_protectedbase_setNativeResolution(VirtualQAbstractVideoSurface* self, QSize* resolution);
QObject* QAbstractVideoSurface_protectedbase_sender(const VirtualQAbstractVideoSurface* self);
int QAbstractVideoSurface_protectedbase_senderSignalIndex(const VirtualQAbstractVideoSurface* self);
int QAbstractVideoSurface_protectedbase_receivers(const VirtualQAbstractVideoSurface* self, const char* signal);
bool QAbstractVideoSurface_protectedbase_isSignalConnected(const VirtualQAbstractVideoSurface* self, QMetaMethod* signal);

const QMetaObject* QAbstractVideoSurface_staticMetaObject();
void QAbstractVideoSurface_delete(QAbstractVideoSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
