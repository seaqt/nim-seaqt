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

typedef struct VirtualQGesture VirtualQGesture;
typedef struct QGesture_VTable{
	void (*destructor)(VirtualQGesture* self);
	QMetaObject* (*metaObject)(const VirtualQGesture* self);
	void* (*metacast)(VirtualQGesture* self, const char* param1);
	int (*metacall)(VirtualQGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGesture* self, QMetaMethod* signal);
}QGesture_VTable;

const QGesture_VTable* QGesture_vtbl(const VirtualQGesture* self);
void* QGesture_vdata(const VirtualQGesture* self);
void QGesture_setVdata(VirtualQGesture* self, void* vdata);

VirtualQGesture* QGesture_new(const QGesture_VTable* vtbl, void* vdata);
VirtualQGesture* QGesture_new2(const QGesture_VTable* vtbl, void* vdata, QObject* parent);

void QGesture_virtbase(QGesture* src, QObject** outptr_QObject);
QMetaObject* QGesture_metaObject(const QGesture* self);
void* QGesture_metacast(QGesture* self, const char* param1);
int QGesture_metacall(QGesture* self, int param1, int param2, void** param3);
struct miqt_string QGesture_tr(const char* s);
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

QMetaObject* QGesture_virtualbase_metaObject(const VirtualQGesture* self);
void* QGesture_virtualbase_metacast(VirtualQGesture* self, const char* param1);
int QGesture_virtualbase_metacall(VirtualQGesture* self, int param1, int param2, void** param3);
bool QGesture_virtualbase_event(VirtualQGesture* self, QEvent* event);
bool QGesture_virtualbase_eventFilter(VirtualQGesture* self, QObject* watched, QEvent* event);
void QGesture_virtualbase_timerEvent(VirtualQGesture* self, QTimerEvent* event);
void QGesture_virtualbase_childEvent(VirtualQGesture* self, QChildEvent* event);
void QGesture_virtualbase_customEvent(VirtualQGesture* self, QEvent* event);
void QGesture_virtualbase_connectNotify(VirtualQGesture* self, QMetaMethod* signal);
void QGesture_virtualbase_disconnectNotify(VirtualQGesture* self, QMetaMethod* signal);

QObject* QGesture_protectedbase_sender(const VirtualQGesture* self);
int QGesture_protectedbase_senderSignalIndex(const VirtualQGesture* self);
int QGesture_protectedbase_receivers(const VirtualQGesture* self, const char* signal);
bool QGesture_protectedbase_isSignalConnected(const VirtualQGesture* self, QMetaMethod* signal);

const QMetaObject* QGesture_staticMetaObject();
void QGesture_delete(QGesture* self);

typedef struct VirtualQPanGesture VirtualQPanGesture;
typedef struct QPanGesture_VTable{
	void (*destructor)(VirtualQPanGesture* self);
	QMetaObject* (*metaObject)(const VirtualQPanGesture* self);
	void* (*metacast)(VirtualQPanGesture* self, const char* param1);
	int (*metacall)(VirtualQPanGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPanGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQPanGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPanGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPanGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQPanGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQPanGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPanGesture* self, QMetaMethod* signal);
}QPanGesture_VTable;

const QPanGesture_VTable* QPanGesture_vtbl(const VirtualQPanGesture* self);
void* QPanGesture_vdata(const VirtualQPanGesture* self);
void QPanGesture_setVdata(VirtualQPanGesture* self, void* vdata);

VirtualQPanGesture* QPanGesture_new(const QPanGesture_VTable* vtbl, void* vdata);
VirtualQPanGesture* QPanGesture_new2(const QPanGesture_VTable* vtbl, void* vdata, QObject* parent);

void QPanGesture_virtbase(QPanGesture* src, QGesture** outptr_QGesture);
QMetaObject* QPanGesture_metaObject(const QPanGesture* self);
void* QPanGesture_metacast(QPanGesture* self, const char* param1);
int QPanGesture_metacall(QPanGesture* self, int param1, int param2, void** param3);
struct miqt_string QPanGesture_tr(const char* s);
QPointF* QPanGesture_lastOffset(const QPanGesture* self);
QPointF* QPanGesture_offset(const QPanGesture* self);
QPointF* QPanGesture_delta(const QPanGesture* self);
double QPanGesture_acceleration(const QPanGesture* self);
void QPanGesture_setLastOffset(QPanGesture* self, QPointF* value);
void QPanGesture_setOffset(QPanGesture* self, QPointF* value);
void QPanGesture_setAcceleration(QPanGesture* self, double value);
struct miqt_string QPanGesture_tr2(const char* s, const char* c);
struct miqt_string QPanGesture_tr3(const char* s, const char* c, int n);

QMetaObject* QPanGesture_virtualbase_metaObject(const VirtualQPanGesture* self);
void* QPanGesture_virtualbase_metacast(VirtualQPanGesture* self, const char* param1);
int QPanGesture_virtualbase_metacall(VirtualQPanGesture* self, int param1, int param2, void** param3);
bool QPanGesture_virtualbase_event(VirtualQPanGesture* self, QEvent* event);
bool QPanGesture_virtualbase_eventFilter(VirtualQPanGesture* self, QObject* watched, QEvent* event);
void QPanGesture_virtualbase_timerEvent(VirtualQPanGesture* self, QTimerEvent* event);
void QPanGesture_virtualbase_childEvent(VirtualQPanGesture* self, QChildEvent* event);
void QPanGesture_virtualbase_customEvent(VirtualQPanGesture* self, QEvent* event);
void QPanGesture_virtualbase_connectNotify(VirtualQPanGesture* self, QMetaMethod* signal);
void QPanGesture_virtualbase_disconnectNotify(VirtualQPanGesture* self, QMetaMethod* signal);

QObject* QPanGesture_protectedbase_sender(const VirtualQPanGesture* self);
int QPanGesture_protectedbase_senderSignalIndex(const VirtualQPanGesture* self);
int QPanGesture_protectedbase_receivers(const VirtualQPanGesture* self, const char* signal);
bool QPanGesture_protectedbase_isSignalConnected(const VirtualQPanGesture* self, QMetaMethod* signal);

const QMetaObject* QPanGesture_staticMetaObject();
void QPanGesture_delete(QPanGesture* self);

typedef struct VirtualQPinchGesture VirtualQPinchGesture;
typedef struct QPinchGesture_VTable{
	void (*destructor)(VirtualQPinchGesture* self);
	QMetaObject* (*metaObject)(const VirtualQPinchGesture* self);
	void* (*metacast)(VirtualQPinchGesture* self, const char* param1);
	int (*metacall)(VirtualQPinchGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPinchGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQPinchGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPinchGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPinchGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQPinchGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQPinchGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPinchGesture* self, QMetaMethod* signal);
}QPinchGesture_VTable;

const QPinchGesture_VTable* QPinchGesture_vtbl(const VirtualQPinchGesture* self);
void* QPinchGesture_vdata(const VirtualQPinchGesture* self);
void QPinchGesture_setVdata(VirtualQPinchGesture* self, void* vdata);

VirtualQPinchGesture* QPinchGesture_new(const QPinchGesture_VTable* vtbl, void* vdata);
VirtualQPinchGesture* QPinchGesture_new2(const QPinchGesture_VTable* vtbl, void* vdata, QObject* parent);

void QPinchGesture_virtbase(QPinchGesture* src, QGesture** outptr_QGesture);
QMetaObject* QPinchGesture_metaObject(const QPinchGesture* self);
void* QPinchGesture_metacast(QPinchGesture* self, const char* param1);
int QPinchGesture_metacall(QPinchGesture* self, int param1, int param2, void** param3);
struct miqt_string QPinchGesture_tr(const char* s);
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

QMetaObject* QPinchGesture_virtualbase_metaObject(const VirtualQPinchGesture* self);
void* QPinchGesture_virtualbase_metacast(VirtualQPinchGesture* self, const char* param1);
int QPinchGesture_virtualbase_metacall(VirtualQPinchGesture* self, int param1, int param2, void** param3);
bool QPinchGesture_virtualbase_event(VirtualQPinchGesture* self, QEvent* event);
bool QPinchGesture_virtualbase_eventFilter(VirtualQPinchGesture* self, QObject* watched, QEvent* event);
void QPinchGesture_virtualbase_timerEvent(VirtualQPinchGesture* self, QTimerEvent* event);
void QPinchGesture_virtualbase_childEvent(VirtualQPinchGesture* self, QChildEvent* event);
void QPinchGesture_virtualbase_customEvent(VirtualQPinchGesture* self, QEvent* event);
void QPinchGesture_virtualbase_connectNotify(VirtualQPinchGesture* self, QMetaMethod* signal);
void QPinchGesture_virtualbase_disconnectNotify(VirtualQPinchGesture* self, QMetaMethod* signal);

QObject* QPinchGesture_protectedbase_sender(const VirtualQPinchGesture* self);
int QPinchGesture_protectedbase_senderSignalIndex(const VirtualQPinchGesture* self);
int QPinchGesture_protectedbase_receivers(const VirtualQPinchGesture* self, const char* signal);
bool QPinchGesture_protectedbase_isSignalConnected(const VirtualQPinchGesture* self, QMetaMethod* signal);

const QMetaObject* QPinchGesture_staticMetaObject();
void QPinchGesture_delete(QPinchGesture* self);

typedef struct VirtualQSwipeGesture VirtualQSwipeGesture;
typedef struct QSwipeGesture_VTable{
	void (*destructor)(VirtualQSwipeGesture* self);
	QMetaObject* (*metaObject)(const VirtualQSwipeGesture* self);
	void* (*metacast)(VirtualQSwipeGesture* self, const char* param1);
	int (*metacall)(VirtualQSwipeGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSwipeGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQSwipeGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSwipeGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSwipeGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQSwipeGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQSwipeGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSwipeGesture* self, QMetaMethod* signal);
}QSwipeGesture_VTable;

const QSwipeGesture_VTable* QSwipeGesture_vtbl(const VirtualQSwipeGesture* self);
void* QSwipeGesture_vdata(const VirtualQSwipeGesture* self);
void QSwipeGesture_setVdata(VirtualQSwipeGesture* self, void* vdata);

VirtualQSwipeGesture* QSwipeGesture_new(const QSwipeGesture_VTable* vtbl, void* vdata);
VirtualQSwipeGesture* QSwipeGesture_new2(const QSwipeGesture_VTable* vtbl, void* vdata, QObject* parent);

void QSwipeGesture_virtbase(QSwipeGesture* src, QGesture** outptr_QGesture);
QMetaObject* QSwipeGesture_metaObject(const QSwipeGesture* self);
void* QSwipeGesture_metacast(QSwipeGesture* self, const char* param1);
int QSwipeGesture_metacall(QSwipeGesture* self, int param1, int param2, void** param3);
struct miqt_string QSwipeGesture_tr(const char* s);
int QSwipeGesture_horizontalDirection(const QSwipeGesture* self);
int QSwipeGesture_verticalDirection(const QSwipeGesture* self);
double QSwipeGesture_swipeAngle(const QSwipeGesture* self);
void QSwipeGesture_setSwipeAngle(QSwipeGesture* self, double value);
struct miqt_string QSwipeGesture_tr2(const char* s, const char* c);
struct miqt_string QSwipeGesture_tr3(const char* s, const char* c, int n);

QMetaObject* QSwipeGesture_virtualbase_metaObject(const VirtualQSwipeGesture* self);
void* QSwipeGesture_virtualbase_metacast(VirtualQSwipeGesture* self, const char* param1);
int QSwipeGesture_virtualbase_metacall(VirtualQSwipeGesture* self, int param1, int param2, void** param3);
bool QSwipeGesture_virtualbase_event(VirtualQSwipeGesture* self, QEvent* event);
bool QSwipeGesture_virtualbase_eventFilter(VirtualQSwipeGesture* self, QObject* watched, QEvent* event);
void QSwipeGesture_virtualbase_timerEvent(VirtualQSwipeGesture* self, QTimerEvent* event);
void QSwipeGesture_virtualbase_childEvent(VirtualQSwipeGesture* self, QChildEvent* event);
void QSwipeGesture_virtualbase_customEvent(VirtualQSwipeGesture* self, QEvent* event);
void QSwipeGesture_virtualbase_connectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal);
void QSwipeGesture_virtualbase_disconnectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal);

QObject* QSwipeGesture_protectedbase_sender(const VirtualQSwipeGesture* self);
int QSwipeGesture_protectedbase_senderSignalIndex(const VirtualQSwipeGesture* self);
int QSwipeGesture_protectedbase_receivers(const VirtualQSwipeGesture* self, const char* signal);
bool QSwipeGesture_protectedbase_isSignalConnected(const VirtualQSwipeGesture* self, QMetaMethod* signal);

const QMetaObject* QSwipeGesture_staticMetaObject();
void QSwipeGesture_delete(QSwipeGesture* self);

typedef struct VirtualQTapGesture VirtualQTapGesture;
typedef struct QTapGesture_VTable{
	void (*destructor)(VirtualQTapGesture* self);
	QMetaObject* (*metaObject)(const VirtualQTapGesture* self);
	void* (*metacast)(VirtualQTapGesture* self, const char* param1);
	int (*metacall)(VirtualQTapGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQTapGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQTapGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTapGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTapGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQTapGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQTapGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTapGesture* self, QMetaMethod* signal);
}QTapGesture_VTable;

const QTapGesture_VTable* QTapGesture_vtbl(const VirtualQTapGesture* self);
void* QTapGesture_vdata(const VirtualQTapGesture* self);
void QTapGesture_setVdata(VirtualQTapGesture* self, void* vdata);

VirtualQTapGesture* QTapGesture_new(const QTapGesture_VTable* vtbl, void* vdata);
VirtualQTapGesture* QTapGesture_new2(const QTapGesture_VTable* vtbl, void* vdata, QObject* parent);

void QTapGesture_virtbase(QTapGesture* src, QGesture** outptr_QGesture);
QMetaObject* QTapGesture_metaObject(const QTapGesture* self);
void* QTapGesture_metacast(QTapGesture* self, const char* param1);
int QTapGesture_metacall(QTapGesture* self, int param1, int param2, void** param3);
struct miqt_string QTapGesture_tr(const char* s);
QPointF* QTapGesture_position(const QTapGesture* self);
void QTapGesture_setPosition(QTapGesture* self, QPointF* pos);
struct miqt_string QTapGesture_tr2(const char* s, const char* c);
struct miqt_string QTapGesture_tr3(const char* s, const char* c, int n);

QMetaObject* QTapGesture_virtualbase_metaObject(const VirtualQTapGesture* self);
void* QTapGesture_virtualbase_metacast(VirtualQTapGesture* self, const char* param1);
int QTapGesture_virtualbase_metacall(VirtualQTapGesture* self, int param1, int param2, void** param3);
bool QTapGesture_virtualbase_event(VirtualQTapGesture* self, QEvent* event);
bool QTapGesture_virtualbase_eventFilter(VirtualQTapGesture* self, QObject* watched, QEvent* event);
void QTapGesture_virtualbase_timerEvent(VirtualQTapGesture* self, QTimerEvent* event);
void QTapGesture_virtualbase_childEvent(VirtualQTapGesture* self, QChildEvent* event);
void QTapGesture_virtualbase_customEvent(VirtualQTapGesture* self, QEvent* event);
void QTapGesture_virtualbase_connectNotify(VirtualQTapGesture* self, QMetaMethod* signal);
void QTapGesture_virtualbase_disconnectNotify(VirtualQTapGesture* self, QMetaMethod* signal);

QObject* QTapGesture_protectedbase_sender(const VirtualQTapGesture* self);
int QTapGesture_protectedbase_senderSignalIndex(const VirtualQTapGesture* self);
int QTapGesture_protectedbase_receivers(const VirtualQTapGesture* self, const char* signal);
bool QTapGesture_protectedbase_isSignalConnected(const VirtualQTapGesture* self, QMetaMethod* signal);

const QMetaObject* QTapGesture_staticMetaObject();
void QTapGesture_delete(QTapGesture* self);

typedef struct VirtualQTapAndHoldGesture VirtualQTapAndHoldGesture;
typedef struct QTapAndHoldGesture_VTable{
	void (*destructor)(VirtualQTapAndHoldGesture* self);
	QMetaObject* (*metaObject)(const VirtualQTapAndHoldGesture* self);
	void* (*metacast)(VirtualQTapAndHoldGesture* self, const char* param1);
	int (*metacall)(VirtualQTapAndHoldGesture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQTapAndHoldGesture* self, QEvent* event);
	bool (*eventFilter)(VirtualQTapAndHoldGesture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTapAndHoldGesture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTapAndHoldGesture* self, QChildEvent* event);
	void (*customEvent)(VirtualQTapAndHoldGesture* self, QEvent* event);
	void (*connectNotify)(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);
}QTapAndHoldGesture_VTable;

const QTapAndHoldGesture_VTable* QTapAndHoldGesture_vtbl(const VirtualQTapAndHoldGesture* self);
void* QTapAndHoldGesture_vdata(const VirtualQTapAndHoldGesture* self);
void QTapAndHoldGesture_setVdata(VirtualQTapAndHoldGesture* self, void* vdata);

VirtualQTapAndHoldGesture* QTapAndHoldGesture_new(const QTapAndHoldGesture_VTable* vtbl, void* vdata);
VirtualQTapAndHoldGesture* QTapAndHoldGesture_new2(const QTapAndHoldGesture_VTable* vtbl, void* vdata, QObject* parent);

void QTapAndHoldGesture_virtbase(QTapAndHoldGesture* src, QGesture** outptr_QGesture);
QMetaObject* QTapAndHoldGesture_metaObject(const QTapAndHoldGesture* self);
void* QTapAndHoldGesture_metacast(QTapAndHoldGesture* self, const char* param1);
int QTapAndHoldGesture_metacall(QTapAndHoldGesture* self, int param1, int param2, void** param3);
struct miqt_string QTapAndHoldGesture_tr(const char* s);
QPointF* QTapAndHoldGesture_position(const QTapAndHoldGesture* self);
void QTapAndHoldGesture_setPosition(QTapAndHoldGesture* self, QPointF* pos);
void QTapAndHoldGesture_setTimeout(int msecs);
int QTapAndHoldGesture_timeout();
struct miqt_string QTapAndHoldGesture_tr2(const char* s, const char* c);
struct miqt_string QTapAndHoldGesture_tr3(const char* s, const char* c, int n);

QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const VirtualQTapAndHoldGesture* self);
void* QTapAndHoldGesture_virtualbase_metacast(VirtualQTapAndHoldGesture* self, const char* param1);
int QTapAndHoldGesture_virtualbase_metacall(VirtualQTapAndHoldGesture* self, int param1, int param2, void** param3);
bool QTapAndHoldGesture_virtualbase_event(VirtualQTapAndHoldGesture* self, QEvent* event);
bool QTapAndHoldGesture_virtualbase_eventFilter(VirtualQTapAndHoldGesture* self, QObject* watched, QEvent* event);
void QTapAndHoldGesture_virtualbase_timerEvent(VirtualQTapAndHoldGesture* self, QTimerEvent* event);
void QTapAndHoldGesture_virtualbase_childEvent(VirtualQTapAndHoldGesture* self, QChildEvent* event);
void QTapAndHoldGesture_virtualbase_customEvent(VirtualQTapAndHoldGesture* self, QEvent* event);
void QTapAndHoldGesture_virtualbase_connectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);
void QTapAndHoldGesture_virtualbase_disconnectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);

QObject* QTapAndHoldGesture_protectedbase_sender(const VirtualQTapAndHoldGesture* self);
int QTapAndHoldGesture_protectedbase_senderSignalIndex(const VirtualQTapAndHoldGesture* self);
int QTapAndHoldGesture_protectedbase_receivers(const VirtualQTapAndHoldGesture* self, const char* signal);
bool QTapAndHoldGesture_protectedbase_isSignalConnected(const VirtualQTapAndHoldGesture* self, QMetaMethod* signal);

const QMetaObject* QTapAndHoldGesture_staticMetaObject();
void QTapAndHoldGesture_delete(QTapAndHoldGesture* self);

typedef struct VirtualQGestureEvent VirtualQGestureEvent;
typedef struct QGestureEvent_VTable{
	void (*destructor)(VirtualQGestureEvent* self);
	void (*setAccepted)(VirtualQGestureEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGestureEvent* self);
}QGestureEvent_VTable;

const QGestureEvent_VTable* QGestureEvent_vtbl(const VirtualQGestureEvent* self);
void* QGestureEvent_vdata(const VirtualQGestureEvent* self);
void QGestureEvent_setVdata(VirtualQGestureEvent* self, void* vdata);

VirtualQGestureEvent* QGestureEvent_new(const QGestureEvent_VTable* vtbl, void* vdata, struct miqt_array /* of QGesture* */  gestures);
VirtualQGestureEvent* QGestureEvent_new2(const QGestureEvent_VTable* vtbl, void* vdata, QGestureEvent* param1);

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

void QGestureEvent_virtualbase_setAccepted(VirtualQGestureEvent* self, bool accepted);
QEvent* QGestureEvent_virtualbase_clone(const VirtualQGestureEvent* self);

void QGestureEvent_delete(QGestureEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
