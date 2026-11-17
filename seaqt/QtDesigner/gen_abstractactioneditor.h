#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTACTIONEDITOR_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTACTIONEDITOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDesignerActionEditorInterface;
class QDesignerFormWindowInterface;
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
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDesignerActionEditorInterface QDesignerActionEditorInterface;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
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

typedef struct VirtualQDesignerActionEditorInterface VirtualQDesignerActionEditorInterface;
typedef struct QDesignerActionEditorInterface_VTable{
	void (*destructor)(VirtualQDesignerActionEditorInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerActionEditorInterface* self);
	void* (*metacast)(VirtualQDesignerActionEditorInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerActionEditorInterface* self, int param1, int param2, void** param3);
	void (*manageAction)(VirtualQDesignerActionEditorInterface* self, QAction* action);
	void (*unmanageAction)(VirtualQDesignerActionEditorInterface* self, QAction* action);
	void (*setFormWindow)(VirtualQDesignerActionEditorInterface* self, QDesignerFormWindowInterface* formWindow);
	int (*devType)(const VirtualQDesignerActionEditorInterface* self);
	void (*setVisible)(VirtualQDesignerActionEditorInterface* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesignerActionEditorInterface* self);
	QSize* (*minimumSizeHint)(const VirtualQDesignerActionEditorInterface* self);
	int (*heightForWidth)(const VirtualQDesignerActionEditorInterface* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesignerActionEditorInterface* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesignerActionEditorInterface* self);
	bool (*event)(VirtualQDesignerActionEditorInterface* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesignerActionEditorInterface* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesignerActionEditorInterface* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDesignerActionEditorInterface* self, QEvent* event);
	void (*paintEvent)(VirtualQDesignerActionEditorInterface* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesignerActionEditorInterface* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQDesignerActionEditorInterface* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQDesignerActionEditorInterface* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesignerActionEditorInterface* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesignerActionEditorInterface* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesignerActionEditorInterface* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesignerActionEditorInterface* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesignerActionEditorInterface* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesignerActionEditorInterface* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesignerActionEditorInterface* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesignerActionEditorInterface* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesignerActionEditorInterface* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesignerActionEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQDesignerActionEditorInterface* self, QEvent* param1);
	int (*metric)(const VirtualQDesignerActionEditorInterface* self, int param1);
	void (*initPainter)(const VirtualQDesignerActionEditorInterface* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesignerActionEditorInterface* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesignerActionEditorInterface* self);
	void (*inputMethodEvent)(VirtualQDesignerActionEditorInterface* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesignerActionEditorInterface* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesignerActionEditorInterface* self, bool next);
	bool (*eventFilter)(VirtualQDesignerActionEditorInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerActionEditorInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerActionEditorInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerActionEditorInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);
}QDesignerActionEditorInterface_VTable;

void* QDesignerActionEditorInterface_vdata(VirtualQDesignerActionEditorInterface* self);
VirtualQDesignerActionEditorInterface* vdata_QDesignerActionEditorInterface(void* vdata);

VirtualQDesignerActionEditorInterface* QDesignerActionEditorInterface_new_parent(const QDesignerActionEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQDesignerActionEditorInterface* QDesignerActionEditorInterface_new_parent_flags(const QDesignerActionEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags);

void QDesignerActionEditorInterface_virtbase(QDesignerActionEditorInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerActionEditorInterface_metaObject(const QDesignerActionEditorInterface* self);
void* QDesignerActionEditorInterface_metacast(QDesignerActionEditorInterface* self, const char* param1);
int QDesignerActionEditorInterface_metacall(QDesignerActionEditorInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerActionEditorInterface_tr_s(const char* s);
void QDesignerActionEditorInterface_manageAction(QDesignerActionEditorInterface* self, QAction* action);
void QDesignerActionEditorInterface_unmanageAction(QDesignerActionEditorInterface* self, QAction* action);
void QDesignerActionEditorInterface_setFormWindow(QDesignerActionEditorInterface* self, QDesignerFormWindowInterface* formWindow);
struct seaqt_string QDesignerActionEditorInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerActionEditorInterface_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QDesignerActionEditorInterface_virtualbase_metaObject(const VirtualQDesignerActionEditorInterface* self);
void* QDesignerActionEditorInterface_virtualbase_metacast(VirtualQDesignerActionEditorInterface* self, const char* param1);
int QDesignerActionEditorInterface_virtualbase_metacall(VirtualQDesignerActionEditorInterface* self, int param1, int param2, void** param3);
void QDesignerActionEditorInterface_virtualbase_manageAction(VirtualQDesignerActionEditorInterface* self, QAction* action);
void QDesignerActionEditorInterface_virtualbase_unmanageAction(VirtualQDesignerActionEditorInterface* self, QAction* action);
void QDesignerActionEditorInterface_virtualbase_setFormWindow(VirtualQDesignerActionEditorInterface* self, QDesignerFormWindowInterface* formWindow);
int QDesignerActionEditorInterface_virtualbase_devType(const VirtualQDesignerActionEditorInterface* self);
void QDesignerActionEditorInterface_virtualbase_setVisible(VirtualQDesignerActionEditorInterface* self, bool visible);
QSize* QDesignerActionEditorInterface_virtualbase_sizeHint(const VirtualQDesignerActionEditorInterface* self);
QSize* QDesignerActionEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerActionEditorInterface* self);
int QDesignerActionEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerActionEditorInterface* self, int param1);
bool QDesignerActionEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerActionEditorInterface* self);
QPaintEngine* QDesignerActionEditorInterface_virtualbase_paintEngine(const VirtualQDesignerActionEditorInterface* self);
bool QDesignerActionEditorInterface_virtualbase_event(VirtualQDesignerActionEditorInterface* self, QEvent* event);
void QDesignerActionEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
void QDesignerActionEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
void QDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
void QDesignerActionEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);
void QDesignerActionEditorInterface_virtualbase_wheelEvent(VirtualQDesignerActionEditorInterface* self, QWheelEvent* event);
void QDesignerActionEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);
void QDesignerActionEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);
void QDesignerActionEditorInterface_virtualbase_focusInEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);
void QDesignerActionEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);
void QDesignerActionEditorInterface_virtualbase_enterEvent(VirtualQDesignerActionEditorInterface* self, QEnterEvent* event);
void QDesignerActionEditorInterface_virtualbase_leaveEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event);
void QDesignerActionEditorInterface_virtualbase_paintEvent(VirtualQDesignerActionEditorInterface* self, QPaintEvent* event);
void QDesignerActionEditorInterface_virtualbase_moveEvent(VirtualQDesignerActionEditorInterface* self, QMoveEvent* event);
void QDesignerActionEditorInterface_virtualbase_resizeEvent(VirtualQDesignerActionEditorInterface* self, QResizeEvent* event);
void QDesignerActionEditorInterface_virtualbase_closeEvent(VirtualQDesignerActionEditorInterface* self, QCloseEvent* event);
void QDesignerActionEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerActionEditorInterface* self, QContextMenuEvent* event);
void QDesignerActionEditorInterface_virtualbase_tabletEvent(VirtualQDesignerActionEditorInterface* self, QTabletEvent* event);
void QDesignerActionEditorInterface_virtualbase_actionEvent(VirtualQDesignerActionEditorInterface* self, QActionEvent* event);
void QDesignerActionEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerActionEditorInterface* self, QDragEnterEvent* event);
void QDesignerActionEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerActionEditorInterface* self, QDragMoveEvent* event);
void QDesignerActionEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerActionEditorInterface* self, QDragLeaveEvent* event);
void QDesignerActionEditorInterface_virtualbase_dropEvent(VirtualQDesignerActionEditorInterface* self, QDropEvent* event);
void QDesignerActionEditorInterface_virtualbase_showEvent(VirtualQDesignerActionEditorInterface* self, QShowEvent* event);
void QDesignerActionEditorInterface_virtualbase_hideEvent(VirtualQDesignerActionEditorInterface* self, QHideEvent* event);
bool QDesignerActionEditorInterface_virtualbase_nativeEvent(VirtualQDesignerActionEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QDesignerActionEditorInterface_virtualbase_changeEvent(VirtualQDesignerActionEditorInterface* self, QEvent* param1);
int QDesignerActionEditorInterface_virtualbase_metric(const VirtualQDesignerActionEditorInterface* self, int param1);
void QDesignerActionEditorInterface_virtualbase_initPainter(const VirtualQDesignerActionEditorInterface* self, QPainter* painter);
QPaintDevice* QDesignerActionEditorInterface_virtualbase_redirected(const VirtualQDesignerActionEditorInterface* self, QPoint* offset);
QPainter* QDesignerActionEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerActionEditorInterface* self);
void QDesignerActionEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerActionEditorInterface* self, QInputMethodEvent* param1);
QVariant* QDesignerActionEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerActionEditorInterface* self, int param1);
bool QDesignerActionEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerActionEditorInterface* self, bool next);
bool QDesignerActionEditorInterface_virtualbase_eventFilter(VirtualQDesignerActionEditorInterface* self, QObject* watched, QEvent* event);
void QDesignerActionEditorInterface_virtualbase_timerEvent(VirtualQDesignerActionEditorInterface* self, QTimerEvent* event);
void QDesignerActionEditorInterface_virtualbase_childEvent(VirtualQDesignerActionEditorInterface* self, QChildEvent* event);
void QDesignerActionEditorInterface_virtualbase_customEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event);
void QDesignerActionEditorInterface_virtualbase_connectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);
void QDesignerActionEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);

void QDesignerActionEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerActionEditorInterface* self);
void QDesignerActionEditorInterface_protectedbase_create(VirtualQDesignerActionEditorInterface* self);
void QDesignerActionEditorInterface_protectedbase_destroy(VirtualQDesignerActionEditorInterface* self);
bool QDesignerActionEditorInterface_protectedbase_focusNextChild(VirtualQDesignerActionEditorInterface* self);
bool QDesignerActionEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerActionEditorInterface* self);
QObject* QDesignerActionEditorInterface_protectedbase_sender(const VirtualQDesignerActionEditorInterface* self);
int QDesignerActionEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerActionEditorInterface* self);
int QDesignerActionEditorInterface_protectedbase_receivers(const VirtualQDesignerActionEditorInterface* self, const char* signal);
bool QDesignerActionEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);
double QDesignerActionEditorInterface_protectedbase_getDecodedMetricF(const VirtualQDesignerActionEditorInterface* self, int metricA, int metricB);

const QMetaObject* QDesignerActionEditorInterface_staticMetaObject();
void QDesignerActionEditorInterface_delete(QDesignerActionEditorInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
