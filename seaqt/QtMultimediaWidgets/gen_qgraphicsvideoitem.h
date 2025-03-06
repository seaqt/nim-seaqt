#pragma once
#ifndef SEAQT_QTMULTIMEDIAWIDGETS_GEN_QGRAPHICSVIDEOITEM_H
#define SEAQT_QTMULTIMEDIAWIDGETS_GEN_QGRAPHICSVIDEOITEM_H

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
class QFocusEvent;
class QGraphicsItem;
class QGraphicsObject;
class QGraphicsSceneContextMenuEvent;
class QGraphicsSceneDragDropEvent;
class QGraphicsSceneHoverEvent;
class QGraphicsSceneMouseEvent;
class QGraphicsSceneWheelEvent;
class QGraphicsVideoItem;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPainterPath;
class QPointF;
class QRectF;
class QSizeF;
class QStyleOptionGraphicsItem;
class QTimerEvent;
class QVariant;
class QVideoSink;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsObject QGraphicsObject;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsVideoItem QGraphicsVideoItem;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoSink QVideoSink;
typedef struct QWidget QWidget;
#endif

struct QGraphicsVideoItem_VTable {
	void (*destructor)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self);
	QMetaObject* (*metaObject)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self);
	void* (*metacast)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, const char* param1);
	int (*metacall)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, int param1, int param2, void** param3);
	QRectF* (*boundingRect)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self);
	void (*paint)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	int (*type)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self);
	void (*timerEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QTimerEvent* event);
	QVariant* (*itemChange)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, int change, QVariant* value);
	bool (*event)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QEvent* ev);
	bool (*eventFilter)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QMetaMethod* signal);
	void (*advance)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, int phase);
	QPainterPath* (*shape)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self);
	bool (*contains)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, QPointF* point);
	bool (*collidesWithItem)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self);
	bool (*sceneEventFilter)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsItem* watched, QEvent* event);
	bool (*sceneEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QEvent* event);
	void (*contextMenuEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*focusInEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QFocusEvent* event);
	void (*hoverEnterEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*keyPressEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QKeyEvent* event);
	void (*mousePressEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseMoveEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QGraphicsSceneWheelEvent* event);
	void (*inputMethodEvent)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, QInputMethodEvent* event);
	QVariant* (*inputMethodQuery)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, int query);
	bool (*supportsExtension)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, int extension);
	void (*setExtension)(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsVideoItem* self, int extension, QVariant* variant);
	QVariant* (*extension)(struct QGraphicsVideoItem_VTable* vtbl, const QGraphicsVideoItem* self, QVariant* variant);
};
QGraphicsVideoItem* QGraphicsVideoItem_new(struct QGraphicsVideoItem_VTable* vtbl);
QGraphicsVideoItem* QGraphicsVideoItem_new2(struct QGraphicsVideoItem_VTable* vtbl, QGraphicsItem* parent);
void QGraphicsVideoItem_virtbase(QGraphicsVideoItem* src, QGraphicsObject** outptr_QGraphicsObject);
QMetaObject* QGraphicsVideoItem_metaObject(const QGraphicsVideoItem* self);
void* QGraphicsVideoItem_metacast(QGraphicsVideoItem* self, const char* param1);
int QGraphicsVideoItem_metacall(QGraphicsVideoItem* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsVideoItem_tr(const char* s);
QVideoSink* QGraphicsVideoItem_videoSink(const QGraphicsVideoItem* self);
int QGraphicsVideoItem_aspectRatioMode(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setAspectRatioMode(QGraphicsVideoItem* self, int mode);
QPointF* QGraphicsVideoItem_offset(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setOffset(QGraphicsVideoItem* self, QPointF* offset);
QSizeF* QGraphicsVideoItem_size(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setSize(QGraphicsVideoItem* self, QSizeF* size);
QSizeF* QGraphicsVideoItem_nativeSize(const QGraphicsVideoItem* self);
QRectF* QGraphicsVideoItem_boundingRect(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_paint(QGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsVideoItem_type(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_nativeSizeChanged(QGraphicsVideoItem* self, QSizeF* size);
void QGraphicsVideoItem_connect_nativeSizeChanged(QGraphicsVideoItem* self, intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t));
void QGraphicsVideoItem_timerEvent(QGraphicsVideoItem* self, QTimerEvent* event);
QVariant* QGraphicsVideoItem_itemChange(QGraphicsVideoItem* self, int change, QVariant* value);
struct miqt_string QGraphicsVideoItem_tr2(const char* s, const char* c);
struct miqt_string QGraphicsVideoItem_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsVideoItem_virtualbase_metaObject(const void* self);
void* QGraphicsVideoItem_virtualbase_metacast(void* self, const char* param1);
int QGraphicsVideoItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRectF* QGraphicsVideoItem_virtualbase_boundingRect(const void* self);
void QGraphicsVideoItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsVideoItem_virtualbase_type(const void* self);
void QGraphicsVideoItem_virtualbase_timerEvent(void* self, QTimerEvent* event);
QVariant* QGraphicsVideoItem_virtualbase_itemChange(void* self, int change, QVariant* value);
bool QGraphicsVideoItem_virtualbase_event(void* self, QEvent* ev);
bool QGraphicsVideoItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsVideoItem_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsVideoItem_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsVideoItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsVideoItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsVideoItem_virtualbase_advance(void* self, int phase);
QPainterPath* QGraphicsVideoItem_virtualbase_shape(const void* self);
bool QGraphicsVideoItem_virtualbase_contains(const void* self, QPointF* point);
bool QGraphicsVideoItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);
bool QGraphicsVideoItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);
bool QGraphicsVideoItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);
QPainterPath* QGraphicsVideoItem_virtualbase_opaqueArea(const void* self);
bool QGraphicsVideoItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsVideoItem_virtualbase_sceneEvent(void* self, QEvent* event);
void QGraphicsVideoItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsVideoItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QGraphicsVideoItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QGraphicsVideoItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QGraphicsVideoItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QGraphicsVideoItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event);
void QGraphicsVideoItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
QVariant* QGraphicsVideoItem_virtualbase_inputMethodQuery(const void* self, int query);
bool QGraphicsVideoItem_virtualbase_supportsExtension(const void* self, int extension);
void QGraphicsVideoItem_virtualbase_setExtension(void* self, int extension, QVariant* variant);
QVariant* QGraphicsVideoItem_virtualbase_extension(const void* self, QVariant* variant);
void QGraphicsVideoItem_protectedbase_updateMicroFocus(void* self);
QObject* QGraphicsVideoItem_protectedbase_sender(const void* self);
int QGraphicsVideoItem_protectedbase_senderSignalIndex(const void* self);
int QGraphicsVideoItem_protectedbase_receivers(const void* self, const char* signal);
bool QGraphicsVideoItem_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
void QGraphicsVideoItem_protectedbase_addToIndex(void* self);
void QGraphicsVideoItem_protectedbase_removeFromIndex(void* self);
void QGraphicsVideoItem_protectedbase_prepareGeometryChange(void* self);
const QMetaObject* QGraphicsVideoItem_staticMetaObject();
void QGraphicsVideoItem_delete(QGraphicsVideoItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
