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

struct QToolBox_VTable {
	void (*destructor)(struct QToolBox_VTable* vtbl, QToolBox* self);
	QMetaObject* (*metaObject)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	void* (*metacast)(struct QToolBox_VTable* vtbl, QToolBox* self, const char* param1);
	int (*metacall)(struct QToolBox_VTable* vtbl, QToolBox* self, int param1, int param2, void** param3);
	bool (*event)(struct QToolBox_VTable* vtbl, QToolBox* self, QEvent* e);
	void (*itemInserted)(struct QToolBox_VTable* vtbl, QToolBox* self, int index);
	void (*itemRemoved)(struct QToolBox_VTable* vtbl, QToolBox* self, int index);
	void (*showEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QShowEvent* e);
	void (*changeEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QEvent* param1);
	QSize* (*sizeHint)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	void (*paintEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QPaintEvent* param1);
	int (*devType)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	void (*setVisible)(struct QToolBox_VTable* vtbl, QToolBox* self, bool visible);
	QSize* (*minimumSizeHint)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	int (*heightForWidth)(struct QToolBox_VTable* vtbl, const QToolBox* self, int param1);
	bool (*hasHeightForWidth)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	QPaintEngine* (*paintEngine)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	void (*mousePressEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QMouseEvent* event);
	void (*wheelEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QKeyEvent* event);
	void (*focusInEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QFocusEvent* event);
	void (*enterEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QEvent* event);
	void (*leaveEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QEvent* event);
	void (*moveEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QMoveEvent* event);
	void (*resizeEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QResizeEvent* event);
	void (*closeEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QDropEvent* event);
	void (*hideEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QHideEvent* event);
	bool (*nativeEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QToolBox_VTable* vtbl, const QToolBox* self, int param1);
	void (*initPainter)(struct QToolBox_VTable* vtbl, const QToolBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QToolBox_VTable* vtbl, const QToolBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QToolBox_VTable* vtbl, const QToolBox* self);
	void (*inputMethodEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QToolBox_VTable* vtbl, const QToolBox* self, int param1);
	bool (*focusNextPrevChild)(struct QToolBox_VTable* vtbl, QToolBox* self, bool next);
	bool (*eventFilter)(struct QToolBox_VTable* vtbl, QToolBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QTimerEvent* event);
	void (*childEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QChildEvent* event);
	void (*customEvent)(struct QToolBox_VTable* vtbl, QToolBox* self, QEvent* event);
	void (*connectNotify)(struct QToolBox_VTable* vtbl, QToolBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QToolBox_VTable* vtbl, QToolBox* self, QMetaMethod* signal);
};
QToolBox* QToolBox_new(struct QToolBox_VTable* vtbl, QWidget* parent);
QToolBox* QToolBox_new2(struct QToolBox_VTable* vtbl);
QToolBox* QToolBox_new3(struct QToolBox_VTable* vtbl, QWidget* parent, int f);
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
void QToolBox_connect_currentChanged(QToolBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QToolBox_event(QToolBox* self, QEvent* e);
void QToolBox_itemInserted(QToolBox* self, int index);
void QToolBox_itemRemoved(QToolBox* self, int index);
void QToolBox_showEvent(QToolBox* self, QShowEvent* e);
void QToolBox_changeEvent(QToolBox* self, QEvent* param1);
struct miqt_string QToolBox_tr2(const char* s, const char* c);
struct miqt_string QToolBox_tr3(const char* s, const char* c, int n);
struct miqt_string QToolBox_trUtf82(const char* s, const char* c);
struct miqt_string QToolBox_trUtf83(const char* s, const char* c, int n);
QMetaObject* QToolBox_virtualbase_metaObject(const void* self);
void* QToolBox_virtualbase_metacast(void* self, const char* param1);
int QToolBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QToolBox_virtualbase_event(void* self, QEvent* e);
void QToolBox_virtualbase_itemInserted(void* self, int index);
void QToolBox_virtualbase_itemRemoved(void* self, int index);
void QToolBox_virtualbase_showEvent(void* self, QShowEvent* e);
void QToolBox_virtualbase_changeEvent(void* self, QEvent* param1);
QSize* QToolBox_virtualbase_sizeHint(const void* self);
void QToolBox_virtualbase_paintEvent(void* self, QPaintEvent* param1);
int QToolBox_virtualbase_devType(const void* self);
void QToolBox_virtualbase_setVisible(void* self, bool visible);
QSize* QToolBox_virtualbase_minimumSizeHint(const void* self);
int QToolBox_virtualbase_heightForWidth(const void* self, int param1);
bool QToolBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QToolBox_virtualbase_paintEngine(const void* self);
void QToolBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QToolBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QToolBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QToolBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QToolBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QToolBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QToolBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QToolBox_virtualbase_enterEvent(void* self, QEvent* event);
void QToolBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QToolBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QToolBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QToolBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QToolBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QToolBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QToolBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QToolBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QToolBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QToolBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QToolBox_virtualbase_dropEvent(void* self, QDropEvent* event);
void QToolBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QToolBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QToolBox_virtualbase_metric(const void* self, int param1);
void QToolBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QToolBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QToolBox_virtualbase_sharedPainter(const void* self);
void QToolBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QToolBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QToolBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QToolBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QToolBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QToolBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QToolBox_virtualbase_customEvent(void* self, QEvent* event);
void QToolBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QToolBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QToolBox_protectedbase_drawFrame(void* self, QPainter* param1);
void QToolBox_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
void QToolBox_protectedbase_updateMicroFocus(void* self);
void QToolBox_protectedbase_create(void* self);
void QToolBox_protectedbase_destroy(void* self);
bool QToolBox_protectedbase_focusNextChild(void* self);
bool QToolBox_protectedbase_focusPreviousChild(void* self);
QObject* QToolBox_protectedbase_sender(const void* self);
int QToolBox_protectedbase_senderSignalIndex(const void* self);
int QToolBox_protectedbase_receivers(const void* self, const char* signal);
bool QToolBox_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QToolBox_staticMetaObject();
void QToolBox_delete(QToolBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
