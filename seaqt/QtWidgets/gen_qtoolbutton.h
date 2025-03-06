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

struct QToolButton_VTable {
	void (*destructor)(struct QToolButton_VTable* vtbl, QToolButton* self);
	QMetaObject* (*metaObject)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	void* (*metacast)(struct QToolButton_VTable* vtbl, QToolButton* self, const char* param1);
	int (*metacall)(struct QToolButton_VTable* vtbl, QToolButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	QSize* (*minimumSizeHint)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	bool (*event)(struct QToolButton_VTable* vtbl, QToolButton* self, QEvent* e);
	void (*mousePressEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QMouseEvent* param1);
	void (*paintEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QPaintEvent* param1);
	void (*actionEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QActionEvent* param1);
	void (*enterEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QEvent* param1);
	void (*leaveEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QEvent* param1);
	void (*timerEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QTimerEvent* param1);
	void (*changeEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QEvent* param1);
	bool (*hitButton)(struct QToolButton_VTable* vtbl, const QToolButton* self, QPoint* pos);
	void (*nextCheckState)(struct QToolButton_VTable* vtbl, QToolButton* self);
	void (*checkStateSet)(struct QToolButton_VTable* vtbl, QToolButton* self);
	void (*keyPressEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QKeyEvent* e);
	void (*mouseMoveEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QMouseEvent* e);
	void (*focusInEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QFocusEvent* e);
	void (*focusOutEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QFocusEvent* e);
	int (*devType)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	void (*setVisible)(struct QToolButton_VTable* vtbl, QToolButton* self, bool visible);
	int (*heightForWidth)(struct QToolButton_VTable* vtbl, const QToolButton* self, int param1);
	bool (*hasHeightForWidth)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	QPaintEngine* (*paintEngine)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	void (*mouseDoubleClickEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QMouseEvent* event);
	void (*wheelEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QWheelEvent* event);
	void (*moveEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QMoveEvent* event);
	void (*resizeEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QResizeEvent* event);
	void (*closeEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QTabletEvent* event);
	void (*dragEnterEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QDropEvent* event);
	void (*showEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QShowEvent* event);
	void (*hideEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QHideEvent* event);
	bool (*nativeEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QToolButton_VTable* vtbl, const QToolButton* self, int param1);
	void (*initPainter)(struct QToolButton_VTable* vtbl, const QToolButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QToolButton_VTable* vtbl, const QToolButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QToolButton_VTable* vtbl, const QToolButton* self);
	void (*inputMethodEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QToolButton_VTable* vtbl, const QToolButton* self, int param1);
	bool (*focusNextPrevChild)(struct QToolButton_VTable* vtbl, QToolButton* self, bool next);
	bool (*eventFilter)(struct QToolButton_VTable* vtbl, QToolButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QChildEvent* event);
	void (*customEvent)(struct QToolButton_VTable* vtbl, QToolButton* self, QEvent* event);
	void (*connectNotify)(struct QToolButton_VTable* vtbl, QToolButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QToolButton_VTable* vtbl, QToolButton* self, QMetaMethod* signal);
};
QToolButton* QToolButton_new(struct QToolButton_VTable* vtbl, QWidget* parent);
QToolButton* QToolButton_new2(struct QToolButton_VTable* vtbl);
void QToolButton_virtbase(QToolButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QToolButton_metaObject(const QToolButton* self);
void* QToolButton_metacast(QToolButton* self, const char* param1);
int QToolButton_metacall(QToolButton* self, int param1, int param2, void** param3);
struct miqt_string QToolButton_tr(const char* s);
struct miqt_string QToolButton_trUtf8(const char* s);
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
void QToolButton_connect_triggered(QToolButton* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
bool QToolButton_event(QToolButton* self, QEvent* e);
void QToolButton_mousePressEvent(QToolButton* self, QMouseEvent* param1);
void QToolButton_mouseReleaseEvent(QToolButton* self, QMouseEvent* param1);
void QToolButton_paintEvent(QToolButton* self, QPaintEvent* param1);
void QToolButton_actionEvent(QToolButton* self, QActionEvent* param1);
void QToolButton_enterEvent(QToolButton* self, QEvent* param1);
void QToolButton_leaveEvent(QToolButton* self, QEvent* param1);
void QToolButton_timerEvent(QToolButton* self, QTimerEvent* param1);
void QToolButton_changeEvent(QToolButton* self, QEvent* param1);
bool QToolButton_hitButton(const QToolButton* self, QPoint* pos);
void QToolButton_nextCheckState(QToolButton* self);
struct miqt_string QToolButton_tr2(const char* s, const char* c);
struct miqt_string QToolButton_tr3(const char* s, const char* c, int n);
struct miqt_string QToolButton_trUtf82(const char* s, const char* c);
struct miqt_string QToolButton_trUtf83(const char* s, const char* c, int n);
QMetaObject* QToolButton_virtualbase_metaObject(const void* self);
void* QToolButton_virtualbase_metacast(void* self, const char* param1);
int QToolButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QToolButton_virtualbase_sizeHint(const void* self);
QSize* QToolButton_virtualbase_minimumSizeHint(const void* self);
bool QToolButton_virtualbase_event(void* self, QEvent* e);
void QToolButton_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QToolButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QToolButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QToolButton_virtualbase_actionEvent(void* self, QActionEvent* param1);
void QToolButton_virtualbase_enterEvent(void* self, QEvent* param1);
void QToolButton_virtualbase_leaveEvent(void* self, QEvent* param1);
void QToolButton_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QToolButton_virtualbase_changeEvent(void* self, QEvent* param1);
bool QToolButton_virtualbase_hitButton(const void* self, QPoint* pos);
void QToolButton_virtualbase_nextCheckState(void* self);
void QToolButton_virtualbase_checkStateSet(void* self);
void QToolButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
void QToolButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QToolButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QToolButton_virtualbase_focusInEvent(void* self, QFocusEvent* e);
void QToolButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
int QToolButton_virtualbase_devType(const void* self);
void QToolButton_virtualbase_setVisible(void* self, bool visible);
int QToolButton_virtualbase_heightForWidth(const void* self, int param1);
bool QToolButton_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QToolButton_virtualbase_paintEngine(const void* self);
void QToolButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QToolButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QToolButton_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QToolButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QToolButton_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QToolButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QToolButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QToolButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QToolButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QToolButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QToolButton_virtualbase_dropEvent(void* self, QDropEvent* event);
void QToolButton_virtualbase_showEvent(void* self, QShowEvent* event);
void QToolButton_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QToolButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QToolButton_virtualbase_metric(const void* self, int param1);
void QToolButton_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QToolButton_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QToolButton_virtualbase_sharedPainter(const void* self);
void QToolButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QToolButton_virtualbase_inputMethodQuery(const void* self, int param1);
bool QToolButton_virtualbase_focusNextPrevChild(void* self, bool next);
bool QToolButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QToolButton_virtualbase_childEvent(void* self, QChildEvent* event);
void QToolButton_virtualbase_customEvent(void* self, QEvent* event);
void QToolButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QToolButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QToolButton_protectedbase_initStyleOption(const void* self, QStyleOptionToolButton* option);
void QToolButton_protectedbase_updateMicroFocus(void* self);
void QToolButton_protectedbase_create(void* self);
void QToolButton_protectedbase_destroy(void* self);
bool QToolButton_protectedbase_focusNextChild(void* self);
bool QToolButton_protectedbase_focusPreviousChild(void* self);
QObject* QToolButton_protectedbase_sender(const void* self);
int QToolButton_protectedbase_senderSignalIndex(const void* self);
int QToolButton_protectedbase_receivers(const void* self, const char* signal);
bool QToolButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QToolButton_staticMetaObject();
void QToolButton_delete(QToolButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
