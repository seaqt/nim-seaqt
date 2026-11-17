#pragma once
#ifndef SEAQT_QTSVG_GEN_QSVGRENDERER_H
#define SEAQT_QTSVG_GEN_QSVGRENDERER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

void* QSvgRenderer_vdata(VirtualQSvgRenderer* self);
VirtualQSvgRenderer* vdata_QSvgRenderer(void* vdata);

VirtualQSvgRenderer* QSvgRenderer_new(const QSvgRenderer_VTable* vtbl, size_t vdata);
VirtualQSvgRenderer* QSvgRenderer_new_QString(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string filename);
VirtualQSvgRenderer* QSvgRenderer_new_QByteArray(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string contents);
VirtualQSvgRenderer* QSvgRenderer_new_QXmlStreamReader(const QSvgRenderer_VTable* vtbl, size_t vdata, QXmlStreamReader* contents);
VirtualQSvgRenderer* QSvgRenderer_new_QObject(const QSvgRenderer_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new_QString_QObject(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string filename, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new_QByteArray_QObject(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string contents, QObject* parent);
VirtualQSvgRenderer* QSvgRenderer_new_QXmlStreamReader_QObject(const QSvgRenderer_VTable* vtbl, size_t vdata, QXmlStreamReader* contents, QObject* parent);

void QSvgRenderer_virtbase(QSvgRenderer* src, QObject** outptr_QObject);
QMetaObject* QSvgRenderer_metaObject(const QSvgRenderer* self);
void* QSvgRenderer_metacast(QSvgRenderer* self, const char* param1);
int QSvgRenderer_metacall(QSvgRenderer* self, int param1, int param2, void** param3);
struct seaqt_string QSvgRenderer_tr_s(const char* s);
bool QSvgRenderer_isValid(const QSvgRenderer* self);
QSize* QSvgRenderer_defaultSize(const QSvgRenderer* self);
QRect* QSvgRenderer_viewBox(const QSvgRenderer* self);
QRectF* QSvgRenderer_viewBoxF(const QSvgRenderer* self);
void QSvgRenderer_setViewBox_QRect(QSvgRenderer* self, QRect* viewbox);
void QSvgRenderer_setViewBox_QRectF(QSvgRenderer* self, QRectF* viewbox);
int QSvgRenderer_aspectRatioMode(const QSvgRenderer* self);
void QSvgRenderer_setAspectRatioMode(QSvgRenderer* self, int mode);
uint32_t QSvgRenderer_options(const QSvgRenderer* self);
void QSvgRenderer_setOptions(QSvgRenderer* self, uint32_t flags);
bool QSvgRenderer_animated(const QSvgRenderer* self);
int QSvgRenderer_framesPerSecond(const QSvgRenderer* self);
void QSvgRenderer_setFramesPerSecond(QSvgRenderer* self, int num);
int QSvgRenderer_currentFrame(const QSvgRenderer* self);
void QSvgRenderer_setCurrentFrame(QSvgRenderer* self, int currentFrame);
int QSvgRenderer_animationDuration(const QSvgRenderer* self);
bool QSvgRenderer_isAnimationEnabled(const QSvgRenderer* self);
void QSvgRenderer_setAnimationEnabled(QSvgRenderer* self, bool enable);
QRectF* QSvgRenderer_boundsOnElement(const QSvgRenderer* self, struct seaqt_string id);
bool QSvgRenderer_elementExists(const QSvgRenderer* self, struct seaqt_string id);
QTransform* QSvgRenderer_transformForElement(const QSvgRenderer* self, struct seaqt_string id);
void QSvgRenderer_setDefaultOptions(uint32_t flags);
bool QSvgRenderer_load_QString(QSvgRenderer* self, struct seaqt_string filename);
bool QSvgRenderer_load_QByteArray(QSvgRenderer* self, struct seaqt_string contents);
bool QSvgRenderer_load_QXmlStreamReader(QSvgRenderer* self, QXmlStreamReader* contents);
void QSvgRenderer_render_p(QSvgRenderer* self, QPainter* p);
void QSvgRenderer_render_p_bounds(QSvgRenderer* self, QPainter* p, QRectF* bounds);
void QSvgRenderer_render_p_elementId(QSvgRenderer* self, QPainter* p, struct seaqt_string elementId);
void QSvgRenderer_repaintNeeded(QSvgRenderer* self);
void QSvgRenderer_connect_repaintNeeded(QSvgRenderer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QSvgRenderer_tr_s_c(const char* s, const char* c);
struct seaqt_string QSvgRenderer_tr_s_c_n(const char* s, const char* c, int n);
void QSvgRenderer_render_p_elementId_bounds(QSvgRenderer* self, QPainter* p, struct seaqt_string elementId, QRectF* bounds);

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
