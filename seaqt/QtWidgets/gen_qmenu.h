#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMENU_H
#define SEAQT_QTWIDGETS_GEN_QMENU_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
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
class QIcon;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionMenuItem;
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
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionMenuItem QStyleOptionMenuItem;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQMenu VirtualQMenu;
typedef struct QMenu_VTable{
	void (*destructor)(VirtualQMenu* self);
	QMetaObject* (*metaObject)(const VirtualQMenu* self);
	void* (*metacast)(VirtualQMenu* self, const char* param1);
	int (*metacall)(VirtualQMenu* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQMenu* self);
	void (*changeEvent)(VirtualQMenu* self, QEvent* param1);
	void (*keyPressEvent)(VirtualQMenu* self, QKeyEvent* param1);
	void (*mouseReleaseEvent)(VirtualQMenu* self, QMouseEvent* param1);
	void (*mousePressEvent)(VirtualQMenu* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQMenu* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQMenu* self, QWheelEvent* param1);
	void (*enterEvent)(VirtualQMenu* self, QEvent* param1);
	void (*leaveEvent)(VirtualQMenu* self, QEvent* param1);
	void (*hideEvent)(VirtualQMenu* self, QHideEvent* param1);
	void (*paintEvent)(VirtualQMenu* self, QPaintEvent* param1);
	void (*actionEvent)(VirtualQMenu* self, QActionEvent* param1);
	void (*timerEvent)(VirtualQMenu* self, QTimerEvent* param1);
	bool (*event)(VirtualQMenu* self, QEvent* param1);
	bool (*focusNextPrevChild)(VirtualQMenu* self, bool next);
	int (*devType)(const VirtualQMenu* self);
	void (*setVisible)(VirtualQMenu* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQMenu* self);
	int (*heightForWidth)(const VirtualQMenu* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQMenu* self);
	QPaintEngine* (*paintEngine)(const VirtualQMenu* self);
	void (*mouseDoubleClickEvent)(VirtualQMenu* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQMenu* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQMenu* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQMenu* self, QFocusEvent* event);
	void (*moveEvent)(VirtualQMenu* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQMenu* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQMenu* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQMenu* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQMenu* self, QTabletEvent* event);
	void (*dragEnterEvent)(VirtualQMenu* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQMenu* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQMenu* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQMenu* self, QDropEvent* event);
	void (*showEvent)(VirtualQMenu* self, QShowEvent* event);
	bool (*nativeEvent)(VirtualQMenu* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQMenu* self, int param1);
	void (*initPainter)(const VirtualQMenu* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQMenu* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQMenu* self);
	void (*inputMethodEvent)(VirtualQMenu* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQMenu* self, int param1);
	bool (*eventFilter)(VirtualQMenu* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQMenu* self, QChildEvent* event);
	void (*customEvent)(VirtualQMenu* self, QEvent* event);
	void (*connectNotify)(VirtualQMenu* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMenu* self, QMetaMethod* signal);
}QMenu_VTable;

const QMenu_VTable* QMenu_vtbl(const VirtualQMenu* self);
void* QMenu_vdata(const VirtualQMenu* self);
void QMenu_setVdata(VirtualQMenu* self, void* vdata);

VirtualQMenu* QMenu_new(const QMenu_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQMenu* QMenu_new2(const QMenu_VTable* vtbl, void* vdata);
VirtualQMenu* QMenu_new3(const QMenu_VTable* vtbl, void* vdata, struct miqt_string title);
VirtualQMenu* QMenu_new4(const QMenu_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent);

void QMenu_virtbase(QMenu* src, QWidget** outptr_QWidget);
QMetaObject* QMenu_metaObject(const QMenu* self);
void* QMenu_metacast(QMenu* self, const char* param1);
int QMenu_metacall(QMenu* self, int param1, int param2, void** param3);
struct miqt_string QMenu_tr(const char* s);
struct miqt_string QMenu_trUtf8(const char* s);
QAction* QMenu_addAction(QMenu* self, struct miqt_string text);
QAction* QMenu_addAction2(QMenu* self, QIcon* icon, struct miqt_string text);
QAction* QMenu_addMenu(QMenu* self, QMenu* menu);
QMenu* QMenu_addMenuWithTitle(QMenu* self, struct miqt_string title);
QMenu* QMenu_addMenu2(QMenu* self, QIcon* icon, struct miqt_string title);
QAction* QMenu_addSeparator(QMenu* self);
QAction* QMenu_addSection(QMenu* self, struct miqt_string text);
QAction* QMenu_addSection2(QMenu* self, QIcon* icon, struct miqt_string text);
QAction* QMenu_insertMenu(QMenu* self, QAction* before, QMenu* menu);
QAction* QMenu_insertSeparator(QMenu* self, QAction* before);
QAction* QMenu_insertSection(QMenu* self, QAction* before, struct miqt_string text);
QAction* QMenu_insertSection2(QMenu* self, QAction* before, QIcon* icon, struct miqt_string text);
bool QMenu_isEmpty(const QMenu* self);
void QMenu_clear(QMenu* self);
void QMenu_setTearOffEnabled(QMenu* self, bool tearOffEnabled);
bool QMenu_isTearOffEnabled(const QMenu* self);
bool QMenu_isTearOffMenuVisible(const QMenu* self);
void QMenu_showTearOffMenu(QMenu* self);
void QMenu_showTearOffMenuWithPos(QMenu* self, QPoint* pos);
void QMenu_hideTearOffMenu(QMenu* self);
void QMenu_setDefaultAction(QMenu* self, QAction* defaultAction);
QAction* QMenu_defaultAction(const QMenu* self);
void QMenu_setActiveAction(QMenu* self, QAction* act);
QAction* QMenu_activeAction(const QMenu* self);
void QMenu_popup(QMenu* self, QPoint* pos);
QAction* QMenu_exec(QMenu* self);
QAction* QMenu_execWithPos(QMenu* self, QPoint* pos);
QAction* QMenu_exec2(struct miqt_array /* of QAction* */  actions, QPoint* pos);
QSize* QMenu_sizeHint(const QMenu* self);
QRect* QMenu_actionGeometry(const QMenu* self, QAction* param1);
QAction* QMenu_actionAt(const QMenu* self, QPoint* param1);
QAction* QMenu_menuAction(const QMenu* self);
struct miqt_string QMenu_title(const QMenu* self);
void QMenu_setTitle(QMenu* self, struct miqt_string title);
QIcon* QMenu_icon(const QMenu* self);
void QMenu_setIcon(QMenu* self, QIcon* icon);
void QMenu_setNoReplayFor(QMenu* self, QWidget* widget);
bool QMenu_separatorsCollapsible(const QMenu* self);
void QMenu_setSeparatorsCollapsible(QMenu* self, bool collapse);
bool QMenu_toolTipsVisible(const QMenu* self);
void QMenu_setToolTipsVisible(QMenu* self, bool visible);
void QMenu_aboutToShow(QMenu* self);
void QMenu_connect_aboutToShow(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMenu_aboutToHide(QMenu* self);
void QMenu_connect_aboutToHide(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMenu_triggered(QMenu* self, QAction* action);
void QMenu_connect_triggered(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QMenu_hovered(QMenu* self, QAction* action);
void QMenu_connect_hovered(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QMenu_changeEvent(QMenu* self, QEvent* param1);
void QMenu_keyPressEvent(QMenu* self, QKeyEvent* param1);
void QMenu_mouseReleaseEvent(QMenu* self, QMouseEvent* param1);
void QMenu_mousePressEvent(QMenu* self, QMouseEvent* param1);
void QMenu_mouseMoveEvent(QMenu* self, QMouseEvent* param1);
void QMenu_wheelEvent(QMenu* self, QWheelEvent* param1);
void QMenu_enterEvent(QMenu* self, QEvent* param1);
void QMenu_leaveEvent(QMenu* self, QEvent* param1);
void QMenu_hideEvent(QMenu* self, QHideEvent* param1);
void QMenu_paintEvent(QMenu* self, QPaintEvent* param1);
void QMenu_actionEvent(QMenu* self, QActionEvent* param1);
void QMenu_timerEvent(QMenu* self, QTimerEvent* param1);
bool QMenu_event(QMenu* self, QEvent* param1);
bool QMenu_focusNextPrevChild(QMenu* self, bool next);
struct miqt_string QMenu_tr2(const char* s, const char* c);
struct miqt_string QMenu_tr3(const char* s, const char* c, int n);
struct miqt_string QMenu_trUtf82(const char* s, const char* c);
struct miqt_string QMenu_trUtf83(const char* s, const char* c, int n);
void QMenu_popup2(QMenu* self, QPoint* pos, QAction* at);
QAction* QMenu_exec22(QMenu* self, QPoint* pos, QAction* at);
QAction* QMenu_exec3(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at);
QAction* QMenu_exec4(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at, QWidget* parent);

QMetaObject* QMenu_virtualbase_metaObject(const VirtualQMenu* self);
void* QMenu_virtualbase_metacast(VirtualQMenu* self, const char* param1);
int QMenu_virtualbase_metacall(VirtualQMenu* self, int param1, int param2, void** param3);
QSize* QMenu_virtualbase_sizeHint(const VirtualQMenu* self);
void QMenu_virtualbase_changeEvent(VirtualQMenu* self, QEvent* param1);
void QMenu_virtualbase_keyPressEvent(VirtualQMenu* self, QKeyEvent* param1);
void QMenu_virtualbase_mouseReleaseEvent(VirtualQMenu* self, QMouseEvent* param1);
void QMenu_virtualbase_mousePressEvent(VirtualQMenu* self, QMouseEvent* param1);
void QMenu_virtualbase_mouseMoveEvent(VirtualQMenu* self, QMouseEvent* param1);
void QMenu_virtualbase_wheelEvent(VirtualQMenu* self, QWheelEvent* param1);
void QMenu_virtualbase_enterEvent(VirtualQMenu* self, QEvent* param1);
void QMenu_virtualbase_leaveEvent(VirtualQMenu* self, QEvent* param1);
void QMenu_virtualbase_hideEvent(VirtualQMenu* self, QHideEvent* param1);
void QMenu_virtualbase_paintEvent(VirtualQMenu* self, QPaintEvent* param1);
void QMenu_virtualbase_actionEvent(VirtualQMenu* self, QActionEvent* param1);
void QMenu_virtualbase_timerEvent(VirtualQMenu* self, QTimerEvent* param1);
bool QMenu_virtualbase_event(VirtualQMenu* self, QEvent* param1);
bool QMenu_virtualbase_focusNextPrevChild(VirtualQMenu* self, bool next);
int QMenu_virtualbase_devType(const VirtualQMenu* self);
void QMenu_virtualbase_setVisible(VirtualQMenu* self, bool visible);
QSize* QMenu_virtualbase_minimumSizeHint(const VirtualQMenu* self);
int QMenu_virtualbase_heightForWidth(const VirtualQMenu* self, int param1);
bool QMenu_virtualbase_hasHeightForWidth(const VirtualQMenu* self);
QPaintEngine* QMenu_virtualbase_paintEngine(const VirtualQMenu* self);
void QMenu_virtualbase_mouseDoubleClickEvent(VirtualQMenu* self, QMouseEvent* event);
void QMenu_virtualbase_keyReleaseEvent(VirtualQMenu* self, QKeyEvent* event);
void QMenu_virtualbase_focusInEvent(VirtualQMenu* self, QFocusEvent* event);
void QMenu_virtualbase_focusOutEvent(VirtualQMenu* self, QFocusEvent* event);
void QMenu_virtualbase_moveEvent(VirtualQMenu* self, QMoveEvent* event);
void QMenu_virtualbase_resizeEvent(VirtualQMenu* self, QResizeEvent* event);
void QMenu_virtualbase_closeEvent(VirtualQMenu* self, QCloseEvent* event);
void QMenu_virtualbase_contextMenuEvent(VirtualQMenu* self, QContextMenuEvent* event);
void QMenu_virtualbase_tabletEvent(VirtualQMenu* self, QTabletEvent* event);
void QMenu_virtualbase_dragEnterEvent(VirtualQMenu* self, QDragEnterEvent* event);
void QMenu_virtualbase_dragMoveEvent(VirtualQMenu* self, QDragMoveEvent* event);
void QMenu_virtualbase_dragLeaveEvent(VirtualQMenu* self, QDragLeaveEvent* event);
void QMenu_virtualbase_dropEvent(VirtualQMenu* self, QDropEvent* event);
void QMenu_virtualbase_showEvent(VirtualQMenu* self, QShowEvent* event);
bool QMenu_virtualbase_nativeEvent(VirtualQMenu* self, struct miqt_string eventType, void* message, long* result);
int QMenu_virtualbase_metric(const VirtualQMenu* self, int param1);
void QMenu_virtualbase_initPainter(const VirtualQMenu* self, QPainter* painter);
QPaintDevice* QMenu_virtualbase_redirected(const VirtualQMenu* self, QPoint* offset);
QPainter* QMenu_virtualbase_sharedPainter(const VirtualQMenu* self);
void QMenu_virtualbase_inputMethodEvent(VirtualQMenu* self, QInputMethodEvent* param1);
QVariant* QMenu_virtualbase_inputMethodQuery(const VirtualQMenu* self, int param1);
bool QMenu_virtualbase_eventFilter(VirtualQMenu* self, QObject* watched, QEvent* event);
void QMenu_virtualbase_childEvent(VirtualQMenu* self, QChildEvent* event);
void QMenu_virtualbase_customEvent(VirtualQMenu* self, QEvent* event);
void QMenu_virtualbase_connectNotify(VirtualQMenu* self, QMetaMethod* signal);
void QMenu_virtualbase_disconnectNotify(VirtualQMenu* self, QMetaMethod* signal);

int QMenu_protectedbase_columnCount(const VirtualQMenu* self);
void QMenu_protectedbase_initStyleOption(const VirtualQMenu* self, QStyleOptionMenuItem* option, QAction* action);
void QMenu_protectedbase_updateMicroFocus(VirtualQMenu* self);
void QMenu_protectedbase_create(VirtualQMenu* self);
void QMenu_protectedbase_destroy(VirtualQMenu* self);
bool QMenu_protectedbase_focusNextChild(VirtualQMenu* self);
bool QMenu_protectedbase_focusPreviousChild(VirtualQMenu* self);
QObject* QMenu_protectedbase_sender(const VirtualQMenu* self);
int QMenu_protectedbase_senderSignalIndex(const VirtualQMenu* self);
int QMenu_protectedbase_receivers(const VirtualQMenu* self, const char* signal);
bool QMenu_protectedbase_isSignalConnected(const VirtualQMenu* self, QMetaMethod* signal);

const QMetaObject* QMenu_staticMetaObject();
void QMenu_delete(QMenu* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
