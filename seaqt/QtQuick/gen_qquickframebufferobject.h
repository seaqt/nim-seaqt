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

typedef struct VirtualQQuickFramebufferObject VirtualQQuickFramebufferObject;
typedef struct QQuickFramebufferObject_VTable{
	void (*destructor)(VirtualQQuickFramebufferObject* self);
	QMetaObject* (*metaObject)(const VirtualQQuickFramebufferObject* self);
	void* (*metacast)(VirtualQQuickFramebufferObject* self, const char* param1);
	int (*metacall)(VirtualQQuickFramebufferObject* self, int param1, int param2, void** param3);
	QQuickFramebufferObject__Renderer* (*createRenderer)(const VirtualQQuickFramebufferObject* self);
	bool (*isTextureProvider)(const VirtualQQuickFramebufferObject* self);
	QSGTextureProvider* (*textureProvider)(const VirtualQQuickFramebufferObject* self);
	void (*releaseResources)(VirtualQQuickFramebufferObject* self);
	void (*geometryChange)(VirtualQQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);
	QSGNode* (*updatePaintNode)(VirtualQQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	QRectF* (*boundingRect)(const VirtualQQuickFramebufferObject* self);
	QRectF* (*clipRect)(const VirtualQQuickFramebufferObject* self);
	bool (*contains)(const VirtualQQuickFramebufferObject* self, QPointF* point);
	QVariant* (*inputMethodQuery)(const VirtualQQuickFramebufferObject* self, int query);
	bool (*event)(VirtualQQuickFramebufferObject* self, QEvent* param1);
	void (*itemChange)(VirtualQQuickFramebufferObject* self, int param1, QQuickItem__ItemChangeData* param2);
	void (*classBegin)(VirtualQQuickFramebufferObject* self);
	void (*componentComplete)(VirtualQQuickFramebufferObject* self);
	void (*keyPressEvent)(VirtualQQuickFramebufferObject* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQQuickFramebufferObject* self, QKeyEvent* event);
	void (*inputMethodEvent)(VirtualQQuickFramebufferObject* self, QInputMethodEvent* param1);
	void (*focusInEvent)(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);
	void (*mousePressEvent)(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(VirtualQQuickFramebufferObject* self);
	void (*touchUngrabEvent)(VirtualQQuickFramebufferObject* self);
	void (*wheelEvent)(VirtualQQuickFramebufferObject* self, QWheelEvent* event);
	void (*touchEvent)(VirtualQQuickFramebufferObject* self, QTouchEvent* event);
	void (*hoverEnterEvent)(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
	void (*dragEnterEvent)(VirtualQQuickFramebufferObject* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQQuickFramebufferObject* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQQuickFramebufferObject* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQQuickFramebufferObject* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(VirtualQQuickFramebufferObject* self, QQuickItem* param1, QEvent* param2);
	void (*updatePolish)(VirtualQQuickFramebufferObject* self);
	bool (*eventFilter)(VirtualQQuickFramebufferObject* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickFramebufferObject* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickFramebufferObject* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickFramebufferObject* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);
}QQuickFramebufferObject_VTable;

const QQuickFramebufferObject_VTable* QQuickFramebufferObject_vtbl(const VirtualQQuickFramebufferObject* self);
void* QQuickFramebufferObject_vdata(const VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_setVdata(VirtualQQuickFramebufferObject* self, void* vdata);

VirtualQQuickFramebufferObject* QQuickFramebufferObject_new(const QQuickFramebufferObject_VTable* vtbl, void* vdata);
VirtualQQuickFramebufferObject* QQuickFramebufferObject_new2(const QQuickFramebufferObject_VTable* vtbl, void* vdata, QQuickItem* parent);

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
void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(VirtualQQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QQuickFramebufferObject_mirrorVerticallyChanged(QQuickFramebufferObject* self, bool param1);
void QQuickFramebufferObject_connect_mirrorVerticallyChanged(VirtualQQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct miqt_string QQuickFramebufferObject_tr2(const char* s, const char* c);
struct miqt_string QQuickFramebufferObject_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const VirtualQQuickFramebufferObject* self);
void* QQuickFramebufferObject_virtualbase_metacast(VirtualQQuickFramebufferObject* self, const char* param1);
int QQuickFramebufferObject_virtualbase_metacall(VirtualQQuickFramebufferObject* self, int param1, int param2, void** param3);
QQuickFramebufferObject__Renderer* QQuickFramebufferObject_virtualbase_createRenderer(const VirtualQQuickFramebufferObject* self);
bool QQuickFramebufferObject_virtualbase_isTextureProvider(const VirtualQQuickFramebufferObject* self);
QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_releaseResources(VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_geometryChange(VirtualQQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);
QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(VirtualQQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const VirtualQQuickFramebufferObject* self);
QRectF* QQuickFramebufferObject_virtualbase_clipRect(const VirtualQQuickFramebufferObject* self);
bool QQuickFramebufferObject_virtualbase_contains(const VirtualQQuickFramebufferObject* self, QPointF* point);
QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const VirtualQQuickFramebufferObject* self, int query);
bool QQuickFramebufferObject_virtualbase_event(VirtualQQuickFramebufferObject* self, QEvent* param1);
void QQuickFramebufferObject_virtualbase_itemChange(VirtualQQuickFramebufferObject* self, int param1, QQuickItem__ItemChangeData* param2);
void QQuickFramebufferObject_virtualbase_classBegin(VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_componentComplete(VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_keyPressEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event);
void QQuickFramebufferObject_virtualbase_keyReleaseEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event);
void QQuickFramebufferObject_virtualbase_inputMethodEvent(VirtualQQuickFramebufferObject* self, QInputMethodEvent* param1);
void QQuickFramebufferObject_virtualbase_focusInEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);
void QQuickFramebufferObject_virtualbase_focusOutEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);
void QQuickFramebufferObject_virtualbase_mousePressEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseMoveEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);
void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_touchUngrabEvent(VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_virtualbase_wheelEvent(VirtualQQuickFramebufferObject* self, QWheelEvent* event);
void QQuickFramebufferObject_virtualbase_touchEvent(VirtualQQuickFramebufferObject* self, QTouchEvent* event);
void QQuickFramebufferObject_virtualbase_hoverEnterEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_hoverMoveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);
void QQuickFramebufferObject_virtualbase_dragEnterEvent(VirtualQQuickFramebufferObject* self, QDragEnterEvent* param1);
void QQuickFramebufferObject_virtualbase_dragMoveEvent(VirtualQQuickFramebufferObject* self, QDragMoveEvent* param1);
void QQuickFramebufferObject_virtualbase_dragLeaveEvent(VirtualQQuickFramebufferObject* self, QDragLeaveEvent* param1);
void QQuickFramebufferObject_virtualbase_dropEvent(VirtualQQuickFramebufferObject* self, QDropEvent* param1);
bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(VirtualQQuickFramebufferObject* self, QQuickItem* param1, QEvent* param2);
void QQuickFramebufferObject_virtualbase_updatePolish(VirtualQQuickFramebufferObject* self);
bool QQuickFramebufferObject_virtualbase_eventFilter(VirtualQQuickFramebufferObject* self, QObject* watched, QEvent* event);
void QQuickFramebufferObject_virtualbase_timerEvent(VirtualQQuickFramebufferObject* self, QTimerEvent* event);
void QQuickFramebufferObject_virtualbase_childEvent(VirtualQQuickFramebufferObject* self, QChildEvent* event);
void QQuickFramebufferObject_virtualbase_customEvent(VirtualQQuickFramebufferObject* self, QEvent* event);
void QQuickFramebufferObject_virtualbase_connectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);
void QQuickFramebufferObject_virtualbase_disconnectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);

bool QQuickFramebufferObject_protectedbase_isComponentComplete(const VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_protectedbase_updateInputMethod(VirtualQQuickFramebufferObject* self);
bool QQuickFramebufferObject_protectedbase_widthValid(const VirtualQQuickFramebufferObject* self);
bool QQuickFramebufferObject_protectedbase_heightValid(const VirtualQQuickFramebufferObject* self);
void QQuickFramebufferObject_protectedbase_setImplicitSize(VirtualQQuickFramebufferObject* self, double param1, double param2);
QObject* QQuickFramebufferObject_protectedbase_sender(const VirtualQQuickFramebufferObject* self);
int QQuickFramebufferObject_protectedbase_senderSignalIndex(const VirtualQQuickFramebufferObject* self);
int QQuickFramebufferObject_protectedbase_receivers(const VirtualQQuickFramebufferObject* self, const char* signal);
bool QQuickFramebufferObject_protectedbase_isSignalConnected(const VirtualQQuickFramebufferObject* self, QMetaMethod* signal);

const QMetaObject* QQuickFramebufferObject_staticMetaObject();
void QQuickFramebufferObject_delete(QQuickFramebufferObject* self);

void QQuickFramebufferObject__Renderer_render(QQuickFramebufferObject__Renderer* self);
void QQuickFramebufferObject__Renderer_synchronize(QQuickFramebufferObject__Renderer* self, QQuickFramebufferObject* param1);


#ifdef __cplusplus
} /* extern C */
#endif

#endif
