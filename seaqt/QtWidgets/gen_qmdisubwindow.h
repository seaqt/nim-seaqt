#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMDISUBWINDOW_H
#define SEAQT_QTWIDGETS_GEN_QMDISUBWINDOW_H

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
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMdiArea;
class QMdiSubWindow;
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
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMdiArea QMdiArea;
typedef struct QMdiSubWindow QMdiSubWindow;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQMdiSubWindow VirtualQMdiSubWindow;
typedef struct QMdiSubWindow_VTable{
	void (*destructor)(VirtualQMdiSubWindow* self);
	QMetaObject* (*metaObject)(const VirtualQMdiSubWindow* self);
	void* (*metacast)(VirtualQMdiSubWindow* self, const char* param1);
	int (*metacall)(VirtualQMdiSubWindow* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQMdiSubWindow* self);
	QSize* (*minimumSizeHint)(const VirtualQMdiSubWindow* self);
	bool (*eventFilter)(VirtualQMdiSubWindow* self, QObject* object, QEvent* event);
	bool (*event)(VirtualQMdiSubWindow* self, QEvent* event);
	void (*showEvent)(VirtualQMdiSubWindow* self, QShowEvent* showEvent);
	void (*hideEvent)(VirtualQMdiSubWindow* self, QHideEvent* hideEvent);
	void (*changeEvent)(VirtualQMdiSubWindow* self, QEvent* changeEvent);
	void (*closeEvent)(VirtualQMdiSubWindow* self, QCloseEvent* closeEvent);
	void (*leaveEvent)(VirtualQMdiSubWindow* self, QEvent* leaveEvent);
	void (*resizeEvent)(VirtualQMdiSubWindow* self, QResizeEvent* resizeEvent);
	void (*timerEvent)(VirtualQMdiSubWindow* self, QTimerEvent* timerEvent);
	void (*moveEvent)(VirtualQMdiSubWindow* self, QMoveEvent* moveEvent);
	void (*paintEvent)(VirtualQMdiSubWindow* self, QPaintEvent* paintEvent);
	void (*mousePressEvent)(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseDoubleClickEvent)(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseReleaseEvent)(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseMoveEvent)(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*keyPressEvent)(VirtualQMdiSubWindow* self, QKeyEvent* keyEvent);
	void (*contextMenuEvent)(VirtualQMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
	void (*focusInEvent)(VirtualQMdiSubWindow* self, QFocusEvent* focusInEvent);
	void (*focusOutEvent)(VirtualQMdiSubWindow* self, QFocusEvent* focusOutEvent);
	void (*childEvent)(VirtualQMdiSubWindow* self, QChildEvent* childEvent);
	int (*devType)(const VirtualQMdiSubWindow* self);
	void (*setVisible)(VirtualQMdiSubWindow* self, bool visible);
	int (*heightForWidth)(const VirtualQMdiSubWindow* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQMdiSubWindow* self);
	QPaintEngine* (*paintEngine)(const VirtualQMdiSubWindow* self);
	void (*wheelEvent)(VirtualQMdiSubWindow* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQMdiSubWindow* self, QKeyEvent* event);
	void (*enterEvent)(VirtualQMdiSubWindow* self, QEvent* event);
	void (*tabletEvent)(VirtualQMdiSubWindow* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQMdiSubWindow* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQMdiSubWindow* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQMdiSubWindow* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQMdiSubWindow* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQMdiSubWindow* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQMdiSubWindow* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQMdiSubWindow* self, int param1);
	void (*initPainter)(const VirtualQMdiSubWindow* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQMdiSubWindow* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQMdiSubWindow* self);
	void (*inputMethodEvent)(VirtualQMdiSubWindow* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQMdiSubWindow* self, int param1);
	bool (*focusNextPrevChild)(VirtualQMdiSubWindow* self, bool next);
	void (*customEvent)(VirtualQMdiSubWindow* self, QEvent* event);
	void (*connectNotify)(VirtualQMdiSubWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMdiSubWindow* self, QMetaMethod* signal);
}QMdiSubWindow_VTable;

const QMdiSubWindow_VTable* QMdiSubWindow_vtbl(const VirtualQMdiSubWindow* self);
void* QMdiSubWindow_vdata(const VirtualQMdiSubWindow* self);
void QMdiSubWindow_setVdata(VirtualQMdiSubWindow* self, void* vdata);

VirtualQMdiSubWindow* QMdiSubWindow_new(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQMdiSubWindow* QMdiSubWindow_new2(const QMdiSubWindow_VTable* vtbl, void* vdata);
VirtualQMdiSubWindow* QMdiSubWindow_new3(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QMdiSubWindow_virtbase(QMdiSubWindow* src, QWidget** outptr_QWidget);
QMetaObject* QMdiSubWindow_metaObject(const QMdiSubWindow* self);
void* QMdiSubWindow_metacast(QMdiSubWindow* self, const char* param1);
int QMdiSubWindow_metacall(QMdiSubWindow* self, int param1, int param2, void** param3);
struct miqt_string QMdiSubWindow_tr(const char* s);
struct miqt_string QMdiSubWindow_trUtf8(const char* s);
QSize* QMdiSubWindow_sizeHint(const QMdiSubWindow* self);
QSize* QMdiSubWindow_minimumSizeHint(const QMdiSubWindow* self);
void QMdiSubWindow_setWidget(QMdiSubWindow* self, QWidget* widget);
QWidget* QMdiSubWindow_widget(const QMdiSubWindow* self);
QWidget* QMdiSubWindow_maximizedButtonsWidget(const QMdiSubWindow* self);
QWidget* QMdiSubWindow_maximizedSystemMenuIconWidget(const QMdiSubWindow* self);
bool QMdiSubWindow_isShaded(const QMdiSubWindow* self);
void QMdiSubWindow_setOption(QMdiSubWindow* self, int option);
bool QMdiSubWindow_testOption(const QMdiSubWindow* self, int param1);
void QMdiSubWindow_setKeyboardSingleStep(QMdiSubWindow* self, int step);
int QMdiSubWindow_keyboardSingleStep(const QMdiSubWindow* self);
void QMdiSubWindow_setKeyboardPageStep(QMdiSubWindow* self, int step);
int QMdiSubWindow_keyboardPageStep(const QMdiSubWindow* self);
void QMdiSubWindow_setSystemMenu(QMdiSubWindow* self, QMenu* systemMenu);
QMenu* QMdiSubWindow_systemMenu(const QMdiSubWindow* self);
QMdiArea* QMdiSubWindow_mdiArea(const QMdiSubWindow* self);
void QMdiSubWindow_windowStateChanged(QMdiSubWindow* self, int oldState, int newState);
void QMdiSubWindow_connect_windowStateChanged(VirtualQMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMdiSubWindow_aboutToActivate(QMdiSubWindow* self);
void QMdiSubWindow_connect_aboutToActivate(VirtualQMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMdiSubWindow_showSystemMenu(QMdiSubWindow* self);
void QMdiSubWindow_showShaded(QMdiSubWindow* self);
bool QMdiSubWindow_eventFilter(QMdiSubWindow* self, QObject* object, QEvent* event);
bool QMdiSubWindow_event(QMdiSubWindow* self, QEvent* event);
void QMdiSubWindow_showEvent(QMdiSubWindow* self, QShowEvent* showEvent);
void QMdiSubWindow_hideEvent(QMdiSubWindow* self, QHideEvent* hideEvent);
void QMdiSubWindow_changeEvent(QMdiSubWindow* self, QEvent* changeEvent);
void QMdiSubWindow_closeEvent(QMdiSubWindow* self, QCloseEvent* closeEvent);
void QMdiSubWindow_leaveEvent(QMdiSubWindow* self, QEvent* leaveEvent);
void QMdiSubWindow_resizeEvent(QMdiSubWindow* self, QResizeEvent* resizeEvent);
void QMdiSubWindow_timerEvent(QMdiSubWindow* self, QTimerEvent* timerEvent);
void QMdiSubWindow_moveEvent(QMdiSubWindow* self, QMoveEvent* moveEvent);
void QMdiSubWindow_paintEvent(QMdiSubWindow* self, QPaintEvent* paintEvent);
void QMdiSubWindow_mousePressEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_mouseDoubleClickEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_mouseReleaseEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_mouseMoveEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_keyPressEvent(QMdiSubWindow* self, QKeyEvent* keyEvent);
void QMdiSubWindow_contextMenuEvent(QMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
void QMdiSubWindow_focusInEvent(QMdiSubWindow* self, QFocusEvent* focusInEvent);
void QMdiSubWindow_focusOutEvent(QMdiSubWindow* self, QFocusEvent* focusOutEvent);
void QMdiSubWindow_childEvent(QMdiSubWindow* self, QChildEvent* childEvent);
struct miqt_string QMdiSubWindow_tr2(const char* s, const char* c);
struct miqt_string QMdiSubWindow_tr3(const char* s, const char* c, int n);
struct miqt_string QMdiSubWindow_trUtf82(const char* s, const char* c);
struct miqt_string QMdiSubWindow_trUtf83(const char* s, const char* c, int n);
void QMdiSubWindow_setOption2(QMdiSubWindow* self, int option, bool on);

QMetaObject* QMdiSubWindow_virtualbase_metaObject(const VirtualQMdiSubWindow* self);
void* QMdiSubWindow_virtualbase_metacast(VirtualQMdiSubWindow* self, const char* param1);
int QMdiSubWindow_virtualbase_metacall(VirtualQMdiSubWindow* self, int param1, int param2, void** param3);
QSize* QMdiSubWindow_virtualbase_sizeHint(const VirtualQMdiSubWindow* self);
QSize* QMdiSubWindow_virtualbase_minimumSizeHint(const VirtualQMdiSubWindow* self);
bool QMdiSubWindow_virtualbase_eventFilter(VirtualQMdiSubWindow* self, QObject* object, QEvent* event);
bool QMdiSubWindow_virtualbase_event(VirtualQMdiSubWindow* self, QEvent* event);
void QMdiSubWindow_virtualbase_showEvent(VirtualQMdiSubWindow* self, QShowEvent* showEvent);
void QMdiSubWindow_virtualbase_hideEvent(VirtualQMdiSubWindow* self, QHideEvent* hideEvent);
void QMdiSubWindow_virtualbase_changeEvent(VirtualQMdiSubWindow* self, QEvent* changeEvent);
void QMdiSubWindow_virtualbase_closeEvent(VirtualQMdiSubWindow* self, QCloseEvent* closeEvent);
void QMdiSubWindow_virtualbase_leaveEvent(VirtualQMdiSubWindow* self, QEvent* leaveEvent);
void QMdiSubWindow_virtualbase_resizeEvent(VirtualQMdiSubWindow* self, QResizeEvent* resizeEvent);
void QMdiSubWindow_virtualbase_timerEvent(VirtualQMdiSubWindow* self, QTimerEvent* timerEvent);
void QMdiSubWindow_virtualbase_moveEvent(VirtualQMdiSubWindow* self, QMoveEvent* moveEvent);
void QMdiSubWindow_virtualbase_paintEvent(VirtualQMdiSubWindow* self, QPaintEvent* paintEvent);
void QMdiSubWindow_virtualbase_mousePressEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseDoubleClickEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseReleaseEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseMoveEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_keyPressEvent(VirtualQMdiSubWindow* self, QKeyEvent* keyEvent);
void QMdiSubWindow_virtualbase_contextMenuEvent(VirtualQMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
void QMdiSubWindow_virtualbase_focusInEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusInEvent);
void QMdiSubWindow_virtualbase_focusOutEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusOutEvent);
void QMdiSubWindow_virtualbase_childEvent(VirtualQMdiSubWindow* self, QChildEvent* childEvent);
int QMdiSubWindow_virtualbase_devType(const VirtualQMdiSubWindow* self);
void QMdiSubWindow_virtualbase_setVisible(VirtualQMdiSubWindow* self, bool visible);
int QMdiSubWindow_virtualbase_heightForWidth(const VirtualQMdiSubWindow* self, int param1);
bool QMdiSubWindow_virtualbase_hasHeightForWidth(const VirtualQMdiSubWindow* self);
QPaintEngine* QMdiSubWindow_virtualbase_paintEngine(const VirtualQMdiSubWindow* self);
void QMdiSubWindow_virtualbase_wheelEvent(VirtualQMdiSubWindow* self, QWheelEvent* event);
void QMdiSubWindow_virtualbase_keyReleaseEvent(VirtualQMdiSubWindow* self, QKeyEvent* event);
void QMdiSubWindow_virtualbase_enterEvent(VirtualQMdiSubWindow* self, QEvent* event);
void QMdiSubWindow_virtualbase_tabletEvent(VirtualQMdiSubWindow* self, QTabletEvent* event);
void QMdiSubWindow_virtualbase_actionEvent(VirtualQMdiSubWindow* self, QActionEvent* event);
void QMdiSubWindow_virtualbase_dragEnterEvent(VirtualQMdiSubWindow* self, QDragEnterEvent* event);
void QMdiSubWindow_virtualbase_dragMoveEvent(VirtualQMdiSubWindow* self, QDragMoveEvent* event);
void QMdiSubWindow_virtualbase_dragLeaveEvent(VirtualQMdiSubWindow* self, QDragLeaveEvent* event);
void QMdiSubWindow_virtualbase_dropEvent(VirtualQMdiSubWindow* self, QDropEvent* event);
bool QMdiSubWindow_virtualbase_nativeEvent(VirtualQMdiSubWindow* self, struct miqt_string eventType, void* message, long* result);
int QMdiSubWindow_virtualbase_metric(const VirtualQMdiSubWindow* self, int param1);
void QMdiSubWindow_virtualbase_initPainter(const VirtualQMdiSubWindow* self, QPainter* painter);
QPaintDevice* QMdiSubWindow_virtualbase_redirected(const VirtualQMdiSubWindow* self, QPoint* offset);
QPainter* QMdiSubWindow_virtualbase_sharedPainter(const VirtualQMdiSubWindow* self);
void QMdiSubWindow_virtualbase_inputMethodEvent(VirtualQMdiSubWindow* self, QInputMethodEvent* param1);
QVariant* QMdiSubWindow_virtualbase_inputMethodQuery(const VirtualQMdiSubWindow* self, int param1);
bool QMdiSubWindow_virtualbase_focusNextPrevChild(VirtualQMdiSubWindow* self, bool next);
void QMdiSubWindow_virtualbase_customEvent(VirtualQMdiSubWindow* self, QEvent* event);
void QMdiSubWindow_virtualbase_connectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal);
void QMdiSubWindow_virtualbase_disconnectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal);

void QMdiSubWindow_protectedbase_updateMicroFocus(VirtualQMdiSubWindow* self);
void QMdiSubWindow_protectedbase_create(VirtualQMdiSubWindow* self);
void QMdiSubWindow_protectedbase_destroy(VirtualQMdiSubWindow* self);
bool QMdiSubWindow_protectedbase_focusNextChild(VirtualQMdiSubWindow* self);
bool QMdiSubWindow_protectedbase_focusPreviousChild(VirtualQMdiSubWindow* self);
QObject* QMdiSubWindow_protectedbase_sender(const VirtualQMdiSubWindow* self);
int QMdiSubWindow_protectedbase_senderSignalIndex(const VirtualQMdiSubWindow* self);
int QMdiSubWindow_protectedbase_receivers(const VirtualQMdiSubWindow* self, const char* signal);
bool QMdiSubWindow_protectedbase_isSignalConnected(const VirtualQMdiSubWindow* self, QMetaMethod* signal);

const QMetaObject* QMdiSubWindow_staticMetaObject();
void QMdiSubWindow_delete(QMdiSubWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
