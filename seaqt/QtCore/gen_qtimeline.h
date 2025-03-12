#pragma once
#ifndef SEAQT_QTCORE_GEN_QTIMELINE_H
#define SEAQT_QTCORE_GEN_QTIMELINE_H

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
class QEasingCurve;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimeLine;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEasingCurve QEasingCurve;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimeLine QTimeLine;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQTimeLine VirtualQTimeLine;
typedef struct QTimeLine_VTable{
	void (*destructor)(VirtualQTimeLine* self);
	QMetaObject* (*metaObject)(const VirtualQTimeLine* self);
	void* (*metacast)(VirtualQTimeLine* self, const char* param1);
	int (*metacall)(VirtualQTimeLine* self, int param1, int param2, void** param3);
	double (*valueForTime)(const VirtualQTimeLine* self, int msec);
	void (*timerEvent)(VirtualQTimeLine* self, QTimerEvent* event);
	bool (*event)(VirtualQTimeLine* self, QEvent* event);
	bool (*eventFilter)(VirtualQTimeLine* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQTimeLine* self, QChildEvent* event);
	void (*customEvent)(VirtualQTimeLine* self, QEvent* event);
	void (*connectNotify)(VirtualQTimeLine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTimeLine* self, QMetaMethod* signal);
}QTimeLine_VTable;

const QTimeLine_VTable* QTimeLine_vtbl(const VirtualQTimeLine* self);
void* QTimeLine_vdata(const VirtualQTimeLine* self);
void QTimeLine_setVdata(VirtualQTimeLine* self, void* vdata);

VirtualQTimeLine* QTimeLine_new(const QTimeLine_VTable* vtbl, void* vdata);
VirtualQTimeLine* QTimeLine_new2(const QTimeLine_VTable* vtbl, void* vdata, int duration);
VirtualQTimeLine* QTimeLine_new3(const QTimeLine_VTable* vtbl, void* vdata, int duration, QObject* parent);

void QTimeLine_virtbase(QTimeLine* src, QObject** outptr_QObject);
QMetaObject* QTimeLine_metaObject(const QTimeLine* self);
void* QTimeLine_metacast(QTimeLine* self, const char* param1);
int QTimeLine_metacall(QTimeLine* self, int param1, int param2, void** param3);
struct miqt_string QTimeLine_tr(const char* s);
int QTimeLine_state(const QTimeLine* self);
int QTimeLine_loopCount(const QTimeLine* self);
void QTimeLine_setLoopCount(QTimeLine* self, int count);
int QTimeLine_direction(const QTimeLine* self);
void QTimeLine_setDirection(QTimeLine* self, int direction);
int QTimeLine_duration(const QTimeLine* self);
void QTimeLine_setDuration(QTimeLine* self, int duration);
int QTimeLine_startFrame(const QTimeLine* self);
void QTimeLine_setStartFrame(QTimeLine* self, int frame);
int QTimeLine_endFrame(const QTimeLine* self);
void QTimeLine_setEndFrame(QTimeLine* self, int frame);
void QTimeLine_setFrameRange(QTimeLine* self, int startFrame, int endFrame);
int QTimeLine_updateInterval(const QTimeLine* self);
void QTimeLine_setUpdateInterval(QTimeLine* self, int interval);
QEasingCurve* QTimeLine_easingCurve(const QTimeLine* self);
void QTimeLine_setEasingCurve(QTimeLine* self, QEasingCurve* curve);
int QTimeLine_currentTime(const QTimeLine* self);
int QTimeLine_currentFrame(const QTimeLine* self);
double QTimeLine_currentValue(const QTimeLine* self);
int QTimeLine_frameForTime(const QTimeLine* self, int msec);
double QTimeLine_valueForTime(const QTimeLine* self, int msec);
void QTimeLine_start(QTimeLine* self);
void QTimeLine_resume(QTimeLine* self);
void QTimeLine_stop(QTimeLine* self);
void QTimeLine_setPaused(QTimeLine* self, bool paused);
void QTimeLine_setCurrentTime(QTimeLine* self, int msec);
void QTimeLine_toggleDirection(QTimeLine* self);
void QTimeLine_timerEvent(QTimeLine* self, QTimerEvent* event);
struct miqt_string QTimeLine_tr2(const char* s, const char* c);
struct miqt_string QTimeLine_tr3(const char* s, const char* c, int n);

QMetaObject* QTimeLine_virtualbase_metaObject(const VirtualQTimeLine* self);
void* QTimeLine_virtualbase_metacast(VirtualQTimeLine* self, const char* param1);
int QTimeLine_virtualbase_metacall(VirtualQTimeLine* self, int param1, int param2, void** param3);
double QTimeLine_virtualbase_valueForTime(const VirtualQTimeLine* self, int msec);
void QTimeLine_virtualbase_timerEvent(VirtualQTimeLine* self, QTimerEvent* event);
bool QTimeLine_virtualbase_event(VirtualQTimeLine* self, QEvent* event);
bool QTimeLine_virtualbase_eventFilter(VirtualQTimeLine* self, QObject* watched, QEvent* event);
void QTimeLine_virtualbase_childEvent(VirtualQTimeLine* self, QChildEvent* event);
void QTimeLine_virtualbase_customEvent(VirtualQTimeLine* self, QEvent* event);
void QTimeLine_virtualbase_connectNotify(VirtualQTimeLine* self, QMetaMethod* signal);
void QTimeLine_virtualbase_disconnectNotify(VirtualQTimeLine* self, QMetaMethod* signal);

QObject* QTimeLine_protectedbase_sender(const VirtualQTimeLine* self);
int QTimeLine_protectedbase_senderSignalIndex(const VirtualQTimeLine* self);
int QTimeLine_protectedbase_receivers(const VirtualQTimeLine* self, const char* signal);
bool QTimeLine_protectedbase_isSignalConnected(const VirtualQTimeLine* self, QMetaMethod* signal);

const QMetaObject* QTimeLine_staticMetaObject();
void QTimeLine_delete(QTimeLine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
