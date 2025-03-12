#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSTRANSFORM_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSTRANSFORM_H

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
class QGraphicsRotation;
class QGraphicsScale;
class QGraphicsTransform;
class QMatrix4x4;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVector3D;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGraphicsRotation QGraphicsRotation;
typedef struct QGraphicsScale QGraphicsScale;
typedef struct QGraphicsTransform QGraphicsTransform;
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVector3D QVector3D;
#endif

typedef struct VirtualQGraphicsTransform VirtualQGraphicsTransform;
typedef struct QGraphicsTransform_VTable{
	void (*destructor)(VirtualQGraphicsTransform* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsTransform* self);
	void* (*metacast)(VirtualQGraphicsTransform* self, const char* param1);
	int (*metacall)(VirtualQGraphicsTransform* self, int param1, int param2, void** param3);
	void (*applyTo)(const VirtualQGraphicsTransform* self, QMatrix4x4* matrix);
	bool (*event)(VirtualQGraphicsTransform* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsTransform* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsTransform* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsTransform* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsTransform* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsTransform* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsTransform* self, QMetaMethod* signal);
}QGraphicsTransform_VTable;

const QGraphicsTransform_VTable* QGraphicsTransform_vtbl(const VirtualQGraphicsTransform* self);
void* QGraphicsTransform_vdata(const VirtualQGraphicsTransform* self);
void QGraphicsTransform_setVdata(VirtualQGraphicsTransform* self, void* vdata);

VirtualQGraphicsTransform* QGraphicsTransform_new(const QGraphicsTransform_VTable* vtbl, void* vdata);
VirtualQGraphicsTransform* QGraphicsTransform_new2(const QGraphicsTransform_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsTransform_virtbase(QGraphicsTransform* src, QObject** outptr_QObject);
QMetaObject* QGraphicsTransform_metaObject(const QGraphicsTransform* self);
void* QGraphicsTransform_metacast(QGraphicsTransform* self, const char* param1);
int QGraphicsTransform_metacall(QGraphicsTransform* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsTransform_tr(const char* s);
struct miqt_string QGraphicsTransform_trUtf8(const char* s);
void QGraphicsTransform_applyTo(const QGraphicsTransform* self, QMatrix4x4* matrix);
struct miqt_string QGraphicsTransform_tr2(const char* s, const char* c);
struct miqt_string QGraphicsTransform_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsTransform_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsTransform_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGraphicsTransform_virtualbase_metaObject(const VirtualQGraphicsTransform* self);
void* QGraphicsTransform_virtualbase_metacast(VirtualQGraphicsTransform* self, const char* param1);
int QGraphicsTransform_virtualbase_metacall(VirtualQGraphicsTransform* self, int param1, int param2, void** param3);
void QGraphicsTransform_virtualbase_applyTo(const VirtualQGraphicsTransform* self, QMatrix4x4* matrix);
bool QGraphicsTransform_virtualbase_event(VirtualQGraphicsTransform* self, QEvent* event);
bool QGraphicsTransform_virtualbase_eventFilter(VirtualQGraphicsTransform* self, QObject* watched, QEvent* event);
void QGraphicsTransform_virtualbase_timerEvent(VirtualQGraphicsTransform* self, QTimerEvent* event);
void QGraphicsTransform_virtualbase_childEvent(VirtualQGraphicsTransform* self, QChildEvent* event);
void QGraphicsTransform_virtualbase_customEvent(VirtualQGraphicsTransform* self, QEvent* event);
void QGraphicsTransform_virtualbase_connectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal);
void QGraphicsTransform_virtualbase_disconnectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal);

void QGraphicsTransform_protectedbase_update(VirtualQGraphicsTransform* self);
QObject* QGraphicsTransform_protectedbase_sender(const VirtualQGraphicsTransform* self);
int QGraphicsTransform_protectedbase_senderSignalIndex(const VirtualQGraphicsTransform* self);
int QGraphicsTransform_protectedbase_receivers(const VirtualQGraphicsTransform* self, const char* signal);
bool QGraphicsTransform_protectedbase_isSignalConnected(const VirtualQGraphicsTransform* self, QMetaMethod* signal);

const QMetaObject* QGraphicsTransform_staticMetaObject();
void QGraphicsTransform_delete(QGraphicsTransform* self);

typedef struct VirtualQGraphicsScale VirtualQGraphicsScale;
typedef struct QGraphicsScale_VTable{
	void (*destructor)(VirtualQGraphicsScale* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsScale* self);
	void* (*metacast)(VirtualQGraphicsScale* self, const char* param1);
	int (*metacall)(VirtualQGraphicsScale* self, int param1, int param2, void** param3);
	void (*applyTo)(const VirtualQGraphicsScale* self, QMatrix4x4* matrix);
	bool (*event)(VirtualQGraphicsScale* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsScale* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsScale* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsScale* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsScale* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsScale* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsScale* self, QMetaMethod* signal);
}QGraphicsScale_VTable;

const QGraphicsScale_VTable* QGraphicsScale_vtbl(const VirtualQGraphicsScale* self);
void* QGraphicsScale_vdata(const VirtualQGraphicsScale* self);
void QGraphicsScale_setVdata(VirtualQGraphicsScale* self, void* vdata);

VirtualQGraphicsScale* QGraphicsScale_new(const QGraphicsScale_VTable* vtbl, void* vdata);
VirtualQGraphicsScale* QGraphicsScale_new2(const QGraphicsScale_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsScale_virtbase(QGraphicsScale* src, QGraphicsTransform** outptr_QGraphicsTransform);
QMetaObject* QGraphicsScale_metaObject(const QGraphicsScale* self);
void* QGraphicsScale_metacast(QGraphicsScale* self, const char* param1);
int QGraphicsScale_metacall(QGraphicsScale* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsScale_tr(const char* s);
struct miqt_string QGraphicsScale_trUtf8(const char* s);
QVector3D* QGraphicsScale_origin(const QGraphicsScale* self);
void QGraphicsScale_setOrigin(QGraphicsScale* self, QVector3D* point);
double QGraphicsScale_xScale(const QGraphicsScale* self);
void QGraphicsScale_setXScale(QGraphicsScale* self, double xScale);
double QGraphicsScale_yScale(const QGraphicsScale* self);
void QGraphicsScale_setYScale(QGraphicsScale* self, double yScale);
double QGraphicsScale_zScale(const QGraphicsScale* self);
void QGraphicsScale_setZScale(QGraphicsScale* self, double zScale);
void QGraphicsScale_applyTo(const QGraphicsScale* self, QMatrix4x4* matrix);
void QGraphicsScale_originChanged(QGraphicsScale* self);
void QGraphicsScale_connect_originChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_xScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_xScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_yScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_yScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_zScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_zScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_scaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_scaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QGraphicsScale_tr2(const char* s, const char* c);
struct miqt_string QGraphicsScale_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsScale_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsScale_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGraphicsScale_virtualbase_metaObject(const VirtualQGraphicsScale* self);
void* QGraphicsScale_virtualbase_metacast(VirtualQGraphicsScale* self, const char* param1);
int QGraphicsScale_virtualbase_metacall(VirtualQGraphicsScale* self, int param1, int param2, void** param3);
void QGraphicsScale_virtualbase_applyTo(const VirtualQGraphicsScale* self, QMatrix4x4* matrix);
bool QGraphicsScale_virtualbase_event(VirtualQGraphicsScale* self, QEvent* event);
bool QGraphicsScale_virtualbase_eventFilter(VirtualQGraphicsScale* self, QObject* watched, QEvent* event);
void QGraphicsScale_virtualbase_timerEvent(VirtualQGraphicsScale* self, QTimerEvent* event);
void QGraphicsScale_virtualbase_childEvent(VirtualQGraphicsScale* self, QChildEvent* event);
void QGraphicsScale_virtualbase_customEvent(VirtualQGraphicsScale* self, QEvent* event);
void QGraphicsScale_virtualbase_connectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal);
void QGraphicsScale_virtualbase_disconnectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal);

void QGraphicsScale_protectedbase_update(VirtualQGraphicsScale* self);
QObject* QGraphicsScale_protectedbase_sender(const VirtualQGraphicsScale* self);
int QGraphicsScale_protectedbase_senderSignalIndex(const VirtualQGraphicsScale* self);
int QGraphicsScale_protectedbase_receivers(const VirtualQGraphicsScale* self, const char* signal);
bool QGraphicsScale_protectedbase_isSignalConnected(const VirtualQGraphicsScale* self, QMetaMethod* signal);

const QMetaObject* QGraphicsScale_staticMetaObject();
void QGraphicsScale_delete(QGraphicsScale* self);

typedef struct VirtualQGraphicsRotation VirtualQGraphicsRotation;
typedef struct QGraphicsRotation_VTable{
	void (*destructor)(VirtualQGraphicsRotation* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsRotation* self);
	void* (*metacast)(VirtualQGraphicsRotation* self, const char* param1);
	int (*metacall)(VirtualQGraphicsRotation* self, int param1, int param2, void** param3);
	void (*applyTo)(const VirtualQGraphicsRotation* self, QMatrix4x4* matrix);
	bool (*event)(VirtualQGraphicsRotation* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsRotation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsRotation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsRotation* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsRotation* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsRotation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsRotation* self, QMetaMethod* signal);
}QGraphicsRotation_VTable;

const QGraphicsRotation_VTable* QGraphicsRotation_vtbl(const VirtualQGraphicsRotation* self);
void* QGraphicsRotation_vdata(const VirtualQGraphicsRotation* self);
void QGraphicsRotation_setVdata(VirtualQGraphicsRotation* self, void* vdata);

VirtualQGraphicsRotation* QGraphicsRotation_new(const QGraphicsRotation_VTable* vtbl, void* vdata);
VirtualQGraphicsRotation* QGraphicsRotation_new2(const QGraphicsRotation_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsRotation_virtbase(QGraphicsRotation* src, QGraphicsTransform** outptr_QGraphicsTransform);
QMetaObject* QGraphicsRotation_metaObject(const QGraphicsRotation* self);
void* QGraphicsRotation_metacast(QGraphicsRotation* self, const char* param1);
int QGraphicsRotation_metacall(QGraphicsRotation* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsRotation_tr(const char* s);
struct miqt_string QGraphicsRotation_trUtf8(const char* s);
QVector3D* QGraphicsRotation_origin(const QGraphicsRotation* self);
void QGraphicsRotation_setOrigin(QGraphicsRotation* self, QVector3D* point);
double QGraphicsRotation_angle(const QGraphicsRotation* self);
void QGraphicsRotation_setAngle(QGraphicsRotation* self, double angle);
QVector3D* QGraphicsRotation_axis(const QGraphicsRotation* self);
void QGraphicsRotation_setAxis(QGraphicsRotation* self, QVector3D* axis);
void QGraphicsRotation_setAxisWithAxis(QGraphicsRotation* self, int axis);
void QGraphicsRotation_applyTo(const QGraphicsRotation* self, QMatrix4x4* matrix);
void QGraphicsRotation_originChanged(QGraphicsRotation* self);
void QGraphicsRotation_connect_originChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsRotation_angleChanged(QGraphicsRotation* self);
void QGraphicsRotation_connect_angleChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsRotation_axisChanged(QGraphicsRotation* self);
void QGraphicsRotation_connect_axisChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QGraphicsRotation_tr2(const char* s, const char* c);
struct miqt_string QGraphicsRotation_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsRotation_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsRotation_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGraphicsRotation_virtualbase_metaObject(const VirtualQGraphicsRotation* self);
void* QGraphicsRotation_virtualbase_metacast(VirtualQGraphicsRotation* self, const char* param1);
int QGraphicsRotation_virtualbase_metacall(VirtualQGraphicsRotation* self, int param1, int param2, void** param3);
void QGraphicsRotation_virtualbase_applyTo(const VirtualQGraphicsRotation* self, QMatrix4x4* matrix);
bool QGraphicsRotation_virtualbase_event(VirtualQGraphicsRotation* self, QEvent* event);
bool QGraphicsRotation_virtualbase_eventFilter(VirtualQGraphicsRotation* self, QObject* watched, QEvent* event);
void QGraphicsRotation_virtualbase_timerEvent(VirtualQGraphicsRotation* self, QTimerEvent* event);
void QGraphicsRotation_virtualbase_childEvent(VirtualQGraphicsRotation* self, QChildEvent* event);
void QGraphicsRotation_virtualbase_customEvent(VirtualQGraphicsRotation* self, QEvent* event);
void QGraphicsRotation_virtualbase_connectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal);
void QGraphicsRotation_virtualbase_disconnectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal);

void QGraphicsRotation_protectedbase_update(VirtualQGraphicsRotation* self);
QObject* QGraphicsRotation_protectedbase_sender(const VirtualQGraphicsRotation* self);
int QGraphicsRotation_protectedbase_senderSignalIndex(const VirtualQGraphicsRotation* self);
int QGraphicsRotation_protectedbase_receivers(const VirtualQGraphicsRotation* self, const char* signal);
bool QGraphicsRotation_protectedbase_isSignalConnected(const VirtualQGraphicsRotation* self, QMetaMethod* signal);

const QMetaObject* QGraphicsRotation_staticMetaObject();
void QGraphicsRotation_delete(QGraphicsRotation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
