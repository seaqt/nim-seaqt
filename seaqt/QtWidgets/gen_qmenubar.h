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
class QEnterEvent;
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
typedef struct QEnterEvent QEnterEvent;
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

struct QMenuBar_VTable {
	void (*destructor)(struct QMenuBar_VTable* vtbl, QMenuBar* self);
	QMetaObject* (*metaObject)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	void* (*metacast)(struct QMenuBar_VTable* vtbl, QMenuBar* self, const char* param1);
	int (*metacall)(struct QMenuBar_VTable* vtbl, QMenuBar* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	QSize* (*minimumSizeHint)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	int (*heightForWidth)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, int param1);
	void (*setVisible)(struct QMenuBar_VTable* vtbl, QMenuBar* self, bool visible);
	void (*changeEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QEvent* param1);
	void (*keyPressEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QKeyEvent* param1);
	void (*mouseReleaseEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMouseEvent* param1);
	void (*mousePressEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMouseEvent* param1);
	void (*leaveEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QEvent* param1);
	void (*paintEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QPaintEvent* param1);
	void (*resizeEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QResizeEvent* param1);
	void (*actionEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QActionEvent* param1);
	void (*focusOutEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QFocusEvent* param1);
	void (*focusInEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QFocusEvent* param1);
	void (*timerEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QTimerEvent* param1);
	bool (*eventFilter)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QObject* param1, QEvent* param2);
	bool (*event)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QEvent* param1);
	void (*initStyleOption)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, QStyleOptionMenuItem* option, QAction* action);
	int (*devType)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	bool (*hasHeightForWidth)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	QPaintEngine* (*paintEngine)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	void (*mouseDoubleClickEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMouseEvent* event);
	void (*wheelEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QKeyEvent* event);
	void (*enterEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QEnterEvent* event);
	void (*moveEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMoveEvent* event);
	void (*closeEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QTabletEvent* event);
	void (*dragEnterEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QDropEvent* event);
	void (*showEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QShowEvent* event);
	void (*hideEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QHideEvent* event);
	bool (*nativeEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, int param1);
	void (*initPainter)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMenuBar_VTable* vtbl, const QMenuBar* self);
	void (*inputMethodEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMenuBar_VTable* vtbl, const QMenuBar* self, int param1);
	bool (*focusNextPrevChild)(struct QMenuBar_VTable* vtbl, QMenuBar* self, bool next);
	void (*childEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QChildEvent* event);
	void (*customEvent)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QEvent* event);
	void (*connectNotify)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMenuBar_VTable* vtbl, QMenuBar* self, QMetaMethod* signal);
};
QMenuBar* QMenuBar_new(struct QMenuBar_VTable* vtbl, QWidget* parent);
QMenuBar* QMenuBar_new2(struct QMenuBar_VTable* vtbl);
void QMenuBar_virtbase(QMenuBar* src, QWidget** outptr_QWidget);
QMetaObject* QMenuBar_metaObject(const QMenuBar* self);
void* QMenuBar_metacast(QMenuBar* self, const char* param1);
int QMenuBar_metacall(QMenuBar* self, int param1, int param2, void** param3);
struct miqt_string QMenuBar_tr(const char* s);
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
void QMenuBar_connect_triggered(QMenuBar* self, intptr_t slot);
void QMenuBar_hovered(QMenuBar* self, QAction* action);
void QMenuBar_connect_hovered(QMenuBar* self, intptr_t slot);
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
void QMenuBar_initStyleOption(const QMenuBar* self, QStyleOptionMenuItem* option, QAction* action);
struct miqt_string QMenuBar_tr2(const char* s, const char* c);
struct miqt_string QMenuBar_tr3(const char* s, const char* c, int n);
void QMenuBar_setCornerWidget2(QMenuBar* self, QWidget* w, int corner);
QWidget* QMenuBar_cornerWidget1(const QMenuBar* self, int corner);
QMetaObject* QMenuBar_virtualbase_metaObject(const void* self);
void* QMenuBar_virtualbase_metacast(void* self, const char* param1);
int QMenuBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QMenuBar_virtualbase_sizeHint(const void* self);
QSize* QMenuBar_virtualbase_minimumSizeHint(const void* self);
int QMenuBar_virtualbase_heightForWidth(const void* self, int param1);
void QMenuBar_virtualbase_setVisible(void* self, bool visible);
void QMenuBar_virtualbase_changeEvent(void* self, QEvent* param1);
void QMenuBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QMenuBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QMenuBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QMenuBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QMenuBar_virtualbase_leaveEvent(void* self, QEvent* param1);
void QMenuBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QMenuBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QMenuBar_virtualbase_actionEvent(void* self, QActionEvent* param1);
void QMenuBar_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
void QMenuBar_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QMenuBar_virtualbase_timerEvent(void* self, QTimerEvent* param1);
bool QMenuBar_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QMenuBar_virtualbase_event(void* self, QEvent* param1);
void QMenuBar_virtualbase_initStyleOption(const void* self, QStyleOptionMenuItem* option, QAction* action);
int QMenuBar_virtualbase_devType(const void* self);
bool QMenuBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMenuBar_virtualbase_paintEngine(const void* self);
void QMenuBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QMenuBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QMenuBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMenuBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QMenuBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QMenuBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QMenuBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QMenuBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMenuBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QMenuBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QMenuBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QMenuBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QMenuBar_virtualbase_showEvent(void* self, QShowEvent* event);
void QMenuBar_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QMenuBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QMenuBar_virtualbase_metric(const void* self, int param1);
void QMenuBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMenuBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMenuBar_virtualbase_sharedPainter(const void* self);
void QMenuBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMenuBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMenuBar_virtualbase_focusNextPrevChild(void* self, bool next);
void QMenuBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QMenuBar_virtualbase_customEvent(void* self, QEvent* event);
void QMenuBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMenuBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QMenuBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QMenuBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QMenuBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QMenuBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QMenuBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QMenuBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QMenuBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QMenuBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QMenuBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QMenuBar_staticMetaObject();
void QMenuBar_delete(QMenuBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
