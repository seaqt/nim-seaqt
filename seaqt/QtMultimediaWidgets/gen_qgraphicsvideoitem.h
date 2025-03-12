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
class QAbstractVideoSurface;
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
class QMediaBindableInterface;
class QMediaObject;
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
class QWidget;
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
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
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
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
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQGraphicsVideoItem VirtualQGraphicsVideoItem;
typedef struct QGraphicsVideoItem_VTable{
	void (*destructor)(VirtualQGraphicsVideoItem* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsVideoItem* self);
	void* (*metacast)(VirtualQGraphicsVideoItem* self, const char* param1);
	int (*metacall)(VirtualQGraphicsVideoItem* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQGraphicsVideoItem* self);
	QRectF* (*boundingRect)(const VirtualQGraphicsVideoItem* self);
	void (*paint)(VirtualQGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	void (*timerEvent)(VirtualQGraphicsVideoItem* self, QTimerEvent* event);
	QVariant* (*itemChange)(VirtualQGraphicsVideoItem* self, int change, QVariant* value);
	bool (*setMediaObject)(VirtualQGraphicsVideoItem* self, QMediaObject* object);
	bool (*event)(VirtualQGraphicsVideoItem* self, QEvent* ev);
	bool (*eventFilter)(VirtualQGraphicsVideoItem* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQGraphicsVideoItem* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsVideoItem* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
	void (*advance)(VirtualQGraphicsVideoItem* self, int phase);
	QPainterPath* (*shape)(const VirtualQGraphicsVideoItem* self);
	bool (*contains)(const VirtualQGraphicsVideoItem* self, QPointF* point);
	bool (*collidesWithItem)(const VirtualQGraphicsVideoItem* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(const VirtualQGraphicsVideoItem* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(const VirtualQGraphicsVideoItem* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(const VirtualQGraphicsVideoItem* self);
	int (*type)(const VirtualQGraphicsVideoItem* self);
	bool (*sceneEventFilter)(VirtualQGraphicsVideoItem* self, QGraphicsItem* watched, QEvent* event);
	bool (*sceneEvent)(VirtualQGraphicsVideoItem* self, QEvent* event);
	void (*contextMenuEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
	void (*focusInEvent)(VirtualQGraphicsVideoItem* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQGraphicsVideoItem* self, QFocusEvent* event);
	void (*hoverEnterEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
	void (*keyPressEvent)(VirtualQGraphicsVideoItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQGraphicsVideoItem* self, QKeyEvent* event);
	void (*mousePressEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(VirtualQGraphicsVideoItem* self, QGraphicsSceneWheelEvent* event);
	void (*inputMethodEvent)(VirtualQGraphicsVideoItem* self, QInputMethodEvent* event);
	QVariant* (*inputMethodQuery)(const VirtualQGraphicsVideoItem* self, int query);
	bool (*supportsExtension)(const VirtualQGraphicsVideoItem* self, int extension);
	void (*setExtension)(VirtualQGraphicsVideoItem* self, int extension, QVariant* variant);
	QVariant* (*extension)(const VirtualQGraphicsVideoItem* self, QVariant* variant);
}QGraphicsVideoItem_VTable;

const QGraphicsVideoItem_VTable* QGraphicsVideoItem_vtbl(const VirtualQGraphicsVideoItem* self);
void* QGraphicsVideoItem_vdata(const VirtualQGraphicsVideoItem* self);
void QGraphicsVideoItem_setVdata(VirtualQGraphicsVideoItem* self, void* vdata);

VirtualQGraphicsVideoItem* QGraphicsVideoItem_new(const QGraphicsVideoItem_VTable* vtbl, void* vdata);
VirtualQGraphicsVideoItem* QGraphicsVideoItem_new2(const QGraphicsVideoItem_VTable* vtbl, void* vdata, QGraphicsItem* parent);

void QGraphicsVideoItem_virtbase(QGraphicsVideoItem* src, QGraphicsObject** outptr_QGraphicsObject, QMediaBindableInterface** outptr_QMediaBindableInterface);
QMetaObject* QGraphicsVideoItem_metaObject(const QGraphicsVideoItem* self);
void* QGraphicsVideoItem_metacast(QGraphicsVideoItem* self, const char* param1);
int QGraphicsVideoItem_metacall(QGraphicsVideoItem* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsVideoItem_tr(const char* s);
struct miqt_string QGraphicsVideoItem_trUtf8(const char* s);
QMediaObject* QGraphicsVideoItem_mediaObject(const QGraphicsVideoItem* self);
QAbstractVideoSurface* QGraphicsVideoItem_videoSurface(const QGraphicsVideoItem* self);
int QGraphicsVideoItem_aspectRatioMode(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setAspectRatioMode(QGraphicsVideoItem* self, int mode);
QPointF* QGraphicsVideoItem_offset(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setOffset(QGraphicsVideoItem* self, QPointF* offset);
QSizeF* QGraphicsVideoItem_size(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_setSize(QGraphicsVideoItem* self, QSizeF* size);
QSizeF* QGraphicsVideoItem_nativeSize(const QGraphicsVideoItem* self);
QRectF* QGraphicsVideoItem_boundingRect(const QGraphicsVideoItem* self);
void QGraphicsVideoItem_paint(QGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
void QGraphicsVideoItem_nativeSizeChanged(QGraphicsVideoItem* self, QSizeF* size);
void QGraphicsVideoItem_connect_nativeSizeChanged(VirtualQGraphicsVideoItem* self, intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t));
void QGraphicsVideoItem_timerEvent(QGraphicsVideoItem* self, QTimerEvent* event);
QVariant* QGraphicsVideoItem_itemChange(QGraphicsVideoItem* self, int change, QVariant* value);
bool QGraphicsVideoItem_setMediaObject(QGraphicsVideoItem* self, QMediaObject* object);
struct miqt_string QGraphicsVideoItem_tr2(const char* s, const char* c);
struct miqt_string QGraphicsVideoItem_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsVideoItem_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsVideoItem_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGraphicsVideoItem_virtualbase_metaObject(const VirtualQGraphicsVideoItem* self);
void* QGraphicsVideoItem_virtualbase_metacast(VirtualQGraphicsVideoItem* self, const char* param1);
int QGraphicsVideoItem_virtualbase_metacall(VirtualQGraphicsVideoItem* self, int param1, int param2, void** param3);
QMediaObject* QGraphicsVideoItem_virtualbase_mediaObject(const VirtualQGraphicsVideoItem* self);
QRectF* QGraphicsVideoItem_virtualbase_boundingRect(const VirtualQGraphicsVideoItem* self);
void QGraphicsVideoItem_virtualbase_paint(VirtualQGraphicsVideoItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
void QGraphicsVideoItem_virtualbase_timerEvent(VirtualQGraphicsVideoItem* self, QTimerEvent* event);
QVariant* QGraphicsVideoItem_virtualbase_itemChange(VirtualQGraphicsVideoItem* self, int change, QVariant* value);
bool QGraphicsVideoItem_virtualbase_setMediaObject(VirtualQGraphicsVideoItem* self, QMediaObject* object);
bool QGraphicsVideoItem_virtualbase_event(VirtualQGraphicsVideoItem* self, QEvent* ev);
bool QGraphicsVideoItem_virtualbase_eventFilter(VirtualQGraphicsVideoItem* self, QObject* watched, QEvent* event);
void QGraphicsVideoItem_virtualbase_childEvent(VirtualQGraphicsVideoItem* self, QChildEvent* event);
void QGraphicsVideoItem_virtualbase_customEvent(VirtualQGraphicsVideoItem* self, QEvent* event);
void QGraphicsVideoItem_virtualbase_connectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
void QGraphicsVideoItem_virtualbase_disconnectNotify(VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
void QGraphicsVideoItem_virtualbase_advance(VirtualQGraphicsVideoItem* self, int phase);
QPainterPath* QGraphicsVideoItem_virtualbase_shape(const VirtualQGraphicsVideoItem* self);
bool QGraphicsVideoItem_virtualbase_contains(const VirtualQGraphicsVideoItem* self, QPointF* point);
bool QGraphicsVideoItem_virtualbase_collidesWithItem(const VirtualQGraphicsVideoItem* self, QGraphicsItem* other, int mode);
bool QGraphicsVideoItem_virtualbase_collidesWithPath(const VirtualQGraphicsVideoItem* self, QPainterPath* path, int mode);
bool QGraphicsVideoItem_virtualbase_isObscuredBy(const VirtualQGraphicsVideoItem* self, QGraphicsItem* item);
QPainterPath* QGraphicsVideoItem_virtualbase_opaqueArea(const VirtualQGraphicsVideoItem* self);
int QGraphicsVideoItem_virtualbase_type(const VirtualQGraphicsVideoItem* self);
bool QGraphicsVideoItem_virtualbase_sceneEventFilter(VirtualQGraphicsVideoItem* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsVideoItem_virtualbase_sceneEvent(VirtualQGraphicsVideoItem* self, QEvent* event);
void QGraphicsVideoItem_virtualbase_contextMenuEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsVideoItem_virtualbase_dragEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dragLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dragMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_dropEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsVideoItem_virtualbase_focusInEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event);
void QGraphicsVideoItem_virtualbase_focusOutEvent(VirtualQGraphicsVideoItem* self, QFocusEvent* event);
void QGraphicsVideoItem_virtualbase_hoverEnterEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_hoverMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsVideoItem_virtualbase_keyPressEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event);
void QGraphicsVideoItem_virtualbase_keyReleaseEvent(VirtualQGraphicsVideoItem* self, QKeyEvent* event);
void QGraphicsVideoItem_virtualbase_mousePressEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseMoveEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsVideoItem_virtualbase_wheelEvent(VirtualQGraphicsVideoItem* self, QGraphicsSceneWheelEvent* event);
void QGraphicsVideoItem_virtualbase_inputMethodEvent(VirtualQGraphicsVideoItem* self, QInputMethodEvent* event);
QVariant* QGraphicsVideoItem_virtualbase_inputMethodQuery(const VirtualQGraphicsVideoItem* self, int query);
bool QGraphicsVideoItem_virtualbase_supportsExtension(const VirtualQGraphicsVideoItem* self, int extension);
void QGraphicsVideoItem_virtualbase_setExtension(VirtualQGraphicsVideoItem* self, int extension, QVariant* variant);
QVariant* QGraphicsVideoItem_virtualbase_extension(const VirtualQGraphicsVideoItem* self, QVariant* variant);

void QGraphicsVideoItem_protectedbase_updateMicroFocus(VirtualQGraphicsVideoItem* self);
QObject* QGraphicsVideoItem_protectedbase_sender(const VirtualQGraphicsVideoItem* self);
int QGraphicsVideoItem_protectedbase_senderSignalIndex(const VirtualQGraphicsVideoItem* self);
int QGraphicsVideoItem_protectedbase_receivers(const VirtualQGraphicsVideoItem* self, const char* signal);
bool QGraphicsVideoItem_protectedbase_isSignalConnected(const VirtualQGraphicsVideoItem* self, QMetaMethod* signal);
void QGraphicsVideoItem_protectedbase_addToIndex(VirtualQGraphicsVideoItem* self);
void QGraphicsVideoItem_protectedbase_removeFromIndex(VirtualQGraphicsVideoItem* self);
void QGraphicsVideoItem_protectedbase_prepareGeometryChange(VirtualQGraphicsVideoItem* self);

const QMetaObject* QGraphicsVideoItem_staticMetaObject();
void QGraphicsVideoItem_delete(QGraphicsVideoItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
