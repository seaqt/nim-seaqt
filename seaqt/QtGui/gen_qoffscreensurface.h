#pragma once
#ifndef SEAQT_QTGUI_GEN_QOFFSCREENSURFACE_H
#define SEAQT_QTGUI_GEN_QOFFSCREENSURFACE_H

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
class QOffscreenSurface;
class QScreen;
class QSize;
class QSurface;
class QSurfaceFormat;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QOffscreenSurface QOffscreenSurface;
typedef struct QScreen QScreen;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQOffscreenSurface VirtualQOffscreenSurface;
typedef struct QOffscreenSurface_VTable{
	void (*destructor)(VirtualQOffscreenSurface* self);
	QMetaObject* (*metaObject)(const VirtualQOffscreenSurface* self);
	void* (*metacast)(VirtualQOffscreenSurface* self, const char* param1);
	int (*metacall)(VirtualQOffscreenSurface* self, int param1, int param2, void** param3);
	int (*surfaceType)(const VirtualQOffscreenSurface* self);
	QSurfaceFormat* (*format)(const VirtualQOffscreenSurface* self);
	QSize* (*size)(const VirtualQOffscreenSurface* self);
	bool (*event)(VirtualQOffscreenSurface* self, QEvent* event);
	bool (*eventFilter)(VirtualQOffscreenSurface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQOffscreenSurface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQOffscreenSurface* self, QChildEvent* event);
	void (*customEvent)(VirtualQOffscreenSurface* self, QEvent* event);
	void (*connectNotify)(VirtualQOffscreenSurface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQOffscreenSurface* self, QMetaMethod* signal);
}QOffscreenSurface_VTable;

const QOffscreenSurface_VTable* QOffscreenSurface_vtbl(const VirtualQOffscreenSurface* self);
void* QOffscreenSurface_vdata(const VirtualQOffscreenSurface* self);
void QOffscreenSurface_setVdata(VirtualQOffscreenSurface* self, void* vdata);

VirtualQOffscreenSurface* QOffscreenSurface_new(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen, QObject* parent);
VirtualQOffscreenSurface* QOffscreenSurface_new2(const QOffscreenSurface_VTable* vtbl, void* vdata);
VirtualQOffscreenSurface* QOffscreenSurface_new3(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen);

void QOffscreenSurface_virtbase(QOffscreenSurface* src, QObject** outptr_QObject, QSurface** outptr_QSurface);
QMetaObject* QOffscreenSurface_metaObject(const QOffscreenSurface* self);
void* QOffscreenSurface_metacast(QOffscreenSurface* self, const char* param1);
int QOffscreenSurface_metacall(QOffscreenSurface* self, int param1, int param2, void** param3);
struct miqt_string QOffscreenSurface_tr(const char* s);
struct miqt_string QOffscreenSurface_trUtf8(const char* s);
int QOffscreenSurface_surfaceType(const QOffscreenSurface* self);
void QOffscreenSurface_create(QOffscreenSurface* self);
void QOffscreenSurface_destroy(QOffscreenSurface* self);
bool QOffscreenSurface_isValid(const QOffscreenSurface* self);
void QOffscreenSurface_setFormat(QOffscreenSurface* self, QSurfaceFormat* format);
QSurfaceFormat* QOffscreenSurface_format(const QOffscreenSurface* self);
QSurfaceFormat* QOffscreenSurface_requestedFormat(const QOffscreenSurface* self);
QSize* QOffscreenSurface_size(const QOffscreenSurface* self);
QScreen* QOffscreenSurface_screen(const QOffscreenSurface* self);
void QOffscreenSurface_setScreen(QOffscreenSurface* self, QScreen* screen);
void* QOffscreenSurface_nativeHandle(const QOffscreenSurface* self);
void QOffscreenSurface_setNativeHandle(QOffscreenSurface* self, void* handle);
void QOffscreenSurface_screenChanged(QOffscreenSurface* self, QScreen* screen);
void QOffscreenSurface_connect_screenChanged(VirtualQOffscreenSurface* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t));
struct miqt_string QOffscreenSurface_tr2(const char* s, const char* c);
struct miqt_string QOffscreenSurface_tr3(const char* s, const char* c, int n);
struct miqt_string QOffscreenSurface_trUtf82(const char* s, const char* c);
struct miqt_string QOffscreenSurface_trUtf83(const char* s, const char* c, int n);

QMetaObject* QOffscreenSurface_virtualbase_metaObject(const VirtualQOffscreenSurface* self);
void* QOffscreenSurface_virtualbase_metacast(VirtualQOffscreenSurface* self, const char* param1);
int QOffscreenSurface_virtualbase_metacall(VirtualQOffscreenSurface* self, int param1, int param2, void** param3);
int QOffscreenSurface_virtualbase_surfaceType(const VirtualQOffscreenSurface* self);
QSurfaceFormat* QOffscreenSurface_virtualbase_format(const VirtualQOffscreenSurface* self);
QSize* QOffscreenSurface_virtualbase_size(const VirtualQOffscreenSurface* self);
bool QOffscreenSurface_virtualbase_event(VirtualQOffscreenSurface* self, QEvent* event);
bool QOffscreenSurface_virtualbase_eventFilter(VirtualQOffscreenSurface* self, QObject* watched, QEvent* event);
void QOffscreenSurface_virtualbase_timerEvent(VirtualQOffscreenSurface* self, QTimerEvent* event);
void QOffscreenSurface_virtualbase_childEvent(VirtualQOffscreenSurface* self, QChildEvent* event);
void QOffscreenSurface_virtualbase_customEvent(VirtualQOffscreenSurface* self, QEvent* event);
void QOffscreenSurface_virtualbase_connectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal);
void QOffscreenSurface_virtualbase_disconnectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal);

QObject* QOffscreenSurface_protectedbase_sender(const VirtualQOffscreenSurface* self);
int QOffscreenSurface_protectedbase_senderSignalIndex(const VirtualQOffscreenSurface* self);
int QOffscreenSurface_protectedbase_receivers(const VirtualQOffscreenSurface* self, const char* signal);
bool QOffscreenSurface_protectedbase_isSignalConnected(const VirtualQOffscreenSurface* self, QMetaMethod* signal);

const QMetaObject* QOffscreenSurface_staticMetaObject();
void QOffscreenSurface_delete(QOffscreenSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
