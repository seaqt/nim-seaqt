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

struct QOffscreenSurface_VTable {
	void (*destructor)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self);
	QMetaObject* (*metaObject)(struct QOffscreenSurface_VTable* vtbl, const QOffscreenSurface* self);
	void* (*metacast)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, const char* param1);
	int (*metacall)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, int param1, int param2, void** param3);
	int (*surfaceType)(struct QOffscreenSurface_VTable* vtbl, const QOffscreenSurface* self);
	QSurfaceFormat* (*format)(struct QOffscreenSurface_VTable* vtbl, const QOffscreenSurface* self);
	QSize* (*size)(struct QOffscreenSurface_VTable* vtbl, const QOffscreenSurface* self);
	bool (*event)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QEvent* event);
	bool (*eventFilter)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QTimerEvent* event);
	void (*childEvent)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QChildEvent* event);
	void (*customEvent)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QEvent* event);
	void (*connectNotify)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QOffscreenSurface_VTable* vtbl, QOffscreenSurface* self, QMetaMethod* signal);
};
QOffscreenSurface* QOffscreenSurface_new(struct QOffscreenSurface_VTable* vtbl);
QOffscreenSurface* QOffscreenSurface_new2(struct QOffscreenSurface_VTable* vtbl, QScreen* screen);
QOffscreenSurface* QOffscreenSurface_new3(struct QOffscreenSurface_VTable* vtbl, QScreen* screen, QObject* parent);
void QOffscreenSurface_virtbase(QOffscreenSurface* src, QObject** outptr_QObject, QSurface** outptr_QSurface);
QMetaObject* QOffscreenSurface_metaObject(const QOffscreenSurface* self);
void* QOffscreenSurface_metacast(QOffscreenSurface* self, const char* param1);
int QOffscreenSurface_metacall(QOffscreenSurface* self, int param1, int param2, void** param3);
struct miqt_string QOffscreenSurface_tr(const char* s);
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
void QOffscreenSurface_screenChanged(QOffscreenSurface* self, QScreen* screen);
void QOffscreenSurface_connect_screenChanged(QOffscreenSurface* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t));
struct miqt_string QOffscreenSurface_tr2(const char* s, const char* c);
struct miqt_string QOffscreenSurface_tr3(const char* s, const char* c, int n);
QMetaObject* QOffscreenSurface_virtualbase_metaObject(const void* self);
void* QOffscreenSurface_virtualbase_metacast(void* self, const char* param1);
int QOffscreenSurface_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QOffscreenSurface_virtualbase_surfaceType(const void* self);
QSurfaceFormat* QOffscreenSurface_virtualbase_format(const void* self);
QSize* QOffscreenSurface_virtualbase_size(const void* self);
bool QOffscreenSurface_virtualbase_event(void* self, QEvent* event);
bool QOffscreenSurface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QOffscreenSurface_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QOffscreenSurface_virtualbase_childEvent(void* self, QChildEvent* event);
void QOffscreenSurface_virtualbase_customEvent(void* self, QEvent* event);
void QOffscreenSurface_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QOffscreenSurface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void* QOffscreenSurface_protectedbase_resolveInterface(const void* self, const char* name, int revision);
QObject* QOffscreenSurface_protectedbase_sender(const void* self);
int QOffscreenSurface_protectedbase_senderSignalIndex(const void* self);
int QOffscreenSurface_protectedbase_receivers(const void* self, const char* signal);
bool QOffscreenSurface_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QOffscreenSurface_staticMetaObject();
void QOffscreenSurface_delete(QOffscreenSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
