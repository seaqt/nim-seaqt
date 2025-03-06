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

QQuickPaintedItem* QQuickPaintedItem_new();
QQuickPaintedItem* QQuickPaintedItem_new2(QQuickItem* parent);
void QQuickPaintedItem_virtbase(QQuickPaintedItem* src, QQuickItem** outptr_QQuickItem);
QMetaObject* QQuickPaintedItem_metaObject(const QQuickPaintedItem* self);
void* QQuickPaintedItem_metacast(QQuickPaintedItem* self, const char* param1);
int QQuickPaintedItem_metacall(QQuickPaintedItem* self, int param1, int param2, void** param3);
struct miqt_string QQuickPaintedItem_tr(const char* s);
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
void QQuickPaintedItem_update1(QQuickPaintedItem* self, QRect* rect);
void QQuickPaintedItem_setPerformanceHint2(QQuickPaintedItem* self, int hint, bool enabled);
bool QQuickPaintedItem_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const void* self);
bool QQuickPaintedItem_override_virtual_metacast(void* self, intptr_t slot);
void* QQuickPaintedItem_virtualbase_metacast(void* self, const char* param1);
bool QQuickPaintedItem_override_virtual_metacall(void* self, intptr_t slot);
int QQuickPaintedItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQuickPaintedItem_override_virtual_paint(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_paint(void* self, QPainter* painter);
bool QQuickPaintedItem_override_virtual_isTextureProvider(void* self, intptr_t slot);
bool QQuickPaintedItem_virtualbase_isTextureProvider(const void* self);
bool QQuickPaintedItem_override_virtual_textureProvider(void* self, intptr_t slot);
QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const void* self);
bool QQuickPaintedItem_override_virtual_updatePaintNode(void* self, intptr_t slot);
QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
bool QQuickPaintedItem_override_virtual_releaseResources(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_releaseResources(void* self);
bool QQuickPaintedItem_override_virtual_itemChange(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);
bool QQuickPaintedItem_override_virtual_boundingRect(void* self, intptr_t slot);
QRectF* QQuickPaintedItem_virtualbase_boundingRect(const void* self);
bool QQuickPaintedItem_override_virtual_clipRect(void* self, intptr_t slot);
QRectF* QQuickPaintedItem_virtualbase_clipRect(const void* self);
bool QQuickPaintedItem_override_virtual_contains(void* self, intptr_t slot);
bool QQuickPaintedItem_virtualbase_contains(const void* self, QPointF* point);
bool QQuickPaintedItem_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const void* self, int query);
bool QQuickPaintedItem_override_virtual_event(void* self, intptr_t slot);
bool QQuickPaintedItem_virtualbase_event(void* self, QEvent* param1);
bool QQuickPaintedItem_override_virtual_geometryChange(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry);
bool QQuickPaintedItem_override_virtual_classBegin(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_classBegin(void* self);
bool QQuickPaintedItem_override_virtual_componentComplete(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_componentComplete(void* self);
bool QQuickPaintedItem_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QQuickPaintedItem_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QQuickPaintedItem_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QQuickPaintedItem_override_virtual_focusInEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QQuickPaintedItem_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QQuickPaintedItem_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QQuickPaintedItem_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QQuickPaintedItem_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QQuickPaintedItem_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QQuickPaintedItem_override_virtual_mouseUngrabEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_mouseUngrabEvent(void* self);
bool QQuickPaintedItem_override_virtual_touchUngrabEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_touchUngrabEvent(void* self);
bool QQuickPaintedItem_override_virtual_wheelEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QQuickPaintedItem_override_virtual_touchEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_touchEvent(void* self, QTouchEvent* event);
bool QQuickPaintedItem_override_virtual_hoverEnterEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);
bool QQuickPaintedItem_override_virtual_hoverMoveEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);
bool QQuickPaintedItem_override_virtual_hoverLeaveEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);
bool QQuickPaintedItem_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
bool QQuickPaintedItem_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
bool QQuickPaintedItem_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
bool QQuickPaintedItem_override_virtual_dropEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_dropEvent(void* self, QDropEvent* param1);
bool QQuickPaintedItem_override_virtual_childMouseEventFilter(void* self, intptr_t slot);
bool QQuickPaintedItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);
bool QQuickPaintedItem_override_virtual_updatePolish(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_updatePolish(void* self);
bool QQuickPaintedItem_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickPaintedItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickPaintedItem_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickPaintedItem_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickPaintedItem_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickPaintedItem_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickPaintedItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickPaintedItem_override_virtual_disconnectNotify(void* self, intptr_t slot);
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
