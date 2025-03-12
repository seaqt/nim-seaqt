#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKPAINTEDITEM_H
#define SEAQT_QTQUICK_GEN_QQUICKPAINTEDITEM_H

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
class QColor;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHoverEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QObject;
class QPainter;
class QPointF;
class QQmlParserStatus;
class QQuickItem;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData)
typedef QQuickItem::ItemChangeData QQuickItem__ItemChangeData;
#else
class QQuickItem__ItemChangeData;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData)
typedef QQuickItem::UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
#else
class QQuickItem__UpdatePaintNodeData;
#endif
class QQuickPaintedItem;
class QRect;
class QRectF;
class QSGNode;
class QSGTextureProvider;
class QSize;
class QTimerEvent;
class QTouchEvent;
class QVariant;
class QWheelEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHoverEvent QHoverEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPointF QPointF;
typedef struct QQmlParserStatus QQmlParserStatus;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickItem__ItemChangeData QQuickItem__ItemChangeData;
typedef struct QQuickItem__UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
typedef struct QQuickPaintedItem QQuickPaintedItem;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSGNode QSGNode;
typedef struct QSGTextureProvider QSGTextureProvider;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
#endif

typedef struct VirtualQQuickPaintedItem VirtualQQuickPaintedItem;
typedef struct QQuickPaintedItem_VTable{
	void (*destructor)(VirtualQQuickPaintedItem* self);
	QMetaObject* (*metaObject)(const VirtualQQuickPaintedItem* self);
	void* (*metacast)(VirtualQQuickPaintedItem* self, const char* param1);
	int (*metacall)(VirtualQQuickPaintedItem* self, int param1, int param2, void** param3);
	void (*paint)(VirtualQQuickPaintedItem* self, QPainter* painter);
	bool (*isTextureProvider)(const VirtualQQuickPaintedItem* self);
	QSGTextureProvider* (*textureProvider)(const VirtualQQuickPaintedItem* self);
	QSGNode* (*updatePaintNode)(VirtualQQuickPaintedItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	void (*releaseResources)(VirtualQQuickPaintedItem* self);
	void (*itemChange)(VirtualQQuickPaintedItem* self, int param1, QQuickItem__ItemChangeData* param2);
	QRectF* (*boundingRect)(const VirtualQQuickPaintedItem* self);
	QRectF* (*clipRect)(const VirtualQQuickPaintedItem* self);
	bool (*contains)(const VirtualQQuickPaintedItem* self, QPointF* point);
	QVariant* (*inputMethodQuery)(const VirtualQQuickPaintedItem* self, int query);
	bool (*event)(VirtualQQuickPaintedItem* self, QEvent* param1);
	void (*classBegin)(VirtualQQuickPaintedItem* self);
	void (*componentComplete)(VirtualQQuickPaintedItem* self);
	void (*keyPressEvent)(VirtualQQuickPaintedItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQQuickPaintedItem* self, QKeyEvent* event);
	void (*inputMethodEvent)(VirtualQQuickPaintedItem* self, QInputMethodEvent* param1);
	void (*focusInEvent)(VirtualQQuickPaintedItem* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickPaintedItem* self, QFocusEvent* param1);
	void (*mousePressEvent)(VirtualQQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(VirtualQQuickPaintedItem* self);
	void (*touchUngrabEvent)(VirtualQQuickPaintedItem* self);
	void (*wheelEvent)(VirtualQQuickPaintedItem* self, QWheelEvent* event);
	void (*touchEvent)(VirtualQQuickPaintedItem* self, QTouchEvent* event);
	void (*hoverEnterEvent)(VirtualQQuickPaintedItem* self, QHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQQuickPaintedItem* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQQuickPaintedItem* self, QHoverEvent* event);
	void (*dragEnterEvent)(VirtualQQuickPaintedItem* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQQuickPaintedItem* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQQuickPaintedItem* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQQuickPaintedItem* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(VirtualQQuickPaintedItem* self, QQuickItem* param1, QEvent* param2);
	void (*windowDeactivateEvent)(VirtualQQuickPaintedItem* self);
	void (*geometryChanged)(VirtualQQuickPaintedItem* self, QRectF* newGeometry, QRectF* oldGeometry);
	void (*updatePolish)(VirtualQQuickPaintedItem* self);
	bool (*eventFilter)(VirtualQQuickPaintedItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickPaintedItem* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickPaintedItem* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickPaintedItem* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickPaintedItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickPaintedItem* self, QMetaMethod* signal);
}QQuickPaintedItem_VTable;

const QQuickPaintedItem_VTable* QQuickPaintedItem_vtbl(const VirtualQQuickPaintedItem* self);
void* QQuickPaintedItem_vdata(const VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_setVdata(VirtualQQuickPaintedItem* self, void* vdata);

VirtualQQuickPaintedItem* QQuickPaintedItem_new(const QQuickPaintedItem_VTable* vtbl, void* vdata);
VirtualQQuickPaintedItem* QQuickPaintedItem_new2(const QQuickPaintedItem_VTable* vtbl, void* vdata, QQuickItem* parent);

void QQuickPaintedItem_virtbase(QQuickPaintedItem* src, QQuickItem** outptr_QQuickItem);
QMetaObject* QQuickPaintedItem_metaObject(const QQuickPaintedItem* self);
void* QQuickPaintedItem_metacast(QQuickPaintedItem* self, const char* param1);
int QQuickPaintedItem_metacall(QQuickPaintedItem* self, int param1, int param2, void** param3);
struct miqt_string QQuickPaintedItem_tr(const char* s);
struct miqt_string QQuickPaintedItem_trUtf8(const char* s);
void QQuickPaintedItem_update(QQuickPaintedItem* self);
bool QQuickPaintedItem_opaquePainting(const QQuickPaintedItem* self);
void QQuickPaintedItem_setOpaquePainting(QQuickPaintedItem* self, bool opaque);
bool QQuickPaintedItem_antialiasing(const QQuickPaintedItem* self);
void QQuickPaintedItem_setAntialiasing(QQuickPaintedItem* self, bool enable);
bool QQuickPaintedItem_mipmap(const QQuickPaintedItem* self);
void QQuickPaintedItem_setMipmap(QQuickPaintedItem* self, bool enable);
int QQuickPaintedItem_performanceHints(const QQuickPaintedItem* self);
void QQuickPaintedItem_setPerformanceHint(QQuickPaintedItem* self, int hint);
void QQuickPaintedItem_setPerformanceHints(QQuickPaintedItem* self, int hints);
QRectF* QQuickPaintedItem_contentsBoundingRect(const QQuickPaintedItem* self);
QSize* QQuickPaintedItem_contentsSize(const QQuickPaintedItem* self);
void QQuickPaintedItem_setContentsSize(QQuickPaintedItem* self, QSize* contentsSize);
void QQuickPaintedItem_resetContentsSize(QQuickPaintedItem* self);
double QQuickPaintedItem_contentsScale(const QQuickPaintedItem* self);
void QQuickPaintedItem_setContentsScale(QQuickPaintedItem* self, double contentsScale);
QSize* QQuickPaintedItem_textureSize(const QQuickPaintedItem* self);
void QQuickPaintedItem_setTextureSize(QQuickPaintedItem* self, QSize* size);
QColor* QQuickPaintedItem_fillColor(const QQuickPaintedItem* self);
void QQuickPaintedItem_setFillColor(QQuickPaintedItem* self, QColor* fillColor);
int QQuickPaintedItem_renderTarget(const QQuickPaintedItem* self);
void QQuickPaintedItem_setRenderTarget(QQuickPaintedItem* self, int target);
void QQuickPaintedItem_paint(QQuickPaintedItem* self, QPainter* painter);
bool QQuickPaintedItem_isTextureProvider(const QQuickPaintedItem* self);
QSGTextureProvider* QQuickPaintedItem_textureProvider(const QQuickPaintedItem* self);
void QQuickPaintedItem_fillColorChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_fillColorChanged(VirtualQQuickPaintedItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickPaintedItem_contentsSizeChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_contentsSizeChanged(VirtualQQuickPaintedItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickPaintedItem_contentsScaleChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_contentsScaleChanged(VirtualQQuickPaintedItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickPaintedItem_renderTargetChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_renderTargetChanged(VirtualQQuickPaintedItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickPaintedItem_textureSizeChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_textureSizeChanged(VirtualQQuickPaintedItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
QSGNode* QQuickPaintedItem_updatePaintNode(QQuickPaintedItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickPaintedItem_releaseResources(QQuickPaintedItem* self);
void QQuickPaintedItem_itemChange(QQuickPaintedItem* self, int param1, QQuickItem__ItemChangeData* param2);
struct miqt_string QQuickPaintedItem_tr2(const char* s, const char* c);
struct miqt_string QQuickPaintedItem_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickPaintedItem_trUtf82(const char* s, const char* c);
struct miqt_string QQuickPaintedItem_trUtf83(const char* s, const char* c, int n);
void QQuickPaintedItem_update1(QQuickPaintedItem* self, QRect* rect);
void QQuickPaintedItem_setPerformanceHint2(QQuickPaintedItem* self, int hint, bool enabled);

QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const VirtualQQuickPaintedItem* self);
void* QQuickPaintedItem_virtualbase_metacast(VirtualQQuickPaintedItem* self, const char* param1);
int QQuickPaintedItem_virtualbase_metacall(VirtualQQuickPaintedItem* self, int param1, int param2, void** param3);
void QQuickPaintedItem_virtualbase_paint(VirtualQQuickPaintedItem* self, QPainter* painter);
bool QQuickPaintedItem_virtualbase_isTextureProvider(const VirtualQQuickPaintedItem* self);
QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const VirtualQQuickPaintedItem* self);
QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(VirtualQQuickPaintedItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickPaintedItem_virtualbase_releaseResources(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_itemChange(VirtualQQuickPaintedItem* self, int param1, QQuickItem__ItemChangeData* param2);
QRectF* QQuickPaintedItem_virtualbase_boundingRect(const VirtualQQuickPaintedItem* self);
QRectF* QQuickPaintedItem_virtualbase_clipRect(const VirtualQQuickPaintedItem* self);
bool QQuickPaintedItem_virtualbase_contains(const VirtualQQuickPaintedItem* self, QPointF* point);
QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const VirtualQQuickPaintedItem* self, int query);
bool QQuickPaintedItem_virtualbase_event(VirtualQQuickPaintedItem* self, QEvent* param1);
void QQuickPaintedItem_virtualbase_classBegin(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_componentComplete(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_keyPressEvent(VirtualQQuickPaintedItem* self, QKeyEvent* event);
void QQuickPaintedItem_virtualbase_keyReleaseEvent(VirtualQQuickPaintedItem* self, QKeyEvent* event);
void QQuickPaintedItem_virtualbase_inputMethodEvent(VirtualQQuickPaintedItem* self, QInputMethodEvent* param1);
void QQuickPaintedItem_virtualbase_focusInEvent(VirtualQQuickPaintedItem* self, QFocusEvent* param1);
void QQuickPaintedItem_virtualbase_focusOutEvent(VirtualQQuickPaintedItem* self, QFocusEvent* param1);
void QQuickPaintedItem_virtualbase_mousePressEvent(VirtualQQuickPaintedItem* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseMoveEvent(VirtualQQuickPaintedItem* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseReleaseEvent(VirtualQQuickPaintedItem* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickPaintedItem* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseUngrabEvent(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_touchUngrabEvent(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_wheelEvent(VirtualQQuickPaintedItem* self, QWheelEvent* event);
void QQuickPaintedItem_virtualbase_touchEvent(VirtualQQuickPaintedItem* self, QTouchEvent* event);
void QQuickPaintedItem_virtualbase_hoverEnterEvent(VirtualQQuickPaintedItem* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_hoverMoveEvent(VirtualQQuickPaintedItem* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_hoverLeaveEvent(VirtualQQuickPaintedItem* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_dragEnterEvent(VirtualQQuickPaintedItem* self, QDragEnterEvent* param1);
void QQuickPaintedItem_virtualbase_dragMoveEvent(VirtualQQuickPaintedItem* self, QDragMoveEvent* param1);
void QQuickPaintedItem_virtualbase_dragLeaveEvent(VirtualQQuickPaintedItem* self, QDragLeaveEvent* param1);
void QQuickPaintedItem_virtualbase_dropEvent(VirtualQQuickPaintedItem* self, QDropEvent* param1);
bool QQuickPaintedItem_virtualbase_childMouseEventFilter(VirtualQQuickPaintedItem* self, QQuickItem* param1, QEvent* param2);
void QQuickPaintedItem_virtualbase_windowDeactivateEvent(VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_virtualbase_geometryChanged(VirtualQQuickPaintedItem* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickPaintedItem_virtualbase_updatePolish(VirtualQQuickPaintedItem* self);
bool QQuickPaintedItem_virtualbase_eventFilter(VirtualQQuickPaintedItem* self, QObject* watched, QEvent* event);
void QQuickPaintedItem_virtualbase_timerEvent(VirtualQQuickPaintedItem* self, QTimerEvent* event);
void QQuickPaintedItem_virtualbase_childEvent(VirtualQQuickPaintedItem* self, QChildEvent* event);
void QQuickPaintedItem_virtualbase_customEvent(VirtualQQuickPaintedItem* self, QEvent* event);
void QQuickPaintedItem_virtualbase_connectNotify(VirtualQQuickPaintedItem* self, QMetaMethod* signal);
void QQuickPaintedItem_virtualbase_disconnectNotify(VirtualQQuickPaintedItem* self, QMetaMethod* signal);

bool QQuickPaintedItem_protectedbase_isComponentComplete(const VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_protectedbase_updateInputMethod(VirtualQQuickPaintedItem* self);
bool QQuickPaintedItem_protectedbase_widthValid(const VirtualQQuickPaintedItem* self);
bool QQuickPaintedItem_protectedbase_heightValid(const VirtualQQuickPaintedItem* self);
void QQuickPaintedItem_protectedbase_setImplicitSize(VirtualQQuickPaintedItem* self, double param1, double param2);
QObject* QQuickPaintedItem_protectedbase_sender(const VirtualQQuickPaintedItem* self);
int QQuickPaintedItem_protectedbase_senderSignalIndex(const VirtualQQuickPaintedItem* self);
int QQuickPaintedItem_protectedbase_receivers(const VirtualQQuickPaintedItem* self, const char* signal);
bool QQuickPaintedItem_protectedbase_isSignalConnected(const VirtualQQuickPaintedItem* self, QMetaMethod* signal);

const QMetaObject* QQuickPaintedItem_staticMetaObject();
void QQuickPaintedItem_delete(QQuickPaintedItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
