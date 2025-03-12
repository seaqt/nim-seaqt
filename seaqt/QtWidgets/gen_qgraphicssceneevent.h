#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSSCENEEVENT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSSCENEEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QGraphicsSceneContextMenuEvent;
class QGraphicsSceneDragDropEvent;
class QGraphicsSceneEvent;
class QGraphicsSceneHelpEvent;
class QGraphicsSceneHoverEvent;
class QGraphicsSceneMouseEvent;
class QGraphicsSceneMoveEvent;
class QGraphicsSceneResizeEvent;
class QGraphicsSceneWheelEvent;
class QMimeData;
class QPoint;
class QPointF;
class QSizeF;
class QWidget;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneEvent QGraphicsSceneEvent;
typedef struct QGraphicsSceneHelpEvent QGraphicsSceneHelpEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMoveEvent QGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneResizeEvent QGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QMimeData QMimeData;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QSizeF QSizeF;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQGraphicsSceneEvent VirtualQGraphicsSceneEvent;
typedef struct QGraphicsSceneEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneEvent* self);
}QGraphicsSceneEvent_VTable;

const QGraphicsSceneEvent_VTable* QGraphicsSceneEvent_vtbl(const VirtualQGraphicsSceneEvent* self);
void* QGraphicsSceneEvent_vdata(const VirtualQGraphicsSceneEvent* self);
void QGraphicsSceneEvent_setVdata(VirtualQGraphicsSceneEvent* self, void* vdata);

VirtualQGraphicsSceneEvent* QGraphicsSceneEvent_new(const QGraphicsSceneEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneEvent_virtbase(QGraphicsSceneEvent* src, QEvent** outptr_QEvent);
QWidget* QGraphicsSceneEvent_widget(const QGraphicsSceneEvent* self);
void QGraphicsSceneEvent_setWidget(QGraphicsSceneEvent* self, QWidget* widget);
unsigned long long QGraphicsSceneEvent_timestamp(const QGraphicsSceneEvent* self);
void QGraphicsSceneEvent_setTimestamp(QGraphicsSceneEvent* self, unsigned long long ts);

void QGraphicsSceneEvent_virtualbase_setAccepted(VirtualQGraphicsSceneEvent* self, bool accepted);
QEvent* QGraphicsSceneEvent_virtualbase_clone(const VirtualQGraphicsSceneEvent* self);

void QGraphicsSceneEvent_delete(QGraphicsSceneEvent* self);

typedef struct VirtualQGraphicsSceneMouseEvent VirtualQGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMouseEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneMouseEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneMouseEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneMouseEvent* self);
}QGraphicsSceneMouseEvent_VTable;

const QGraphicsSceneMouseEvent_VTable* QGraphicsSceneMouseEvent_vtbl(const VirtualQGraphicsSceneMouseEvent* self);
void* QGraphicsSceneMouseEvent_vdata(const VirtualQGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setVdata(VirtualQGraphicsSceneMouseEvent* self, void* vdata);

VirtualQGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new(const QGraphicsSceneMouseEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new2(const QGraphicsSceneMouseEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneMouseEvent_virtbase(QGraphicsSceneMouseEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneMouseEvent_pos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setPos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QPointF* QGraphicsSceneMouseEvent_scenePos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QPoint* QGraphicsSceneMouseEvent_screenPos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos);
QPointF* QGraphicsSceneMouseEvent_buttonDownPos(const QGraphicsSceneMouseEvent* self, int button);
void QGraphicsSceneMouseEvent_setButtonDownPos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos);
QPointF* QGraphicsSceneMouseEvent_buttonDownScenePos(const QGraphicsSceneMouseEvent* self, int button);
void QGraphicsSceneMouseEvent_setButtonDownScenePos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos);
QPoint* QGraphicsSceneMouseEvent_buttonDownScreenPos(const QGraphicsSceneMouseEvent* self, int button);
void QGraphicsSceneMouseEvent_setButtonDownScreenPos(QGraphicsSceneMouseEvent* self, int button, QPoint* pos);
QPointF* QGraphicsSceneMouseEvent_lastPos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setLastPos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QPointF* QGraphicsSceneMouseEvent_lastScenePos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setLastScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QPoint* QGraphicsSceneMouseEvent_lastScreenPos(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setLastScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos);
int QGraphicsSceneMouseEvent_buttons(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setButtons(QGraphicsSceneMouseEvent* self, int buttons);
int QGraphicsSceneMouseEvent_button(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setButton(QGraphicsSceneMouseEvent* self, int button);
int QGraphicsSceneMouseEvent_modifiers(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setModifiers(QGraphicsSceneMouseEvent* self, int modifiers);
int QGraphicsSceneMouseEvent_source(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setSource(QGraphicsSceneMouseEvent* self, int source);
int QGraphicsSceneMouseEvent_flags(const QGraphicsSceneMouseEvent* self);
void QGraphicsSceneMouseEvent_setFlags(QGraphicsSceneMouseEvent* self, int flags);

void QGraphicsSceneMouseEvent_virtualbase_setAccepted(VirtualQGraphicsSceneMouseEvent* self, bool accepted);
QEvent* QGraphicsSceneMouseEvent_virtualbase_clone(const VirtualQGraphicsSceneMouseEvent* self);

void QGraphicsSceneMouseEvent_delete(QGraphicsSceneMouseEvent* self);

typedef struct VirtualQGraphicsSceneWheelEvent VirtualQGraphicsSceneWheelEvent;
typedef struct QGraphicsSceneWheelEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneWheelEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneWheelEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneWheelEvent* self);
}QGraphicsSceneWheelEvent_VTable;

const QGraphicsSceneWheelEvent_VTable* QGraphicsSceneWheelEvent_vtbl(const VirtualQGraphicsSceneWheelEvent* self);
void* QGraphicsSceneWheelEvent_vdata(const VirtualQGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setVdata(VirtualQGraphicsSceneWheelEvent* self, void* vdata);

VirtualQGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new(const QGraphicsSceneWheelEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new2(const QGraphicsSceneWheelEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneWheelEvent_virtbase(QGraphicsSceneWheelEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneWheelEvent_pos(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setPos(QGraphicsSceneWheelEvent* self, QPointF* pos);
QPointF* QGraphicsSceneWheelEvent_scenePos(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setScenePos(QGraphicsSceneWheelEvent* self, QPointF* pos);
QPoint* QGraphicsSceneWheelEvent_screenPos(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setScreenPos(QGraphicsSceneWheelEvent* self, QPoint* pos);
int QGraphicsSceneWheelEvent_buttons(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setButtons(QGraphicsSceneWheelEvent* self, int buttons);
int QGraphicsSceneWheelEvent_modifiers(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setModifiers(QGraphicsSceneWheelEvent* self, int modifiers);
int QGraphicsSceneWheelEvent_delta(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setDelta(QGraphicsSceneWheelEvent* self, int delta);
int QGraphicsSceneWheelEvent_orientation(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setOrientation(QGraphicsSceneWheelEvent* self, int orientation);
int QGraphicsSceneWheelEvent_phase(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setPhase(QGraphicsSceneWheelEvent* self, int scrollPhase);
QPoint* QGraphicsSceneWheelEvent_pixelDelta(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setPixelDelta(QGraphicsSceneWheelEvent* self, QPoint* delta);
bool QGraphicsSceneWheelEvent_isInverted(const QGraphicsSceneWheelEvent* self);
void QGraphicsSceneWheelEvent_setInverted(QGraphicsSceneWheelEvent* self, bool inverted);

void QGraphicsSceneWheelEvent_virtualbase_setAccepted(VirtualQGraphicsSceneWheelEvent* self, bool accepted);
QEvent* QGraphicsSceneWheelEvent_virtualbase_clone(const VirtualQGraphicsSceneWheelEvent* self);

void QGraphicsSceneWheelEvent_delete(QGraphicsSceneWheelEvent* self);

typedef struct VirtualQGraphicsSceneContextMenuEvent VirtualQGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneContextMenuEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneContextMenuEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneContextMenuEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneContextMenuEvent* self);
}QGraphicsSceneContextMenuEvent_VTable;

const QGraphicsSceneContextMenuEvent_VTable* QGraphicsSceneContextMenuEvent_vtbl(const VirtualQGraphicsSceneContextMenuEvent* self);
void* QGraphicsSceneContextMenuEvent_vdata(const VirtualQGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setVdata(VirtualQGraphicsSceneContextMenuEvent* self, void* vdata);

VirtualQGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new(const QGraphicsSceneContextMenuEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new2(const QGraphicsSceneContextMenuEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneContextMenuEvent_virtbase(QGraphicsSceneContextMenuEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneContextMenuEvent_pos(const QGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setPos(QGraphicsSceneContextMenuEvent* self, QPointF* pos);
QPointF* QGraphicsSceneContextMenuEvent_scenePos(const QGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setScenePos(QGraphicsSceneContextMenuEvent* self, QPointF* pos);
QPoint* QGraphicsSceneContextMenuEvent_screenPos(const QGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setScreenPos(QGraphicsSceneContextMenuEvent* self, QPoint* pos);
int QGraphicsSceneContextMenuEvent_modifiers(const QGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setModifiers(QGraphicsSceneContextMenuEvent* self, int modifiers);
int QGraphicsSceneContextMenuEvent_reason(const QGraphicsSceneContextMenuEvent* self);
void QGraphicsSceneContextMenuEvent_setReason(QGraphicsSceneContextMenuEvent* self, int reason);

void QGraphicsSceneContextMenuEvent_virtualbase_setAccepted(VirtualQGraphicsSceneContextMenuEvent* self, bool accepted);
QEvent* QGraphicsSceneContextMenuEvent_virtualbase_clone(const VirtualQGraphicsSceneContextMenuEvent* self);

void QGraphicsSceneContextMenuEvent_delete(QGraphicsSceneContextMenuEvent* self);

typedef struct VirtualQGraphicsSceneHoverEvent VirtualQGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneHoverEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneHoverEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneHoverEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneHoverEvent* self);
}QGraphicsSceneHoverEvent_VTable;

const QGraphicsSceneHoverEvent_VTable* QGraphicsSceneHoverEvent_vtbl(const VirtualQGraphicsSceneHoverEvent* self);
void* QGraphicsSceneHoverEvent_vdata(const VirtualQGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setVdata(VirtualQGraphicsSceneHoverEvent* self, void* vdata);

VirtualQGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new(const QGraphicsSceneHoverEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new2(const QGraphicsSceneHoverEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneHoverEvent_virtbase(QGraphicsSceneHoverEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneHoverEvent_pos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setPos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QPointF* QGraphicsSceneHoverEvent_scenePos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QPoint* QGraphicsSceneHoverEvent_screenPos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos);
QPointF* QGraphicsSceneHoverEvent_lastPos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setLastPos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QPointF* QGraphicsSceneHoverEvent_lastScenePos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setLastScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QPoint* QGraphicsSceneHoverEvent_lastScreenPos(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setLastScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos);
int QGraphicsSceneHoverEvent_modifiers(const QGraphicsSceneHoverEvent* self);
void QGraphicsSceneHoverEvent_setModifiers(QGraphicsSceneHoverEvent* self, int modifiers);

void QGraphicsSceneHoverEvent_virtualbase_setAccepted(VirtualQGraphicsSceneHoverEvent* self, bool accepted);
QEvent* QGraphicsSceneHoverEvent_virtualbase_clone(const VirtualQGraphicsSceneHoverEvent* self);

void QGraphicsSceneHoverEvent_delete(QGraphicsSceneHoverEvent* self);

typedef struct VirtualQGraphicsSceneHelpEvent VirtualQGraphicsSceneHelpEvent;
typedef struct QGraphicsSceneHelpEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneHelpEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneHelpEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneHelpEvent* self);
}QGraphicsSceneHelpEvent_VTable;

const QGraphicsSceneHelpEvent_VTable* QGraphicsSceneHelpEvent_vtbl(const VirtualQGraphicsSceneHelpEvent* self);
void* QGraphicsSceneHelpEvent_vdata(const VirtualQGraphicsSceneHelpEvent* self);
void QGraphicsSceneHelpEvent_setVdata(VirtualQGraphicsSceneHelpEvent* self, void* vdata);

VirtualQGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new(const QGraphicsSceneHelpEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new2(const QGraphicsSceneHelpEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneHelpEvent_virtbase(QGraphicsSceneHelpEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneHelpEvent_scenePos(const QGraphicsSceneHelpEvent* self);
void QGraphicsSceneHelpEvent_setScenePos(QGraphicsSceneHelpEvent* self, QPointF* pos);
QPoint* QGraphicsSceneHelpEvent_screenPos(const QGraphicsSceneHelpEvent* self);
void QGraphicsSceneHelpEvent_setScreenPos(QGraphicsSceneHelpEvent* self, QPoint* pos);

void QGraphicsSceneHelpEvent_virtualbase_setAccepted(VirtualQGraphicsSceneHelpEvent* self, bool accepted);
QEvent* QGraphicsSceneHelpEvent_virtualbase_clone(const VirtualQGraphicsSceneHelpEvent* self);

void QGraphicsSceneHelpEvent_delete(QGraphicsSceneHelpEvent* self);

typedef struct VirtualQGraphicsSceneDragDropEvent VirtualQGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneDragDropEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneDragDropEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneDragDropEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneDragDropEvent* self);
}QGraphicsSceneDragDropEvent_VTable;

const QGraphicsSceneDragDropEvent_VTable* QGraphicsSceneDragDropEvent_vtbl(const VirtualQGraphicsSceneDragDropEvent* self);
void* QGraphicsSceneDragDropEvent_vdata(const VirtualQGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setVdata(VirtualQGraphicsSceneDragDropEvent* self, void* vdata);

VirtualQGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new(const QGraphicsSceneDragDropEvent_VTable* vtbl, void* vdata);
VirtualQGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new2(const QGraphicsSceneDragDropEvent_VTable* vtbl, void* vdata, int type);

void QGraphicsSceneDragDropEvent_virtbase(QGraphicsSceneDragDropEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneDragDropEvent_pos(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setPos(QGraphicsSceneDragDropEvent* self, QPointF* pos);
QPointF* QGraphicsSceneDragDropEvent_scenePos(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setScenePos(QGraphicsSceneDragDropEvent* self, QPointF* pos);
QPoint* QGraphicsSceneDragDropEvent_screenPos(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setScreenPos(QGraphicsSceneDragDropEvent* self, QPoint* pos);
int QGraphicsSceneDragDropEvent_buttons(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setButtons(QGraphicsSceneDragDropEvent* self, int buttons);
int QGraphicsSceneDragDropEvent_modifiers(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setModifiers(QGraphicsSceneDragDropEvent* self, int modifiers);
int QGraphicsSceneDragDropEvent_possibleActions(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setPossibleActions(QGraphicsSceneDragDropEvent* self, int actions);
int QGraphicsSceneDragDropEvent_proposedAction(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setProposedAction(QGraphicsSceneDragDropEvent* self, int action);
void QGraphicsSceneDragDropEvent_acceptProposedAction(QGraphicsSceneDragDropEvent* self);
int QGraphicsSceneDragDropEvent_dropAction(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setDropAction(QGraphicsSceneDragDropEvent* self, int action);
QWidget* QGraphicsSceneDragDropEvent_source(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setSource(QGraphicsSceneDragDropEvent* self, QWidget* source);
QMimeData* QGraphicsSceneDragDropEvent_mimeData(const QGraphicsSceneDragDropEvent* self);
void QGraphicsSceneDragDropEvent_setMimeData(QGraphicsSceneDragDropEvent* self, QMimeData* data);

void QGraphicsSceneDragDropEvent_virtualbase_setAccepted(VirtualQGraphicsSceneDragDropEvent* self, bool accepted);
QEvent* QGraphicsSceneDragDropEvent_virtualbase_clone(const VirtualQGraphicsSceneDragDropEvent* self);

void QGraphicsSceneDragDropEvent_delete(QGraphicsSceneDragDropEvent* self);

typedef struct VirtualQGraphicsSceneResizeEvent VirtualQGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneResizeEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneResizeEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneResizeEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneResizeEvent* self);
}QGraphicsSceneResizeEvent_VTable;

const QGraphicsSceneResizeEvent_VTable* QGraphicsSceneResizeEvent_vtbl(const VirtualQGraphicsSceneResizeEvent* self);
void* QGraphicsSceneResizeEvent_vdata(const VirtualQGraphicsSceneResizeEvent* self);
void QGraphicsSceneResizeEvent_setVdata(VirtualQGraphicsSceneResizeEvent* self, void* vdata);

VirtualQGraphicsSceneResizeEvent* QGraphicsSceneResizeEvent_new(const QGraphicsSceneResizeEvent_VTable* vtbl, void* vdata);

void QGraphicsSceneResizeEvent_virtbase(QGraphicsSceneResizeEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QSizeF* QGraphicsSceneResizeEvent_oldSize(const QGraphicsSceneResizeEvent* self);
void QGraphicsSceneResizeEvent_setOldSize(QGraphicsSceneResizeEvent* self, QSizeF* size);
QSizeF* QGraphicsSceneResizeEvent_newSize(const QGraphicsSceneResizeEvent* self);
void QGraphicsSceneResizeEvent_setNewSize(QGraphicsSceneResizeEvent* self, QSizeF* size);

void QGraphicsSceneResizeEvent_virtualbase_setAccepted(VirtualQGraphicsSceneResizeEvent* self, bool accepted);
QEvent* QGraphicsSceneResizeEvent_virtualbase_clone(const VirtualQGraphicsSceneResizeEvent* self);

void QGraphicsSceneResizeEvent_delete(QGraphicsSceneResizeEvent* self);

typedef struct VirtualQGraphicsSceneMoveEvent VirtualQGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneMoveEvent_VTable{
	void (*destructor)(VirtualQGraphicsSceneMoveEvent* self);
	void (*setAccepted)(VirtualQGraphicsSceneMoveEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQGraphicsSceneMoveEvent* self);
}QGraphicsSceneMoveEvent_VTable;

const QGraphicsSceneMoveEvent_VTable* QGraphicsSceneMoveEvent_vtbl(const VirtualQGraphicsSceneMoveEvent* self);
void* QGraphicsSceneMoveEvent_vdata(const VirtualQGraphicsSceneMoveEvent* self);
void QGraphicsSceneMoveEvent_setVdata(VirtualQGraphicsSceneMoveEvent* self, void* vdata);

VirtualQGraphicsSceneMoveEvent* QGraphicsSceneMoveEvent_new(const QGraphicsSceneMoveEvent_VTable* vtbl, void* vdata);

void QGraphicsSceneMoveEvent_virtbase(QGraphicsSceneMoveEvent* src, QGraphicsSceneEvent** outptr_QGraphicsSceneEvent);
QPointF* QGraphicsSceneMoveEvent_oldPos(const QGraphicsSceneMoveEvent* self);
void QGraphicsSceneMoveEvent_setOldPos(QGraphicsSceneMoveEvent* self, QPointF* pos);
QPointF* QGraphicsSceneMoveEvent_newPos(const QGraphicsSceneMoveEvent* self);
void QGraphicsSceneMoveEvent_setNewPos(QGraphicsSceneMoveEvent* self, QPointF* pos);

void QGraphicsSceneMoveEvent_virtualbase_setAccepted(VirtualQGraphicsSceneMoveEvent* self, bool accepted);
QEvent* QGraphicsSceneMoveEvent_virtualbase_clone(const VirtualQGraphicsSceneMoveEvent* self);

void QGraphicsSceneMoveEvent_delete(QGraphicsSceneMoveEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
