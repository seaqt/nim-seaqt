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

struct QGraphicsEffect_VTable {
	void (*destructor)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self);
	QMetaObject* (*metaObject)(struct QGraphicsEffect_VTable* vtbl, const QGraphicsEffect* self);
	void* (*metacast)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, const char* param1);
	int (*metacall)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(struct QGraphicsEffect_VTable* vtbl, const QGraphicsEffect* self, QRectF* sourceRect);
	void (*draw)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QPainter* painter);
	void (*sourceChanged)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, int flags);
	bool (*event)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsEffect_VTable* vtbl, QGraphicsEffect* self, QMetaMethod* signal);
};
QGraphicsEffect* QGraphicsEffect_new(struct QGraphicsEffect_VTable* vtbl);
QGraphicsEffect* QGraphicsEffect_new2(struct QGraphicsEffect_VTable* vtbl, QObject* parent);
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
void QGraphicsEffect_connect_enabledChanged(QGraphicsEffect* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QGraphicsEffect_draw(QGraphicsEffect* self, QPainter* painter);
void QGraphicsEffect_sourceChanged(QGraphicsEffect* self, int flags);
struct miqt_string QGraphicsEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self);
void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1);
int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);
void QGraphicsEffect_virtualbase_draw(void* self, QPainter* painter);
void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags);
bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event);
bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
bool QGraphicsEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
void QGraphicsEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(bool* _dynamic_cast_ok, const void* self, int system);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(bool* _dynamic_cast_ok, const void* self, int system);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset);
QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset, int mode);
QObject* QGraphicsEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsEffect_staticMetaObject();
void QGraphicsEffect_delete(QGraphicsEffect* self);

struct QGraphicsColorizeEffect_VTable {
	void (*destructor)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self);
	QMetaObject* (*metaObject)(struct QGraphicsColorizeEffect_VTable* vtbl, const QGraphicsColorizeEffect* self);
	void* (*metacast)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, const char* param1);
	int (*metacall)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, int param1, int param2, void** param3);
	void (*draw)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QPainter* painter);
	QRectF* (*boundingRectFor)(struct QGraphicsColorizeEffect_VTable* vtbl, const QGraphicsColorizeEffect* self, QRectF* sourceRect);
	void (*sourceChanged)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, int flags);
	bool (*event)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsColorizeEffect_VTable* vtbl, QGraphicsColorizeEffect* self, QMetaMethod* signal);
};
QGraphicsColorizeEffect* QGraphicsColorizeEffect_new(struct QGraphicsColorizeEffect_VTable* vtbl);
QGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(struct QGraphicsColorizeEffect_VTable* vtbl, QObject* parent);
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
void QGraphicsColorizeEffect_connect_colorChanged(QGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QGraphicsColorizeEffect_strengthChanged(QGraphicsColorizeEffect* self, double strength);
void QGraphicsColorizeEffect_connect_strengthChanged(QGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsColorizeEffect_draw(QGraphicsColorizeEffect* self, QPainter* painter);
struct miqt_string QGraphicsColorizeEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsColorizeEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self);
void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1);
int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter);
QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);
void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags);
bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event);
bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsColorizeEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
void QGraphicsColorizeEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
QObject* QGraphicsColorizeEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsColorizeEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsColorizeEffect_staticMetaObject();
void QGraphicsColorizeEffect_delete(QGraphicsColorizeEffect* self);

struct QGraphicsBlurEffect_VTable {
	void (*destructor)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self);
	QMetaObject* (*metaObject)(struct QGraphicsBlurEffect_VTable* vtbl, const QGraphicsBlurEffect* self);
	void* (*metacast)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, const char* param1);
	int (*metacall)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(struct QGraphicsBlurEffect_VTable* vtbl, const QGraphicsBlurEffect* self, QRectF* rect);
	void (*draw)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QPainter* painter);
	void (*sourceChanged)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, int flags);
	bool (*event)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsBlurEffect_VTable* vtbl, QGraphicsBlurEffect* self, QMetaMethod* signal);
};
QGraphicsBlurEffect* QGraphicsBlurEffect_new(struct QGraphicsBlurEffect_VTable* vtbl);
QGraphicsBlurEffect* QGraphicsBlurEffect_new2(struct QGraphicsBlurEffect_VTable* vtbl, QObject* parent);
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
void QGraphicsBlurEffect_connect_blurRadiusChanged(QGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsBlurEffect_blurHintsChanged(QGraphicsBlurEffect* self, int hints);
void QGraphicsBlurEffect_connect_blurHintsChanged(QGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QGraphicsBlurEffect_draw(QGraphicsBlurEffect* self, QPainter* painter);
struct miqt_string QGraphicsBlurEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsBlurEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self);
void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1);
int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);
void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter);
void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags);
bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event);
bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsBlurEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsBlurEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
void QGraphicsBlurEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
QObject* QGraphicsBlurEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsBlurEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsBlurEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsBlurEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsBlurEffect_staticMetaObject();
void QGraphicsBlurEffect_delete(QGraphicsBlurEffect* self);

struct QGraphicsDropShadowEffect_VTable {
	void (*destructor)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self);
	QMetaObject* (*metaObject)(struct QGraphicsDropShadowEffect_VTable* vtbl, const QGraphicsDropShadowEffect* self);
	void* (*metacast)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, const char* param1);
	int (*metacall)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, int param1, int param2, void** param3);
	QRectF* (*boundingRectFor)(struct QGraphicsDropShadowEffect_VTable* vtbl, const QGraphicsDropShadowEffect* self, QRectF* rect);
	void (*draw)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QPainter* painter);
	void (*sourceChanged)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, int flags);
	bool (*event)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsDropShadowEffect_VTable* vtbl, QGraphicsDropShadowEffect* self, QMetaMethod* signal);
};
QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new(struct QGraphicsDropShadowEffect_VTable* vtbl);
QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(struct QGraphicsDropShadowEffect_VTable* vtbl, QObject* parent);
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
void QGraphicsDropShadowEffect_connect_offsetChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_blurRadiusChanged(QGraphicsDropShadowEffect* self, double blurRadius);
void QGraphicsDropShadowEffect_connect_blurRadiusChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_colorChanged(QGraphicsDropShadowEffect* self, QColor* color);
void QGraphicsDropShadowEffect_connect_colorChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QGraphicsDropShadowEffect_draw(QGraphicsDropShadowEffect* self, QPainter* painter);
struct miqt_string QGraphicsDropShadowEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsDropShadowEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self);
void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1);
int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);
void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter);
void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags);
bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event);
bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
void QGraphicsDropShadowEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
QObject* QGraphicsDropShadowEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsDropShadowEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsDropShadowEffect_staticMetaObject();
void QGraphicsDropShadowEffect_delete(QGraphicsDropShadowEffect* self);

struct QGraphicsOpacityEffect_VTable {
	void (*destructor)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self);
	QMetaObject* (*metaObject)(struct QGraphicsOpacityEffect_VTable* vtbl, const QGraphicsOpacityEffect* self);
	void* (*metacast)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, const char* param1);
	int (*metacall)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, int param1, int param2, void** param3);
	void (*draw)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QPainter* painter);
	QRectF* (*boundingRectFor)(struct QGraphicsOpacityEffect_VTable* vtbl, const QGraphicsOpacityEffect* self, QRectF* sourceRect);
	void (*sourceChanged)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, int flags);
	bool (*event)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsOpacityEffect_VTable* vtbl, QGraphicsOpacityEffect* self, QMetaMethod* signal);
};
QGraphicsOpacityEffect* QGraphicsOpacityEffect_new(struct QGraphicsOpacityEffect_VTable* vtbl);
QGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(struct QGraphicsOpacityEffect_VTable* vtbl, QObject* parent);
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
void QGraphicsOpacityEffect_connect_opacityChanged(QGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QGraphicsOpacityEffect_opacityMaskChanged(QGraphicsOpacityEffect* self, QBrush* mask);
void QGraphicsOpacityEffect_connect_opacityMaskChanged(QGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, QBrush*), void (*release)(intptr_t));
void QGraphicsOpacityEffect_draw(QGraphicsOpacityEffect* self, QPainter* painter);
struct miqt_string QGraphicsOpacityEffect_tr2(const char* s, const char* c);
struct miqt_string QGraphicsOpacityEffect_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self);
void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1);
int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter);
QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);
void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags);
bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event);
bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsOpacityEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
void QGraphicsOpacityEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
QObject* QGraphicsOpacityEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsOpacityEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsOpacityEffect_staticMetaObject();
void QGraphicsOpacityEffect_delete(QGraphicsOpacityEffect* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
