#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKFRAMEBUFFEROBJECT_H
#define SEAQT_QTQUICK_GEN_QQUICKFRAMEBUFFEROBJECT_H

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
class QPointF;
class QQmlParserStatus;
class QQuickFramebufferObject;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickFramebufferObject__Renderer)
typedef QQuickFramebufferObject::Renderer QQuickFramebufferObject__Renderer;
#else
class QQuickFramebufferObject__Renderer;
#endif
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
class QRectF;
class QSGNode;
class QSGTextureProvider;
class QTimerEvent;
class QTouchEvent;
class QVariant;
class QWheelEvent;
#else
typedef struct QChildEvent QChildEvent;
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
typedef struct QPointF QPointF;
typedef struct QQmlParserStatus QQmlParserStatus;
typedef struct QQuickFramebufferObject QQuickFramebufferObject;
typedef struct QQuickFramebufferObject__Renderer QQuickFramebufferObject__Renderer;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickItem__ItemChangeData QQuickItem__ItemChangeData;
typedef struct QQuickItem__UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
typedef struct QRectF QRectF;
typedef struct QSGNode QSGNode;
typedef struct QSGTextureProvider QSGTextureProvider;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
#endif

QQuickFramebufferObject* QQuickFramebufferObject_new();
QQuickFramebufferObject* QQuickFramebufferObject_new2(QQuickItem* parent);
void QQuickFramebufferObject_virtbase(QQuickFramebufferObject* src, QQuickItem** outptr_QQuickItem);
QMetaObject* QQuickFramebufferObject_metaObject(const QQuickFramebufferObject* self);
void* QQuickFramebufferObject_metacast(QQuickFramebufferObject* self, const char* param1);
struct miqt_string QQuickFramebufferObject_tr(const char* s);
struct miqt_string QQuickFramebufferObject_trUtf8(const char* s);
bool QQuickFramebufferObject_textureFollowsItemSize(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_setTextureFollowsItemSize(QQuickFramebufferObject* self, bool follows);
bool QQuickFramebufferObject_mirrorVertically(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_setMirrorVertically(QQuickFramebufferObject* self, bool enable);
QQuickFramebufferObject__Renderer* QQuickFramebufferObject_createRenderer(const QQuickFramebufferObject* self);
bool QQuickFramebufferObject_isTextureProvider(const QQuickFramebufferObject* self);
QSGTextureProvider* QQuickFramebufferObject_textureProvider(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_releaseResources(QQuickFramebufferObject* self);
void QQuickFramebufferObject_geometryChanged(QQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);
QSGNode* QQuickFramebufferObject_updatePaintNode(QQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickFramebufferObject_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, bool param1);
void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, intptr_t slot);
void QQuickFramebufferObject_mirrorVerticallyChanged(QQuickFramebufferObject* self, bool param1);
void QQuickFramebufferObject_connect_mirrorVerticallyChanged(QQuickFramebufferObject* self, intptr_t slot);
struct miqt_string QQuickFramebufferObject_tr2(const char* s, const char* c);
struct miqt_string QQuickFramebufferObject_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickFramebufferObject_trUtf82(const char* s, const char* c);
struct miqt_string QQuickFramebufferObject_trUtf83(const char* s, const char* c, int n);
bool QQuickFramebufferObject_override_virtual_createRenderer(void* self, intptr_t slot);
QQuickFramebufferObject__Renderer* QQuickFramebufferObject_virtualbase_createRenderer(const void* self);
bool QQuickFramebufferObject_override_virtual_isTextureProvider(void* self, intptr_t slot);
bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self);
bool QQuickFramebufferObject_override_virtual_textureProvider(void* self, intptr_t slot);
QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self);
bool QQuickFramebufferObject_override_virtual_releaseResources(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_releaseResources(void* self);
bool QQuickFramebufferObject_override_virtual_geometryChanged(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry);
bool QQuickFramebufferObject_override_virtual_updatePaintNode(void* self, intptr_t slot);
QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
bool QQuickFramebufferObject_override_virtual_boundingRect(void* self, intptr_t slot);
QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self);
bool QQuickFramebufferObject_override_virtual_clipRect(void* self, intptr_t slot);
QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self);
bool QQuickFramebufferObject_override_virtual_contains(void* self, intptr_t slot);
bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point);
bool QQuickFramebufferObject_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query);
bool QQuickFramebufferObject_override_virtual_event(void* self, intptr_t slot);
bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1);
bool QQuickFramebufferObject_override_virtual_itemChange(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);
bool QQuickFramebufferObject_override_virtual_classBegin(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_classBegin(void* self);
bool QQuickFramebufferObject_override_virtual_componentComplete(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_componentComplete(void* self);
bool QQuickFramebufferObject_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QQuickFramebufferObject_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QQuickFramebufferObject_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QQuickFramebufferObject_override_virtual_focusInEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QQuickFramebufferObject_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QQuickFramebufferObject_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QQuickFramebufferObject_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QQuickFramebufferObject_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QQuickFramebufferObject_override_virtual_mouseUngrabEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self);
bool QQuickFramebufferObject_override_virtual_touchUngrabEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self);
bool QQuickFramebufferObject_override_virtual_wheelEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QQuickFramebufferObject_override_virtual_touchEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event);
bool QQuickFramebufferObject_override_virtual_hoverEnterEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);
bool QQuickFramebufferObject_override_virtual_hoverMoveEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);
bool QQuickFramebufferObject_override_virtual_hoverLeaveEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);
bool QQuickFramebufferObject_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
bool QQuickFramebufferObject_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
bool QQuickFramebufferObject_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
bool QQuickFramebufferObject_override_virtual_dropEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1);
bool QQuickFramebufferObject_override_virtual_childMouseEventFilter(void* self, intptr_t slot);
bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);
bool QQuickFramebufferObject_override_virtual_windowDeactivateEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_windowDeactivateEvent(void* self);
bool QQuickFramebufferObject_override_virtual_updatePolish(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_updatePolish(void* self);
bool QQuickFramebufferObject_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickFramebufferObject_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickFramebufferObject_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickFramebufferObject_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickFramebufferObject_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickFramebufferObject_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickFramebufferObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QQuickFramebufferObject_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self);
void QQuickFramebufferObject_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self);
bool QQuickFramebufferObject_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self);
bool QQuickFramebufferObject_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self);
void QQuickFramebufferObject_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2);
QObject* QQuickFramebufferObject_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickFramebufferObject_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickFramebufferObject_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickFramebufferObject_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickFramebufferObject_delete(QQuickFramebufferObject* self);

void QQuickFramebufferObject__Renderer_render(QQuickFramebufferObject__Renderer* self);
void QQuickFramebufferObject__Renderer_synchronize(QQuickFramebufferObject__Renderer* self, QQuickFramebufferObject* param1);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
