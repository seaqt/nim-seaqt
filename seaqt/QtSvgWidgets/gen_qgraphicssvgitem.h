#pragma once
#ifndef SEAQT_QTSVGWIDGETS_GEN_QGRAPHICSSVGITEM_H
#define SEAQT_QTSVGWIDGETS_GEN_QGRAPHICSSVGITEM_H

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
class QGraphicsSvgItem;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPainterPath;
class QPointF;
class QRectF;
class QSize;
class QStyleOptionGraphicsItem;
class QSvgRenderer;
class QTimerEvent;
class QVariant;
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
typedef struct QGraphicsSvgItem QGraphicsSvgItem;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

struct QGraphicsSvgItem_VTable {
	void (*destructor)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self);
	QMetaObject* (*metaObject)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self);
	void* (*metacast)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, const char* param1);
	int (*metacall)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, int param1, int param2, void** param3);
	QRectF* (*boundingRect)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self);
	void (*paint)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	int (*type)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self);
	bool (*event)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QEvent* ev);
	bool (*eventFilter)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QMetaMethod* signal);
	void (*advance)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, int phase);
	QPainterPath* (*shape)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self);
	bool (*contains)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, QPointF* point);
	bool (*collidesWithItem)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self);
	bool (*sceneEventFilter)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);
	bool (*sceneEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QEvent* event);
	void (*contextMenuEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*focusInEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QFocusEvent* event);
	void (*hoverEnterEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*keyPressEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QKeyEvent* event);
	void (*mousePressEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseMoveEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);
	void (*inputMethodEvent)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, QInputMethodEvent* event);
	QVariant* (*inputMethodQuery)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, int query);
	QVariant* (*itemChange)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, int change, QVariant* value);
	bool (*supportsExtension)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, int extension);
	void (*setExtension)(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsSvgItem* self, int extension, QVariant* variant);
	QVariant* (*extension)(struct QGraphicsSvgItem_VTable* vtbl, const QGraphicsSvgItem* self, QVariant* variant);
};
QGraphicsSvgItem* QGraphicsSvgItem_new(struct QGraphicsSvgItem_VTable* vtbl);
QGraphicsSvgItem* QGraphicsSvgItem_new2(struct QGraphicsSvgItem_VTable* vtbl, struct miqt_string fileName);
QGraphicsSvgItem* QGraphicsSvgItem_new3(struct QGraphicsSvgItem_VTable* vtbl, QGraphicsItem* parentItem);
QGraphicsSvgItem* QGraphicsSvgItem_new4(struct QGraphicsSvgItem_VTable* vtbl, struct miqt_string fileName, QGraphicsItem* parentItem);
void QGraphicsSvgItem_virtbase(QGraphicsSvgItem* src, QGraphicsObject** outptr_QGraphicsObject);
QMetaObject* QGraphicsSvgItem_metaObject(const QGraphicsSvgItem* self);
void* QGraphicsSvgItem_metacast(QGraphicsSvgItem* self, const char* param1);
int QGraphicsSvgItem_metacall(QGraphicsSvgItem* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsSvgItem_tr(const char* s);
void QGraphicsSvgItem_setSharedRenderer(QGraphicsSvgItem* self, QSvgRenderer* renderer);
QSvgRenderer* QGraphicsSvgItem_renderer(const QGraphicsSvgItem* self);
void QGraphicsSvgItem_setElementId(QGraphicsSvgItem* self, struct miqt_string id);
struct miqt_string QGraphicsSvgItem_elementId(const QGraphicsSvgItem* self);
void QGraphicsSvgItem_setCachingEnabled(QGraphicsSvgItem* self, bool cachingEnabled);
bool QGraphicsSvgItem_isCachingEnabled(const QGraphicsSvgItem* self);
void QGraphicsSvgItem_setMaximumCacheSize(QGraphicsSvgItem* self, QSize* size);
QSize* QGraphicsSvgItem_maximumCacheSize(const QGraphicsSvgItem* self);
QRectF* QGraphicsSvgItem_boundingRect(const QGraphicsSvgItem* self);
void QGraphicsSvgItem_paint(QGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsSvgItem_type(const QGraphicsSvgItem* self);
struct miqt_string QGraphicsSvgItem_tr2(const char* s, const char* c);
struct miqt_string QGraphicsSvgItem_tr3(const char* s, const char* c, int n);
QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const void* self);
void* QGraphicsSvgItem_virtualbase_metacast(void* self, const char* param1);
int QGraphicsSvgItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const void* self);
void QGraphicsSvgItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsSvgItem_virtualbase_type(const void* self);
bool QGraphicsSvgItem_virtualbase_event(void* self, QEvent* ev);
bool QGraphicsSvgItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGraphicsSvgItem_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsSvgItem_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsSvgItem_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsSvgItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsSvgItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsSvgItem_virtualbase_advance(void* self, int phase);
QPainterPath* QGraphicsSvgItem_virtualbase_shape(const void* self);
bool QGraphicsSvgItem_virtualbase_contains(const void* self, QPointF* point);
bool QGraphicsSvgItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);
bool QGraphicsSvgItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);
bool QGraphicsSvgItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);
QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const void* self);
bool QGraphicsSvgItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsSvgItem_virtualbase_sceneEvent(void* self, QEvent* event);
void QGraphicsSvgItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsSvgItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QGraphicsSvgItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QGraphicsSvgItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QGraphicsSvgItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QGraphicsSvgItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event);
void QGraphicsSvgItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const void* self, int query);
QVariant* QGraphicsSvgItem_virtualbase_itemChange(void* self, int change, QVariant* value);
bool QGraphicsSvgItem_virtualbase_supportsExtension(const void* self, int extension);
void QGraphicsSvgItem_virtualbase_setExtension(void* self, int extension, QVariant* variant);
QVariant* QGraphicsSvgItem_virtualbase_extension(const void* self, QVariant* variant);
void QGraphicsSvgItem_protectedbase_updateMicroFocus(void* self);
QObject* QGraphicsSvgItem_protectedbase_sender(const void* self);
int QGraphicsSvgItem_protectedbase_senderSignalIndex(const void* self);
int QGraphicsSvgItem_protectedbase_receivers(const void* self, const char* signal);
bool QGraphicsSvgItem_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
void QGraphicsSvgItem_protectedbase_addToIndex(void* self);
void QGraphicsSvgItem_protectedbase_removeFromIndex(void* self);
void QGraphicsSvgItem_protectedbase_prepareGeometryChange(void* self);
const QMetaObject* QGraphicsSvgItem_staticMetaObject();
void QGraphicsSvgItem_delete(QGraphicsSvgItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
