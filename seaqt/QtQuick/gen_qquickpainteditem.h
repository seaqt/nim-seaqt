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

struct QQuickPaintedItem_VTable {
	void (*destructor)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	QMetaObject* (*metaObject)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self);
	void* (*metacast)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, const char* param1);
	int (*metacall)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, int param1, int param2, void** param3);
	void (*paint)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QPainter* painter);
	bool (*isTextureProvider)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self);
	QSGTextureProvider* (*textureProvider)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self);
	QSGNode* (*updatePaintNode)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	void (*releaseResources)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*itemChange)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, int param1, QQuickItem__ItemChangeData* param2);
	QRectF* (*boundingRect)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self);
	QRectF* (*clipRect)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self);
	bool (*contains)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self, QPointF* point);
	QVariant* (*inputMethodQuery)(struct QQuickPaintedItem_VTable* vtbl, const QQuickPaintedItem* self, int query);
	bool (*event)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QEvent* param1);
	void (*classBegin)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*componentComplete)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*keyPressEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QKeyEvent* event);
	void (*inputMethodEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QInputMethodEvent* param1);
	void (*focusInEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QFocusEvent* param1);
	void (*mousePressEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*touchUngrabEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*wheelEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QWheelEvent* event);
	void (*touchEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QTouchEvent* event);
	void (*hoverEnterEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QHoverEvent* event);
	void (*hoverMoveEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QHoverEvent* event);
	void (*dragEnterEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QDragLeaveEvent* param1);
	void (*dropEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QQuickItem* param1, QEvent* param2);
	void (*windowDeactivateEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	void (*geometryChanged)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QRectF* newGeometry, QRectF* oldGeometry);
	void (*updatePolish)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self);
	bool (*eventFilter)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QChildEvent* event);
	void (*customEvent)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QEvent* event);
	void (*connectNotify)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickPaintedItem_VTable* vtbl, QQuickPaintedItem* self, QMetaMethod* signal);
};
QQuickPaintedItem* QQuickPaintedItem_new(struct QQuickPaintedItem_VTable* vtbl);
QQuickPaintedItem* QQuickPaintedItem_new2(struct QQuickPaintedItem_VTable* vtbl, QQuickItem* parent);
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
void QQuickPaintedItem_connect_fillColorChanged(QQuickPaintedItem* self, intptr_t slot);
void QQuickPaintedItem_contentsSizeChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_contentsSizeChanged(QQuickPaintedItem* self, intptr_t slot);
void QQuickPaintedItem_contentsScaleChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_contentsScaleChanged(QQuickPaintedItem* self, intptr_t slot);
void QQuickPaintedItem_renderTargetChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_renderTargetChanged(QQuickPaintedItem* self, intptr_t slot);
void QQuickPaintedItem_textureSizeChanged(QQuickPaintedItem* self);
void QQuickPaintedItem_connect_textureSizeChanged(QQuickPaintedItem* self, intptr_t slot);
QSGNode* QQuickPaintedItem_updatePaintNode(QQuickPaintedItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickPaintedItem_releaseResources(QQuickPaintedItem* self);
void QQuickPaintedItem_itemChange(QQuickPaintedItem* self, int param1, QQuickItem__ItemChangeData* param2);
struct miqt_string QQuickPaintedItem_tr2(const char* s, const char* c);
struct miqt_string QQuickPaintedItem_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickPaintedItem_trUtf82(const char* s, const char* c);
struct miqt_string QQuickPaintedItem_trUtf83(const char* s, const char* c, int n);
void QQuickPaintedItem_update1(QQuickPaintedItem* self, QRect* rect);
void QQuickPaintedItem_setPerformanceHint2(QQuickPaintedItem* self, int hint, bool enabled);
QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const void* self);
void* QQuickPaintedItem_virtualbase_metacast(void* self, const char* param1);
int QQuickPaintedItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QQuickPaintedItem_virtualbase_paint(void* self, QPainter* painter);
bool QQuickPaintedItem_virtualbase_isTextureProvider(const void* self);
QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const void* self);
QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickPaintedItem_virtualbase_releaseResources(void* self);
void QQuickPaintedItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);
QRectF* QQuickPaintedItem_virtualbase_boundingRect(const void* self);
QRectF* QQuickPaintedItem_virtualbase_clipRect(const void* self);
bool QQuickPaintedItem_virtualbase_contains(const void* self, QPointF* point);
QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const void* self, int query);
bool QQuickPaintedItem_virtualbase_event(void* self, QEvent* param1);
void QQuickPaintedItem_virtualbase_classBegin(void* self);
void QQuickPaintedItem_virtualbase_componentComplete(void* self);
void QQuickPaintedItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QQuickPaintedItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QQuickPaintedItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
void QQuickPaintedItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QQuickPaintedItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
void QQuickPaintedItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QQuickPaintedItem_virtualbase_mouseUngrabEvent(void* self);
void QQuickPaintedItem_virtualbase_touchUngrabEvent(void* self);
void QQuickPaintedItem_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QQuickPaintedItem_virtualbase_touchEvent(void* self, QTouchEvent* event);
void QQuickPaintedItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);
void QQuickPaintedItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
void QQuickPaintedItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
void QQuickPaintedItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
void QQuickPaintedItem_virtualbase_dropEvent(void* self, QDropEvent* param1);
bool QQuickPaintedItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);
void QQuickPaintedItem_virtualbase_windowDeactivateEvent(void* self);
void QQuickPaintedItem_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickPaintedItem_virtualbase_updatePolish(void* self);
bool QQuickPaintedItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickPaintedItem_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickPaintedItem_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickPaintedItem_virtualbase_customEvent(void* self, QEvent* event);
void QQuickPaintedItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickPaintedItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QQuickPaintedItem_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self);
void QQuickPaintedItem_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self);
bool QQuickPaintedItem_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self);
bool QQuickPaintedItem_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self);
void QQuickPaintedItem_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2);
QObject* QQuickPaintedItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickPaintedItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickPaintedItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickPaintedItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQuickPaintedItem_staticMetaObject();
void QQuickPaintedItem_delete(QQuickPaintedItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
