#pragma once
#ifndef SEAQT_QTSVG_GEN_QSVGRENDERER_H
#define SEAQT_QTSVG_GEN_QSVGRENDERER_H

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
class QPainter;
class QRect;
class QRectF;
class QSize;
class QSvgRenderer;
class QTimerEvent;
class QTransform;
class QXmlStreamReader;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QXmlStreamReader QXmlStreamReader;
#endif

struct QSvgRenderer_VTable {
	void (*destructor)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self);
	QMetaObject* (*metaObject)(struct QSvgRenderer_VTable* vtbl, const QSvgRenderer* self);
	void* (*metacast)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, const char* param1);
	int (*metacall)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, int param1, int param2, void** param3);
	bool (*event)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QEvent* event);
	bool (*eventFilter)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QTimerEvent* event);
	void (*childEvent)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QChildEvent* event);
	void (*customEvent)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QEvent* event);
	void (*connectNotify)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSvgRenderer_VTable* vtbl, QSvgRenderer* self, QMetaMethod* signal);
};
QSvgRenderer* QSvgRenderer_new(struct QSvgRenderer_VTable* vtbl);
QSvgRenderer* QSvgRenderer_new2(struct QSvgRenderer_VTable* vtbl, struct miqt_string filename);
QSvgRenderer* QSvgRenderer_new3(struct QSvgRenderer_VTable* vtbl, struct miqt_string contents);
QSvgRenderer* QSvgRenderer_new4(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents);
QSvgRenderer* QSvgRenderer_new5(struct QSvgRenderer_VTable* vtbl, QObject* parent);
QSvgRenderer* QSvgRenderer_new6(struct QSvgRenderer_VTable* vtbl, struct miqt_string filename, QObject* parent);
QSvgRenderer* QSvgRenderer_new7(struct QSvgRenderer_VTable* vtbl, struct miqt_string contents, QObject* parent);
QSvgRenderer* QSvgRenderer_new8(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents, QObject* parent);
void QSvgRenderer_virtbase(QSvgRenderer* src, QObject** outptr_QObject);
QMetaObject* QSvgRenderer_metaObject(const QSvgRenderer* self);
void* QSvgRenderer_metacast(QSvgRenderer* self, const char* param1);
int QSvgRenderer_metacall(QSvgRenderer* self, int param1, int param2, void** param3);
struct miqt_string QSvgRenderer_tr(const char* s);
bool QSvgRenderer_isValid(const QSvgRenderer* self);
QSize* QSvgRenderer_defaultSize(const QSvgRenderer* self);
QRect* QSvgRenderer_viewBox(const QSvgRenderer* self);
QRectF* QSvgRenderer_viewBoxF(const QSvgRenderer* self);
void QSvgRenderer_setViewBox(QSvgRenderer* self, QRect* viewbox);
void QSvgRenderer_setViewBoxWithViewbox(QSvgRenderer* self, QRectF* viewbox);
int QSvgRenderer_aspectRatioMode(const QSvgRenderer* self);
void QSvgRenderer_setAspectRatioMode(QSvgRenderer* self, int mode);
bool QSvgRenderer_animated(const QSvgRenderer* self);
int QSvgRenderer_framesPerSecond(const QSvgRenderer* self);
void QSvgRenderer_setFramesPerSecond(QSvgRenderer* self, int num);
int QSvgRenderer_currentFrame(const QSvgRenderer* self);
void QSvgRenderer_setCurrentFrame(QSvgRenderer* self, int currentFrame);
int QSvgRenderer_animationDuration(const QSvgRenderer* self);
QRectF* QSvgRenderer_boundsOnElement(const QSvgRenderer* self, struct miqt_string id);
bool QSvgRenderer_elementExists(const QSvgRenderer* self, struct miqt_string id);
QTransform* QSvgRenderer_transformForElement(const QSvgRenderer* self, struct miqt_string id);
bool QSvgRenderer_load(QSvgRenderer* self, struct miqt_string filename);
bool QSvgRenderer_loadWithContents(QSvgRenderer* self, struct miqt_string contents);
bool QSvgRenderer_load2(QSvgRenderer* self, QXmlStreamReader* contents);
void QSvgRenderer_render(QSvgRenderer* self, QPainter* p);
void QSvgRenderer_render2(QSvgRenderer* self, QPainter* p, QRectF* bounds);
void QSvgRenderer_render3(QSvgRenderer* self, QPainter* p, struct miqt_string elementId);
void QSvgRenderer_repaintNeeded(QSvgRenderer* self);
void QSvgRenderer_connect_repaintNeeded(QSvgRenderer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QSvgRenderer_tr2(const char* s, const char* c);
struct miqt_string QSvgRenderer_tr3(const char* s, const char* c, int n);
void QSvgRenderer_render32(QSvgRenderer* self, QPainter* p, struct miqt_string elementId, QRectF* bounds);
QMetaObject* QSvgRenderer_virtualbase_metaObject(const void* self);
void* QSvgRenderer_virtualbase_metacast(void* self, const char* param1);
int QSvgRenderer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSvgRenderer_virtualbase_event(void* self, QEvent* event);
bool QSvgRenderer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSvgRenderer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSvgRenderer_virtualbase_childEvent(void* self, QChildEvent* event);
void QSvgRenderer_virtualbase_customEvent(void* self, QEvent* event);
void QSvgRenderer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSvgRenderer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSvgRenderer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSvgRenderer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSvgRenderer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSvgRenderer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSvgRenderer_staticMetaObject();
void QSvgRenderer_delete(QSvgRenderer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
