#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSEFFECT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSEFFECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBrush;
class QChildEvent;
class QColor;
class QEvent;
class QGraphicsBlurEffect;
class QGraphicsColorizeEffect;
class QGraphicsDropShadowEffect;
class QGraphicsEffect;
class QGraphicsOpacityEffect;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPixmap;
class QPoint;
class QPointF;
class QRectF;
class QTimerEvent;
#else
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QGraphicsBlurEffect QGraphicsBlurEffect;
typedef struct QGraphicsColorizeEffect QGraphicsColorizeEffect;
typedef struct QGraphicsDropShadowEffect QGraphicsDropShadowEffect;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsOpacityEffect QGraphicsOpacityEffect;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQGraphicsEffect VirtualQGraphicsEffect;
typedef struct QGraphicsEffect_VTable{
	void (*destructor)(VirtualQGraphicsEffect* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsEffect* self);
	void* (*metacast)(VirtualQGraphicsEffect* self, const char* param1);
	int (*metacall)(VirtualQGraphicsEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(const VirtualQGraphicsEffect* self, QRectF* sourceRect);
	void (*draw)(VirtualQGraphicsEffect* self, QPainter* painter);
	void (*sourceChanged)(VirtualQGraphicsEffect* self, int flags);
	bool (*event)(VirtualQGraphicsEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsEffect* self, QMetaMethod* signal);
}QGraphicsEffect_VTable;

const QGraphicsEffect_VTable* QGraphicsEffect_vtbl(const VirtualQGraphicsEffect* self);
void* QGraphicsEffect_vdata(const VirtualQGraphicsEffect* self);
void QGraphicsEffect_setVdata(VirtualQGraphicsEffect* self, void* vdata);

VirtualQGraphicsEffect* QGraphicsEffect_new(const QGraphicsEffect_VTable* vtbl, void* vdata);
VirtualQGraphicsEffect* QGraphicsEffect_new2(const QGraphicsEffect_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsEffect_virtbase(QGraphicsEffect* src, QObject** outptr_QObject);
QMetaObject* QGraphicsEffect_metaObject(const QGraphicsEffect* self);
void* QGraphicsEffect_metacast(QGraphicsEffect* self, const char* param1);
int QGraphicsEffect_metacall(QGraphicsEffect* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsEffect_tr(const char* s);
QRectF* QGraphicsEffect_boundingRectFor(const QGraphicsEffect* self, QRectF* sourceRect);
QRectF* QGraphicsEffect_boundingRect(const QGraphicsEffect* self);
bool QGraphicsEffect_isEnabled(const QGraphicsEffect* self);
void QGraphicsEffect_setEnabled(QGraphicsEffect* self, bool enable);
void QGraphicsEffect_update(QGraphicsEffect* self);
void QGraphicsEffect_enabledChanged(QGraphicsEffect* self, bool enabled);
void QGraphicsEffect_connect_enabledChanged(VirtualQGraphicsEffect* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QGraphicsEffect_draw(QGraphicsEffect* self, QPainter* painter);
void QGraphicsEffect_sourceChanged(QGraphicsEffect* self, int flags);
struct miqt_string QGraphicsEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsEffect_virtualbase_metaObject(const VirtualQGraphicsEffect* self);
void* QGraphicsEffect_virtualbase_metacast(VirtualQGraphicsEffect* self, const char* param1);
int QGraphicsEffect_virtualbase_metacall(VirtualQGraphicsEffect* self, int param1, int param2, void** param3);
QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const VirtualQGraphicsEffect* self, QRectF* sourceRect);
void QGraphicsEffect_virtualbase_draw(VirtualQGraphicsEffect* self, QPainter* painter);
void QGraphicsEffect_virtualbase_sourceChanged(VirtualQGraphicsEffect* self, int flags);
bool QGraphicsEffect_virtualbase_event(VirtualQGraphicsEffect* self, QEvent* event);
bool QGraphicsEffect_virtualbase_eventFilter(VirtualQGraphicsEffect* self, QObject* watched, QEvent* event);
void QGraphicsEffect_virtualbase_timerEvent(VirtualQGraphicsEffect* self, QTimerEvent* event);
void QGraphicsEffect_virtualbase_childEvent(VirtualQGraphicsEffect* self, QChildEvent* event);
void QGraphicsEffect_virtualbase_customEvent(VirtualQGraphicsEffect* self, QEvent* event);
void QGraphicsEffect_virtualbase_connectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal);
void QGraphicsEffect_virtualbase_disconnectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal);

void QGraphicsEffect_protectedbase_updateBoundingRect(VirtualQGraphicsEffect* self);
bool QGraphicsEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsEffect* self);
QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsEffect* self);
void QGraphicsEffect_protectedbase_drawSource(VirtualQGraphicsEffect* self, QPainter* painter);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(const VirtualQGraphicsEffect* self);
QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(const VirtualQGraphicsEffect* self, int system);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(const VirtualQGraphicsEffect* self, int system);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(const VirtualQGraphicsEffect* self, int system, QPoint* offset);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(const VirtualQGraphicsEffect* self, int system, QPoint* offset, int mode);
QObject* QGraphicsEffect_protectedbase_sender(const VirtualQGraphicsEffect* self);
int QGraphicsEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsEffect* self);
int QGraphicsEffect_protectedbase_receivers(const VirtualQGraphicsEffect* self, const char* signal);
bool QGraphicsEffect_protectedbase_isSignalConnected(const VirtualQGraphicsEffect* self, QMetaMethod* signal);

const QMetaObject* QGraphicsEffect_staticMetaObject();
void QGraphicsEffect_delete(QGraphicsEffect* self);

typedef struct VirtualQGraphicsColorizeEffect VirtualQGraphicsColorizeEffect;
typedef struct QGraphicsColorizeEffect_VTable{
	void (*destructor)(VirtualQGraphicsColorizeEffect* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsColorizeEffect* self);
	void* (*metacast)(VirtualQGraphicsColorizeEffect* self, const char* param1);
	int (*metacall)(VirtualQGraphicsColorizeEffect* self, int param1, int param2, void** param3);
	void (*draw)(VirtualQGraphicsColorizeEffect* self, QPainter* painter);
	QRectF* (*boundingRectFor)(const VirtualQGraphicsColorizeEffect* self, QRectF* sourceRect);
	void (*sourceChanged)(VirtualQGraphicsColorizeEffect* self, int flags);
	bool (*event)(VirtualQGraphicsColorizeEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsColorizeEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsColorizeEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsColorizeEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsColorizeEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);
}QGraphicsColorizeEffect_VTable;

const QGraphicsColorizeEffect_VTable* QGraphicsColorizeEffect_vtbl(const VirtualQGraphicsColorizeEffect* self);
void* QGraphicsColorizeEffect_vdata(const VirtualQGraphicsColorizeEffect* self);
void QGraphicsColorizeEffect_setVdata(VirtualQGraphicsColorizeEffect* self, void* vdata);

VirtualQGraphicsColorizeEffect* QGraphicsColorizeEffect_new(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata);
VirtualQGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsColorizeEffect_virtbase(QGraphicsColorizeEffect* src, QGraphicsEffect** outptr_QGraphicsEffect);
QMetaObject* QGraphicsColorizeEffect_metaObject(const QGraphicsColorizeEffect* self);
void* QGraphicsColorizeEffect_metacast(QGraphicsColorizeEffect* self, const char* param1);
int QGraphicsColorizeEffect_metacall(QGraphicsColorizeEffect* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsColorizeEffect_tr(const char* s);
QColor* QGraphicsColorizeEffect_color(const QGraphicsColorizeEffect* self);
double QGraphicsColorizeEffect_strength(const QGraphicsColorizeEffect* self);
void QGraphicsColorizeEffect_setColor(QGraphicsColorizeEffect* self, QColor* c);
void QGraphicsColorizeEffect_setStrength(QGraphicsColorizeEffect* self, double strength);
void QGraphicsColorizeEffect_colorChanged(QGraphicsColorizeEffect* self, QColor* color);
void QGraphicsColorizeEffect_connect_colorChanged(VirtualQGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QGraphicsColorizeEffect_strengthChanged(QGraphicsColorizeEffect* self, double strength);
void QGraphicsColorizeEffect_connect_strengthChanged(VirtualQGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsColorizeEffect_draw(QGraphicsColorizeEffect* self, QPainter* painter);
struct miqt_string QGraphicsColorizeEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsColorizeEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const VirtualQGraphicsColorizeEffect* self);
void* QGraphicsColorizeEffect_virtualbase_metacast(VirtualQGraphicsColorizeEffect* self, const char* param1);
int QGraphicsColorizeEffect_virtualbase_metacall(VirtualQGraphicsColorizeEffect* self, int param1, int param2, void** param3);
void QGraphicsColorizeEffect_virtualbase_draw(VirtualQGraphicsColorizeEffect* self, QPainter* painter);
QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const VirtualQGraphicsColorizeEffect* self, QRectF* sourceRect);
void QGraphicsColorizeEffect_virtualbase_sourceChanged(VirtualQGraphicsColorizeEffect* self, int flags);
bool QGraphicsColorizeEffect_virtualbase_event(VirtualQGraphicsColorizeEffect* self, QEvent* event);
bool QGraphicsColorizeEffect_virtualbase_eventFilter(VirtualQGraphicsColorizeEffect* self, QObject* watched, QEvent* event);
void QGraphicsColorizeEffect_virtualbase_timerEvent(VirtualQGraphicsColorizeEffect* self, QTimerEvent* event);
void QGraphicsColorizeEffect_virtualbase_childEvent(VirtualQGraphicsColorizeEffect* self, QChildEvent* event);
void QGraphicsColorizeEffect_virtualbase_customEvent(VirtualQGraphicsColorizeEffect* self, QEvent* event);
void QGraphicsColorizeEffect_virtualbase_connectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);
void QGraphicsColorizeEffect_virtualbase_disconnectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);

void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(VirtualQGraphicsColorizeEffect* self);
bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsColorizeEffect* self);
QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsColorizeEffect* self);
void QGraphicsColorizeEffect_protectedbase_drawSource(VirtualQGraphicsColorizeEffect* self, QPainter* painter);
QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(const VirtualQGraphicsColorizeEffect* self);
QObject* QGraphicsColorizeEffect_protectedbase_sender(const VirtualQGraphicsColorizeEffect* self);
int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsColorizeEffect* self);
int QGraphicsColorizeEffect_protectedbase_receivers(const VirtualQGraphicsColorizeEffect* self, const char* signal);
bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(const VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);

const QMetaObject* QGraphicsColorizeEffect_staticMetaObject();
void QGraphicsColorizeEffect_delete(QGraphicsColorizeEffect* self);

typedef struct VirtualQGraphicsBlurEffect VirtualQGraphicsBlurEffect;
typedef struct QGraphicsBlurEffect_VTable{
	void (*destructor)(VirtualQGraphicsBlurEffect* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsBlurEffect* self);
	void* (*metacast)(VirtualQGraphicsBlurEffect* self, const char* param1);
	int (*metacall)(VirtualQGraphicsBlurEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(const VirtualQGraphicsBlurEffect* self, QRectF* rect);
	void (*draw)(VirtualQGraphicsBlurEffect* self, QPainter* painter);
	void (*sourceChanged)(VirtualQGraphicsBlurEffect* self, int flags);
	bool (*event)(VirtualQGraphicsBlurEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsBlurEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsBlurEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsBlurEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsBlurEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);
}QGraphicsBlurEffect_VTable;

const QGraphicsBlurEffect_VTable* QGraphicsBlurEffect_vtbl(const VirtualQGraphicsBlurEffect* self);
void* QGraphicsBlurEffect_vdata(const VirtualQGraphicsBlurEffect* self);
void QGraphicsBlurEffect_setVdata(VirtualQGraphicsBlurEffect* self, void* vdata);

VirtualQGraphicsBlurEffect* QGraphicsBlurEffect_new(const QGraphicsBlurEffect_VTable* vtbl, void* vdata);
VirtualQGraphicsBlurEffect* QGraphicsBlurEffect_new2(const QGraphicsBlurEffect_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsBlurEffect_virtbase(QGraphicsBlurEffect* src, QGraphicsEffect** outptr_QGraphicsEffect);
QMetaObject* QGraphicsBlurEffect_metaObject(const QGraphicsBlurEffect* self);
void* QGraphicsBlurEffect_metacast(QGraphicsBlurEffect* self, const char* param1);
int QGraphicsBlurEffect_metacall(QGraphicsBlurEffect* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsBlurEffect_tr(const char* s);
QRectF* QGraphicsBlurEffect_boundingRectFor(const QGraphicsBlurEffect* self, QRectF* rect);
double QGraphicsBlurEffect_blurRadius(const QGraphicsBlurEffect* self);
int QGraphicsBlurEffect_blurHints(const QGraphicsBlurEffect* self);
void QGraphicsBlurEffect_setBlurRadius(QGraphicsBlurEffect* self, double blurRadius);
void QGraphicsBlurEffect_setBlurHints(QGraphicsBlurEffect* self, int hints);
void QGraphicsBlurEffect_blurRadiusChanged(QGraphicsBlurEffect* self, double blurRadius);
void QGraphicsBlurEffect_connect_blurRadiusChanged(VirtualQGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsBlurEffect_blurHintsChanged(QGraphicsBlurEffect* self, int hints);
void QGraphicsBlurEffect_connect_blurHintsChanged(VirtualQGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QGraphicsBlurEffect_draw(QGraphicsBlurEffect* self, QPainter* painter);
struct miqt_string QGraphicsBlurEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsBlurEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const VirtualQGraphicsBlurEffect* self);
void* QGraphicsBlurEffect_virtualbase_metacast(VirtualQGraphicsBlurEffect* self, const char* param1);
int QGraphicsBlurEffect_virtualbase_metacall(VirtualQGraphicsBlurEffect* self, int param1, int param2, void** param3);
QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const VirtualQGraphicsBlurEffect* self, QRectF* rect);
void QGraphicsBlurEffect_virtualbase_draw(VirtualQGraphicsBlurEffect* self, QPainter* painter);
void QGraphicsBlurEffect_virtualbase_sourceChanged(VirtualQGraphicsBlurEffect* self, int flags);
bool QGraphicsBlurEffect_virtualbase_event(VirtualQGraphicsBlurEffect* self, QEvent* event);
bool QGraphicsBlurEffect_virtualbase_eventFilter(VirtualQGraphicsBlurEffect* self, QObject* watched, QEvent* event);
void QGraphicsBlurEffect_virtualbase_timerEvent(VirtualQGraphicsBlurEffect* self, QTimerEvent* event);
void QGraphicsBlurEffect_virtualbase_childEvent(VirtualQGraphicsBlurEffect* self, QChildEvent* event);
void QGraphicsBlurEffect_virtualbase_customEvent(VirtualQGraphicsBlurEffect* self, QEvent* event);
void QGraphicsBlurEffect_virtualbase_connectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);
void QGraphicsBlurEffect_virtualbase_disconnectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);

void QGraphicsBlurEffect_protectedbase_updateBoundingRect(VirtualQGraphicsBlurEffect* self);
bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsBlurEffect* self);
QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsBlurEffect* self);
void QGraphicsBlurEffect_protectedbase_drawSource(VirtualQGraphicsBlurEffect* self, QPainter* painter);
QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(const VirtualQGraphicsBlurEffect* self);
QObject* QGraphicsBlurEffect_protectedbase_sender(const VirtualQGraphicsBlurEffect* self);
int QGraphicsBlurEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsBlurEffect* self);
int QGraphicsBlurEffect_protectedbase_receivers(const VirtualQGraphicsBlurEffect* self, const char* signal);
bool QGraphicsBlurEffect_protectedbase_isSignalConnected(const VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);

const QMetaObject* QGraphicsBlurEffect_staticMetaObject();
void QGraphicsBlurEffect_delete(QGraphicsBlurEffect* self);

typedef struct VirtualQGraphicsDropShadowEffect VirtualQGraphicsDropShadowEffect;
typedef struct QGraphicsDropShadowEffect_VTable{
	void (*destructor)(VirtualQGraphicsDropShadowEffect* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsDropShadowEffect* self);
	void* (*metacast)(VirtualQGraphicsDropShadowEffect* self, const char* param1);
	int (*metacall)(VirtualQGraphicsDropShadowEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(const VirtualQGraphicsDropShadowEffect* self, QRectF* rect);
	void (*draw)(VirtualQGraphicsDropShadowEffect* self, QPainter* painter);
	void (*sourceChanged)(VirtualQGraphicsDropShadowEffect* self, int flags);
	bool (*event)(VirtualQGraphicsDropShadowEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsDropShadowEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsDropShadowEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsDropShadowEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsDropShadowEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);
}QGraphicsDropShadowEffect_VTable;

const QGraphicsDropShadowEffect_VTable* QGraphicsDropShadowEffect_vtbl(const VirtualQGraphicsDropShadowEffect* self);
void* QGraphicsDropShadowEffect_vdata(const VirtualQGraphicsDropShadowEffect* self);
void QGraphicsDropShadowEffect_setVdata(VirtualQGraphicsDropShadowEffect* self, void* vdata);

VirtualQGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata);
VirtualQGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsDropShadowEffect_virtbase(QGraphicsDropShadowEffect* src, QGraphicsEffect** outptr_QGraphicsEffect);
QMetaObject* QGraphicsDropShadowEffect_metaObject(const QGraphicsDropShadowEffect* self);
void* QGraphicsDropShadowEffect_metacast(QGraphicsDropShadowEffect* self, const char* param1);
int QGraphicsDropShadowEffect_metacall(QGraphicsDropShadowEffect* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsDropShadowEffect_tr(const char* s);
QRectF* QGraphicsDropShadowEffect_boundingRectFor(const QGraphicsDropShadowEffect* self, QRectF* rect);
QPointF* QGraphicsDropShadowEffect_offset(const QGraphicsDropShadowEffect* self);
double QGraphicsDropShadowEffect_xOffset(const QGraphicsDropShadowEffect* self);
double QGraphicsDropShadowEffect_yOffset(const QGraphicsDropShadowEffect* self);
double QGraphicsDropShadowEffect_blurRadius(const QGraphicsDropShadowEffect* self);
QColor* QGraphicsDropShadowEffect_color(const QGraphicsDropShadowEffect* self);
void QGraphicsDropShadowEffect_setOffset(QGraphicsDropShadowEffect* self, QPointF* ofs);
void QGraphicsDropShadowEffect_setOffset2(QGraphicsDropShadowEffect* self, double dx, double dy);
void QGraphicsDropShadowEffect_setOffsetWithQreal(QGraphicsDropShadowEffect* self, double d);
void QGraphicsDropShadowEffect_setXOffset(QGraphicsDropShadowEffect* self, double dx);
void QGraphicsDropShadowEffect_setYOffset(QGraphicsDropShadowEffect* self, double dy);
void QGraphicsDropShadowEffect_setBlurRadius(QGraphicsDropShadowEffect* self, double blurRadius);
void QGraphicsDropShadowEffect_setColor(QGraphicsDropShadowEffect* self, QColor* color);
void QGraphicsDropShadowEffect_offsetChanged(QGraphicsDropShadowEffect* self, QPointF* offset);
void QGraphicsDropShadowEffect_connect_offsetChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_blurRadiusChanged(QGraphicsDropShadowEffect* self, double blurRadius);
void QGraphicsDropShadowEffect_connect_blurRadiusChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_colorChanged(QGraphicsDropShadowEffect* self, QColor* color);
void QGraphicsDropShadowEffect_connect_colorChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_draw(QGraphicsDropShadowEffect* self, QPainter* painter);
struct miqt_string QGraphicsDropShadowEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsDropShadowEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const VirtualQGraphicsDropShadowEffect* self);
void* QGraphicsDropShadowEffect_virtualbase_metacast(VirtualQGraphicsDropShadowEffect* self, const char* param1);
int QGraphicsDropShadowEffect_virtualbase_metacall(VirtualQGraphicsDropShadowEffect* self, int param1, int param2, void** param3);
QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const VirtualQGraphicsDropShadowEffect* self, QRectF* rect);
void QGraphicsDropShadowEffect_virtualbase_draw(VirtualQGraphicsDropShadowEffect* self, QPainter* painter);
void QGraphicsDropShadowEffect_virtualbase_sourceChanged(VirtualQGraphicsDropShadowEffect* self, int flags);
bool QGraphicsDropShadowEffect_virtualbase_event(VirtualQGraphicsDropShadowEffect* self, QEvent* event);
bool QGraphicsDropShadowEffect_virtualbase_eventFilter(VirtualQGraphicsDropShadowEffect* self, QObject* watched, QEvent* event);
void QGraphicsDropShadowEffect_virtualbase_timerEvent(VirtualQGraphicsDropShadowEffect* self, QTimerEvent* event);
void QGraphicsDropShadowEffect_virtualbase_childEvent(VirtualQGraphicsDropShadowEffect* self, QChildEvent* event);
void QGraphicsDropShadowEffect_virtualbase_customEvent(VirtualQGraphicsDropShadowEffect* self, QEvent* event);
void QGraphicsDropShadowEffect_virtualbase_connectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);
void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);

void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(VirtualQGraphicsDropShadowEffect* self);
bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsDropShadowEffect* self);
QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsDropShadowEffect* self);
void QGraphicsDropShadowEffect_protectedbase_drawSource(VirtualQGraphicsDropShadowEffect* self, QPainter* painter);
QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(const VirtualQGraphicsDropShadowEffect* self);
QObject* QGraphicsDropShadowEffect_protectedbase_sender(const VirtualQGraphicsDropShadowEffect* self);
int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsDropShadowEffect* self);
int QGraphicsDropShadowEffect_protectedbase_receivers(const VirtualQGraphicsDropShadowEffect* self, const char* signal);
bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(const VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);

const QMetaObject* QGraphicsDropShadowEffect_staticMetaObject();
void QGraphicsDropShadowEffect_delete(QGraphicsDropShadowEffect* self);

typedef struct VirtualQGraphicsOpacityEffect VirtualQGraphicsOpacityEffect;
typedef struct QGraphicsOpacityEffect_VTable{
	void (*destructor)(VirtualQGraphicsOpacityEffect* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsOpacityEffect* self);
	void* (*metacast)(VirtualQGraphicsOpacityEffect* self, const char* param1);
	int (*metacall)(VirtualQGraphicsOpacityEffect* self, int param1, int param2, void** param3);
	void (*draw)(VirtualQGraphicsOpacityEffect* self, QPainter* painter);
	QRectF* (*boundingRectFor)(const VirtualQGraphicsOpacityEffect* self, QRectF* sourceRect);
	void (*sourceChanged)(VirtualQGraphicsOpacityEffect* self, int flags);
	bool (*event)(VirtualQGraphicsOpacityEffect* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsOpacityEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsOpacityEffect* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsOpacityEffect* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsOpacityEffect* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);
}QGraphicsOpacityEffect_VTable;

const QGraphicsOpacityEffect_VTable* QGraphicsOpacityEffect_vtbl(const VirtualQGraphicsOpacityEffect* self);
void* QGraphicsOpacityEffect_vdata(const VirtualQGraphicsOpacityEffect* self);
void QGraphicsOpacityEffect_setVdata(VirtualQGraphicsOpacityEffect* self, void* vdata);

VirtualQGraphicsOpacityEffect* QGraphicsOpacityEffect_new(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata);
VirtualQGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata, QObject* parent);

void QGraphicsOpacityEffect_virtbase(QGraphicsOpacityEffect* src, QGraphicsEffect** outptr_QGraphicsEffect);
QMetaObject* QGraphicsOpacityEffect_metaObject(const QGraphicsOpacityEffect* self);
void* QGraphicsOpacityEffect_metacast(QGraphicsOpacityEffect* self, const char* param1);
int QGraphicsOpacityEffect_metacall(QGraphicsOpacityEffect* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsOpacityEffect_tr(const char* s);
double QGraphicsOpacityEffect_opacity(const QGraphicsOpacityEffect* self);
QBrush* QGraphicsOpacityEffect_opacityMask(const QGraphicsOpacityEffect* self);
void QGraphicsOpacityEffect_setOpacity(QGraphicsOpacityEffect* self, double opacity);
void QGraphicsOpacityEffect_setOpacityMask(QGraphicsOpacityEffect* self, QBrush* mask);
void QGraphicsOpacityEffect_opacityChanged(QGraphicsOpacityEffect* self, double opacity);
void QGraphicsOpacityEffect_connect_opacityChanged(VirtualQGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsOpacityEffect_opacityMaskChanged(QGraphicsOpacityEffect* self, QBrush* mask);
void QGraphicsOpacityEffect_connect_opacityMaskChanged(VirtualQGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, QBrush*), void (*release)(intptr_t));
void QGraphicsOpacityEffect_draw(QGraphicsOpacityEffect* self, QPainter* painter);
struct miqt_string QGraphicsOpacityEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsOpacityEffect_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const VirtualQGraphicsOpacityEffect* self);
void* QGraphicsOpacityEffect_virtualbase_metacast(VirtualQGraphicsOpacityEffect* self, const char* param1);
int QGraphicsOpacityEffect_virtualbase_metacall(VirtualQGraphicsOpacityEffect* self, int param1, int param2, void** param3);
void QGraphicsOpacityEffect_virtualbase_draw(VirtualQGraphicsOpacityEffect* self, QPainter* painter);
QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const VirtualQGraphicsOpacityEffect* self, QRectF* sourceRect);
void QGraphicsOpacityEffect_virtualbase_sourceChanged(VirtualQGraphicsOpacityEffect* self, int flags);
bool QGraphicsOpacityEffect_virtualbase_event(VirtualQGraphicsOpacityEffect* self, QEvent* event);
bool QGraphicsOpacityEffect_virtualbase_eventFilter(VirtualQGraphicsOpacityEffect* self, QObject* watched, QEvent* event);
void QGraphicsOpacityEffect_virtualbase_timerEvent(VirtualQGraphicsOpacityEffect* self, QTimerEvent* event);
void QGraphicsOpacityEffect_virtualbase_childEvent(VirtualQGraphicsOpacityEffect* self, QChildEvent* event);
void QGraphicsOpacityEffect_virtualbase_customEvent(VirtualQGraphicsOpacityEffect* self, QEvent* event);
void QGraphicsOpacityEffect_virtualbase_connectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);
void QGraphicsOpacityEffect_virtualbase_disconnectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);

void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(VirtualQGraphicsOpacityEffect* self);
bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsOpacityEffect* self);
QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsOpacityEffect* self);
void QGraphicsOpacityEffect_protectedbase_drawSource(VirtualQGraphicsOpacityEffect* self, QPainter* painter);
QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(const VirtualQGraphicsOpacityEffect* self);
QObject* QGraphicsOpacityEffect_protectedbase_sender(const VirtualQGraphicsOpacityEffect* self);
int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsOpacityEffect* self);
int QGraphicsOpacityEffect_protectedbase_receivers(const VirtualQGraphicsOpacityEffect* self, const char* signal);
bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(const VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);

const QMetaObject* QGraphicsOpacityEffect_staticMetaObject();
void QGraphicsOpacityEffect_delete(QGraphicsOpacityEffect* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
