#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKRHIITEM_H
#define SEAQT_QTQUICK_GEN_QQUICKRHIITEM_H

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
class QQuickRhiItem;
class QQuickRhiItemRenderer;
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
typedef struct QQuickItem QQuickItem;
typedef struct QQuickItem__ItemChangeData QQuickItem__ItemChangeData;
typedef struct QQuickItem__UpdatePaintNodeData QQuickItem__UpdatePaintNodeData;
typedef struct QQuickRhiItem QQuickRhiItem;
typedef struct QQuickRhiItemRenderer QQuickRhiItemRenderer;
typedef struct QRectF QRectF;
typedef struct QSGNode QSGNode;
typedef struct QSGTextureProvider QSGTextureProvider;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
#endif

void QQuickRhiItemRenderer_synchronize(QQuickRhiItemRenderer* self, QQuickRhiItem* item);

void QQuickRhiItemRenderer_delete(QQuickRhiItemRenderer* self);

typedef struct VirtualQQuickRhiItem VirtualQQuickRhiItem;
typedef struct QQuickRhiItem_VTable{
	void (*destructor)(VirtualQQuickRhiItem* self);
	QMetaObject* (*metaObject)(const VirtualQQuickRhiItem* self);
	void* (*metacast)(VirtualQQuickRhiItem* self, const char* param1);
	int (*metacall)(VirtualQQuickRhiItem* self, int param1, int param2, void** param3);
	bool (*isTextureProvider)(const VirtualQQuickRhiItem* self);
	QSGTextureProvider* (*textureProvider)(const VirtualQQuickRhiItem* self);
	QQuickRhiItemRenderer* (*createRenderer)(VirtualQQuickRhiItem* self);
	QSGNode* (*updatePaintNode)(VirtualQQuickRhiItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
	bool (*event)(VirtualQQuickRhiItem* self, QEvent* param1);
	void (*geometryChange)(VirtualQQuickRhiItem* self, QRectF* newGeometry, QRectF* oldGeometry);
	void (*releaseResources)(VirtualQQuickRhiItem* self);
	QRectF* (*boundingRect)(const VirtualQQuickRhiItem* self);
	QRectF* (*clipRect)(const VirtualQQuickRhiItem* self);
	bool (*contains)(const VirtualQQuickRhiItem* self, QPointF* point);
	QVariant* (*inputMethodQuery)(const VirtualQQuickRhiItem* self, int query);
	void (*itemChange)(VirtualQQuickRhiItem* self, int param1, QQuickItem__ItemChangeData* param2);
	void (*classBegin)(VirtualQQuickRhiItem* self);
	void (*componentComplete)(VirtualQQuickRhiItem* self);
	void (*keyPressEvent)(VirtualQQuickRhiItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQQuickRhiItem* self, QKeyEvent* event);
	void (*inputMethodEvent)(VirtualQQuickRhiItem* self, QInputMethodEvent* param1);
	void (*focusInEvent)(VirtualQQuickRhiItem* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickRhiItem* self, QFocusEvent* param1);
	void (*mousePressEvent)(VirtualQQuickRhiItem* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQQuickRhiItem* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQQuickRhiItem* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQQuickRhiItem* self, QMouseEvent* event);
	void (*mouseUngrabEvent)(VirtualQQuickRhiItem* self);
	void (*touchUngrabEvent)(VirtualQQuickRhiItem* self);
	void (*wheelEvent)(VirtualQQuickRhiItem* self, QWheelEvent* event);
	void (*touchEvent)(VirtualQQuickRhiItem* self, QTouchEvent* event);
	void (*hoverEnterEvent)(VirtualQQuickRhiItem* self, QHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQQuickRhiItem* self, QHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQQuickRhiItem* self, QHoverEvent* event);
	void (*dragEnterEvent)(VirtualQQuickRhiItem* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(VirtualQQuickRhiItem* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(VirtualQQuickRhiItem* self, QDragLeaveEvent* param1);
	void (*dropEvent)(VirtualQQuickRhiItem* self, QDropEvent* param1);
	bool (*childMouseEventFilter)(VirtualQQuickRhiItem* self, QQuickItem* param1, QEvent* param2);
	void (*updatePolish)(VirtualQQuickRhiItem* self);
	bool (*eventFilter)(VirtualQQuickRhiItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickRhiItem* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickRhiItem* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickRhiItem* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickRhiItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickRhiItem* self, QMetaMethod* signal);
}QQuickRhiItem_VTable;

void* QQuickRhiItem_vdata(VirtualQQuickRhiItem* self);
VirtualQQuickRhiItem* vdata_QQuickRhiItem(void* vdata);

VirtualQQuickRhiItem* QQuickRhiItem_new(const QQuickRhiItem_VTable* vtbl, size_t vdata);
VirtualQQuickRhiItem* QQuickRhiItem_new_parent(const QQuickRhiItem_VTable* vtbl, size_t vdata, QQuickItem* parent);

void QQuickRhiItem_virtbase(QQuickRhiItem* src, QQuickItem** outptr_QQuickItem);
QMetaObject* QQuickRhiItem_metaObject(const QQuickRhiItem* self);
void* QQuickRhiItem_metacast(QQuickRhiItem* self, const char* param1);
int QQuickRhiItem_metacall(QQuickRhiItem* self, int param1, int param2, void** param3);
struct seaqt_string QQuickRhiItem_tr_s(const char* s);
int QQuickRhiItem_sampleCount(const QQuickRhiItem* self);
void QQuickRhiItem_setSampleCount(QQuickRhiItem* self, int samples);
int QQuickRhiItem_colorBufferFormat(const QQuickRhiItem* self);
void QQuickRhiItem_setColorBufferFormat(QQuickRhiItem* self, int format);
bool QQuickRhiItem_isMirrorVerticallyEnabled(const QQuickRhiItem* self);
void QQuickRhiItem_setMirrorVertically(QQuickRhiItem* self, bool enable);
bool QQuickRhiItem_alphaBlending(const QQuickRhiItem* self);
void QQuickRhiItem_setAlphaBlending(QQuickRhiItem* self, bool enable);
int QQuickRhiItem_fixedColorBufferWidth(const QQuickRhiItem* self);
void QQuickRhiItem_setFixedColorBufferWidth(QQuickRhiItem* self, int width);
int QQuickRhiItem_fixedColorBufferHeight(const QQuickRhiItem* self);
void QQuickRhiItem_setFixedColorBufferHeight(QQuickRhiItem* self, int height);
QSize* QQuickRhiItem_effectiveColorBufferSize(const QQuickRhiItem* self);
bool QQuickRhiItem_isTextureProvider(const QQuickRhiItem* self);
QSGTextureProvider* QQuickRhiItem_textureProvider(const QQuickRhiItem* self);
void QQuickRhiItem_sampleCountChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_sampleCountChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_colorBufferFormatChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_colorBufferFormatChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_autoRenderTargetChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_autoRenderTargetChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_mirrorVerticallyChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_mirrorVerticallyChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_alphaBlendingChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_alphaBlendingChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_fixedColorBufferWidthChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_fixedColorBufferWidthChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_fixedColorBufferHeightChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_fixedColorBufferHeightChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRhiItem_effectiveColorBufferSizeChanged(QQuickRhiItem* self);
void QQuickRhiItem_connect_effectiveColorBufferSizeChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
QQuickRhiItemRenderer* QQuickRhiItem_createRenderer(QQuickRhiItem* self);
QSGNode* QQuickRhiItem_updatePaintNode(QQuickRhiItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
bool QQuickRhiItem_event(QQuickRhiItem* self, QEvent* param1);
void QQuickRhiItem_geometryChange(QQuickRhiItem* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickRhiItem_releaseResources(QQuickRhiItem* self);
struct seaqt_string QQuickRhiItem_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickRhiItem_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QQuickRhiItem_virtualbase_metaObject(const VirtualQQuickRhiItem* self);
void* QQuickRhiItem_virtualbase_metacast(VirtualQQuickRhiItem* self, const char* param1);
int QQuickRhiItem_virtualbase_metacall(VirtualQQuickRhiItem* self, int param1, int param2, void** param3);
bool QQuickRhiItem_virtualbase_isTextureProvider(const VirtualQQuickRhiItem* self);
QSGTextureProvider* QQuickRhiItem_virtualbase_textureProvider(const VirtualQQuickRhiItem* self);
QQuickRhiItemRenderer* QQuickRhiItem_virtualbase_createRenderer(VirtualQQuickRhiItem* self);
QSGNode* QQuickRhiItem_virtualbase_updatePaintNode(VirtualQQuickRhiItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);
bool QQuickRhiItem_virtualbase_event(VirtualQQuickRhiItem* self, QEvent* param1);
void QQuickRhiItem_virtualbase_geometryChange(VirtualQQuickRhiItem* self, QRectF* newGeometry, QRectF* oldGeometry);
void QQuickRhiItem_virtualbase_releaseResources(VirtualQQuickRhiItem* self);
QRectF* QQuickRhiItem_virtualbase_boundingRect(const VirtualQQuickRhiItem* self);
QRectF* QQuickRhiItem_virtualbase_clipRect(const VirtualQQuickRhiItem* self);
bool QQuickRhiItem_virtualbase_contains(const VirtualQQuickRhiItem* self, QPointF* point);
QVariant* QQuickRhiItem_virtualbase_inputMethodQuery(const VirtualQQuickRhiItem* self, int query);
void QQuickRhiItem_virtualbase_itemChange(VirtualQQuickRhiItem* self, int param1, QQuickItem__ItemChangeData* param2);
void QQuickRhiItem_virtualbase_classBegin(VirtualQQuickRhiItem* self);
void QQuickRhiItem_virtualbase_componentComplete(VirtualQQuickRhiItem* self);
void QQuickRhiItem_virtualbase_keyPressEvent(VirtualQQuickRhiItem* self, QKeyEvent* event);
void QQuickRhiItem_virtualbase_keyReleaseEvent(VirtualQQuickRhiItem* self, QKeyEvent* event);
void QQuickRhiItem_virtualbase_inputMethodEvent(VirtualQQuickRhiItem* self, QInputMethodEvent* param1);
void QQuickRhiItem_virtualbase_focusInEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1);
void QQuickRhiItem_virtualbase_focusOutEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1);
void QQuickRhiItem_virtualbase_mousePressEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);
void QQuickRhiItem_virtualbase_mouseMoveEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);
void QQuickRhiItem_virtualbase_mouseReleaseEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);
void QQuickRhiItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);
void QQuickRhiItem_virtualbase_mouseUngrabEvent(VirtualQQuickRhiItem* self);
void QQuickRhiItem_virtualbase_touchUngrabEvent(VirtualQQuickRhiItem* self);
void QQuickRhiItem_virtualbase_wheelEvent(VirtualQQuickRhiItem* self, QWheelEvent* event);
void QQuickRhiItem_virtualbase_touchEvent(VirtualQQuickRhiItem* self, QTouchEvent* event);
void QQuickRhiItem_virtualbase_hoverEnterEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);
void QQuickRhiItem_virtualbase_hoverMoveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);
void QQuickRhiItem_virtualbase_hoverLeaveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);
void QQuickRhiItem_virtualbase_dragEnterEvent(VirtualQQuickRhiItem* self, QDragEnterEvent* param1);
void QQuickRhiItem_virtualbase_dragMoveEvent(VirtualQQuickRhiItem* self, QDragMoveEvent* param1);
void QQuickRhiItem_virtualbase_dragLeaveEvent(VirtualQQuickRhiItem* self, QDragLeaveEvent* param1);
void QQuickRhiItem_virtualbase_dropEvent(VirtualQQuickRhiItem* self, QDropEvent* param1);
bool QQuickRhiItem_virtualbase_childMouseEventFilter(VirtualQQuickRhiItem* self, QQuickItem* param1, QEvent* param2);
void QQuickRhiItem_virtualbase_updatePolish(VirtualQQuickRhiItem* self);
bool QQuickRhiItem_virtualbase_eventFilter(VirtualQQuickRhiItem* self, QObject* watched, QEvent* event);
void QQuickRhiItem_virtualbase_timerEvent(VirtualQQuickRhiItem* self, QTimerEvent* event);
void QQuickRhiItem_virtualbase_childEvent(VirtualQQuickRhiItem* self, QChildEvent* event);
void QQuickRhiItem_virtualbase_customEvent(VirtualQQuickRhiItem* self, QEvent* event);
void QQuickRhiItem_virtualbase_connectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal);
void QQuickRhiItem_virtualbase_disconnectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal);

bool QQuickRhiItem_protectedbase_isAutoRenderTargetEnabled(const VirtualQQuickRhiItem* self);
void QQuickRhiItem_protectedbase_setAutoRenderTarget(VirtualQQuickRhiItem* self, bool enabled);
bool QQuickRhiItem_protectedbase_isComponentComplete(const VirtualQQuickRhiItem* self);
void QQuickRhiItem_protectedbase_updateInputMethod(VirtualQQuickRhiItem* self);
bool QQuickRhiItem_protectedbase_widthValid(const VirtualQQuickRhiItem* self);
bool QQuickRhiItem_protectedbase_heightValid(const VirtualQQuickRhiItem* self);
void QQuickRhiItem_protectedbase_setImplicitSize(VirtualQQuickRhiItem* self, double param1, double param2);
QObject* QQuickRhiItem_protectedbase_sender(const VirtualQQuickRhiItem* self);
int QQuickRhiItem_protectedbase_senderSignalIndex(const VirtualQQuickRhiItem* self);
int QQuickRhiItem_protectedbase_receivers(const VirtualQQuickRhiItem* self, const char* signal);
bool QQuickRhiItem_protectedbase_isSignalConnected(const VirtualQQuickRhiItem* self, QMetaMethod* signal);

const QMetaObject* QQuickRhiItem_staticMetaObject();
void QQuickRhiItem_delete(QQuickRhiItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
