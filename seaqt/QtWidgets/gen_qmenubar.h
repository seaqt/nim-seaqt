#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMENUBAR_H
#define SEAQT_QTWIDGETS_GEN_QMENUBAR_H

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

typedef struct VirtualQMenuBar VirtualQMenuBar;
typedef struct QMenuBar_VTable{
	void (*destructor)(VirtualQMenuBar* self);
	QMetaObject* (*metaObject)(const VirtualQMenuBar* self);
	void* (*metacast)(VirtualQMenuBar* self, const char* param1);
	int (*metacall)(VirtualQMenuBar* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQMenuBar* self);
	QSize* (*minimumSizeHint)(const VirtualQMenuBar* self);
	int (*heightForWidth)(const VirtualQMenuBar* self, int param1);
	void (*setVisible)(VirtualQMenuBar* self, bool visible);
	void (*changeEvent)(VirtualQMenuBar* self, QEvent* param1);
	void (*keyPressEvent)(VirtualQMenuBar* self, QKeyEvent* param1);
	void (*mouseReleaseEvent)(VirtualQMenuBar* self, QMouseEvent* param1);
	void (*mousePressEvent)(VirtualQMenuBar* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQMenuBar* self, QMouseEvent* param1);
	void (*leaveEvent)(VirtualQMenuBar* self, QEvent* param1);
	void (*paintEvent)(VirtualQMenuBar* self, QPaintEvent* param1);
	void (*resizeEvent)(VirtualQMenuBar* self, QResizeEvent* param1);
	void (*actionEvent)(VirtualQMenuBar* self, QActionEvent* param1);
	void (*focusOutEvent)(VirtualQMenuBar* self, QFocusEvent* param1);
	void (*focusInEvent)(VirtualQMenuBar* self, QFocusEvent* param1);
	void (*timerEvent)(VirtualQMenuBar* self, QTimerEvent* param1);
	bool (*eventFilter)(VirtualQMenuBar* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQMenuBar* self, QEvent* param1);
	int (*devType)(const VirtualQMenuBar* self);
	bool (*hasHeightForWidth)(const VirtualQMenuBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQMenuBar* self);
	void (*mouseDoubleClickEvent)(VirtualQMenuBar* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQMenuBar* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQMenuBar* self, QKeyEvent* event);
	void (*enterEvent)(VirtualQMenuBar* self, QEvent* event);
	void (*moveEvent)(VirtualQMenuBar* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQMenuBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQMenuBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQMenuBar* self, QTabletEvent* event);
	void (*dragEnterEvent)(VirtualQMenuBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQMenuBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQMenuBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQMenuBar* self, QDropEvent* event);
	void (*showEvent)(VirtualQMenuBar* self, QShowEvent* event);
	void (*hideEvent)(VirtualQMenuBar* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQMenuBar* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQMenuBar* self, int param1);
	void (*initPainter)(const VirtualQMenuBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQMenuBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQMenuBar* self);
	void (*inputMethodEvent)(VirtualQMenuBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQMenuBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQMenuBar* self, bool next);
	void (*childEvent)(VirtualQMenuBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQMenuBar* self, QEvent* event);
	void (*connectNotify)(VirtualQMenuBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMenuBar* self, QMetaMethod* signal);
}QMenuBar_VTable;

const QMenuBar_VTable* QMenuBar_vtbl(const VirtualQMenuBar* self);
void* QMenuBar_vdata(const VirtualQMenuBar* self);
void QMenuBar_setVdata(VirtualQMenuBar* self, void* vdata);

VirtualQMenuBar* QMenuBar_new(const QMenuBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQMenuBar* QMenuBar_new2(const QMenuBar_VTable* vtbl, void* vdata);

void QMenuBar_virtbase(QMenuBar* src, QWidget** outptr_QWidget);
QMetaObject* QMenuBar_metaObject(const QMenuBar* self);
void* QMenuBar_metacast(QMenuBar* self, const char* param1);
int QMenuBar_metacall(QMenuBar* self, int param1, int param2, void** param3);
struct miqt_string QMenuBar_tr(const char* s);
struct miqt_string QMenuBar_trUtf8(const char* s);
QAction* QMenuBar_addAction(QMenuBar* self, struct miqt_string text);
QAction* QMenuBar_addMenu(QMenuBar* self, QMenu* menu);
QMenu* QMenuBar_addMenuWithTitle(QMenuBar* self, struct miqt_string title);
QMenu* QMenuBar_addMenu2(QMenuBar* self, QIcon* icon, struct miqt_string title);
QAction* QMenuBar_addSeparator(QMenuBar* self);
QAction* QMenuBar_insertSeparator(QMenuBar* self, QAction* before);
QAction* QMenuBar_insertMenu(QMenuBar* self, QAction* before, QMenu* menu);
void QMenuBar_clear(QMenuBar* self);
QAction* QMenuBar_activeAction(const QMenuBar* self);
void QMenuBar_setActiveAction(QMenuBar* self, QAction* action);
void QMenuBar_setDefaultUp(QMenuBar* self, bool defaultUp);
bool QMenuBar_isDefaultUp(const QMenuBar* self);
QSize* QMenuBar_sizeHint(const QMenuBar* self);
QSize* QMenuBar_minimumSizeHint(const QMenuBar* self);
int QMenuBar_heightForWidth(const QMenuBar* self, int param1);
QRect* QMenuBar_actionGeometry(const QMenuBar* self, QAction* param1);
QAction* QMenuBar_actionAt(const QMenuBar* self, QPoint* param1);
void QMenuBar_setCornerWidget(QMenuBar* self, QWidget* w);
QWidget* QMenuBar_cornerWidget(const QMenuBar* self);
bool QMenuBar_isNativeMenuBar(const QMenuBar* self);
void QMenuBar_setNativeMenuBar(QMenuBar* self, bool nativeMenuBar);
void QMenuBar_setVisible(QMenuBar* self, bool visible);
void QMenuBar_triggered(QMenuBar* self, QAction* action);
void QMenuBar_connect_triggered(VirtualQMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QMenuBar_hovered(QMenuBar* self, QAction* action);
void QMenuBar_connect_hovered(VirtualQMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QMenuBar_changeEvent(QMenuBar* self, QEvent* param1);
void QMenuBar_keyPressEvent(QMenuBar* self, QKeyEvent* param1);
void QMenuBar_mouseReleaseEvent(QMenuBar* self, QMouseEvent* param1);
void QMenuBar_mousePressEvent(QMenuBar* self, QMouseEvent* param1);
void QMenuBar_mouseMoveEvent(QMenuBar* self, QMouseEvent* param1);
void QMenuBar_leaveEvent(QMenuBar* self, QEvent* param1);
void QMenuBar_paintEvent(QMenuBar* self, QPaintEvent* param1);
void QMenuBar_resizeEvent(QMenuBar* self, QResizeEvent* param1);
void QMenuBar_actionEvent(QMenuBar* self, QActionEvent* param1);
void QMenuBar_focusOutEvent(QMenuBar* self, QFocusEvent* param1);
void QMenuBar_focusInEvent(QMenuBar* self, QFocusEvent* param1);
void QMenuBar_timerEvent(QMenuBar* self, QTimerEvent* param1);
bool QMenuBar_eventFilter(QMenuBar* self, QObject* param1, QEvent* param2);
bool QMenuBar_event(QMenuBar* self, QEvent* param1);
struct miqt_string QMenuBar_tr2(const char* s, const char* c);
struct miqt_string QMenuBar_tr3(const char* s, const char* c, int n);
struct miqt_string QMenuBar_trUtf82(const char* s, const char* c);
struct miqt_string QMenuBar_trUtf83(const char* s, const char* c, int n);
void QMenuBar_setCornerWidget2(QMenuBar* self, QWidget* w, int corner);
QWidget* QMenuBar_cornerWidget1(const QMenuBar* self, int corner);

QMetaObject* QMenuBar_virtualbase_metaObject(const VirtualQMenuBar* self);
void* QMenuBar_virtualbase_metacast(VirtualQMenuBar* self, const char* param1);
int QMenuBar_virtualbase_metacall(VirtualQMenuBar* self, int param1, int param2, void** param3);
QSize* QMenuBar_virtualbase_sizeHint(const VirtualQMenuBar* self);
QSize* QMenuBar_virtualbase_minimumSizeHint(const VirtualQMenuBar* self);
int QMenuBar_virtualbase_heightForWidth(const VirtualQMenuBar* self, int param1);
void QMenuBar_virtualbase_setVisible(VirtualQMenuBar* self, bool visible);
void QMenuBar_virtualbase_changeEvent(VirtualQMenuBar* self, QEvent* param1);
void QMenuBar_virtualbase_keyPressEvent(VirtualQMenuBar* self, QKeyEvent* param1);
void QMenuBar_virtualbase_mouseReleaseEvent(VirtualQMenuBar* self, QMouseEvent* param1);
void QMenuBar_virtualbase_mousePressEvent(VirtualQMenuBar* self, QMouseEvent* param1);
void QMenuBar_virtualbase_mouseMoveEvent(VirtualQMenuBar* self, QMouseEvent* param1);
void QMenuBar_virtualbase_leaveEvent(VirtualQMenuBar* self, QEvent* param1);
void QMenuBar_virtualbase_paintEvent(VirtualQMenuBar* self, QPaintEvent* param1);
void QMenuBar_virtualbase_resizeEvent(VirtualQMenuBar* self, QResizeEvent* param1);
void QMenuBar_virtualbase_actionEvent(VirtualQMenuBar* self, QActionEvent* param1);
void QMenuBar_virtualbase_focusOutEvent(VirtualQMenuBar* self, QFocusEvent* param1);
void QMenuBar_virtualbase_focusInEvent(VirtualQMenuBar* self, QFocusEvent* param1);
void QMenuBar_virtualbase_timerEvent(VirtualQMenuBar* self, QTimerEvent* param1);
bool QMenuBar_virtualbase_eventFilter(VirtualQMenuBar* self, QObject* param1, QEvent* param2);
bool QMenuBar_virtualbase_event(VirtualQMenuBar* self, QEvent* param1);
int QMenuBar_virtualbase_devType(const VirtualQMenuBar* self);
bool QMenuBar_virtualbase_hasHeightForWidth(const VirtualQMenuBar* self);
QPaintEngine* QMenuBar_virtualbase_paintEngine(const VirtualQMenuBar* self);
void QMenuBar_virtualbase_mouseDoubleClickEvent(VirtualQMenuBar* self, QMouseEvent* event);
void QMenuBar_virtualbase_wheelEvent(VirtualQMenuBar* self, QWheelEvent* event);
void QMenuBar_virtualbase_keyReleaseEvent(VirtualQMenuBar* self, QKeyEvent* event);
void QMenuBar_virtualbase_enterEvent(VirtualQMenuBar* self, QEvent* event);
void QMenuBar_virtualbase_moveEvent(VirtualQMenuBar* self, QMoveEvent* event);
void QMenuBar_virtualbase_closeEvent(VirtualQMenuBar* self, QCloseEvent* event);
void QMenuBar_virtualbase_contextMenuEvent(VirtualQMenuBar* self, QContextMenuEvent* event);
void QMenuBar_virtualbase_tabletEvent(VirtualQMenuBar* self, QTabletEvent* event);
void QMenuBar_virtualbase_dragEnterEvent(VirtualQMenuBar* self, QDragEnterEvent* event);
void QMenuBar_virtualbase_dragMoveEvent(VirtualQMenuBar* self, QDragMoveEvent* event);
void QMenuBar_virtualbase_dragLeaveEvent(VirtualQMenuBar* self, QDragLeaveEvent* event);
void QMenuBar_virtualbase_dropEvent(VirtualQMenuBar* self, QDropEvent* event);
void QMenuBar_virtualbase_showEvent(VirtualQMenuBar* self, QShowEvent* event);
void QMenuBar_virtualbase_hideEvent(VirtualQMenuBar* self, QHideEvent* event);
bool QMenuBar_virtualbase_nativeEvent(VirtualQMenuBar* self, struct miqt_string eventType, void* message, long* result);
int QMenuBar_virtualbase_metric(const VirtualQMenuBar* self, int param1);
void QMenuBar_virtualbase_initPainter(const VirtualQMenuBar* self, QPainter* painter);
QPaintDevice* QMenuBar_virtualbase_redirected(const VirtualQMenuBar* self, QPoint* offset);
QPainter* QMenuBar_virtualbase_sharedPainter(const VirtualQMenuBar* self);
void QMenuBar_virtualbase_inputMethodEvent(VirtualQMenuBar* self, QInputMethodEvent* param1);
QVariant* QMenuBar_virtualbase_inputMethodQuery(const VirtualQMenuBar* self, int param1);
bool QMenuBar_virtualbase_focusNextPrevChild(VirtualQMenuBar* self, bool next);
void QMenuBar_virtualbase_childEvent(VirtualQMenuBar* self, QChildEvent* event);
void QMenuBar_virtualbase_customEvent(VirtualQMenuBar* self, QEvent* event);
void QMenuBar_virtualbase_connectNotify(VirtualQMenuBar* self, QMetaMethod* signal);
void QMenuBar_virtualbase_disconnectNotify(VirtualQMenuBar* self, QMetaMethod* signal);

void QMenuBar_protectedbase_initStyleOption(const VirtualQMenuBar* self, QStyleOptionMenuItem* option, QAction* action);
void QMenuBar_protectedbase_updateMicroFocus(VirtualQMenuBar* self);
void QMenuBar_protectedbase_create(VirtualQMenuBar* self);
void QMenuBar_protectedbase_destroy(VirtualQMenuBar* self);
bool QMenuBar_protectedbase_focusNextChild(VirtualQMenuBar* self);
bool QMenuBar_protectedbase_focusPreviousChild(VirtualQMenuBar* self);
QObject* QMenuBar_protectedbase_sender(const VirtualQMenuBar* self);
int QMenuBar_protectedbase_senderSignalIndex(const VirtualQMenuBar* self);
int QMenuBar_protectedbase_receivers(const VirtualQMenuBar* self, const char* signal);
bool QMenuBar_protectedbase_isSignalConnected(const VirtualQMenuBar* self, QMetaMethod* signal);

const QMetaObject* QMenuBar_staticMetaObject();
void QMenuBar_delete(QMenuBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
