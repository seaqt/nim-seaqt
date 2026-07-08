#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTOBJECTINSPECTOR_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTOBJECTINSPECTOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDesignerFormWindowInterface;
class QDesignerObjectInspectorInterface;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerObjectInspectorInterface QDesignerObjectInspectorInterface;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerObjectInspectorInterface VirtualQDesignerObjectInspectorInterface;
typedef struct QDesignerObjectInspectorInterface_VTable{
	void (*destructor)(VirtualQDesignerObjectInspectorInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerObjectInspectorInterface* self);
	void* (*metacast)(VirtualQDesignerObjectInspectorInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerObjectInspectorInterface* self, int param1, int param2, void** param3);
	void (*setFormWindow)(VirtualQDesignerObjectInspectorInterface* self, QDesignerFormWindowInterface* formWindow);
	int (*devType)(const VirtualQDesignerObjectInspectorInterface* self);
	void (*setVisible)(VirtualQDesignerObjectInspectorInterface* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesignerObjectInspectorInterface* self);
	QSize* (*minimumSizeHint)(const VirtualQDesignerObjectInspectorInterface* self);
	int (*heightForWidth)(const VirtualQDesignerObjectInspectorInterface* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesignerObjectInspectorInterface* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesignerObjectInspectorInterface* self);
	bool (*event)(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesignerObjectInspectorInterface* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesignerObjectInspectorInterface* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
	void (*paintEvent)(VirtualQDesignerObjectInspectorInterface* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesignerObjectInspectorInterface* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDesignerObjectInspectorInterface* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDesignerObjectInspectorInterface* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesignerObjectInspectorInterface* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesignerObjectInspectorInterface* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesignerObjectInspectorInterface* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesignerObjectInspectorInterface* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesignerObjectInspectorInterface* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesignerObjectInspectorInterface* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesignerObjectInspectorInterface* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesignerObjectInspectorInterface* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesignerObjectInspectorInterface* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesignerObjectInspectorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQDesignerObjectInspectorInterface* self, QEvent* param1);
	int (*metric)(const VirtualQDesignerObjectInspectorInterface* self, int param1);
	void (*initPainter)(const VirtualQDesignerObjectInspectorInterface* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesignerObjectInspectorInterface* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesignerObjectInspectorInterface* self);
	void (*inputMethodEvent)(VirtualQDesignerObjectInspectorInterface* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesignerObjectInspectorInterface* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesignerObjectInspectorInterface* self, bool next);
	bool (*eventFilter)(VirtualQDesignerObjectInspectorInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerObjectInspectorInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerObjectInspectorInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);
}QDesignerObjectInspectorInterface_VTable;

void* QDesignerObjectInspectorInterface_vdata(VirtualQDesignerObjectInspectorInterface* self);
VirtualQDesignerObjectInspectorInterface* vdata_QDesignerObjectInspectorInterface(void* vdata);

VirtualQDesignerObjectInspectorInterface* QDesignerObjectInspectorInterface_new_parent(const QDesignerObjectInspectorInterface_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQDesignerObjectInspectorInterface* QDesignerObjectInspectorInterface_new_parent_flags(const QDesignerObjectInspectorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags);

void QDesignerObjectInspectorInterface_virtbase(QDesignerObjectInspectorInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerObjectInspectorInterface_metaObject(const QDesignerObjectInspectorInterface* self);
void* QDesignerObjectInspectorInterface_metacast(QDesignerObjectInspectorInterface* self, const char* param1);
int QDesignerObjectInspectorInterface_metacall(QDesignerObjectInspectorInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerObjectInspectorInterface_tr_s(const char* s);
void QDesignerObjectInspectorInterface_setFormWindow(QDesignerObjectInspectorInterface* self, QDesignerFormWindowInterface* formWindow);
struct seaqt_string QDesignerObjectInspectorInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerObjectInspectorInterface_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QDesignerObjectInspectorInterface_virtualbase_metaObject(const VirtualQDesignerObjectInspectorInterface* self);
void* QDesignerObjectInspectorInterface_virtualbase_metacast(VirtualQDesignerObjectInspectorInterface* self, const char* param1);
int QDesignerObjectInspectorInterface_virtualbase_metacall(VirtualQDesignerObjectInspectorInterface* self, int param1, int param2, void** param3);
void QDesignerObjectInspectorInterface_virtualbase_setFormWindow(VirtualQDesignerObjectInspectorInterface* self, QDesignerFormWindowInterface* formWindow);
int QDesignerObjectInspectorInterface_virtualbase_devType(const VirtualQDesignerObjectInspectorInterface* self);
void QDesignerObjectInspectorInterface_virtualbase_setVisible(VirtualQDesignerObjectInspectorInterface* self, bool visible);
QSize* QDesignerObjectInspectorInterface_virtualbase_sizeHint(const VirtualQDesignerObjectInspectorInterface* self);
QSize* QDesignerObjectInspectorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerObjectInspectorInterface* self);
int QDesignerObjectInspectorInterface_virtualbase_heightForWidth(const VirtualQDesignerObjectInspectorInterface* self, int param1);
bool QDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerObjectInspectorInterface* self);
QPaintEngine* QDesignerObjectInspectorInterface_virtualbase_paintEngine(const VirtualQDesignerObjectInspectorInterface* self);
bool QDesignerObjectInspectorInterface_virtualbase_event(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_mousePressEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_wheelEvent(VirtualQDesignerObjectInspectorInterface* self, QWheelEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_keyPressEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_focusInEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_focusOutEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_enterEvent(VirtualQDesignerObjectInspectorInterface* self, QEnterEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_leaveEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_paintEvent(VirtualQDesignerObjectInspectorInterface* self, QPaintEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_moveEvent(VirtualQDesignerObjectInspectorInterface* self, QMoveEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_resizeEvent(VirtualQDesignerObjectInspectorInterface* self, QResizeEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_closeEvent(VirtualQDesignerObjectInspectorInterface* self, QCloseEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_contextMenuEvent(VirtualQDesignerObjectInspectorInterface* self, QContextMenuEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_tabletEvent(VirtualQDesignerObjectInspectorInterface* self, QTabletEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_actionEvent(VirtualQDesignerObjectInspectorInterface* self, QActionEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_dragEnterEvent(VirtualQDesignerObjectInspectorInterface* self, QDragEnterEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_dragMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragMoveEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragLeaveEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_dropEvent(VirtualQDesignerObjectInspectorInterface* self, QDropEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_showEvent(VirtualQDesignerObjectInspectorInterface* self, QShowEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_hideEvent(VirtualQDesignerObjectInspectorInterface* self, QHideEvent* event);
bool QDesignerObjectInspectorInterface_virtualbase_nativeEvent(VirtualQDesignerObjectInspectorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QDesignerObjectInspectorInterface_virtualbase_changeEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* param1);
int QDesignerObjectInspectorInterface_virtualbase_metric(const VirtualQDesignerObjectInspectorInterface* self, int param1);
void QDesignerObjectInspectorInterface_virtualbase_initPainter(const VirtualQDesignerObjectInspectorInterface* self, QPainter* painter);
QPaintDevice* QDesignerObjectInspectorInterface_virtualbase_redirected(const VirtualQDesignerObjectInspectorInterface* self, QPoint* offset);
QPainter* QDesignerObjectInspectorInterface_virtualbase_sharedPainter(const VirtualQDesignerObjectInspectorInterface* self);
void QDesignerObjectInspectorInterface_virtualbase_inputMethodEvent(VirtualQDesignerObjectInspectorInterface* self, QInputMethodEvent* param1);
QVariant* QDesignerObjectInspectorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerObjectInspectorInterface* self, int param1);
bool QDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerObjectInspectorInterface* self, bool next);
bool QDesignerObjectInspectorInterface_virtualbase_eventFilter(VirtualQDesignerObjectInspectorInterface* self, QObject* watched, QEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_timerEvent(VirtualQDesignerObjectInspectorInterface* self, QTimerEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_childEvent(VirtualQDesignerObjectInspectorInterface* self, QChildEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_customEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);
void QDesignerObjectInspectorInterface_virtualbase_connectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);
void QDesignerObjectInspectorInterface_virtualbase_disconnectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);

void QDesignerObjectInspectorInterface_protectedbase_updateMicroFocus(VirtualQDesignerObjectInspectorInterface* self);
void QDesignerObjectInspectorInterface_protectedbase_create(VirtualQDesignerObjectInspectorInterface* self);
void QDesignerObjectInspectorInterface_protectedbase_destroy(VirtualQDesignerObjectInspectorInterface* self);
bool QDesignerObjectInspectorInterface_protectedbase_focusNextChild(VirtualQDesignerObjectInspectorInterface* self);
bool QDesignerObjectInspectorInterface_protectedbase_focusPreviousChild(VirtualQDesignerObjectInspectorInterface* self);
QObject* QDesignerObjectInspectorInterface_protectedbase_sender(const VirtualQDesignerObjectInspectorInterface* self);
int QDesignerObjectInspectorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerObjectInspectorInterface* self);
int QDesignerObjectInspectorInterface_protectedbase_receivers(const VirtualQDesignerObjectInspectorInterface* self, const char* signal);
bool QDesignerObjectInspectorInterface_protectedbase_isSignalConnected(const VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);

const QMetaObject* QDesignerObjectInspectorInterface_staticMetaObject();
void QDesignerObjectInspectorInterface_delete(QDesignerObjectInspectorInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
