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

struct QMdiSubWindow_VTable {
	void (*destructor)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self);
	QMetaObject* (*metaObject)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	void* (*metacast)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, const char* param1);
	int (*metacall)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	QSize* (*minimumSizeHint)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	bool (*eventFilter)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QObject* object, QEvent* event);
	bool (*event)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QEvent* event);
	void (*showEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QShowEvent* showEvent);
	void (*hideEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QHideEvent* hideEvent);
	void (*changeEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QEvent* changeEvent);
	void (*closeEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QCloseEvent* closeEvent);
	void (*leaveEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QEvent* leaveEvent);
	void (*resizeEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QResizeEvent* resizeEvent);
	void (*timerEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QTimerEvent* timerEvent);
	void (*moveEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMoveEvent* moveEvent);
	void (*paintEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QPaintEvent* paintEvent);
	void (*mousePressEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseDoubleClickEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseReleaseEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*mouseMoveEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMouseEvent* mouseEvent);
	void (*keyPressEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QKeyEvent* keyEvent);
	void (*contextMenuEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
	void (*focusInEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QFocusEvent* focusInEvent);
	void (*focusOutEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QFocusEvent* focusOutEvent);
	void (*childEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QChildEvent* childEvent);
	int (*devType)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	void (*setVisible)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, bool visible);
	int (*heightForWidth)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self, int param1);
	bool (*hasHeightForWidth)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	QPaintEngine* (*paintEngine)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	void (*wheelEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QKeyEvent* event);
	void (*enterEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QEvent* event);
	void (*tabletEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QTabletEvent* event);
	void (*actionEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QDropEvent* event);
	bool (*nativeEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self, int param1);
	void (*initPainter)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self);
	void (*inputMethodEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMdiSubWindow_VTable* vtbl, const QMdiSubWindow* self, int param1);
	bool (*focusNextPrevChild)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, bool next);
	void (*customEvent)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QEvent* event);
	void (*connectNotify)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMdiSubWindow_VTable* vtbl, QMdiSubWindow* self, QMetaMethod* signal);
};
QMdiSubWindow* QMdiSubWindow_new(struct QMdiSubWindow_VTable* vtbl, QWidget* parent);
QMdiSubWindow* QMdiSubWindow_new2(struct QMdiSubWindow_VTable* vtbl);
QMdiSubWindow* QMdiSubWindow_new3(struct QMdiSubWindow_VTable* vtbl, QWidget* parent, int flags);
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
void QMdiSubWindow_connect_windowStateChanged(QMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QMdiSubWindow_aboutToActivate(QMdiSubWindow* self);
void QMdiSubWindow_connect_aboutToActivate(QMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
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
QMetaObject* QMdiSubWindow_virtualbase_metaObject(const void* self);
void* QMdiSubWindow_virtualbase_metacast(void* self, const char* param1);
int QMdiSubWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QMdiSubWindow_virtualbase_sizeHint(const void* self);
QSize* QMdiSubWindow_virtualbase_minimumSizeHint(const void* self);
bool QMdiSubWindow_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QMdiSubWindow_virtualbase_event(void* self, QEvent* event);
void QMdiSubWindow_virtualbase_showEvent(void* self, QShowEvent* showEvent);
void QMdiSubWindow_virtualbase_hideEvent(void* self, QHideEvent* hideEvent);
void QMdiSubWindow_virtualbase_changeEvent(void* self, QEvent* changeEvent);
void QMdiSubWindow_virtualbase_closeEvent(void* self, QCloseEvent* closeEvent);
void QMdiSubWindow_virtualbase_leaveEvent(void* self, QEvent* leaveEvent);
void QMdiSubWindow_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent);
void QMdiSubWindow_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent);
void QMdiSubWindow_virtualbase_moveEvent(void* self, QMoveEvent* moveEvent);
void QMdiSubWindow_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent);
void QMdiSubWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* mouseEvent);
void QMdiSubWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* keyEvent);
void QMdiSubWindow_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* contextMenuEvent);
void QMdiSubWindow_virtualbase_focusInEvent(void* self, QFocusEvent* focusInEvent);
void QMdiSubWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* focusOutEvent);
void QMdiSubWindow_virtualbase_childEvent(void* self, QChildEvent* childEvent);
int QMdiSubWindow_virtualbase_devType(const void* self);
void QMdiSubWindow_virtualbase_setVisible(void* self, bool visible);
int QMdiSubWindow_virtualbase_heightForWidth(const void* self, int param1);
bool QMdiSubWindow_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMdiSubWindow_virtualbase_paintEngine(const void* self);
void QMdiSubWindow_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QMdiSubWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMdiSubWindow_virtualbase_enterEvent(void* self, QEvent* event);
void QMdiSubWindow_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMdiSubWindow_virtualbase_actionEvent(void* self, QActionEvent* event);
void QMdiSubWindow_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QMdiSubWindow_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QMdiSubWindow_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QMdiSubWindow_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QMdiSubWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QMdiSubWindow_virtualbase_metric(const void* self, int param1);
void QMdiSubWindow_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMdiSubWindow_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMdiSubWindow_virtualbase_sharedPainter(const void* self);
void QMdiSubWindow_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMdiSubWindow_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMdiSubWindow_virtualbase_focusNextPrevChild(void* self, bool next);
void QMdiSubWindow_virtualbase_customEvent(void* self, QEvent* event);
void QMdiSubWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMdiSubWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QMdiSubWindow_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QMdiSubWindow_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QMdiSubWindow_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QMdiSubWindow_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QMdiSubWindow_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QMdiSubWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QMdiSubWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QMdiSubWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QMdiSubWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QMdiSubWindow_staticMetaObject();
void QMdiSubWindow_delete(QMdiSubWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
