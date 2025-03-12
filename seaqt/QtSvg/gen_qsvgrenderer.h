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

typedef struct VirtualQSvgRenderer VirtualQSvgRenderer;
typedef struct QSvgRenderer_VTable{
	void (*destructor)(VirtualQSvgRenderer* self);
	QMetaObject* (*metaObject)(const VirtualQSvgRenderer* self);
	void* (*metacast)(VirtualQSvgRenderer* self, const char* param1);
	int (*metacall)(VirtualQSvgRenderer* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSvgRenderer* self, QEvent* event);
	bool (*eventFilter)(VirtualQSvgRenderer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSvgRenderer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSvgRenderer* self, QChildEvent* event);
	void (*customEvent)(VirtualQSvgRenderer* self, QEvent* event);
	void (*connectNotify)(VirtualQSvgRenderer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSvgRenderer* self, QMetaMethod* signal);
}QSvgRenderer_VTable;

const QSvgRenderer_VTable* QSvgRenderer_vtbl(const VirtualQSvgRenderer* self);
void* QSvgRenderer_vdata(const VirtualQSvgRenderer* self);
void QSvgRenderer_setVdata(VirtualQSvgRenderer* self, void* vdata);

VirtualQSvgRenderer* QSvgRenderer_new(const QSvgRenderer_VTable* vtbl, void* vdata);
VirtualQSvgRenderer* QSvgRenderer_new2(const QSvgRenderer_VTable* vtbl, void* vdata, struct miqt_string filename);
VirtualQSvgRenderer* QSvgRenderer_new3(const QSvgRenderer_VTable* vtbl, void* vdata, struct miqt_string contents);
VirtualQSvgRenderer* QSvgRenderer_new4(const QSvgRenderer_VTable* vtbl, void* vdata, QXmlStreamReader* contents);
VirtualQSvgRenderer* QSvgRenderer_new5(const QSvgRenderer_VTable* vtbl, void* vdata, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new6(const QSvgRenderer_VTable* vtbl, void* vdata, struct miqt_string filename, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new7(const QSvgRenderer_VTable* vtbl, void* vdata, struct miqt_string contents, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new8(const QSvgRenderer_VTable* vtbl, void* vdata, QXmlStreamReader* contents, QObject* parent);

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
void QSvgRenderer_connect_repaintNeeded(VirtualQSvgRenderer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QSvgRenderer_tr2(const char* s, const char* c);
struct miqt_string QSvgRenderer_tr3(const char* s, const char* c, int n);
void QSvgRenderer_render32(QSvgRenderer* self, QPainter* p, struct miqt_string elementId, QRectF* bounds);

QMetaObject* QSvgRenderer_virtualbase_metaObject(const VirtualQSvgRenderer* self);
void* QSvgRenderer_virtualbase_metacast(VirtualQSvgRenderer* self, const char* param1);
int QSvgRenderer_virtualbase_metacall(VirtualQSvgRenderer* self, int param1, int param2, void** param3);
bool QSvgRenderer_virtualbase_event(VirtualQSvgRenderer* self, QEvent* event);
bool QSvgRenderer_virtualbase_eventFilter(VirtualQSvgRenderer* self, QObject* watched, QEvent* event);
void QSvgRenderer_virtualbase_timerEvent(VirtualQSvgRenderer* self, QTimerEvent* event);
void QSvgRenderer_virtualbase_childEvent(VirtualQSvgRenderer* self, QChildEvent* event);
void QSvgRenderer_virtualbase_customEvent(VirtualQSvgRenderer* self, QEvent* event);
void QSvgRenderer_virtualbase_connectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal);
void QSvgRenderer_virtualbase_disconnectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal);

QObject* QSvgRenderer_protectedbase_sender(const VirtualQSvgRenderer* self);
int QSvgRenderer_protectedbase_senderSignalIndex(const VirtualQSvgRenderer* self);
int QSvgRenderer_protectedbase_receivers(const VirtualQSvgRenderer* self, const char* signal);
bool QSvgRenderer_protectedbase_isSignalConnected(const VirtualQSvgRenderer* self, QMetaMethod* signal);

const QMetaObject* QSvgRenderer_staticMetaObject();
void QSvgRenderer_delete(QSvgRenderer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
