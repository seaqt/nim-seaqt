#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFOCUSFRAME_H
#define SEAQT_QTWIDGETS_GEN_QFOCUSFRAME_H

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
class QFocusFrame;
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
class QStyleOption;
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
typedef struct QFocusFrame QFocusFrame;
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
typedef struct QStyleOption QStyleOption;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQFocusFrame VirtualQFocusFrame;
typedef struct QFocusFrame_VTable{
	void (*destructor)(VirtualQFocusFrame* self);
	QMetaObject* (*metaObject)(const VirtualQFocusFrame* self);
	void* (*metacast)(VirtualQFocusFrame* self, const char* param1);
	int (*metacall)(VirtualQFocusFrame* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQFocusFrame* self, QEvent* e);
	bool (*eventFilter)(VirtualQFocusFrame* self, QObject* param1, QEvent* param2);
	void (*paintEvent)(VirtualQFocusFrame* self, QPaintEvent* param1);
	int (*devType)(const VirtualQFocusFrame* self);
	void (*setVisible)(VirtualQFocusFrame* self, bool visible);
	QSize* (*sizeHint)(const VirtualQFocusFrame* self);
	QSize* (*minimumSizeHint)(const VirtualQFocusFrame* self);
	int (*heightForWidth)(const VirtualQFocusFrame* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQFocusFrame* self);
	QPaintEngine* (*paintEngine)(const VirtualQFocusFrame* self);
	void (*mousePressEvent)(VirtualQFocusFrame* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQFocusFrame* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQFocusFrame* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQFocusFrame* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQFocusFrame* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQFocusFrame* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQFocusFrame* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQFocusFrame* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQFocusFrame* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQFocusFrame* self, QEvent* event);
	void (*leaveEvent)(VirtualQFocusFrame* self, QEvent* event);
	void (*moveEvent)(VirtualQFocusFrame* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQFocusFrame* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQFocusFrame* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQFocusFrame* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQFocusFrame* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQFocusFrame* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQFocusFrame* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQFocusFrame* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQFocusFrame* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQFocusFrame* self, QDropEvent* event);
	void (*showEvent)(VirtualQFocusFrame* self, QShowEvent* event);
	void (*hideEvent)(VirtualQFocusFrame* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQFocusFrame* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQFocusFrame* self, QEvent* param1);
	int (*metric)(const VirtualQFocusFrame* self, int param1);
	void (*initPainter)(const VirtualQFocusFrame* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQFocusFrame* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQFocusFrame* self);
	void (*inputMethodEvent)(VirtualQFocusFrame* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQFocusFrame* self, int param1);
	bool (*focusNextPrevChild)(VirtualQFocusFrame* self, bool next);
	void (*timerEvent)(VirtualQFocusFrame* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFocusFrame* self, QChildEvent* event);
	void (*customEvent)(VirtualQFocusFrame* self, QEvent* event);
	void (*connectNotify)(VirtualQFocusFrame* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFocusFrame* self, QMetaMethod* signal);
}QFocusFrame_VTable;

const QFocusFrame_VTable* QFocusFrame_vtbl(const VirtualQFocusFrame* self);
void* QFocusFrame_vdata(const VirtualQFocusFrame* self);
void QFocusFrame_setVdata(VirtualQFocusFrame* self, void* vdata);

VirtualQFocusFrame* QFocusFrame_new(const QFocusFrame_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFocusFrame* QFocusFrame_new2(const QFocusFrame_VTable* vtbl, void* vdata);

void QFocusFrame_virtbase(QFocusFrame* src, QWidget** outptr_QWidget);
QMetaObject* QFocusFrame_metaObject(const QFocusFrame* self);
void* QFocusFrame_metacast(QFocusFrame* self, const char* param1);
int QFocusFrame_metacall(QFocusFrame* self, int param1, int param2, void** param3);
struct miqt_string QFocusFrame_tr(const char* s);
struct miqt_string QFocusFrame_trUtf8(const char* s);
void QFocusFrame_setWidget(QFocusFrame* self, QWidget* widget);
QWidget* QFocusFrame_widget(const QFocusFrame* self);
bool QFocusFrame_event(QFocusFrame* self, QEvent* e);
bool QFocusFrame_eventFilter(QFocusFrame* self, QObject* param1, QEvent* param2);
void QFocusFrame_paintEvent(QFocusFrame* self, QPaintEvent* param1);
struct miqt_string QFocusFrame_tr2(const char* s, const char* c);
struct miqt_string QFocusFrame_tr3(const char* s, const char* c, int n);
struct miqt_string QFocusFrame_trUtf82(const char* s, const char* c);
struct miqt_string QFocusFrame_trUtf83(const char* s, const char* c, int n);

QMetaObject* QFocusFrame_virtualbase_metaObject(const VirtualQFocusFrame* self);
void* QFocusFrame_virtualbase_metacast(VirtualQFocusFrame* self, const char* param1);
int QFocusFrame_virtualbase_metacall(VirtualQFocusFrame* self, int param1, int param2, void** param3);
bool QFocusFrame_virtualbase_event(VirtualQFocusFrame* self, QEvent* e);
bool QFocusFrame_virtualbase_eventFilter(VirtualQFocusFrame* self, QObject* param1, QEvent* param2);
void QFocusFrame_virtualbase_paintEvent(VirtualQFocusFrame* self, QPaintEvent* param1);
int QFocusFrame_virtualbase_devType(const VirtualQFocusFrame* self);
void QFocusFrame_virtualbase_setVisible(VirtualQFocusFrame* self, bool visible);
QSize* QFocusFrame_virtualbase_sizeHint(const VirtualQFocusFrame* self);
QSize* QFocusFrame_virtualbase_minimumSizeHint(const VirtualQFocusFrame* self);
int QFocusFrame_virtualbase_heightForWidth(const VirtualQFocusFrame* self, int param1);
bool QFocusFrame_virtualbase_hasHeightForWidth(const VirtualQFocusFrame* self);
QPaintEngine* QFocusFrame_virtualbase_paintEngine(const VirtualQFocusFrame* self);
void QFocusFrame_virtualbase_mousePressEvent(VirtualQFocusFrame* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseReleaseEvent(VirtualQFocusFrame* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseDoubleClickEvent(VirtualQFocusFrame* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseMoveEvent(VirtualQFocusFrame* self, QMouseEvent* event);
void QFocusFrame_virtualbase_wheelEvent(VirtualQFocusFrame* self, QWheelEvent* event);
void QFocusFrame_virtualbase_keyPressEvent(VirtualQFocusFrame* self, QKeyEvent* event);
void QFocusFrame_virtualbase_keyReleaseEvent(VirtualQFocusFrame* self, QKeyEvent* event);
void QFocusFrame_virtualbase_focusInEvent(VirtualQFocusFrame* self, QFocusEvent* event);
void QFocusFrame_virtualbase_focusOutEvent(VirtualQFocusFrame* self, QFocusEvent* event);
void QFocusFrame_virtualbase_enterEvent(VirtualQFocusFrame* self, QEvent* event);
void QFocusFrame_virtualbase_leaveEvent(VirtualQFocusFrame* self, QEvent* event);
void QFocusFrame_virtualbase_moveEvent(VirtualQFocusFrame* self, QMoveEvent* event);
void QFocusFrame_virtualbase_resizeEvent(VirtualQFocusFrame* self, QResizeEvent* event);
void QFocusFrame_virtualbase_closeEvent(VirtualQFocusFrame* self, QCloseEvent* event);
void QFocusFrame_virtualbase_contextMenuEvent(VirtualQFocusFrame* self, QContextMenuEvent* event);
void QFocusFrame_virtualbase_tabletEvent(VirtualQFocusFrame* self, QTabletEvent* event);
void QFocusFrame_virtualbase_actionEvent(VirtualQFocusFrame* self, QActionEvent* event);
void QFocusFrame_virtualbase_dragEnterEvent(VirtualQFocusFrame* self, QDragEnterEvent* event);
void QFocusFrame_virtualbase_dragMoveEvent(VirtualQFocusFrame* self, QDragMoveEvent* event);
void QFocusFrame_virtualbase_dragLeaveEvent(VirtualQFocusFrame* self, QDragLeaveEvent* event);
void QFocusFrame_virtualbase_dropEvent(VirtualQFocusFrame* self, QDropEvent* event);
void QFocusFrame_virtualbase_showEvent(VirtualQFocusFrame* self, QShowEvent* event);
void QFocusFrame_virtualbase_hideEvent(VirtualQFocusFrame* self, QHideEvent* event);
bool QFocusFrame_virtualbase_nativeEvent(VirtualQFocusFrame* self, struct miqt_string eventType, void* message, long* result);
void QFocusFrame_virtualbase_changeEvent(VirtualQFocusFrame* self, QEvent* param1);
int QFocusFrame_virtualbase_metric(const VirtualQFocusFrame* self, int param1);
void QFocusFrame_virtualbase_initPainter(const VirtualQFocusFrame* self, QPainter* painter);
QPaintDevice* QFocusFrame_virtualbase_redirected(const VirtualQFocusFrame* self, QPoint* offset);
QPainter* QFocusFrame_virtualbase_sharedPainter(const VirtualQFocusFrame* self);
void QFocusFrame_virtualbase_inputMethodEvent(VirtualQFocusFrame* self, QInputMethodEvent* param1);
QVariant* QFocusFrame_virtualbase_inputMethodQuery(const VirtualQFocusFrame* self, int param1);
bool QFocusFrame_virtualbase_focusNextPrevChild(VirtualQFocusFrame* self, bool next);
void QFocusFrame_virtualbase_timerEvent(VirtualQFocusFrame* self, QTimerEvent* event);
void QFocusFrame_virtualbase_childEvent(VirtualQFocusFrame* self, QChildEvent* event);
void QFocusFrame_virtualbase_customEvent(VirtualQFocusFrame* self, QEvent* event);
void QFocusFrame_virtualbase_connectNotify(VirtualQFocusFrame* self, QMetaMethod* signal);
void QFocusFrame_virtualbase_disconnectNotify(VirtualQFocusFrame* self, QMetaMethod* signal);

void QFocusFrame_protectedbase_initStyleOption(const VirtualQFocusFrame* self, QStyleOption* option);
void QFocusFrame_protectedbase_updateMicroFocus(VirtualQFocusFrame* self);
void QFocusFrame_protectedbase_create(VirtualQFocusFrame* self);
void QFocusFrame_protectedbase_destroy(VirtualQFocusFrame* self);
bool QFocusFrame_protectedbase_focusNextChild(VirtualQFocusFrame* self);
bool QFocusFrame_protectedbase_focusPreviousChild(VirtualQFocusFrame* self);
QObject* QFocusFrame_protectedbase_sender(const VirtualQFocusFrame* self);
int QFocusFrame_protectedbase_senderSignalIndex(const VirtualQFocusFrame* self);
int QFocusFrame_protectedbase_receivers(const VirtualQFocusFrame* self, const char* signal);
bool QFocusFrame_protectedbase_isSignalConnected(const VirtualQFocusFrame* self, QMetaMethod* signal);

const QMetaObject* QFocusFrame_staticMetaObject();
void QFocusFrame_delete(QFocusFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
