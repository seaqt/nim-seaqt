#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSITEMANIMATION_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSITEMANIMATION_H

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
class QGraphicsItem;
class QGraphicsItemAnimation;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPointF;
class QTimeLine;
class QTimerEvent;
class QTransform;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsItemAnimation QGraphicsItemAnimation;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QTimeLine QTimeLine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
#endif

typedef struct VirtualQGraphicsItemAnimation VirtualQGraphicsItemAnimation;
typedef struct QGraphicsItemAnimation_VTable{
	void (*destructor)(VirtualQGraphicsItemAnimation* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsItemAnimation* self);
	void* (*metacast)(VirtualQGraphicsItemAnimation* self, const char* param1);
	int (*metacall)(VirtualQGraphicsItemAnimation* self, int param1, int param2, void** param3);
	void (*beforeAnimationStep)(VirtualQGraphicsItemAnimation* self, double step);
	void (*afterAnimationStep)(VirtualQGraphicsItemAnimation* self, double step);
	bool (*event)(VirtualQGraphicsItemAnimation* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsItemAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsItemAnimation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsItemAnimation* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsItemAnimation* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsItemAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsItemAnimation* self, QMetaMethod* signal);
}QGraphicsItemAnimation_VTable;

const QGraphicsItemAnimation_VTable* QGraphicsItemAnimation_vtbl(const VirtualQGraphicsItemAnimation* self);
void* QGraphicsItemAnimation_vdata(const VirtualQGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setVdata(VirtualQGraphicsItemAnimation* self, void* vdata);

VirtualQGraphicsItemAnimation* QGraphicsItemAnimation_new(const QGraphicsItemAnimation_VTable* vtbl, void* vdata);
VirtualQGraphicsItemAnimation* QGraphicsItemAnimation_new2(const QGraphicsItemAnimation_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsItemAnimation_virtbase(QGraphicsItemAnimation* src, QObject** outptr_QObject);
QMetaObject* QGraphicsItemAnimation_metaObject(const QGraphicsItemAnimation* self);
void* QGraphicsItemAnimation_metacast(QGraphicsItemAnimation* self, const char* param1);
int QGraphicsItemAnimation_metacall(QGraphicsItemAnimation* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsItemAnimation_tr(const char* s);
QGraphicsItem* QGraphicsItemAnimation_item(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setItem(QGraphicsItemAnimation* self, QGraphicsItem* item);
QTimeLine* QGraphicsItemAnimation_timeLine(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setTimeLine(QGraphicsItemAnimation* self, QTimeLine* timeLine);
QPointF* QGraphicsItemAnimation_posAt(const QGraphicsItemAnimation* self, double step);
struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_posList(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setPosAt(QGraphicsItemAnimation* self, double step, QPointF* pos);
QTransform* QGraphicsItemAnimation_transformAt(const QGraphicsItemAnimation* self, double step);
double QGraphicsItemAnimation_rotationAt(const QGraphicsItemAnimation* self, double step);
struct miqt_array /* of struct miqt_map  tuple of double and double   */  QGraphicsItemAnimation_rotationList(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setRotationAt(QGraphicsItemAnimation* self, double step, double angle);
double QGraphicsItemAnimation_xTranslationAt(const QGraphicsItemAnimation* self, double step);
double QGraphicsItemAnimation_yTranslationAt(const QGraphicsItemAnimation* self, double step);
struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_translationList(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setTranslationAt(QGraphicsItemAnimation* self, double step, double dx, double dy);
double QGraphicsItemAnimation_verticalScaleAt(const QGraphicsItemAnimation* self, double step);
double QGraphicsItemAnimation_horizontalScaleAt(const QGraphicsItemAnimation* self, double step);
struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_scaleList(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setScaleAt(QGraphicsItemAnimation* self, double step, double sx, double sy);
double QGraphicsItemAnimation_verticalShearAt(const QGraphicsItemAnimation* self, double step);
double QGraphicsItemAnimation_horizontalShearAt(const QGraphicsItemAnimation* self, double step);
struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_shearList(const QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setShearAt(QGraphicsItemAnimation* self, double step, double sh, double sv);
void QGraphicsItemAnimation_clear(QGraphicsItemAnimation* self);
void QGraphicsItemAnimation_setStep(QGraphicsItemAnimation* self, double x);
void QGraphicsItemAnimation_beforeAnimationStep(QGraphicsItemAnimation* self, double step);
void QGraphicsItemAnimation_afterAnimationStep(QGraphicsItemAnimation* self, double step);
struct miqt_string QGraphicsItemAnimation_tr2(const char* s, const char* c);
struct miqt_string QGraphicsItemAnimation_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsItemAnimation_virtualbase_metaObject(const VirtualQGraphicsItemAnimation* self);
void* QGraphicsItemAnimation_virtualbase_metacast(VirtualQGraphicsItemAnimation* self, const char* param1);
int QGraphicsItemAnimation_virtualbase_metacall(VirtualQGraphicsItemAnimation* self, int param1, int param2, void** param3);
void QGraphicsItemAnimation_virtualbase_beforeAnimationStep(VirtualQGraphicsItemAnimation* self, double step);
void QGraphicsItemAnimation_virtualbase_afterAnimationStep(VirtualQGraphicsItemAnimation* self, double step);
bool QGraphicsItemAnimation_virtualbase_event(VirtualQGraphicsItemAnimation* self, QEvent* event);
bool QGraphicsItemAnimation_virtualbase_eventFilter(VirtualQGraphicsItemAnimation* self, QObject* watched, QEvent* event);
void QGraphicsItemAnimation_virtualbase_timerEvent(VirtualQGraphicsItemAnimation* self, QTimerEvent* event);
void QGraphicsItemAnimation_virtualbase_childEvent(VirtualQGraphicsItemAnimation* self, QChildEvent* event);
void QGraphicsItemAnimation_virtualbase_customEvent(VirtualQGraphicsItemAnimation* self, QEvent* event);
void QGraphicsItemAnimation_virtualbase_connectNotify(VirtualQGraphicsItemAnimation* self, QMetaMethod* signal);
void QGraphicsItemAnimation_virtualbase_disconnectNotify(VirtualQGraphicsItemAnimation* self, QMetaMethod* signal);

QObject* QGraphicsItemAnimation_protectedbase_sender(const VirtualQGraphicsItemAnimation* self);
int QGraphicsItemAnimation_protectedbase_senderSignalIndex(const VirtualQGraphicsItemAnimation* self);
int QGraphicsItemAnimation_protectedbase_receivers(const VirtualQGraphicsItemAnimation* self, const char* signal);
bool QGraphicsItemAnimation_protectedbase_isSignalConnected(const VirtualQGraphicsItemAnimation* self, QMetaMethod* signal);

const QMetaObject* QGraphicsItemAnimation_staticMetaObject();
void QGraphicsItemAnimation_delete(QGraphicsItemAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
