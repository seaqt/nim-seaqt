#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTACKEDWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QSTACKEDWIDGET_H

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
class QStackedWidget;
class QStyleOptionFrame;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
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
typedef struct QStackedWidget QStackedWidget;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQStackedWidget VirtualQStackedWidget;
typedef struct QStackedWidget_VTable{
	void (*destructor)(VirtualQStackedWidget* self);
	QMetaObject* (*metaObject)(const VirtualQStackedWidget* self);
	void* (*metacast)(VirtualQStackedWidget* self, const char* param1);
	int (*metacall)(VirtualQStackedWidget* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQStackedWidget* self, QEvent* e);
	QSize* (*sizeHint)(const VirtualQStackedWidget* self);
	void (*paintEvent)(VirtualQStackedWidget* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQStackedWidget* self, QEvent* param1);
	int (*devType)(const VirtualQStackedWidget* self);
	void (*setVisible)(VirtualQStackedWidget* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQStackedWidget* self);
	int (*heightForWidth)(const VirtualQStackedWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQStackedWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQStackedWidget* self);
	void (*mousePressEvent)(VirtualQStackedWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQStackedWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQStackedWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQStackedWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQStackedWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQStackedWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQStackedWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQStackedWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQStackedWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQStackedWidget* self, QEvent* event);
	void (*leaveEvent)(VirtualQStackedWidget* self, QEvent* event);
	void (*moveEvent)(VirtualQStackedWidget* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQStackedWidget* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQStackedWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQStackedWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQStackedWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQStackedWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQStackedWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQStackedWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQStackedWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQStackedWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQStackedWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQStackedWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQStackedWidget* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQStackedWidget* self, int param1);
	void (*initPainter)(const VirtualQStackedWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQStackedWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQStackedWidget* self);
	void (*inputMethodEvent)(VirtualQStackedWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQStackedWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQStackedWidget* self, bool next);
	bool (*eventFilter)(VirtualQStackedWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStackedWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStackedWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQStackedWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQStackedWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStackedWidget* self, QMetaMethod* signal);
}QStackedWidget_VTable;

const QStackedWidget_VTable* QStackedWidget_vtbl(const VirtualQStackedWidget* self);
void* QStackedWidget_vdata(const VirtualQStackedWidget* self);
void QStackedWidget_setVdata(VirtualQStackedWidget* self, void* vdata);

VirtualQStackedWidget* QStackedWidget_new(const QStackedWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQStackedWidget* QStackedWidget_new2(const QStackedWidget_VTable* vtbl, void* vdata);

void QStackedWidget_virtbase(QStackedWidget* src, QFrame** outptr_QFrame);
QMetaObject* QStackedWidget_metaObject(const QStackedWidget* self);
void* QStackedWidget_metacast(QStackedWidget* self, const char* param1);
int QStackedWidget_metacall(QStackedWidget* self, int param1, int param2, void** param3);
struct miqt_string QStackedWidget_tr(const char* s);
struct miqt_string QStackedWidget_trUtf8(const char* s);
int QStackedWidget_addWidget(QStackedWidget* self, QWidget* w);
int QStackedWidget_insertWidget(QStackedWidget* self, int index, QWidget* w);
void QStackedWidget_removeWidget(QStackedWidget* self, QWidget* w);
QWidget* QStackedWidget_currentWidget(const QStackedWidget* self);
int QStackedWidget_currentIndex(const QStackedWidget* self);
int QStackedWidget_indexOf(const QStackedWidget* self, QWidget* param1);
QWidget* QStackedWidget_widget(const QStackedWidget* self, int param1);
int QStackedWidget_count(const QStackedWidget* self);
void QStackedWidget_setCurrentIndex(QStackedWidget* self, int index);
void QStackedWidget_setCurrentWidget(QStackedWidget* self, QWidget* w);
void QStackedWidget_currentChanged(QStackedWidget* self, int param1);
void QStackedWidget_connect_currentChanged(VirtualQStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QStackedWidget_widgetRemoved(QStackedWidget* self, int index);
void QStackedWidget_connect_widgetRemoved(VirtualQStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QStackedWidget_event(QStackedWidget* self, QEvent* e);
struct miqt_string QStackedWidget_tr2(const char* s, const char* c);
struct miqt_string QStackedWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QStackedWidget_trUtf82(const char* s, const char* c);
struct miqt_string QStackedWidget_trUtf83(const char* s, const char* c, int n);

QMetaObject* QStackedWidget_virtualbase_metaObject(const VirtualQStackedWidget* self);
void* QStackedWidget_virtualbase_metacast(VirtualQStackedWidget* self, const char* param1);
int QStackedWidget_virtualbase_metacall(VirtualQStackedWidget* self, int param1, int param2, void** param3);
bool QStackedWidget_virtualbase_event(VirtualQStackedWidget* self, QEvent* e);
QSize* QStackedWidget_virtualbase_sizeHint(const VirtualQStackedWidget* self);
void QStackedWidget_virtualbase_paintEvent(VirtualQStackedWidget* self, QPaintEvent* param1);
void QStackedWidget_virtualbase_changeEvent(VirtualQStackedWidget* self, QEvent* param1);
int QStackedWidget_virtualbase_devType(const VirtualQStackedWidget* self);
void QStackedWidget_virtualbase_setVisible(VirtualQStackedWidget* self, bool visible);
QSize* QStackedWidget_virtualbase_minimumSizeHint(const VirtualQStackedWidget* self);
int QStackedWidget_virtualbase_heightForWidth(const VirtualQStackedWidget* self, int param1);
bool QStackedWidget_virtualbase_hasHeightForWidth(const VirtualQStackedWidget* self);
QPaintEngine* QStackedWidget_virtualbase_paintEngine(const VirtualQStackedWidget* self);
void QStackedWidget_virtualbase_mousePressEvent(VirtualQStackedWidget* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseReleaseEvent(VirtualQStackedWidget* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseDoubleClickEvent(VirtualQStackedWidget* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseMoveEvent(VirtualQStackedWidget* self, QMouseEvent* event);
void QStackedWidget_virtualbase_wheelEvent(VirtualQStackedWidget* self, QWheelEvent* event);
void QStackedWidget_virtualbase_keyPressEvent(VirtualQStackedWidget* self, QKeyEvent* event);
void QStackedWidget_virtualbase_keyReleaseEvent(VirtualQStackedWidget* self, QKeyEvent* event);
void QStackedWidget_virtualbase_focusInEvent(VirtualQStackedWidget* self, QFocusEvent* event);
void QStackedWidget_virtualbase_focusOutEvent(VirtualQStackedWidget* self, QFocusEvent* event);
void QStackedWidget_virtualbase_enterEvent(VirtualQStackedWidget* self, QEvent* event);
void QStackedWidget_virtualbase_leaveEvent(VirtualQStackedWidget* self, QEvent* event);
void QStackedWidget_virtualbase_moveEvent(VirtualQStackedWidget* self, QMoveEvent* event);
void QStackedWidget_virtualbase_resizeEvent(VirtualQStackedWidget* self, QResizeEvent* event);
void QStackedWidget_virtualbase_closeEvent(VirtualQStackedWidget* self, QCloseEvent* event);
void QStackedWidget_virtualbase_contextMenuEvent(VirtualQStackedWidget* self, QContextMenuEvent* event);
void QStackedWidget_virtualbase_tabletEvent(VirtualQStackedWidget* self, QTabletEvent* event);
void QStackedWidget_virtualbase_actionEvent(VirtualQStackedWidget* self, QActionEvent* event);
void QStackedWidget_virtualbase_dragEnterEvent(VirtualQStackedWidget* self, QDragEnterEvent* event);
void QStackedWidget_virtualbase_dragMoveEvent(VirtualQStackedWidget* self, QDragMoveEvent* event);
void QStackedWidget_virtualbase_dragLeaveEvent(VirtualQStackedWidget* self, QDragLeaveEvent* event);
void QStackedWidget_virtualbase_dropEvent(VirtualQStackedWidget* self, QDropEvent* event);
void QStackedWidget_virtualbase_showEvent(VirtualQStackedWidget* self, QShowEvent* event);
void QStackedWidget_virtualbase_hideEvent(VirtualQStackedWidget* self, QHideEvent* event);
bool QStackedWidget_virtualbase_nativeEvent(VirtualQStackedWidget* self, struct miqt_string eventType, void* message, long* result);
int QStackedWidget_virtualbase_metric(const VirtualQStackedWidget* self, int param1);
void QStackedWidget_virtualbase_initPainter(const VirtualQStackedWidget* self, QPainter* painter);
QPaintDevice* QStackedWidget_virtualbase_redirected(const VirtualQStackedWidget* self, QPoint* offset);
QPainter* QStackedWidget_virtualbase_sharedPainter(const VirtualQStackedWidget* self);
void QStackedWidget_virtualbase_inputMethodEvent(VirtualQStackedWidget* self, QInputMethodEvent* param1);
QVariant* QStackedWidget_virtualbase_inputMethodQuery(const VirtualQStackedWidget* self, int param1);
bool QStackedWidget_virtualbase_focusNextPrevChild(VirtualQStackedWidget* self, bool next);
bool QStackedWidget_virtualbase_eventFilter(VirtualQStackedWidget* self, QObject* watched, QEvent* event);
void QStackedWidget_virtualbase_timerEvent(VirtualQStackedWidget* self, QTimerEvent* event);
void QStackedWidget_virtualbase_childEvent(VirtualQStackedWidget* self, QChildEvent* event);
void QStackedWidget_virtualbase_customEvent(VirtualQStackedWidget* self, QEvent* event);
void QStackedWidget_virtualbase_connectNotify(VirtualQStackedWidget* self, QMetaMethod* signal);
void QStackedWidget_virtualbase_disconnectNotify(VirtualQStackedWidget* self, QMetaMethod* signal);

void QStackedWidget_protectedbase_drawFrame(VirtualQStackedWidget* self, QPainter* param1);
void QStackedWidget_protectedbase_initStyleOption(const VirtualQStackedWidget* self, QStyleOptionFrame* option);
void QStackedWidget_protectedbase_updateMicroFocus(VirtualQStackedWidget* self);
void QStackedWidget_protectedbase_create(VirtualQStackedWidget* self);
void QStackedWidget_protectedbase_destroy(VirtualQStackedWidget* self);
bool QStackedWidget_protectedbase_focusNextChild(VirtualQStackedWidget* self);
bool QStackedWidget_protectedbase_focusPreviousChild(VirtualQStackedWidget* self);
QObject* QStackedWidget_protectedbase_sender(const VirtualQStackedWidget* self);
int QStackedWidget_protectedbase_senderSignalIndex(const VirtualQStackedWidget* self);
int QStackedWidget_protectedbase_receivers(const VirtualQStackedWidget* self, const char* signal);
bool QStackedWidget_protectedbase_isSignalConnected(const VirtualQStackedWidget* self, QMetaMethod* signal);

const QMetaObject* QStackedWidget_staticMetaObject();
void QStackedWidget_delete(QStackedWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
