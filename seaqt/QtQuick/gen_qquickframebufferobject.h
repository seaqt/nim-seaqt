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

struct QQuickFramebufferObject_VTable {
	void (*destructor)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	QMetaObject* (*metaObject)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	void* (*metacast)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, const char* param1);
	int (*metacall)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, int param1, int param2, void** param3);
	QQuickFramebufferObject__Renderer* (*createRenderer)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	bool (*isTextureProvider)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	QSGTextureProvider* (*textureProvider)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	void (*releaseResources)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	void (*geometryChange)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);
	QSGNode* (*updatePaintNode)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	QRectF* (*boundingRect)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	QRectF* (*clipRect)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self);
	bool (*contains)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self, QPointF* point);
	QVariant* (*inputMethodQuery)(struct QQuickFramebufferObject_VTable* vtbl, const QQuickFramebufferObject* self, int query);
	bool (*event)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QEvent* param1);
	void (*itemChange)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, int param1, QQuickItem__ItemChangeData* param2);
	void (*classBegin)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	void (*componentComplete)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	void (*keyPressEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QKeyEvent* event);
	void (*inputMethodEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QInputMethodEvent* param1);
	void (*focusInEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QFocusEvent* param1);
	void (*mousePressEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	void (*touchUngrabEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	void (*wheelEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QWheelEvent* event);
	void (*touchEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QTouchEvent* event);
	void (*hoverEnterEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QHoverEvent* event);
	void (*hoverMoveEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QHoverEvent* event);
	void (*dragEnterEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QDragLeaveEvent* param1);
	void (*dropEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QQuickItem* param1, QEvent* param2);
	void (*updatePolish)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self);
	bool (*eventFilter)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QChildEvent* event);
	void (*customEvent)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QEvent* event);
	void (*connectNotify)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickFramebufferObject_VTable* vtbl, QQuickFramebufferObject* self, QMetaMethod* signal);
};
QQuickFramebufferObject* QQuickFramebufferObject_new(struct QQuickFramebufferObject_VTable* vtbl);
QQuickFramebufferObject* QQuickFramebufferObject_new2(struct QQuickFramebufferObject_VTable* vtbl, QQuickItem* parent);
void QQuickFramebufferObject_virtbase(QQuickFramebufferObject* src, QQuickItem** outptr_QQuickItem);
QMetaObject* QQuickFramebufferObject_metaObject(const QQuickFramebufferObject* self);
void* QQuickFramebufferObject_metacast(QQuickFramebufferObject* self, const char* param1);
int QQuickFramebufferObject_metacall(QQuickFramebufferObject* self, int param1, int param2, void** param3);
struct miqt_string QQuickFramebufferObject_tr(const char* s);
bool QQuickFramebufferObject_textureFollowsItemSize(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_setTextureFollowsItemSize(QQuickFramebufferObject* self, bool follows);
bool QQuickFramebufferObject_mirrorVertically(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_setMirrorVertically(QQuickFramebufferObject* self, bool enable);
QQuickFramebufferObject__Renderer* QQuickFramebufferObject_createRenderer(const QQuickFramebufferObject* self);
bool QQuickFramebufferObject_isTextureProvider(const QQuickFramebufferObject* self);
QSGTextureProvider* QQuickFramebufferObject_textureProvider(const QQuickFramebufferObject* self);
void QQuickFramebufferObject_releaseResources(QQuickFramebufferObject* self);
void QQuickFramebufferObject_geometryChange(QQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);
QSGNode* QQuickFramebufferObject_updatePaintNode(QQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
void QQuickFramebufferObject_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, bool param1);
void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, intptr_t slot);
void QQuickFramebufferObject_mirrorVerticallyChanged(QQuickFramebufferObject* self, bool param1);
void QQuickFramebufferObject_connect_mirrorVerticallyChanged(QQuickFramebufferObject* self, intptr_t slot);
struct miqt_string QQuickFramebufferObject_tr2(const char* s, const char* c);
struct miqt_string QQuickFramebufferObject_tr3(const char* s, const char* c, int n);
QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const void* self);
void* QQuickFramebufferObject_virtualbase_metacast(void* self, const char* param1);
int QQuickFramebufferObject_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QQuickFramebufferObject__Renderer* QQuickFramebufferObject_virtualbase_createRenderer(const void* self);
bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self);
QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self);
void QQuickFramebufferObject_virtualbase_releaseResources(void* self);
void QQuickFramebufferObject_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry);
QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self);
QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self);
bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point);
QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query);
bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1);
void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);
void QQuickFramebufferObject_virtualbase_classBegin(void* self);
void QQuickFramebufferObject_virtualbase_componentComplete(void* self);
void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self);
void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self);
void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event);
void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1);
bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);
void QQuickFramebufferObject_virtualbase_updatePolish(void* self);
bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event);
void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal);
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
const QMetaObject* QQuickFramebufferObject_staticMetaObject();
void QQuickFramebufferObject_delete(QQuickFramebufferObject* self);

void QQuickFramebufferObject__Renderer_render(QQuickFramebufferObject__Renderer* self);
void QQuickFramebufferObject__Renderer_synchronize(QQuickFramebufferObject__Renderer* self, QQuickFramebufferObject* param1);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
