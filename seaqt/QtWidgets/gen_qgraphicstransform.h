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

struct QGraphicsTransform_VTable {
	void (*destructor)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self);
	QMetaObject* (*metaObject)(struct QGraphicsTransform_VTable* vtbl, const QGraphicsTransform* self);
	void* (*metacast)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, const char* param1);
	int (*metacall)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, int param1, int param2, void** param3);
	void (*applyTo)(struct QGraphicsTransform_VTable* vtbl, const QGraphicsTransform* self, QMatrix4x4* matrix);
	bool (*event)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsTransform_VTable* vtbl, QGraphicsTransform* self, QMetaMethod* signal);
};
QGraphicsTransform* QGraphicsTransform_new(struct QGraphicsTransform_VTable* vtbl);
QGraphicsTransform* QGraphicsTransform_new2(struct QGraphicsTransform_VTable* vtbl, QObject* parent);
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
QMetaObject* QGraphicsTransform_virtualbase_metaObject(const void* self);
void* QGraphicsTransform_virtualbase_metacast(void* self, const char* param1);
int QGraphicsTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsTransform_virtualbase_applyTo(const void* self, QMatrix4x4* matrix);
bool QGraphicsTransform_virtualbase_event(void* self, QEvent* event);
bool QGraphicsTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsTransform_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsTransform_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsTransform_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsTransform_protectedbase_update(void* self);
QObject* QGraphicsTransform_protectedbase_sender(const void* self);
int QGraphicsTransform_protectedbase_senderSignalIndex(const void* self);
int QGraphicsTransform_protectedbase_receivers(const void* self, const char* signal);
bool QGraphicsTransform_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsTransform_staticMetaObject();
void QGraphicsTransform_delete(QGraphicsTransform* self);

struct QGraphicsScale_VTable {
	void (*destructor)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self);
	QMetaObject* (*metaObject)(struct QGraphicsScale_VTable* vtbl, const QGraphicsScale* self);
	void* (*metacast)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, const char* param1);
	int (*metacall)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, int param1, int param2, void** param3);
	void (*applyTo)(struct QGraphicsScale_VTable* vtbl, const QGraphicsScale* self, QMatrix4x4* matrix);
	bool (*event)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsScale_VTable* vtbl, QGraphicsScale* self, QMetaMethod* signal);
};
QGraphicsScale* QGraphicsScale_new(struct QGraphicsScale_VTable* vtbl);
QGraphicsScale* QGraphicsScale_new2(struct QGraphicsScale_VTable* vtbl, QObject* parent);
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
void QGraphicsScale_connect_originChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_xScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_xScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_yScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_yScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_zScaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_zScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsScale_scaleChanged(QGraphicsScale* self);
void QGraphicsScale_connect_scaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QGraphicsScale_tr2(const char* s, const char* c);
struct miqt_string QGraphicsScale_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsScale_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsScale_trUtf83(const char* s, const char* c, int n);
QMetaObject* QGraphicsScale_virtualbase_metaObject(const void* self);
void* QGraphicsScale_virtualbase_metacast(void* self, const char* param1);
int QGraphicsScale_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsScale_virtualbase_applyTo(const void* self, QMatrix4x4* matrix);
bool QGraphicsScale_virtualbase_event(void* self, QEvent* event);
bool QGraphicsScale_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsScale_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsScale_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsScale_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsScale_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsScale_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsScale_protectedbase_update(void* self);
QObject* QGraphicsScale_protectedbase_sender(const void* self);
int QGraphicsScale_protectedbase_senderSignalIndex(const void* self);
int QGraphicsScale_protectedbase_receivers(const void* self, const char* signal);
bool QGraphicsScale_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsScale_staticMetaObject();
void QGraphicsScale_delete(QGraphicsScale* self);

struct QGraphicsRotation_VTable {
	void (*destructor)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self);
	QMetaObject* (*metaObject)(struct QGraphicsRotation_VTable* vtbl, const QGraphicsRotation* self);
	void* (*metacast)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, const char* param1);
	int (*metacall)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, int param1, int param2, void** param3);
	void (*applyTo)(struct QGraphicsRotation_VTable* vtbl, const QGraphicsRotation* self, QMatrix4x4* matrix);
	bool (*event)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsRotation_VTable* vtbl, QGraphicsRotation* self, QMetaMethod* signal);
};
QGraphicsRotation* QGraphicsRotation_new(struct QGraphicsRotation_VTable* vtbl);
QGraphicsRotation* QGraphicsRotation_new2(struct QGraphicsRotation_VTable* vtbl, QObject* parent);
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
void QGraphicsRotation_connect_originChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsRotation_angleChanged(QGraphicsRotation* self);
void QGraphicsRotation_connect_angleChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGraphicsRotation_axisChanged(QGraphicsRotation* self);
void QGraphicsRotation_connect_axisChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QGraphicsRotation_tr2(const char* s, const char* c);
struct miqt_string QGraphicsRotation_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsRotation_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsRotation_trUtf83(const char* s, const char* c, int n);
QMetaObject* QGraphicsRotation_virtualbase_metaObject(const void* self);
void* QGraphicsRotation_virtualbase_metacast(void* self, const char* param1);
int QGraphicsRotation_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsRotation_virtualbase_applyTo(const void* self, QMatrix4x4* matrix);
bool QGraphicsRotation_virtualbase_event(void* self, QEvent* event);
bool QGraphicsRotation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsRotation_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsRotation_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsRotation_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsRotation_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsRotation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsRotation_protectedbase_update(void* self);
QObject* QGraphicsRotation_protectedbase_sender(const void* self);
int QGraphicsRotation_protectedbase_senderSignalIndex(const void* self);
int QGraphicsRotation_protectedbase_receivers(const void* self, const char* signal);
bool QGraphicsRotation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsRotation_staticMetaObject();
void QGraphicsRotation_delete(QGraphicsRotation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
