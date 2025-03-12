#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSPROXYWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSPROXYWIDGET_H

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
class QCloseEvent;
class QEvent;
class QFocusEvent;
class QGraphicsItem;
class QGraphicsLayoutItem;
class QGraphicsObject;
class QGraphicsProxyWidget;
class QGraphicsSceneContextMenuEvent;
class QGraphicsSceneDragDropEvent;
class QGraphicsSceneHoverEvent;
class QGraphicsSceneMouseEvent;
class QGraphicsSceneMoveEvent;
class QGraphicsSceneResizeEvent;
class QGraphicsSceneWheelEvent;
class QGraphicsWidget;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPainterPath;
class QPointF;
class QRectF;
class QShowEvent;
class QSizeF;
class QStyleOption;
class QStyleOptionGraphicsItem;
class QTimerEvent;
class QVariant;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QGraphicsObject QGraphicsObject;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMoveEvent QGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneResizeEvent QGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QShowEvent QShowEvent;
typedef struct QSizeF QSizeF;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQGraphicsProxyWidget VirtualQGraphicsProxyWidget;
typedef struct QGraphicsProxyWidget_VTable{
	void (*destructor)(VirtualQGraphicsProxyWidget* self);
	QMetaObject* (*metaObject)(const VirtualQGraphicsProxyWidget* self);
	void* (*metacast)(VirtualQGraphicsProxyWidget* self, const char* param1);
	int (*metacall)(VirtualQGraphicsProxyWidget* self, int param1, int param2, void** param3);
	void (*setGeometry)(VirtualQGraphicsProxyWidget* self, QRectF* rect);
	void (*paint)(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	int (*type)(const VirtualQGraphicsProxyWidget* self);
	QVariant* (*itemChange)(VirtualQGraphicsProxyWidget* self, int change, QVariant* value);
	bool (*event)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	bool (*eventFilter)(VirtualQGraphicsProxyWidget* self, QObject* object, QEvent* event);
	void (*showEvent)(VirtualQGraphicsProxyWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQGraphicsProxyWidget* self, QHideEvent* event);
	void (*contextMenuEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*hoverEnterEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*grabMouseEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*ungrabMouseEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*mouseMoveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mousePressEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);
	void (*keyPressEvent)(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);
	bool (*focusNextPrevChild)(VirtualQGraphicsProxyWidget* self, bool next);
	QVariant* (*inputMethodQuery)(const VirtualQGraphicsProxyWidget* self, int query);
	void (*inputMethodEvent)(VirtualQGraphicsProxyWidget* self, QInputMethodEvent* event);
	QSizeF* (*sizeHint)(const VirtualQGraphicsProxyWidget* self, int which, QSizeF* constraint);
	void (*resizeEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);
	void (*getContentsMargins)(const VirtualQGraphicsProxyWidget* self, double* left, double* top, double* right, double* bottom);
	void (*paintWindowFrame)(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	QRectF* (*boundingRect)(const VirtualQGraphicsProxyWidget* self);
	QPainterPath* (*shape)(const VirtualQGraphicsProxyWidget* self);
	void (*initStyleOption)(const VirtualQGraphicsProxyWidget* self, QStyleOption* option);
	void (*updateGeometry)(VirtualQGraphicsProxyWidget* self);
	QVariant* (*propertyChange)(VirtualQGraphicsProxyWidget* self, struct miqt_string propertyName, QVariant* value);
	bool (*sceneEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	bool (*windowFrameEvent)(VirtualQGraphicsProxyWidget* self, QEvent* e);
	int (*windowFrameSectionAt)(const VirtualQGraphicsProxyWidget* self, QPointF* pos);
	void (*changeEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*closeEvent)(VirtualQGraphicsProxyWidget* self, QCloseEvent* event);
	void (*moveEvent)(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMoveEvent* event);
	void (*polishEvent)(VirtualQGraphicsProxyWidget* self);
	void (*grabKeyboardEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*ungrabKeyboardEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*timerEvent)(VirtualQGraphicsProxyWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGraphicsProxyWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQGraphicsProxyWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
	void (*advance)(VirtualQGraphicsProxyWidget* self, int phase);
	bool (*contains)(const VirtualQGraphicsProxyWidget* self, QPointF* point);
	bool (*collidesWithItem)(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(const VirtualQGraphicsProxyWidget* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(const VirtualQGraphicsProxyWidget* self);
	bool (*sceneEventFilter)(VirtualQGraphicsProxyWidget* self, QGraphicsItem* watched, QEvent* event);
	bool (*supportsExtension)(const VirtualQGraphicsProxyWidget* self, int extension);
	void (*setExtension)(VirtualQGraphicsProxyWidget* self, int extension, QVariant* variant);
	QVariant* (*extension)(const VirtualQGraphicsProxyWidget* self, QVariant* variant);
	bool (*isEmpty)(const VirtualQGraphicsProxyWidget* self);
}QGraphicsProxyWidget_VTable;

const QGraphicsProxyWidget_VTable* QGraphicsProxyWidget_vtbl(const VirtualQGraphicsProxyWidget* self);
void* QGraphicsProxyWidget_vdata(const VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_setVdata(VirtualQGraphicsProxyWidget* self, void* vdata);

VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new(const QGraphicsProxyWidget_VTable* vtbl, void* vdata);
VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new2(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent);
VirtualQGraphicsProxyWidget* QGraphicsProxyWidget_new3(const QGraphicsProxyWidget_VTable* vtbl, void* vdata, QGraphicsItem* parent, int wFlags);

void QGraphicsProxyWidget_virtbase(QGraphicsProxyWidget* src, QGraphicsWidget** outptr_QGraphicsWidget);
QMetaObject* QGraphicsProxyWidget_metaObject(const QGraphicsProxyWidget* self);
void* QGraphicsProxyWidget_metacast(QGraphicsProxyWidget* self, const char* param1);
int QGraphicsProxyWidget_metacall(QGraphicsProxyWidget* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsProxyWidget_tr(const char* s);
void QGraphicsProxyWidget_setWidget(QGraphicsProxyWidget* self, QWidget* widget);
QWidget* QGraphicsProxyWidget_widget(const QGraphicsProxyWidget* self);
QRectF* QGraphicsProxyWidget_subWidgetRect(const QGraphicsProxyWidget* self, QWidget* widget);
void QGraphicsProxyWidget_setGeometry(QGraphicsProxyWidget* self, QRectF* rect);
void QGraphicsProxyWidget_paint(QGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsProxyWidget_type(const QGraphicsProxyWidget* self);
QGraphicsProxyWidget* QGraphicsProxyWidget_createProxyForChildWidget(QGraphicsProxyWidget* self, QWidget* child);
QVariant* QGraphicsProxyWidget_itemChange(QGraphicsProxyWidget* self, int change, QVariant* value);
bool QGraphicsProxyWidget_event(QGraphicsProxyWidget* self, QEvent* event);
bool QGraphicsProxyWidget_eventFilter(QGraphicsProxyWidget* self, QObject* object, QEvent* event);
void QGraphicsProxyWidget_showEvent(QGraphicsProxyWidget* self, QShowEvent* event);
void QGraphicsProxyWidget_hideEvent(QGraphicsProxyWidget* self, QHideEvent* event);
void QGraphicsProxyWidget_contextMenuEvent(QGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsProxyWidget_dragEnterEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dragLeaveEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dragMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dropEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_hoverEnterEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_hoverLeaveEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_hoverMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_grabMouseEvent(QGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_ungrabMouseEvent(QGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_mouseMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mousePressEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mouseReleaseEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mouseDoubleClickEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_wheelEvent(QGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);
void QGraphicsProxyWidget_keyPressEvent(QGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_keyReleaseEvent(QGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_focusInEvent(QGraphicsProxyWidget* self, QFocusEvent* event);
void QGraphicsProxyWidget_focusOutEvent(QGraphicsProxyWidget* self, QFocusEvent* event);
bool QGraphicsProxyWidget_focusNextPrevChild(QGraphicsProxyWidget* self, bool next);
QVariant* QGraphicsProxyWidget_inputMethodQuery(const QGraphicsProxyWidget* self, int query);
void QGraphicsProxyWidget_inputMethodEvent(QGraphicsProxyWidget* self, QInputMethodEvent* event);
QSizeF* QGraphicsProxyWidget_sizeHint(const QGraphicsProxyWidget* self, int which, QSizeF* constraint);
void QGraphicsProxyWidget_resizeEvent(QGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);
struct miqt_string QGraphicsProxyWidget_tr2(const char* s, const char* c);
struct miqt_string QGraphicsProxyWidget_tr3(const char* s, const char* c, int n);

QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const VirtualQGraphicsProxyWidget* self);
void* QGraphicsProxyWidget_virtualbase_metacast(VirtualQGraphicsProxyWidget* self, const char* param1);
int QGraphicsProxyWidget_virtualbase_metacall(VirtualQGraphicsProxyWidget* self, int param1, int param2, void** param3);
void QGraphicsProxyWidget_virtualbase_setGeometry(VirtualQGraphicsProxyWidget* self, QRectF* rect);
void QGraphicsProxyWidget_virtualbase_paint(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsProxyWidget_virtualbase_type(const VirtualQGraphicsProxyWidget* self);
QVariant* QGraphicsProxyWidget_virtualbase_itemChange(VirtualQGraphicsProxyWidget* self, int change, QVariant* value);
bool QGraphicsProxyWidget_virtualbase_event(VirtualQGraphicsProxyWidget* self, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_eventFilter(VirtualQGraphicsProxyWidget* self, QObject* object, QEvent* event);
void QGraphicsProxyWidget_virtualbase_showEvent(VirtualQGraphicsProxyWidget* self, QShowEvent* event);
void QGraphicsProxyWidget_virtualbase_hideEvent(VirtualQGraphicsProxyWidget* self, QHideEvent* event);
void QGraphicsProxyWidget_virtualbase_contextMenuEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsProxyWidget_virtualbase_dragEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dragMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dropEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_grabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mousePressEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_wheelEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);
void QGraphicsProxyWidget_virtualbase_keyPressEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(VirtualQGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_virtualbase_focusInEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);
void QGraphicsProxyWidget_virtualbase_focusOutEvent(VirtualQGraphicsProxyWidget* self, QFocusEvent* event);
bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(VirtualQGraphicsProxyWidget* self, bool next);
QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const VirtualQGraphicsProxyWidget* self, int query);
void QGraphicsProxyWidget_virtualbase_inputMethodEvent(VirtualQGraphicsProxyWidget* self, QInputMethodEvent* event);
QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const VirtualQGraphicsProxyWidget* self, int which, QSizeF* constraint);
void QGraphicsProxyWidget_virtualbase_resizeEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);
void QGraphicsProxyWidget_virtualbase_getContentsMargins(const VirtualQGraphicsProxyWidget* self, double* left, double* top, double* right, double* bottom);
void QGraphicsProxyWidget_virtualbase_paintWindowFrame(VirtualQGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const VirtualQGraphicsProxyWidget* self);
QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_virtualbase_initStyleOption(const VirtualQGraphicsProxyWidget* self, QStyleOption* option);
void QGraphicsProxyWidget_virtualbase_updateGeometry(VirtualQGraphicsProxyWidget* self);
QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(VirtualQGraphicsProxyWidget* self, struct miqt_string propertyName, QVariant* value);
bool QGraphicsProxyWidget_virtualbase_sceneEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(VirtualQGraphicsProxyWidget* self, QEvent* e);
int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const VirtualQGraphicsProxyWidget* self, QPointF* pos);
void QGraphicsProxyWidget_virtualbase_changeEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_closeEvent(VirtualQGraphicsProxyWidget* self, QCloseEvent* event);
void QGraphicsProxyWidget_virtualbase_moveEvent(VirtualQGraphicsProxyWidget* self, QGraphicsSceneMoveEvent* event);
void QGraphicsProxyWidget_virtualbase_polishEvent(VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_timerEvent(VirtualQGraphicsProxyWidget* self, QTimerEvent* event);
void QGraphicsProxyWidget_virtualbase_childEvent(VirtualQGraphicsProxyWidget* self, QChildEvent* event);
void QGraphicsProxyWidget_virtualbase_customEvent(VirtualQGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_connectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
void QGraphicsProxyWidget_virtualbase_disconnectNotify(VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
void QGraphicsProxyWidget_virtualbase_advance(VirtualQGraphicsProxyWidget* self, int phase);
bool QGraphicsProxyWidget_virtualbase_contains(const VirtualQGraphicsProxyWidget* self, QPointF* point);
bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* other, int mode);
bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const VirtualQGraphicsProxyWidget* self, QPainterPath* path, int mode);
bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const VirtualQGraphicsProxyWidget* self, QGraphicsItem* item);
QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const VirtualQGraphicsProxyWidget* self);
bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(VirtualQGraphicsProxyWidget* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_supportsExtension(const VirtualQGraphicsProxyWidget* self, int extension);
void QGraphicsProxyWidget_virtualbase_setExtension(VirtualQGraphicsProxyWidget* self, int extension, QVariant* variant);
QVariant* QGraphicsProxyWidget_virtualbase_extension(const VirtualQGraphicsProxyWidget* self, QVariant* variant);
bool QGraphicsProxyWidget_virtualbase_isEmpty(const VirtualQGraphicsProxyWidget* self);

QGraphicsProxyWidget* QGraphicsProxyWidget_protectedbase_newProxyWidget(VirtualQGraphicsProxyWidget* self, QWidget* param1);
void QGraphicsProxyWidget_protectedbase_updateMicroFocus(VirtualQGraphicsProxyWidget* self);
QObject* QGraphicsProxyWidget_protectedbase_sender(const VirtualQGraphicsProxyWidget* self);
int QGraphicsProxyWidget_protectedbase_senderSignalIndex(const VirtualQGraphicsProxyWidget* self);
int QGraphicsProxyWidget_protectedbase_receivers(const VirtualQGraphicsProxyWidget* self, const char* signal);
bool QGraphicsProxyWidget_protectedbase_isSignalConnected(const VirtualQGraphicsProxyWidget* self, QMetaMethod* signal);
void QGraphicsProxyWidget_protectedbase_addToIndex(VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_protectedbase_removeFromIndex(VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_protectedbase_prepareGeometryChange(VirtualQGraphicsProxyWidget* self);
void QGraphicsProxyWidget_protectedbase_setGraphicsItem(VirtualQGraphicsProxyWidget* self, QGraphicsItem* item);
void QGraphicsProxyWidget_protectedbase_setOwnedByLayout(VirtualQGraphicsProxyWidget* self, bool ownedByLayout);

const QMetaObject* QGraphicsProxyWidget_staticMetaObject();
void QGraphicsProxyWidget_delete(QGraphicsProxyWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
