#pragma once
#ifndef SEAQT_QTGUI_GEN_QMOVIE_H
#define SEAQT_QTGUI_GEN_QMOVIE_H

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
class QColor;
class QEvent;
class QIODevice;
class QImage;
class QMetaMethod;
class QMetaObject;
class QMovie;
class QObject;
class QPixmap;
class QRect;
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMovie QMovie;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQMovie VirtualQMovie;
typedef struct QMovie_VTable{
	void (*destructor)(VirtualQMovie* self);
	QMetaObject* (*metaObject)(const VirtualQMovie* self);
	void* (*metacast)(VirtualQMovie* self, const char* param1);
	int (*metacall)(VirtualQMovie* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQMovie* self, QEvent* event);
	bool (*eventFilter)(VirtualQMovie* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMovie* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMovie* self, QChildEvent* event);
	void (*customEvent)(VirtualQMovie* self, QEvent* event);
	void (*connectNotify)(VirtualQMovie* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMovie* self, QMetaMethod* signal);
}QMovie_VTable;

const QMovie_VTable* QMovie_vtbl(const VirtualQMovie* self);
void* QMovie_vdata(const VirtualQMovie* self);
void QMovie_setVdata(VirtualQMovie* self, void* vdata);

VirtualQMovie* QMovie_new(const QMovie_VTable* vtbl, void* vdata);
VirtualQMovie* QMovie_new2(const QMovie_VTable* vtbl, void* vdata, QIODevice* device);
VirtualQMovie* QMovie_new3(const QMovie_VTable* vtbl, void* vdata, struct miqt_string fileName);
VirtualQMovie* QMovie_new4(const QMovie_VTable* vtbl, void* vdata, QObject* parent);
VirtualQMovie* QMovie_new5(const QMovie_VTable* vtbl, void* vdata, QIODevice* device, struct miqt_string format);
VirtualQMovie* QMovie_new6(const QMovie_VTable* vtbl, void* vdata, QIODevice* device, struct miqt_string format, QObject* parent);
VirtualQMovie* QMovie_new7(const QMovie_VTable* vtbl, void* vdata, struct miqt_string fileName, struct miqt_string format);
VirtualQMovie* QMovie_new8(const QMovie_VTable* vtbl, void* vdata, struct miqt_string fileName, struct miqt_string format, QObject* parent);

void QMovie_virtbase(QMovie* src, QObject** outptr_QObject);
QMetaObject* QMovie_metaObject(const QMovie* self);
void* QMovie_metacast(QMovie* self, const char* param1);
int QMovie_metacall(QMovie* self, int param1, int param2, void** param3);
struct miqt_string QMovie_tr(const char* s);
struct miqt_array /* of struct miqt_string */  QMovie_supportedFormats();
void QMovie_setDevice(QMovie* self, QIODevice* device);
QIODevice* QMovie_device(const QMovie* self);
void QMovie_setFileName(QMovie* self, struct miqt_string fileName);
struct miqt_string QMovie_fileName(const QMovie* self);
void QMovie_setFormat(QMovie* self, struct miqt_string format);
struct miqt_string QMovie_format(const QMovie* self);
void QMovie_setBackgroundColor(QMovie* self, QColor* color);
QColor* QMovie_backgroundColor(const QMovie* self);
int QMovie_state(const QMovie* self);
QRect* QMovie_frameRect(const QMovie* self);
QImage* QMovie_currentImage(const QMovie* self);
QPixmap* QMovie_currentPixmap(const QMovie* self);
bool QMovie_isValid(const QMovie* self);
int QMovie_lastError(const QMovie* self);
struct miqt_string QMovie_lastErrorString(const QMovie* self);
bool QMovie_jumpToFrame(QMovie* self, int frameNumber);
int QMovie_loopCount(const QMovie* self);
int QMovie_frameCount(const QMovie* self);
int QMovie_nextFrameDelay(const QMovie* self);
int QMovie_currentFrameNumber(const QMovie* self);
int QMovie_speed(const QMovie* self);
QSize* QMovie_scaledSize(QMovie* self);
void QMovie_setScaledSize(QMovie* self, QSize* size);
int QMovie_cacheMode(const QMovie* self);
void QMovie_setCacheMode(QMovie* self, int mode);
void QMovie_started(QMovie* self);
void QMovie_connect_started(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMovie_resized(QMovie* self, QSize* size);
void QMovie_connect_resized(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QMovie_updated(QMovie* self, QRect* rect);
void QMovie_connect_updated(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t));
void QMovie_stateChanged(QMovie* self, int state);
void QMovie_connect_stateChanged(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMovie_error(QMovie* self, int error);
void QMovie_connect_error(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMovie_finished(QMovie* self);
void QMovie_connect_finished(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMovie_frameChanged(QMovie* self, int frameNumber);
void QMovie_connect_frameChanged(VirtualQMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMovie_start(QMovie* self);
bool QMovie_jumpToNextFrame(QMovie* self);
void QMovie_setPaused(QMovie* self, bool paused);
void QMovie_stop(QMovie* self);
void QMovie_setSpeed(QMovie* self, int percentSpeed);
struct miqt_string QMovie_tr2(const char* s, const char* c);
struct miqt_string QMovie_tr3(const char* s, const char* c, int n);

QMetaObject* QMovie_virtualbase_metaObject(const VirtualQMovie* self);
void* QMovie_virtualbase_metacast(VirtualQMovie* self, const char* param1);
int QMovie_virtualbase_metacall(VirtualQMovie* self, int param1, int param2, void** param3);
bool QMovie_virtualbase_event(VirtualQMovie* self, QEvent* event);
bool QMovie_virtualbase_eventFilter(VirtualQMovie* self, QObject* watched, QEvent* event);
void QMovie_virtualbase_timerEvent(VirtualQMovie* self, QTimerEvent* event);
void QMovie_virtualbase_childEvent(VirtualQMovie* self, QChildEvent* event);
void QMovie_virtualbase_customEvent(VirtualQMovie* self, QEvent* event);
void QMovie_virtualbase_connectNotify(VirtualQMovie* self, QMetaMethod* signal);
void QMovie_virtualbase_disconnectNotify(VirtualQMovie* self, QMetaMethod* signal);

QObject* QMovie_protectedbase_sender(const VirtualQMovie* self);
int QMovie_protectedbase_senderSignalIndex(const VirtualQMovie* self);
int QMovie_protectedbase_receivers(const VirtualQMovie* self, const char* signal);
bool QMovie_protectedbase_isSignalConnected(const VirtualQMovie* self, QMetaMethod* signal);

const QMetaObject* QMovie_staticMetaObject();
void QMovie_delete(QMovie* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
