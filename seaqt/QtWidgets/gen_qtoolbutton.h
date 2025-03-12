#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTOOLBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QTOOLBUTTON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QAction;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
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
class QMenu;
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
class QStyleOptionToolButton;
class QTabletEvent;
class QTimerEvent;
class QToolButton;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
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
typedef struct QMenu QMenu;
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
typedef struct QStyleOptionToolButton QStyleOptionToolButton;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolButton QToolButton;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQToolButton VirtualQToolButton;
typedef struct QToolButton_VTable{
	void (*destructor)(VirtualQToolButton* self);
	QMetaObject* (*metaObject)(const VirtualQToolButton* self);
	void* (*metacast)(VirtualQToolButton* self, const char* param1);
	int (*metacall)(VirtualQToolButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQToolButton* self);
	QSize* (*minimumSizeHint)(const VirtualQToolButton* self);
	bool (*event)(VirtualQToolButton* self, QEvent* e);
	void (*mousePressEvent)(VirtualQToolButton* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQToolButton* self, QMouseEvent* param1);
	void (*paintEvent)(VirtualQToolButton* self, QPaintEvent* param1);
	void (*actionEvent)(VirtualQToolButton* self, QActionEvent* param1);
	void (*enterEvent)(VirtualQToolButton* self, QEnterEvent* param1);
	void (*leaveEvent)(VirtualQToolButton* self, QEvent* param1);
	void (*timerEvent)(VirtualQToolButton* self, QTimerEvent* param1);
	void (*changeEvent)(VirtualQToolButton* self, QEvent* param1);
	bool (*hitButton)(const VirtualQToolButton* self, QPoint* pos);
	void (*checkStateSet)(VirtualQToolButton* self);
	void (*nextCheckState)(VirtualQToolButton* self);
	void (*initStyleOption)(const VirtualQToolButton* self, QStyleOptionToolButton* option);
	void (*keyPressEvent)(VirtualQToolButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(VirtualQToolButton* self, QKeyEvent* e);
	void (*mouseMoveEvent)(VirtualQToolButton* self, QMouseEvent* e);
	void (*focusInEvent)(VirtualQToolButton* self, QFocusEvent* e);
	void (*focusOutEvent)(VirtualQToolButton* self, QFocusEvent* e);
	int (*devType)(const VirtualQToolButton* self);
	void (*setVisible)(VirtualQToolButton* self, bool visible);
	int (*heightForWidth)(const VirtualQToolButton* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQToolButton* self);
	QPaintEngine* (*paintEngine)(const VirtualQToolButton* self);
	void (*mouseDoubleClickEvent)(VirtualQToolButton* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQToolButton* self, QWheelEvent* event);
	void (*moveEvent)(VirtualQToolButton* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQToolButton* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQToolButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQToolButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQToolButton* self, QTabletEvent* event);
	void (*dragEnterEvent)(VirtualQToolButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQToolButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQToolButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQToolButton* self, QDropEvent* event);
	void (*showEvent)(VirtualQToolButton* self, QShowEvent* event);
	void (*hideEvent)(VirtualQToolButton* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQToolButton* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQToolButton* self, int param1);
	void (*initPainter)(const VirtualQToolButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQToolButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQToolButton* self);
	void (*inputMethodEvent)(VirtualQToolButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQToolButton* self, int param1);
	bool (*focusNextPrevChild)(VirtualQToolButton* self, bool next);
	bool (*eventFilter)(VirtualQToolButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQToolButton* self, QChildEvent* event);
	void (*customEvent)(VirtualQToolButton* self, QEvent* event);
	void (*connectNotify)(VirtualQToolButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQToolButton* self, QMetaMethod* signal);
}QToolButton_VTable;

const QToolButton_VTable* QToolButton_vtbl(const VirtualQToolButton* self);
void* QToolButton_vdata(const VirtualQToolButton* self);
void QToolButton_setVdata(VirtualQToolButton* self, void* vdata);

VirtualQToolButton* QToolButton_new(const QToolButton_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQToolButton* QToolButton_new2(const QToolButton_VTable* vtbl, void* vdata);

void QToolButton_virtbase(QToolButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QToolButton_metaObject(const QToolButton* self);
void* QToolButton_metacast(QToolButton* self, const char* param1);
int QToolButton_metacall(QToolButton* self, int param1, int param2, void** param3);
struct miqt_string QToolButton_tr(const char* s);
QSize* QToolButton_sizeHint(const QToolButton* self);
QSize* QToolButton_minimumSizeHint(const QToolButton* self);
int QToolButton_toolButtonStyle(const QToolButton* self);
int QToolButton_arrowType(const QToolButton* self);
void QToolButton_setArrowType(QToolButton* self, int type);
void QToolButton_setMenu(QToolButton* self, QMenu* menu);
QMenu* QToolButton_menu(const QToolButton* self);
void QToolButton_setPopupMode(QToolButton* self, int mode);
int QToolButton_popupMode(const QToolButton* self);
QAction* QToolButton_defaultAction(const QToolButton* self);
void QToolButton_setAutoRaise(QToolButton* self, bool enable);
bool QToolButton_autoRaise(const QToolButton* self);
void QToolButton_showMenu(QToolButton* self);
void QToolButton_setToolButtonStyle(QToolButton* self, int style);
void QToolButton_setDefaultAction(QToolButton* self, QAction* defaultAction);
void QToolButton_triggered(QToolButton* self, QAction* param1);
void QToolButton_connect_triggered(VirtualQToolButton* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
bool QToolButton_event(QToolButton* self, QEvent* e);
void QToolButton_mousePressEvent(QToolButton* self, QMouseEvent* param1);
void QToolButton_mouseReleaseEvent(QToolButton* self, QMouseEvent* param1);
void QToolButton_paintEvent(QToolButton* self, QPaintEvent* param1);
void QToolButton_actionEvent(QToolButton* self, QActionEvent* param1);
void QToolButton_enterEvent(QToolButton* self, QEnterEvent* param1);
void QToolButton_leaveEvent(QToolButton* self, QEvent* param1);
void QToolButton_timerEvent(QToolButton* self, QTimerEvent* param1);
void QToolButton_changeEvent(QToolButton* self, QEvent* param1);
bool QToolButton_hitButton(const QToolButton* self, QPoint* pos);
void QToolButton_checkStateSet(QToolButton* self);
void QToolButton_nextCheckState(QToolButton* self);
void QToolButton_initStyleOption(const QToolButton* self, QStyleOptionToolButton* option);
struct miqt_string QToolButton_tr2(const char* s, const char* c);
struct miqt_string QToolButton_tr3(const char* s, const char* c, int n);

QMetaObject* QToolButton_virtualbase_metaObject(const VirtualQToolButton* self);
void* QToolButton_virtualbase_metacast(VirtualQToolButton* self, const char* param1);
int QToolButton_virtualbase_metacall(VirtualQToolButton* self, int param1, int param2, void** param3);
QSize* QToolButton_virtualbase_sizeHint(const VirtualQToolButton* self);
QSize* QToolButton_virtualbase_minimumSizeHint(const VirtualQToolButton* self);
bool QToolButton_virtualbase_event(VirtualQToolButton* self, QEvent* e);
void QToolButton_virtualbase_mousePressEvent(VirtualQToolButton* self, QMouseEvent* param1);
void QToolButton_virtualbase_mouseReleaseEvent(VirtualQToolButton* self, QMouseEvent* param1);
void QToolButton_virtualbase_paintEvent(VirtualQToolButton* self, QPaintEvent* param1);
void QToolButton_virtualbase_actionEvent(VirtualQToolButton* self, QActionEvent* param1);
void QToolButton_virtualbase_enterEvent(VirtualQToolButton* self, QEnterEvent* param1);
void QToolButton_virtualbase_leaveEvent(VirtualQToolButton* self, QEvent* param1);
void QToolButton_virtualbase_timerEvent(VirtualQToolButton* self, QTimerEvent* param1);
void QToolButton_virtualbase_changeEvent(VirtualQToolButton* self, QEvent* param1);
bool QToolButton_virtualbase_hitButton(const VirtualQToolButton* self, QPoint* pos);
void QToolButton_virtualbase_checkStateSet(VirtualQToolButton* self);
void QToolButton_virtualbase_nextCheckState(VirtualQToolButton* self);
void QToolButton_virtualbase_initStyleOption(const VirtualQToolButton* self, QStyleOptionToolButton* option);
void QToolButton_virtualbase_keyPressEvent(VirtualQToolButton* self, QKeyEvent* e);
void QToolButton_virtualbase_keyReleaseEvent(VirtualQToolButton* self, QKeyEvent* e);
void QToolButton_virtualbase_mouseMoveEvent(VirtualQToolButton* self, QMouseEvent* e);
void QToolButton_virtualbase_focusInEvent(VirtualQToolButton* self, QFocusEvent* e);
void QToolButton_virtualbase_focusOutEvent(VirtualQToolButton* self, QFocusEvent* e);
int QToolButton_virtualbase_devType(const VirtualQToolButton* self);
void QToolButton_virtualbase_setVisible(VirtualQToolButton* self, bool visible);
int QToolButton_virtualbase_heightForWidth(const VirtualQToolButton* self, int param1);
bool QToolButton_virtualbase_hasHeightForWidth(const VirtualQToolButton* self);
QPaintEngine* QToolButton_virtualbase_paintEngine(const VirtualQToolButton* self);
void QToolButton_virtualbase_mouseDoubleClickEvent(VirtualQToolButton* self, QMouseEvent* event);
void QToolButton_virtualbase_wheelEvent(VirtualQToolButton* self, QWheelEvent* event);
void QToolButton_virtualbase_moveEvent(VirtualQToolButton* self, QMoveEvent* event);
void QToolButton_virtualbase_resizeEvent(VirtualQToolButton* self, QResizeEvent* event);
void QToolButton_virtualbase_closeEvent(VirtualQToolButton* self, QCloseEvent* event);
void QToolButton_virtualbase_contextMenuEvent(VirtualQToolButton* self, QContextMenuEvent* event);
void QToolButton_virtualbase_tabletEvent(VirtualQToolButton* self, QTabletEvent* event);
void QToolButton_virtualbase_dragEnterEvent(VirtualQToolButton* self, QDragEnterEvent* event);
void QToolButton_virtualbase_dragMoveEvent(VirtualQToolButton* self, QDragMoveEvent* event);
void QToolButton_virtualbase_dragLeaveEvent(VirtualQToolButton* self, QDragLeaveEvent* event);
void QToolButton_virtualbase_dropEvent(VirtualQToolButton* self, QDropEvent* event);
void QToolButton_virtualbase_showEvent(VirtualQToolButton* self, QShowEvent* event);
void QToolButton_virtualbase_hideEvent(VirtualQToolButton* self, QHideEvent* event);
bool QToolButton_virtualbase_nativeEvent(VirtualQToolButton* self, struct miqt_string eventType, void* message, intptr_t* result);
int QToolButton_virtualbase_metric(const VirtualQToolButton* self, int param1);
void QToolButton_virtualbase_initPainter(const VirtualQToolButton* self, QPainter* painter);
QPaintDevice* QToolButton_virtualbase_redirected(const VirtualQToolButton* self, QPoint* offset);
QPainter* QToolButton_virtualbase_sharedPainter(const VirtualQToolButton* self);
void QToolButton_virtualbase_inputMethodEvent(VirtualQToolButton* self, QInputMethodEvent* param1);
QVariant* QToolButton_virtualbase_inputMethodQuery(const VirtualQToolButton* self, int param1);
bool QToolButton_virtualbase_focusNextPrevChild(VirtualQToolButton* self, bool next);
bool QToolButton_virtualbase_eventFilter(VirtualQToolButton* self, QObject* watched, QEvent* event);
void QToolButton_virtualbase_childEvent(VirtualQToolButton* self, QChildEvent* event);
void QToolButton_virtualbase_customEvent(VirtualQToolButton* self, QEvent* event);
void QToolButton_virtualbase_connectNotify(VirtualQToolButton* self, QMetaMethod* signal);
void QToolButton_virtualbase_disconnectNotify(VirtualQToolButton* self, QMetaMethod* signal);

void QToolButton_protectedbase_updateMicroFocus(VirtualQToolButton* self);
void QToolButton_protectedbase_create(VirtualQToolButton* self);
void QToolButton_protectedbase_destroy(VirtualQToolButton* self);
bool QToolButton_protectedbase_focusNextChild(VirtualQToolButton* self);
bool QToolButton_protectedbase_focusPreviousChild(VirtualQToolButton* self);
QObject* QToolButton_protectedbase_sender(const VirtualQToolButton* self);
int QToolButton_protectedbase_senderSignalIndex(const VirtualQToolButton* self);
int QToolButton_protectedbase_receivers(const VirtualQToolButton* self, const char* signal);
bool QToolButton_protectedbase_isSignalConnected(const VirtualQToolButton* self, QMetaMethod* signal);

const QMetaObject* QToolButton_staticMetaObject();
void QToolButton_delete(QToolButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
