#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEOSINK_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEOSINK_H

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
class QSize;
class QTimerEvent;
class QVideoFrame;
class QVideoSink;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSink QVideoSink;
#endif

struct QVideoSink_VTable {
	void (*destructor)(struct QVideoSink_VTable* vtbl, QVideoSink* self);
	QMetaObject* (*metaObject)(struct QVideoSink_VTable* vtbl, const QVideoSink* self);
	void* (*metacast)(struct QVideoSink_VTable* vtbl, QVideoSink* self, const char* param1);
	int (*metacall)(struct QVideoSink_VTable* vtbl, QVideoSink* self, int param1, int param2, void** param3);
	bool (*event)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QEvent* event);
	bool (*eventFilter)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QTimerEvent* event);
	void (*childEvent)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QChildEvent* event);
	void (*customEvent)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QEvent* event);
	void (*connectNotify)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QVideoSink_VTable* vtbl, QVideoSink* self, QMetaMethod* signal);
};
QVideoSink* QVideoSink_new(struct QVideoSink_VTable* vtbl);
QVideoSink* QVideoSink_new2(struct QVideoSink_VTable* vtbl, QObject* parent);
void QVideoSink_virtbase(QVideoSink* src, QObject** outptr_QObject);
QMetaObject* QVideoSink_metaObject(const QVideoSink* self);
void* QVideoSink_metacast(QVideoSink* self, const char* param1);
int QVideoSink_metacall(QVideoSink* self, int param1, int param2, void** param3);
struct miqt_string QVideoSink_tr(const char* s);
QSize* QVideoSink_videoSize(const QVideoSink* self);
struct miqt_string QVideoSink_subtitleText(const QVideoSink* self);
void QVideoSink_setSubtitleText(QVideoSink* self, struct miqt_string subtitle);
void QVideoSink_setVideoFrame(QVideoSink* self, QVideoFrame* frame);
QVideoFrame* QVideoSink_videoFrame(const QVideoSink* self);
void QVideoSink_videoFrameChanged(const QVideoSink* self, QVideoFrame* frame);
void QVideoSink_connect_videoFrameChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t));
void QVideoSink_subtitleTextChanged(const QVideoSink* self, struct miqt_string subtitleText);
void QVideoSink_connect_subtitleTextChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QVideoSink_videoSizeChanged(QVideoSink* self);
void QVideoSink_connect_videoSizeChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QVideoSink_tr2(const char* s, const char* c);
struct miqt_string QVideoSink_tr3(const char* s, const char* c, int n);
QMetaObject* QVideoSink_virtualbase_metaObject(const void* self);
void* QVideoSink_virtualbase_metacast(void* self, const char* param1);
int QVideoSink_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QVideoSink_virtualbase_event(void* self, QEvent* event);
bool QVideoSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QVideoSink_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QVideoSink_virtualbase_childEvent(void* self, QChildEvent* event);
void QVideoSink_virtualbase_customEvent(void* self, QEvent* event);
void QVideoSink_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QVideoSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QVideoSink_protectedbase_sender(const void* self);
int QVideoSink_protectedbase_senderSignalIndex(const void* self);
int QVideoSink_protectedbase_receivers(const void* self, const char* signal);
bool QVideoSink_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QVideoSink_staticMetaObject();
void QVideoSink_delete(QVideoSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
