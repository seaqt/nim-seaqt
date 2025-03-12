#pragma once
#ifndef SEAQT_QTSVG_GEN_QGRAPHICSSVGITEM_H
#define SEAQT_QTSVG_GEN_QGRAPHICSSVGITEM_H

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

typedef struct VirtualQGraphicsSvgItem VirtualQGraphicsSvgItem;
typedef struct QGraphicsSvgItem_VTable{
	void (*destructor)(VirtualQGraphicsSvgItem* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsSvgItem* self);
	void* (*metacast)(VirtualQGraphicsSvgItem* self, const char* param1);
	int (*metacall)(VirtualQGraphicsSvgItem* self, int param1, int param2, void** param3);
	QRectF* (*boundingRect)(const VirtualQGraphicsSvgItem* self);
	void (*paint)(VirtualQGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	int (*type)(const VirtualQGraphicsSvgItem* self);
	bool (*event)(VirtualQGraphicsSvgItem* self, QEvent* ev);
	bool (*eventFilter)(VirtualQGraphicsSvgItem* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsSvgItem* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsSvgItem* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsSvgItem* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
	void (*advance)(VirtualQGraphicsSvgItem* self, int phase);
	QPainterPath* (*shape)(const VirtualQGraphicsSvgItem* self);
	bool (*contains)(const VirtualQGraphicsSvgItem* self, QPointF* point);
	bool (*collidesWithItem)(const VirtualQGraphicsSvgItem* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(const VirtualQGraphicsSvgItem* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(const VirtualQGraphicsSvgItem* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(const VirtualQGraphicsSvgItem* self);
	bool (*sceneEventFilter)(VirtualQGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);
	bool (*sceneEvent)(VirtualQGraphicsSvgItem* self, QEvent* event);
	void (*contextMenuEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
	void (*focusInEvent)(VirtualQGraphicsSvgItem* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQGraphicsSvgItem* self, QFocusEvent* event);
	void (*hoverEnterEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
	void (*keyPressEvent)(VirtualQGraphicsSvgItem* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQGraphicsSvgItem* self, QKeyEvent* event);
	void (*mousePressEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(VirtualQGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);
	void (*inputMethodEvent)(VirtualQGraphicsSvgItem* self, QInputMethodEvent* event);
	QVariant* (*inputMethodQuery)(const VirtualQGraphicsSvgItem* self, int query);
	QVariant* (*itemChange)(VirtualQGraphicsSvgItem* self, int change, QVariant* value);
	bool (*supportsExtension)(const VirtualQGraphicsSvgItem* self, int extension);
	void (*setExtension)(VirtualQGraphicsSvgItem* self, int extension, QVariant* variant);
	QVariant* (*extension)(const VirtualQGraphicsSvgItem* self, QVariant* variant);
}QGraphicsSvgItem_VTable;

const QGraphicsSvgItem_VTable* QGraphicsSvgItem_vtbl(const VirtualQGraphicsSvgItem* self);
void* QGraphicsSvgItem_vdata(const VirtualQGraphicsSvgItem* self);
void QGraphicsSvgItem_setVdata(VirtualQGraphicsSvgItem* self, void* vdata);

VirtualQGraphicsSvgItem* QGraphicsSvgItem_new(const QGraphicsSvgItem_VTable* vtbl, void* vdata);
VirtualQGraphicsSvgItem* QGraphicsSvgItem_new2(const QGraphicsSvgItem_VTable* vtbl, void* vdata, struct miqt_string fileName);
VirtualQGraphicsSvgItem* QGraphicsSvgItem_new3(const QGraphicsSvgItem_VTable* vtbl, void* vdata, QGraphicsItem* parentItem);
VirtualQGraphicsSvgItem* QGraphicsSvgItem_new4(const QGraphicsSvgItem_VTable* vtbl, void* vdata, struct miqt_string fileName, QGraphicsItem* parentItem);

void QGraphicsSvgItem_virtbase(QGraphicsSvgItem* src, QGraphicsObject** outptr_QGraphicsObject);
QMetaObject* QGraphicsSvgItem_metaObject(const QGraphicsSvgItem* self);
void* QGraphicsSvgItem_metacast(QGraphicsSvgItem* self, const char* param1);
int QGraphicsSvgItem_metacall(QGraphicsSvgItem* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsSvgItem_tr(const char* s);
struct miqt_string QGraphicsSvgItem_trUtf8(const char* s);
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
struct miqt_string QGraphicsSvgItem_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsSvgItem_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGraphicsSvgItem_virtualbase_metaObject(const VirtualQGraphicsSvgItem* self);
void* QGraphicsSvgItem_virtualbase_metacast(VirtualQGraphicsSvgItem* self, const char* param1);
int QGraphicsSvgItem_virtualbase_metacall(VirtualQGraphicsSvgItem* self, int param1, int param2, void** param3);
QRectF* QGraphicsSvgItem_virtualbase_boundingRect(const VirtualQGraphicsSvgItem* self);
void QGraphicsSvgItem_virtualbase_paint(VirtualQGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsSvgItem_virtualbase_type(const VirtualQGraphicsSvgItem* self);
bool QGraphicsSvgItem_virtualbase_event(VirtualQGraphicsSvgItem* self, QEvent* ev);
bool QGraphicsSvgItem_virtualbase_eventFilter(VirtualQGraphicsSvgItem* self, QObject* watched, QEvent* event);
void QGraphicsSvgItem_virtualbase_timerEvent(VirtualQGraphicsSvgItem* self, QTimerEvent* event);
void QGraphicsSvgItem_virtualbase_childEvent(VirtualQGraphicsSvgItem* self, QChildEvent* event);
void QGraphicsSvgItem_virtualbase_customEvent(VirtualQGraphicsSvgItem* self, QEvent* event);
void QGraphicsSvgItem_virtualbase_connectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
void QGraphicsSvgItem_virtualbase_disconnectNotify(VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
void QGraphicsSvgItem_virtualbase_advance(VirtualQGraphicsSvgItem* self, int phase);
QPainterPath* QGraphicsSvgItem_virtualbase_shape(const VirtualQGraphicsSvgItem* self);
bool QGraphicsSvgItem_virtualbase_contains(const VirtualQGraphicsSvgItem* self, QPointF* point);
bool QGraphicsSvgItem_virtualbase_collidesWithItem(const VirtualQGraphicsSvgItem* self, QGraphicsItem* other, int mode);
bool QGraphicsSvgItem_virtualbase_collidesWithPath(const VirtualQGraphicsSvgItem* self, QPainterPath* path, int mode);
bool QGraphicsSvgItem_virtualbase_isObscuredBy(const VirtualQGraphicsSvgItem* self, QGraphicsItem* item);
QPainterPath* QGraphicsSvgItem_virtualbase_opaqueArea(const VirtualQGraphicsSvgItem* self);
bool QGraphicsSvgItem_virtualbase_sceneEventFilter(VirtualQGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsSvgItem_virtualbase_sceneEvent(VirtualQGraphicsSvgItem* self, QEvent* event);
void QGraphicsSvgItem_virtualbase_contextMenuEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsSvgItem_virtualbase_dragEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dragLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dragMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_dropEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsSvgItem_virtualbase_focusInEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event);
void QGraphicsSvgItem_virtualbase_focusOutEvent(VirtualQGraphicsSvgItem* self, QFocusEvent* event);
void QGraphicsSvgItem_virtualbase_hoverEnterEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_hoverMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_hoverLeaveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
void QGraphicsSvgItem_virtualbase_keyPressEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event);
void QGraphicsSvgItem_virtualbase_keyReleaseEvent(VirtualQGraphicsSvgItem* self, QKeyEvent* event);
void QGraphicsSvgItem_virtualbase_mousePressEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseMoveEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseReleaseEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
void QGraphicsSvgItem_virtualbase_wheelEvent(VirtualQGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);
void QGraphicsSvgItem_virtualbase_inputMethodEvent(VirtualQGraphicsSvgItem* self, QInputMethodEvent* event);
QVariant* QGraphicsSvgItem_virtualbase_inputMethodQuery(const VirtualQGraphicsSvgItem* self, int query);
QVariant* QGraphicsSvgItem_virtualbase_itemChange(VirtualQGraphicsSvgItem* self, int change, QVariant* value);
bool QGraphicsSvgItem_virtualbase_supportsExtension(const VirtualQGraphicsSvgItem* self, int extension);
void QGraphicsSvgItem_virtualbase_setExtension(VirtualQGraphicsSvgItem* self, int extension, QVariant* variant);
QVariant* QGraphicsSvgItem_virtualbase_extension(const VirtualQGraphicsSvgItem* self, QVariant* variant);

void QGraphicsSvgItem_protectedbase_updateMicroFocus(VirtualQGraphicsSvgItem* self);
QObject* QGraphicsSvgItem_protectedbase_sender(const VirtualQGraphicsSvgItem* self);
int QGraphicsSvgItem_protectedbase_senderSignalIndex(const VirtualQGraphicsSvgItem* self);
int QGraphicsSvgItem_protectedbase_receivers(const VirtualQGraphicsSvgItem* self, const char* signal);
bool QGraphicsSvgItem_protectedbase_isSignalConnected(const VirtualQGraphicsSvgItem* self, QMetaMethod* signal);
void QGraphicsSvgItem_protectedbase_addToIndex(VirtualQGraphicsSvgItem* self);
void QGraphicsSvgItem_protectedbase_removeFromIndex(VirtualQGraphicsSvgItem* self);
void QGraphicsSvgItem_protectedbase_prepareGeometryChange(VirtualQGraphicsSvgItem* self);

const QMetaObject* QGraphicsSvgItem_staticMetaObject();
void QGraphicsSvgItem_delete(QGraphicsSvgItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
