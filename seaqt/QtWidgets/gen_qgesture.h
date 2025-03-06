#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGESTURE_H
#define SEAQT_QTWIDGETS_GEN_QGESTURE_H

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
class QGesture;
class QGestureEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPanGesture;
class QPinchGesture;
class QPointF;
class QSwipeGesture;
class QTapAndHoldGesture;
class QTapGesture;
class QTimerEvent;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGesture QGesture;
typedef struct QGestureEvent QGestureEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPanGesture QPanGesture;
typedef struct QPinchGesture QPinchGesture;
typedef struct QPointF QPointF;
typedef struct QSwipeGesture QSwipeGesture;
typedef struct QTapAndHoldGesture QTapAndHoldGesture;
typedef struct QTapGesture QTapGesture;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

struct QGesture_VTable {
	void (*destructor)(struct QGesture_VTable* vtbl, QGesture* self);
	QMetaObject* (*metaObject)(struct QGesture_VTable* vtbl, const QGesture* self);
	void* (*metacast)(struct QGesture_VTable* vtbl, QGesture* self, const char* param1);
	int (*metacall)(struct QGesture_VTable* vtbl, QGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QGesture_VTable* vtbl, QGesture* self, QEvent* event);
	bool (*eventFilter)(struct QGesture_VTable* vtbl, QGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGesture_VTable* vtbl, QGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QGesture_VTable* vtbl, QGesture* self, QChildEvent* event);
	void (*customEvent)(struct QGesture_VTable* vtbl, QGesture* self, QEvent* event);
	void (*connectNotify)(struct QGesture_VTable* vtbl, QGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGesture_VTable* vtbl, QGesture* self, QMetaMethod* signal);
};
QGesture* QGesture_new(struct QGesture_VTable* vtbl);
QGesture* QGesture_new2(struct QGesture_VTable* vtbl, QObject* parent);
void QGesture_virtbase(QGesture* src, QObject** outptr_QObject);
QMetaObject* QGesture_metaObject(const QGesture* self);
void* QGesture_metacast(QGesture* self, const char* param1);
int QGesture_metacall(QGesture* self, int param1, int param2, void** param3);
struct miqt_string QGesture_tr(const char* s);
struct miqt_string QGesture_trUtf8(const char* s);
int QGesture_gestureType(const QGesture* self);
int QGesture_state(const QGesture* self);
QPointF* QGesture_hotSpot(const QGesture* self);
void QGesture_setHotSpot(QGesture* self, QPointF* value);
bool QGesture_hasHotSpot(const QGesture* self);
void QGesture_unsetHotSpot(QGesture* self);
void QGesture_setGestureCancelPolicy(QGesture* self, int policy);
int QGesture_gestureCancelPolicy(const QGesture* self);
struct miqt_string QGesture_tr2(const char* s, const char* c);
struct miqt_string QGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QGesture_trUtf82(const char* s, const char* c);
struct miqt_string QGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QGesture_virtualbase_metaObject(const void* self);
void* QGesture_virtualbase_metacast(void* self, const char* param1);
int QGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QGesture_virtualbase_event(void* self, QEvent* event);
bool QGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QGesture_virtualbase_customEvent(void* self, QEvent* event);
void QGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QGesture_protectedbase_sender(const void* self);
int QGesture_protectedbase_senderSignalIndex(const void* self);
int QGesture_protectedbase_receivers(const void* self, const char* signal);
bool QGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGesture_staticMetaObject();
void QGesture_delete(QGesture* self);

struct QPanGesture_VTable {
	void (*destructor)(struct QPanGesture_VTable* vtbl, QPanGesture* self);
	QMetaObject* (*metaObject)(struct QPanGesture_VTable* vtbl, const QPanGesture* self);
	void* (*metacast)(struct QPanGesture_VTable* vtbl, QPanGesture* self, const char* param1);
	int (*metacall)(struct QPanGesture_VTable* vtbl, QPanGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QEvent* event);
	bool (*eventFilter)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QChildEvent* event);
	void (*customEvent)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QEvent* event);
	void (*connectNotify)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPanGesture_VTable* vtbl, QPanGesture* self, QMetaMethod* signal);
};
QPanGesture* QPanGesture_new(struct QPanGesture_VTable* vtbl);
QPanGesture* QPanGesture_new2(struct QPanGesture_VTable* vtbl, QObject* parent);
void QPanGesture_virtbase(QPanGesture* src, QGesture** outptr_QGesture);
QMetaObject* QPanGesture_metaObject(const QPanGesture* self);
void* QPanGesture_metacast(QPanGesture* self, const char* param1);
int QPanGesture_metacall(QPanGesture* self, int param1, int param2, void** param3);
struct miqt_string QPanGesture_tr(const char* s);
struct miqt_string QPanGesture_trUtf8(const char* s);
QPointF* QPanGesture_lastOffset(const QPanGesture* self);
QPointF* QPanGesture_offset(const QPanGesture* self);
QPointF* QPanGesture_delta(const QPanGesture* self);
double QPanGesture_acceleration(const QPanGesture* self);
void QPanGesture_setLastOffset(QPanGesture* self, QPointF* value);
void QPanGesture_setOffset(QPanGesture* self, QPointF* value);
void QPanGesture_setAcceleration(QPanGesture* self, double value);
struct miqt_string QPanGesture_tr2(const char* s, const char* c);
struct miqt_string QPanGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QPanGesture_trUtf82(const char* s, const char* c);
struct miqt_string QPanGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QPanGesture_virtualbase_metaObject(const void* self);
void* QPanGesture_virtualbase_metacast(void* self, const char* param1);
int QPanGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPanGesture_virtualbase_event(void* self, QEvent* event);
bool QPanGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPanGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPanGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QPanGesture_virtualbase_customEvent(void* self, QEvent* event);
void QPanGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPanGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPanGesture_protectedbase_sender(const void* self);
int QPanGesture_protectedbase_senderSignalIndex(const void* self);
int QPanGesture_protectedbase_receivers(const void* self, const char* signal);
bool QPanGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPanGesture_staticMetaObject();
void QPanGesture_delete(QPanGesture* self);

struct QPinchGesture_VTable {
	void (*destructor)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self);
	QMetaObject* (*metaObject)(struct QPinchGesture_VTable* vtbl, const QPinchGesture* self);
	void* (*metacast)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, const char* param1);
	int (*metacall)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QEvent* event);
	bool (*eventFilter)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QChildEvent* event);
	void (*customEvent)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QEvent* event);
	void (*connectNotify)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPinchGesture_VTable* vtbl, QPinchGesture* self, QMetaMethod* signal);
};
QPinchGesture* QPinchGesture_new(struct QPinchGesture_VTable* vtbl);
QPinchGesture* QPinchGesture_new2(struct QPinchGesture_VTable* vtbl, QObject* parent);
void QPinchGesture_virtbase(QPinchGesture* src, QGesture** outptr_QGesture);
QMetaObject* QPinchGesture_metaObject(const QPinchGesture* self);
void* QPinchGesture_metacast(QPinchGesture* self, const char* param1);
int QPinchGesture_metacall(QPinchGesture* self, int param1, int param2, void** param3);
struct miqt_string QPinchGesture_tr(const char* s);
struct miqt_string QPinchGesture_trUtf8(const char* s);
int QPinchGesture_totalChangeFlags(const QPinchGesture* self);
void QPinchGesture_setTotalChangeFlags(QPinchGesture* self, int value);
int QPinchGesture_changeFlags(const QPinchGesture* self);
void QPinchGesture_setChangeFlags(QPinchGesture* self, int value);
QPointF* QPinchGesture_startCenterPoint(const QPinchGesture* self);
QPointF* QPinchGesture_lastCenterPoint(const QPinchGesture* self);
QPointF* QPinchGesture_centerPoint(const QPinchGesture* self);
void QPinchGesture_setStartCenterPoint(QPinchGesture* self, QPointF* value);
void QPinchGesture_setLastCenterPoint(QPinchGesture* self, QPointF* value);
void QPinchGesture_setCenterPoint(QPinchGesture* self, QPointF* value);
double QPinchGesture_totalScaleFactor(const QPinchGesture* self);
double QPinchGesture_lastScaleFactor(const QPinchGesture* self);
double QPinchGesture_scaleFactor(const QPinchGesture* self);
void QPinchGesture_setTotalScaleFactor(QPinchGesture* self, double value);
void QPinchGesture_setLastScaleFactor(QPinchGesture* self, double value);
void QPinchGesture_setScaleFactor(QPinchGesture* self, double value);
double QPinchGesture_totalRotationAngle(const QPinchGesture* self);
double QPinchGesture_lastRotationAngle(const QPinchGesture* self);
double QPinchGesture_rotationAngle(const QPinchGesture* self);
void QPinchGesture_setTotalRotationAngle(QPinchGesture* self, double value);
void QPinchGesture_setLastRotationAngle(QPinchGesture* self, double value);
void QPinchGesture_setRotationAngle(QPinchGesture* self, double value);
struct miqt_string QPinchGesture_tr2(const char* s, const char* c);
struct miqt_string QPinchGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QPinchGesture_trUtf82(const char* s, const char* c);
struct miqt_string QPinchGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QPinchGesture_virtualbase_metaObject(const void* self);
void* QPinchGesture_virtualbase_metacast(void* self, const char* param1);
int QPinchGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPinchGesture_virtualbase_event(void* self, QEvent* event);
bool QPinchGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPinchGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPinchGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QPinchGesture_virtualbase_customEvent(void* self, QEvent* event);
void QPinchGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPinchGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPinchGesture_protectedbase_sender(const void* self);
int QPinchGesture_protectedbase_senderSignalIndex(const void* self);
int QPinchGesture_protectedbase_receivers(const void* self, const char* signal);
bool QPinchGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPinchGesture_staticMetaObject();
void QPinchGesture_delete(QPinchGesture* self);

struct QSwipeGesture_VTable {
	void (*destructor)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self);
	QMetaObject* (*metaObject)(struct QSwipeGesture_VTable* vtbl, const QSwipeGesture* self);
	void* (*metacast)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, const char* param1);
	int (*metacall)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QEvent* event);
	bool (*eventFilter)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QChildEvent* event);
	void (*customEvent)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QEvent* event);
	void (*connectNotify)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSwipeGesture_VTable* vtbl, QSwipeGesture* self, QMetaMethod* signal);
};
QSwipeGesture* QSwipeGesture_new(struct QSwipeGesture_VTable* vtbl);
QSwipeGesture* QSwipeGesture_new2(struct QSwipeGesture_VTable* vtbl, QObject* parent);
void QSwipeGesture_virtbase(QSwipeGesture* src, QGesture** outptr_QGesture);
QMetaObject* QSwipeGesture_metaObject(const QSwipeGesture* self);
void* QSwipeGesture_metacast(QSwipeGesture* self, const char* param1);
int QSwipeGesture_metacall(QSwipeGesture* self, int param1, int param2, void** param3);
struct miqt_string QSwipeGesture_tr(const char* s);
struct miqt_string QSwipeGesture_trUtf8(const char* s);
int QSwipeGesture_horizontalDirection(const QSwipeGesture* self);
int QSwipeGesture_verticalDirection(const QSwipeGesture* self);
double QSwipeGesture_swipeAngle(const QSwipeGesture* self);
void QSwipeGesture_setSwipeAngle(QSwipeGesture* self, double value);
struct miqt_string QSwipeGesture_tr2(const char* s, const char* c);
struct miqt_string QSwipeGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QSwipeGesture_trUtf82(const char* s, const char* c);
struct miqt_string QSwipeGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSwipeGesture_virtualbase_metaObject(const void* self);
void* QSwipeGesture_virtualbase_metacast(void* self, const char* param1);
int QSwipeGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSwipeGesture_virtualbase_event(void* self, QEvent* event);
bool QSwipeGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSwipeGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSwipeGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QSwipeGesture_virtualbase_customEvent(void* self, QEvent* event);
void QSwipeGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSwipeGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSwipeGesture_protectedbase_sender(const void* self);
int QSwipeGesture_protectedbase_senderSignalIndex(const void* self);
int QSwipeGesture_protectedbase_receivers(const void* self, const char* signal);
bool QSwipeGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSwipeGesture_staticMetaObject();
void QSwipeGesture_delete(QSwipeGesture* self);

struct QTapGesture_VTable {
	void (*destructor)(struct QTapGesture_VTable* vtbl, QTapGesture* self);
	QMetaObject* (*metaObject)(struct QTapGesture_VTable* vtbl, const QTapGesture* self);
	void* (*metacast)(struct QTapGesture_VTable* vtbl, QTapGesture* self, const char* param1);
	int (*metacall)(struct QTapGesture_VTable* vtbl, QTapGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QEvent* event);
	bool (*eventFilter)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QChildEvent* event);
	void (*customEvent)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QEvent* event);
	void (*connectNotify)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTapGesture_VTable* vtbl, QTapGesture* self, QMetaMethod* signal);
};
QTapGesture* QTapGesture_new(struct QTapGesture_VTable* vtbl);
QTapGesture* QTapGesture_new2(struct QTapGesture_VTable* vtbl, QObject* parent);
void QTapGesture_virtbase(QTapGesture* src, QGesture** outptr_QGesture);
QMetaObject* QTapGesture_metaObject(const QTapGesture* self);
void* QTapGesture_metacast(QTapGesture* self, const char* param1);
int QTapGesture_metacall(QTapGesture* self, int param1, int param2, void** param3);
struct miqt_string QTapGesture_tr(const char* s);
struct miqt_string QTapGesture_trUtf8(const char* s);
QPointF* QTapGesture_position(const QTapGesture* self);
void QTapGesture_setPosition(QTapGesture* self, QPointF* pos);
struct miqt_string QTapGesture_tr2(const char* s, const char* c);
struct miqt_string QTapGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QTapGesture_trUtf82(const char* s, const char* c);
struct miqt_string QTapGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QTapGesture_virtualbase_metaObject(const void* self);
void* QTapGesture_virtualbase_metacast(void* self, const char* param1);
int QTapGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTapGesture_virtualbase_event(void* self, QEvent* event);
bool QTapGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTapGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTapGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QTapGesture_virtualbase_customEvent(void* self, QEvent* event);
void QTapGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTapGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QTapGesture_protectedbase_sender(const void* self);
int QTapGesture_protectedbase_senderSignalIndex(const void* self);
int QTapGesture_protectedbase_receivers(const void* self, const char* signal);
bool QTapGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTapGesture_staticMetaObject();
void QTapGesture_delete(QTapGesture* self);

struct QTapAndHoldGesture_VTable {
	void (*destructor)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self);
	QMetaObject* (*metaObject)(struct QTapAndHoldGesture_VTable* vtbl, const QTapAndHoldGesture* self);
	void* (*metacast)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, const char* param1);
	int (*metacall)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, int param1, int param2, void** param3);
	bool (*event)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QEvent* event);
	bool (*eventFilter)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QTimerEvent* event);
	void (*childEvent)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QChildEvent* event);
	void (*customEvent)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QEvent* event);
	void (*connectNotify)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTapAndHoldGesture_VTable* vtbl, QTapAndHoldGesture* self, QMetaMethod* signal);
};
QTapAndHoldGesture* QTapAndHoldGesture_new(struct QTapAndHoldGesture_VTable* vtbl);
QTapAndHoldGesture* QTapAndHoldGesture_new2(struct QTapAndHoldGesture_VTable* vtbl, QObject* parent);
void QTapAndHoldGesture_virtbase(QTapAndHoldGesture* src, QGesture** outptr_QGesture);
QMetaObject* QTapAndHoldGesture_metaObject(const QTapAndHoldGesture* self);
void* QTapAndHoldGesture_metacast(QTapAndHoldGesture* self, const char* param1);
int QTapAndHoldGesture_metacall(QTapAndHoldGesture* self, int param1, int param2, void** param3);
struct miqt_string QTapAndHoldGesture_tr(const char* s);
struct miqt_string QTapAndHoldGesture_trUtf8(const char* s);
QPointF* QTapAndHoldGesture_position(const QTapAndHoldGesture* self);
void QTapAndHoldGesture_setPosition(QTapAndHoldGesture* self, QPointF* pos);
void QTapAndHoldGesture_setTimeout(int msecs);
int QTapAndHoldGesture_timeout();
struct miqt_string QTapAndHoldGesture_tr2(const char* s, const char* c);
struct miqt_string QTapAndHoldGesture_tr3(const char* s, const char* c, int n);
struct miqt_string QTapAndHoldGesture_trUtf82(const char* s, const char* c);
struct miqt_string QTapAndHoldGesture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const void* self);
void* QTapAndHoldGesture_virtualbase_metacast(void* self, const char* param1);
int QTapAndHoldGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTapAndHoldGesture_virtualbase_event(void* self, QEvent* event);
bool QTapAndHoldGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTapAndHoldGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTapAndHoldGesture_virtualbase_childEvent(void* self, QChildEvent* event);
void QTapAndHoldGesture_virtualbase_customEvent(void* self, QEvent* event);
void QTapAndHoldGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTapAndHoldGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QTapAndHoldGesture_protectedbase_sender(const void* self);
int QTapAndHoldGesture_protectedbase_senderSignalIndex(const void* self);
int QTapAndHoldGesture_protectedbase_receivers(const void* self, const char* signal);
bool QTapAndHoldGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTapAndHoldGesture_staticMetaObject();
void QTapAndHoldGesture_delete(QTapAndHoldGesture* self);

QGestureEvent* QGestureEvent_new(struct miqt_array /* of QGesture* */  gestures);
QGestureEvent* QGestureEvent_new2(QGestureEvent* param1);
void QGestureEvent_virtbase(QGestureEvent* src, QEvent** outptr_QEvent);
struct miqt_array /* of QGesture* */  QGestureEvent_gestures(const QGestureEvent* self);
QGesture* QGestureEvent_gesture(const QGestureEvent* self, int type);
struct miqt_array /* of QGesture* */  QGestureEvent_activeGestures(const QGestureEvent* self);
struct miqt_array /* of QGesture* */  QGestureEvent_canceledGestures(const QGestureEvent* self);
void QGestureEvent_setAccepted(QGestureEvent* self, QGesture* param1, bool param2);
void QGestureEvent_accept(QGestureEvent* self, QGesture* param1);
void QGestureEvent_ignore(QGestureEvent* self, QGesture* param1);
bool QGestureEvent_isAccepted(const QGestureEvent* self, QGesture* param1);
void QGestureEvent_setAccepted2(QGestureEvent* self, int param1, bool param2);
void QGestureEvent_acceptWithQtGestureType(QGestureEvent* self, int param1);
void QGestureEvent_ignoreWithQtGestureType(QGestureEvent* self, int param1);
bool QGestureEvent_isAcceptedWithQtGestureType(const QGestureEvent* self, int param1);
void QGestureEvent_setWidget(QGestureEvent* self, QWidget* widget);
QWidget* QGestureEvent_widget(const QGestureEvent* self);
QPointF* QGestureEvent_mapToGraphicsScene(const QGestureEvent* self, QPointF* gesturePoint);
void QGestureEvent_delete(QGestureEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
