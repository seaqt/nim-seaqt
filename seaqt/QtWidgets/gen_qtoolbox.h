#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTOOLBOX_H
#define SEAQT_QTWIDGETS_GEN_QTOOLBOX_H

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
class QFrame;
class QHideEvent;
class QIcon;
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
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QToolBox;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBox QToolBox;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQToolBox VirtualQToolBox;
typedef struct QToolBox_VTable{
	void (*destructor)(VirtualQToolBox* self);
	QMetaObject* (*metaObject)(const VirtualQToolBox* self);
	void* (*metacast)(VirtualQToolBox* self, const char* param1);
	int (*metacall)(VirtualQToolBox* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQToolBox* self, QEvent* e);
	void (*itemInserted)(VirtualQToolBox* self, int index);
	void (*itemRemoved)(VirtualQToolBox* self, int index);
	void (*showEvent)(VirtualQToolBox* self, QShowEvent* e);
	void (*changeEvent)(VirtualQToolBox* self, QEvent* param1);
	QSize* (*sizeHint)(const VirtualQToolBox* self);
	void (*paintEvent)(VirtualQToolBox* self, QPaintEvent* param1);
	int (*devType)(const VirtualQToolBox* self);
	void (*setVisible)(VirtualQToolBox* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQToolBox* self);
	int (*heightForWidth)(const VirtualQToolBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQToolBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQToolBox* self);
	void (*mousePressEvent)(VirtualQToolBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQToolBox* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQToolBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQToolBox* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQToolBox* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQToolBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQToolBox* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQToolBox* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQToolBox* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQToolBox* self, QEvent* event);
	void (*leaveEvent)(VirtualQToolBox* self, QEvent* event);
	void (*moveEvent)(VirtualQToolBox* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQToolBox* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQToolBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQToolBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQToolBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQToolBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQToolBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQToolBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQToolBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQToolBox* self, QDropEvent* event);
	void (*hideEvent)(VirtualQToolBox* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQToolBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQToolBox* self, int param1);
	void (*initPainter)(const VirtualQToolBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQToolBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQToolBox* self);
	void (*inputMethodEvent)(VirtualQToolBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQToolBox* self, int param1);
	bool (*focusNextPrevChild)(VirtualQToolBox* self, bool next);
	bool (*eventFilter)(VirtualQToolBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQToolBox* self, QTimerEvent* event);
	void (*childEvent)(VirtualQToolBox* self, QChildEvent* event);
	void (*customEvent)(VirtualQToolBox* self, QEvent* event);
	void (*connectNotify)(VirtualQToolBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQToolBox* self, QMetaMethod* signal);
}QToolBox_VTable;

const QToolBox_VTable* QToolBox_vtbl(const VirtualQToolBox* self);
void* QToolBox_vdata(const VirtualQToolBox* self);
void QToolBox_setVdata(VirtualQToolBox* self, void* vdata);

VirtualQToolBox* QToolBox_new(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQToolBox* QToolBox_new2(const QToolBox_VTable* vtbl, void* vdata);
VirtualQToolBox* QToolBox_new3(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent, int f);

void QToolBox_virtbase(QToolBox* src, QFrame** outptr_QFrame);
QMetaObject* QToolBox_metaObject(const QToolBox* self);
void* QToolBox_metacast(QToolBox* self, const char* param1);
int QToolBox_metacall(QToolBox* self, int param1, int param2, void** param3);
struct miqt_string QToolBox_tr(const char* s);
struct miqt_string QToolBox_trUtf8(const char* s);
int QToolBox_addItem(QToolBox* self, QWidget* widget, struct miqt_string text);
int QToolBox_addItem2(QToolBox* self, QWidget* widget, QIcon* icon, struct miqt_string text);
int QToolBox_insertItem(QToolBox* self, int index, QWidget* widget, struct miqt_string text);
int QToolBox_insertItem2(QToolBox* self, int index, QWidget* widget, QIcon* icon, struct miqt_string text);
void QToolBox_removeItem(QToolBox* self, int index);
void QToolBox_setItemEnabled(QToolBox* self, int index, bool enabled);
bool QToolBox_isItemEnabled(const QToolBox* self, int index);
void QToolBox_setItemText(QToolBox* self, int index, struct miqt_string text);
struct miqt_string QToolBox_itemText(const QToolBox* self, int index);
void QToolBox_setItemIcon(QToolBox* self, int index, QIcon* icon);
QIcon* QToolBox_itemIcon(const QToolBox* self, int index);
void QToolBox_setItemToolTip(QToolBox* self, int index, struct miqt_string toolTip);
struct miqt_string QToolBox_itemToolTip(const QToolBox* self, int index);
int QToolBox_currentIndex(const QToolBox* self);
QWidget* QToolBox_currentWidget(const QToolBox* self);
QWidget* QToolBox_widget(const QToolBox* self, int index);
int QToolBox_indexOf(const QToolBox* self, QWidget* widget);
int QToolBox_count(const QToolBox* self);
void QToolBox_setCurrentIndex(QToolBox* self, int index);
void QToolBox_setCurrentWidget(QToolBox* self, QWidget* widget);
void QToolBox_currentChanged(QToolBox* self, int index);
void QToolBox_connect_currentChanged(VirtualQToolBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QToolBox_event(QToolBox* self, QEvent* e);
void QToolBox_itemInserted(QToolBox* self, int index);
void QToolBox_itemRemoved(QToolBox* self, int index);
void QToolBox_showEvent(QToolBox* self, QShowEvent* e);
void QToolBox_changeEvent(QToolBox* self, QEvent* param1);
struct miqt_string QToolBox_tr2(const char* s, const char* c);
struct miqt_string QToolBox_tr3(const char* s, const char* c, int n);
struct miqt_string QToolBox_trUtf82(const char* s, const char* c);
struct miqt_string QToolBox_trUtf83(const char* s, const char* c, int n);

QMetaObject* QToolBox_virtualbase_metaObject(const VirtualQToolBox* self);
void* QToolBox_virtualbase_metacast(VirtualQToolBox* self, const char* param1);
int QToolBox_virtualbase_metacall(VirtualQToolBox* self, int param1, int param2, void** param3);
bool QToolBox_virtualbase_event(VirtualQToolBox* self, QEvent* e);
void QToolBox_virtualbase_itemInserted(VirtualQToolBox* self, int index);
void QToolBox_virtualbase_itemRemoved(VirtualQToolBox* self, int index);
void QToolBox_virtualbase_showEvent(VirtualQToolBox* self, QShowEvent* e);
void QToolBox_virtualbase_changeEvent(VirtualQToolBox* self, QEvent* param1);
QSize* QToolBox_virtualbase_sizeHint(const VirtualQToolBox* self);
void QToolBox_virtualbase_paintEvent(VirtualQToolBox* self, QPaintEvent* param1);
int QToolBox_virtualbase_devType(const VirtualQToolBox* self);
void QToolBox_virtualbase_setVisible(VirtualQToolBox* self, bool visible);
QSize* QToolBox_virtualbase_minimumSizeHint(const VirtualQToolBox* self);
int QToolBox_virtualbase_heightForWidth(const VirtualQToolBox* self, int param1);
bool QToolBox_virtualbase_hasHeightForWidth(const VirtualQToolBox* self);
QPaintEngine* QToolBox_virtualbase_paintEngine(const VirtualQToolBox* self);
void QToolBox_virtualbase_mousePressEvent(VirtualQToolBox* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseReleaseEvent(VirtualQToolBox* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseDoubleClickEvent(VirtualQToolBox* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseMoveEvent(VirtualQToolBox* self, QMouseEvent* event);
void QToolBox_virtualbase_wheelEvent(VirtualQToolBox* self, QWheelEvent* event);
void QToolBox_virtualbase_keyPressEvent(VirtualQToolBox* self, QKeyEvent* event);
void QToolBox_virtualbase_keyReleaseEvent(VirtualQToolBox* self, QKeyEvent* event);
void QToolBox_virtualbase_focusInEvent(VirtualQToolBox* self, QFocusEvent* event);
void QToolBox_virtualbase_focusOutEvent(VirtualQToolBox* self, QFocusEvent* event);
void QToolBox_virtualbase_enterEvent(VirtualQToolBox* self, QEvent* event);
void QToolBox_virtualbase_leaveEvent(VirtualQToolBox* self, QEvent* event);
void QToolBox_virtualbase_moveEvent(VirtualQToolBox* self, QMoveEvent* event);
void QToolBox_virtualbase_resizeEvent(VirtualQToolBox* self, QResizeEvent* event);
void QToolBox_virtualbase_closeEvent(VirtualQToolBox* self, QCloseEvent* event);
void QToolBox_virtualbase_contextMenuEvent(VirtualQToolBox* self, QContextMenuEvent* event);
void QToolBox_virtualbase_tabletEvent(VirtualQToolBox* self, QTabletEvent* event);
void QToolBox_virtualbase_actionEvent(VirtualQToolBox* self, QActionEvent* event);
void QToolBox_virtualbase_dragEnterEvent(VirtualQToolBox* self, QDragEnterEvent* event);
void QToolBox_virtualbase_dragMoveEvent(VirtualQToolBox* self, QDragMoveEvent* event);
void QToolBox_virtualbase_dragLeaveEvent(VirtualQToolBox* self, QDragLeaveEvent* event);
void QToolBox_virtualbase_dropEvent(VirtualQToolBox* self, QDropEvent* event);
void QToolBox_virtualbase_hideEvent(VirtualQToolBox* self, QHideEvent* event);
bool QToolBox_virtualbase_nativeEvent(VirtualQToolBox* self, struct miqt_string eventType, void* message, long* result);
int QToolBox_virtualbase_metric(const VirtualQToolBox* self, int param1);
void QToolBox_virtualbase_initPainter(const VirtualQToolBox* self, QPainter* painter);
QPaintDevice* QToolBox_virtualbase_redirected(const VirtualQToolBox* self, QPoint* offset);
QPainter* QToolBox_virtualbase_sharedPainter(const VirtualQToolBox* self);
void QToolBox_virtualbase_inputMethodEvent(VirtualQToolBox* self, QInputMethodEvent* param1);
QVariant* QToolBox_virtualbase_inputMethodQuery(const VirtualQToolBox* self, int param1);
bool QToolBox_virtualbase_focusNextPrevChild(VirtualQToolBox* self, bool next);
bool QToolBox_virtualbase_eventFilter(VirtualQToolBox* self, QObject* watched, QEvent* event);
void QToolBox_virtualbase_timerEvent(VirtualQToolBox* self, QTimerEvent* event);
void QToolBox_virtualbase_childEvent(VirtualQToolBox* self, QChildEvent* event);
void QToolBox_virtualbase_customEvent(VirtualQToolBox* self, QEvent* event);
void QToolBox_virtualbase_connectNotify(VirtualQToolBox* self, QMetaMethod* signal);
void QToolBox_virtualbase_disconnectNotify(VirtualQToolBox* self, QMetaMethod* signal);

void QToolBox_protectedbase_drawFrame(VirtualQToolBox* self, QPainter* param1);
void QToolBox_protectedbase_initStyleOption(const VirtualQToolBox* self, QStyleOptionFrame* option);
void QToolBox_protectedbase_updateMicroFocus(VirtualQToolBox* self);
void QToolBox_protectedbase_create(VirtualQToolBox* self);
void QToolBox_protectedbase_destroy(VirtualQToolBox* self);
bool QToolBox_protectedbase_focusNextChild(VirtualQToolBox* self);
bool QToolBox_protectedbase_focusPreviousChild(VirtualQToolBox* self);
QObject* QToolBox_protectedbase_sender(const VirtualQToolBox* self);
int QToolBox_protectedbase_senderSignalIndex(const VirtualQToolBox* self);
int QToolBox_protectedbase_receivers(const VirtualQToolBox* self, const char* signal);
bool QToolBox_protectedbase_isSignalConnected(const VirtualQToolBox* self, QMetaMethod* signal);

const QMetaObject* QToolBox_staticMetaObject();
void QToolBox_delete(QToolBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
