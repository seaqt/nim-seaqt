#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMAINWINDOW_H
#define SEAQT_QTWIDGETS_GEN_QMAINWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDockWidget;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMainWindow;
class QMenu;
class QMenuBar;
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
class QStatusBar;
class QTabletEvent;
class QTimerEvent;
class QToolBar;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDockWidget QDockWidget;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMainWindow QMainWindow;
typedef struct QMenu QMenu;
typedef struct QMenuBar QMenuBar;
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
typedef struct QStatusBar QStatusBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBar QToolBar;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQMainWindow VirtualQMainWindow;
typedef struct QMainWindow_VTable{
	void (*destructor)(VirtualQMainWindow* self);
	QMetaObject* (*metaObject)(const VirtualQMainWindow* self);
	void* (*metacast)(VirtualQMainWindow* self, const char* param1);
	int (*metacall)(VirtualQMainWindow* self, int param1, int param2, void** param3);
	QMenu* (*createPopupMenu)(VirtualQMainWindow* self);
	void (*contextMenuEvent)(VirtualQMainWindow* self, QContextMenuEvent* event);
	bool (*event)(VirtualQMainWindow* self, QEvent* event);
	int (*devType)(const VirtualQMainWindow* self);
	void (*setVisible)(VirtualQMainWindow* self, bool visible);
	QSize* (*sizeHint)(const VirtualQMainWindow* self);
	QSize* (*minimumSizeHint)(const VirtualQMainWindow* self);
	int (*heightForWidth)(const VirtualQMainWindow* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQMainWindow* self);
	QPaintEngine* (*paintEngine)(const VirtualQMainWindow* self);
	void (*mousePressEvent)(VirtualQMainWindow* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQMainWindow* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQMainWindow* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQMainWindow* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQMainWindow* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQMainWindow* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQMainWindow* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQMainWindow* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQMainWindow* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQMainWindow* self, QEvent* event);
	void (*leaveEvent)(VirtualQMainWindow* self, QEvent* event);
	void (*paintEvent)(VirtualQMainWindow* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQMainWindow* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQMainWindow* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQMainWindow* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQMainWindow* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQMainWindow* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQMainWindow* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQMainWindow* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQMainWindow* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQMainWindow* self, QDropEvent* event);
	void (*showEvent)(VirtualQMainWindow* self, QShowEvent* event);
	void (*hideEvent)(VirtualQMainWindow* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQMainWindow* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQMainWindow* self, QEvent* param1);
	int (*metric)(const VirtualQMainWindow* self, int param1);
	void (*initPainter)(const VirtualQMainWindow* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQMainWindow* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQMainWindow* self);
	void (*inputMethodEvent)(VirtualQMainWindow* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQMainWindow* self, int param1);
	bool (*focusNextPrevChild)(VirtualQMainWindow* self, bool next);
	bool (*eventFilter)(VirtualQMainWindow* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMainWindow* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMainWindow* self, QChildEvent* event);
	void (*customEvent)(VirtualQMainWindow* self, QEvent* event);
	void (*connectNotify)(VirtualQMainWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMainWindow* self, QMetaMethod* signal);
}QMainWindow_VTable;

const QMainWindow_VTable* QMainWindow_vtbl(const VirtualQMainWindow* self);
void* QMainWindow_vdata(const VirtualQMainWindow* self);
void QMainWindow_setVdata(VirtualQMainWindow* self, void* vdata);

VirtualQMainWindow* QMainWindow_new(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQMainWindow* QMainWindow_new2(const QMainWindow_VTable* vtbl, void* vdata);
VirtualQMainWindow* QMainWindow_new3(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QMainWindow_virtbase(QMainWindow* src, QWidget** outptr_QWidget);
QMetaObject* QMainWindow_metaObject(const QMainWindow* self);
void* QMainWindow_metacast(QMainWindow* self, const char* param1);
int QMainWindow_metacall(QMainWindow* self, int param1, int param2, void** param3);
struct miqt_string QMainWindow_tr(const char* s);
struct miqt_string QMainWindow_trUtf8(const char* s);
QSize* QMainWindow_iconSize(const QMainWindow* self);
void QMainWindow_setIconSize(QMainWindow* self, QSize* iconSize);
int QMainWindow_toolButtonStyle(const QMainWindow* self);
void QMainWindow_setToolButtonStyle(QMainWindow* self, int toolButtonStyle);
bool QMainWindow_isAnimated(const QMainWindow* self);
bool QMainWindow_isDockNestingEnabled(const QMainWindow* self);
bool QMainWindow_documentMode(const QMainWindow* self);
void QMainWindow_setDocumentMode(QMainWindow* self, bool enabled);
int QMainWindow_tabShape(const QMainWindow* self);
void QMainWindow_setTabShape(QMainWindow* self, int tabShape);
int QMainWindow_tabPosition(const QMainWindow* self, int area);
void QMainWindow_setTabPosition(QMainWindow* self, int areas, int tabPosition);
void QMainWindow_setDockOptions(QMainWindow* self, int options);
int QMainWindow_dockOptions(const QMainWindow* self);
bool QMainWindow_isSeparator(const QMainWindow* self, QPoint* pos);
QMenuBar* QMainWindow_menuBar(const QMainWindow* self);
void QMainWindow_setMenuBar(QMainWindow* self, QMenuBar* menubar);
QWidget* QMainWindow_menuWidget(const QMainWindow* self);
void QMainWindow_setMenuWidget(QMainWindow* self, QWidget* menubar);
QStatusBar* QMainWindow_statusBar(const QMainWindow* self);
void QMainWindow_setStatusBar(QMainWindow* self, QStatusBar* statusbar);
QWidget* QMainWindow_centralWidget(const QMainWindow* self);
void QMainWindow_setCentralWidget(QMainWindow* self, QWidget* widget);
QWidget* QMainWindow_takeCentralWidget(QMainWindow* self);
void QMainWindow_setCorner(QMainWindow* self, int corner, int area);
int QMainWindow_corner(const QMainWindow* self, int corner);
void QMainWindow_addToolBarBreak(QMainWindow* self);
void QMainWindow_insertToolBarBreak(QMainWindow* self, QToolBar* before);
void QMainWindow_addToolBar(QMainWindow* self, int area, QToolBar* toolbar);
void QMainWindow_addToolBarWithToolbar(QMainWindow* self, QToolBar* toolbar);
QToolBar* QMainWindow_addToolBarWithTitle(QMainWindow* self, struct miqt_string title);
void QMainWindow_insertToolBar(QMainWindow* self, QToolBar* before, QToolBar* toolbar);
void QMainWindow_removeToolBar(QMainWindow* self, QToolBar* toolbar);
void QMainWindow_removeToolBarBreak(QMainWindow* self, QToolBar* before);
bool QMainWindow_unifiedTitleAndToolBarOnMac(const QMainWindow* self);
int QMainWindow_toolBarArea(const QMainWindow* self, QToolBar* toolbar);
bool QMainWindow_toolBarBreak(const QMainWindow* self, QToolBar* toolbar);
void QMainWindow_addDockWidget(QMainWindow* self, int area, QDockWidget* dockwidget);
void QMainWindow_addDockWidget2(QMainWindow* self, int area, QDockWidget* dockwidget, int orientation);
void QMainWindow_splitDockWidget(QMainWindow* self, QDockWidget* after, QDockWidget* dockwidget, int orientation);
void QMainWindow_tabifyDockWidget(QMainWindow* self, QDockWidget* first, QDockWidget* second);
struct miqt_array /* of QDockWidget* */  QMainWindow_tabifiedDockWidgets(const QMainWindow* self, QDockWidget* dockwidget);
void QMainWindow_removeDockWidget(QMainWindow* self, QDockWidget* dockwidget);
bool QMainWindow_restoreDockWidget(QMainWindow* self, QDockWidget* dockwidget);
int QMainWindow_dockWidgetArea(const QMainWindow* self, QDockWidget* dockwidget);
void QMainWindow_resizeDocks(QMainWindow* self, struct miqt_array /* of QDockWidget* */  docks, struct miqt_array /* of int */  sizes, int orientation);
struct miqt_string QMainWindow_saveState(const QMainWindow* self);
bool QMainWindow_restoreState(QMainWindow* self, struct miqt_string state);
QMenu* QMainWindow_createPopupMenu(QMainWindow* self);
void QMainWindow_setAnimated(QMainWindow* self, bool enabled);
void QMainWindow_setDockNestingEnabled(QMainWindow* self, bool enabled);
void QMainWindow_setUnifiedTitleAndToolBarOnMac(QMainWindow* self, bool set);
void QMainWindow_iconSizeChanged(QMainWindow* self, QSize* iconSize);
void QMainWindow_connect_iconSizeChanged(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QMainWindow_toolButtonStyleChanged(QMainWindow* self, int toolButtonStyle);
void QMainWindow_connect_toolButtonStyleChanged(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMainWindow_tabifiedDockWidgetActivated(QMainWindow* self, QDockWidget* dockWidget);
void QMainWindow_connect_tabifiedDockWidgetActivated(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, QDockWidget*), void (*release)(intptr_t));
void QMainWindow_contextMenuEvent(QMainWindow* self, QContextMenuEvent* event);
bool QMainWindow_event(QMainWindow* self, QEvent* event);
struct miqt_string QMainWindow_tr2(const char* s, const char* c);
struct miqt_string QMainWindow_tr3(const char* s, const char* c, int n);
struct miqt_string QMainWindow_trUtf82(const char* s, const char* c);
struct miqt_string QMainWindow_trUtf83(const char* s, const char* c, int n);
void QMainWindow_addToolBarBreak1(QMainWindow* self, int area);
struct miqt_string QMainWindow_saveState1(const QMainWindow* self, int version);
bool QMainWindow_restoreState2(QMainWindow* self, struct miqt_string state, int version);

QMetaObject* QMainWindow_virtualbase_metaObject(const VirtualQMainWindow* self);
void* QMainWindow_virtualbase_metacast(VirtualQMainWindow* self, const char* param1);
int QMainWindow_virtualbase_metacall(VirtualQMainWindow* self, int param1, int param2, void** param3);
QMenu* QMainWindow_virtualbase_createPopupMenu(VirtualQMainWindow* self);
void QMainWindow_virtualbase_contextMenuEvent(VirtualQMainWindow* self, QContextMenuEvent* event);
bool QMainWindow_virtualbase_event(VirtualQMainWindow* self, QEvent* event);
int QMainWindow_virtualbase_devType(const VirtualQMainWindow* self);
void QMainWindow_virtualbase_setVisible(VirtualQMainWindow* self, bool visible);
QSize* QMainWindow_virtualbase_sizeHint(const VirtualQMainWindow* self);
QSize* QMainWindow_virtualbase_minimumSizeHint(const VirtualQMainWindow* self);
int QMainWindow_virtualbase_heightForWidth(const VirtualQMainWindow* self, int param1);
bool QMainWindow_virtualbase_hasHeightForWidth(const VirtualQMainWindow* self);
QPaintEngine* QMainWindow_virtualbase_paintEngine(const VirtualQMainWindow* self);
void QMainWindow_virtualbase_mousePressEvent(VirtualQMainWindow* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseReleaseEvent(VirtualQMainWindow* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseDoubleClickEvent(VirtualQMainWindow* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseMoveEvent(VirtualQMainWindow* self, QMouseEvent* event);
void QMainWindow_virtualbase_wheelEvent(VirtualQMainWindow* self, QWheelEvent* event);
void QMainWindow_virtualbase_keyPressEvent(VirtualQMainWindow* self, QKeyEvent* event);
void QMainWindow_virtualbase_keyReleaseEvent(VirtualQMainWindow* self, QKeyEvent* event);
void QMainWindow_virtualbase_focusInEvent(VirtualQMainWindow* self, QFocusEvent* event);
void QMainWindow_virtualbase_focusOutEvent(VirtualQMainWindow* self, QFocusEvent* event);
void QMainWindow_virtualbase_enterEvent(VirtualQMainWindow* self, QEvent* event);
void QMainWindow_virtualbase_leaveEvent(VirtualQMainWindow* self, QEvent* event);
void QMainWindow_virtualbase_paintEvent(VirtualQMainWindow* self, QPaintEvent* event);
void QMainWindow_virtualbase_moveEvent(VirtualQMainWindow* self, QMoveEvent* event);
void QMainWindow_virtualbase_resizeEvent(VirtualQMainWindow* self, QResizeEvent* event);
void QMainWindow_virtualbase_closeEvent(VirtualQMainWindow* self, QCloseEvent* event);
void QMainWindow_virtualbase_tabletEvent(VirtualQMainWindow* self, QTabletEvent* event);
void QMainWindow_virtualbase_actionEvent(VirtualQMainWindow* self, QActionEvent* event);
void QMainWindow_virtualbase_dragEnterEvent(VirtualQMainWindow* self, QDragEnterEvent* event);
void QMainWindow_virtualbase_dragMoveEvent(VirtualQMainWindow* self, QDragMoveEvent* event);
void QMainWindow_virtualbase_dragLeaveEvent(VirtualQMainWindow* self, QDragLeaveEvent* event);
void QMainWindow_virtualbase_dropEvent(VirtualQMainWindow* self, QDropEvent* event);
void QMainWindow_virtualbase_showEvent(VirtualQMainWindow* self, QShowEvent* event);
void QMainWindow_virtualbase_hideEvent(VirtualQMainWindow* self, QHideEvent* event);
bool QMainWindow_virtualbase_nativeEvent(VirtualQMainWindow* self, struct miqt_string eventType, void* message, long* result);
void QMainWindow_virtualbase_changeEvent(VirtualQMainWindow* self, QEvent* param1);
int QMainWindow_virtualbase_metric(const VirtualQMainWindow* self, int param1);
void QMainWindow_virtualbase_initPainter(const VirtualQMainWindow* self, QPainter* painter);
QPaintDevice* QMainWindow_virtualbase_redirected(const VirtualQMainWindow* self, QPoint* offset);
QPainter* QMainWindow_virtualbase_sharedPainter(const VirtualQMainWindow* self);
void QMainWindow_virtualbase_inputMethodEvent(VirtualQMainWindow* self, QInputMethodEvent* param1);
QVariant* QMainWindow_virtualbase_inputMethodQuery(const VirtualQMainWindow* self, int param1);
bool QMainWindow_virtualbase_focusNextPrevChild(VirtualQMainWindow* self, bool next);
bool QMainWindow_virtualbase_eventFilter(VirtualQMainWindow* self, QObject* watched, QEvent* event);
void QMainWindow_virtualbase_timerEvent(VirtualQMainWindow* self, QTimerEvent* event);
void QMainWindow_virtualbase_childEvent(VirtualQMainWindow* self, QChildEvent* event);
void QMainWindow_virtualbase_customEvent(VirtualQMainWindow* self, QEvent* event);
void QMainWindow_virtualbase_connectNotify(VirtualQMainWindow* self, QMetaMethod* signal);
void QMainWindow_virtualbase_disconnectNotify(VirtualQMainWindow* self, QMetaMethod* signal);

void QMainWindow_protectedbase_updateMicroFocus(VirtualQMainWindow* self);
void QMainWindow_protectedbase_create(VirtualQMainWindow* self);
void QMainWindow_protectedbase_destroy(VirtualQMainWindow* self);
bool QMainWindow_protectedbase_focusNextChild(VirtualQMainWindow* self);
bool QMainWindow_protectedbase_focusPreviousChild(VirtualQMainWindow* self);
QObject* QMainWindow_protectedbase_sender(const VirtualQMainWindow* self);
int QMainWindow_protectedbase_senderSignalIndex(const VirtualQMainWindow* self);
int QMainWindow_protectedbase_receivers(const VirtualQMainWindow* self, const char* signal);
bool QMainWindow_protectedbase_isSignalConnected(const VirtualQMainWindow* self, QMetaMethod* signal);

const QMetaObject* QMainWindow_staticMetaObject();
void QMainWindow_delete(QMainWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
