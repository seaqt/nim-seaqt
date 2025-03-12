#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSCROLLBAR_H
#define SEAQT_QTWIDGETS_GEN_QSCROLLBAR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSlider;
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
class QScrollBar;
class QShowEvent;
class QSize;
class QStyleOptionSlider;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractSlider QAbstractSlider;
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
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQScrollBar VirtualQScrollBar;
typedef struct QScrollBar_VTable{
	void (*destructor)(VirtualQScrollBar* self);
	QMetaObject* (*metaObject)(const VirtualQScrollBar* self);
	void* (*metacast)(VirtualQScrollBar* self, const char* param1);
	int (*metacall)(VirtualQScrollBar* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQScrollBar* self);
	bool (*event)(VirtualQScrollBar* self, QEvent* event);
	void (*wheelEvent)(VirtualQScrollBar* self, QWheelEvent* param1);
	void (*paintEvent)(VirtualQScrollBar* self, QPaintEvent* param1);
	void (*mousePressEvent)(VirtualQScrollBar* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQScrollBar* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQScrollBar* self, QMouseEvent* param1);
	void (*hideEvent)(VirtualQScrollBar* self, QHideEvent* param1);
	void (*sliderChange)(VirtualQScrollBar* self, int change);
	void (*contextMenuEvent)(VirtualQScrollBar* self, QContextMenuEvent* param1);
	void (*initStyleOption)(const VirtualQScrollBar* self, QStyleOptionSlider* option);
	void (*keyPressEvent)(VirtualQScrollBar* self, QKeyEvent* ev);
	void (*timerEvent)(VirtualQScrollBar* self, QTimerEvent* param1);
	void (*changeEvent)(VirtualQScrollBar* self, QEvent* e);
	int (*devType)(const VirtualQScrollBar* self);
	void (*setVisible)(VirtualQScrollBar* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQScrollBar* self);
	int (*heightForWidth)(const VirtualQScrollBar* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQScrollBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQScrollBar* self);
	void (*mouseDoubleClickEvent)(VirtualQScrollBar* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQScrollBar* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQScrollBar* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQScrollBar* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQScrollBar* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQScrollBar* self, QEvent* event);
	void (*moveEvent)(VirtualQScrollBar* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQScrollBar* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQScrollBar* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQScrollBar* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQScrollBar* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQScrollBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQScrollBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQScrollBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQScrollBar* self, QDropEvent* event);
	void (*showEvent)(VirtualQScrollBar* self, QShowEvent* event);
	bool (*nativeEvent)(VirtualQScrollBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQScrollBar* self, int param1);
	void (*initPainter)(const VirtualQScrollBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQScrollBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQScrollBar* self);
	void (*inputMethodEvent)(VirtualQScrollBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQScrollBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQScrollBar* self, bool next);
	bool (*eventFilter)(VirtualQScrollBar* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQScrollBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQScrollBar* self, QEvent* event);
	void (*connectNotify)(VirtualQScrollBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQScrollBar* self, QMetaMethod* signal);
}QScrollBar_VTable;

const QScrollBar_VTable* QScrollBar_vtbl(const VirtualQScrollBar* self);
void* QScrollBar_vdata(const VirtualQScrollBar* self);
void QScrollBar_setVdata(VirtualQScrollBar* self, void* vdata);

VirtualQScrollBar* QScrollBar_new(const QScrollBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQScrollBar* QScrollBar_new2(const QScrollBar_VTable* vtbl, void* vdata);
VirtualQScrollBar* QScrollBar_new3(const QScrollBar_VTable* vtbl, void* vdata, int param1);
VirtualQScrollBar* QScrollBar_new4(const QScrollBar_VTable* vtbl, void* vdata, int param1, QWidget* parent);

void QScrollBar_virtbase(QScrollBar* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QScrollBar_metaObject(const QScrollBar* self);
void* QScrollBar_metacast(QScrollBar* self, const char* param1);
int QScrollBar_metacall(QScrollBar* self, int param1, int param2, void** param3);
struct miqt_string QScrollBar_tr(const char* s);
QSize* QScrollBar_sizeHint(const QScrollBar* self);
bool QScrollBar_event(QScrollBar* self, QEvent* event);
void QScrollBar_wheelEvent(QScrollBar* self, QWheelEvent* param1);
void QScrollBar_paintEvent(QScrollBar* self, QPaintEvent* param1);
void QScrollBar_mousePressEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_mouseReleaseEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_mouseMoveEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_hideEvent(QScrollBar* self, QHideEvent* param1);
void QScrollBar_sliderChange(QScrollBar* self, int change);
void QScrollBar_contextMenuEvent(QScrollBar* self, QContextMenuEvent* param1);
void QScrollBar_initStyleOption(const QScrollBar* self, QStyleOptionSlider* option);
struct miqt_string QScrollBar_tr2(const char* s, const char* c);
struct miqt_string QScrollBar_tr3(const char* s, const char* c, int n);

QMetaObject* QScrollBar_virtualbase_metaObject(const VirtualQScrollBar* self);
void* QScrollBar_virtualbase_metacast(VirtualQScrollBar* self, const char* param1);
int QScrollBar_virtualbase_metacall(VirtualQScrollBar* self, int param1, int param2, void** param3);
QSize* QScrollBar_virtualbase_sizeHint(const VirtualQScrollBar* self);
bool QScrollBar_virtualbase_event(VirtualQScrollBar* self, QEvent* event);
void QScrollBar_virtualbase_wheelEvent(VirtualQScrollBar* self, QWheelEvent* param1);
void QScrollBar_virtualbase_paintEvent(VirtualQScrollBar* self, QPaintEvent* param1);
void QScrollBar_virtualbase_mousePressEvent(VirtualQScrollBar* self, QMouseEvent* param1);
void QScrollBar_virtualbase_mouseReleaseEvent(VirtualQScrollBar* self, QMouseEvent* param1);
void QScrollBar_virtualbase_mouseMoveEvent(VirtualQScrollBar* self, QMouseEvent* param1);
void QScrollBar_virtualbase_hideEvent(VirtualQScrollBar* self, QHideEvent* param1);
void QScrollBar_virtualbase_sliderChange(VirtualQScrollBar* self, int change);
void QScrollBar_virtualbase_contextMenuEvent(VirtualQScrollBar* self, QContextMenuEvent* param1);
void QScrollBar_virtualbase_initStyleOption(const VirtualQScrollBar* self, QStyleOptionSlider* option);
void QScrollBar_virtualbase_keyPressEvent(VirtualQScrollBar* self, QKeyEvent* ev);
void QScrollBar_virtualbase_timerEvent(VirtualQScrollBar* self, QTimerEvent* param1);
void QScrollBar_virtualbase_changeEvent(VirtualQScrollBar* self, QEvent* e);
int QScrollBar_virtualbase_devType(const VirtualQScrollBar* self);
void QScrollBar_virtualbase_setVisible(VirtualQScrollBar* self, bool visible);
QSize* QScrollBar_virtualbase_minimumSizeHint(const VirtualQScrollBar* self);
int QScrollBar_virtualbase_heightForWidth(const VirtualQScrollBar* self, int param1);
bool QScrollBar_virtualbase_hasHeightForWidth(const VirtualQScrollBar* self);
QPaintEngine* QScrollBar_virtualbase_paintEngine(const VirtualQScrollBar* self);
void QScrollBar_virtualbase_mouseDoubleClickEvent(VirtualQScrollBar* self, QMouseEvent* event);
void QScrollBar_virtualbase_keyReleaseEvent(VirtualQScrollBar* self, QKeyEvent* event);
void QScrollBar_virtualbase_focusInEvent(VirtualQScrollBar* self, QFocusEvent* event);
void QScrollBar_virtualbase_focusOutEvent(VirtualQScrollBar* self, QFocusEvent* event);
void QScrollBar_virtualbase_enterEvent(VirtualQScrollBar* self, QEnterEvent* event);
void QScrollBar_virtualbase_leaveEvent(VirtualQScrollBar* self, QEvent* event);
void QScrollBar_virtualbase_moveEvent(VirtualQScrollBar* self, QMoveEvent* event);
void QScrollBar_virtualbase_resizeEvent(VirtualQScrollBar* self, QResizeEvent* event);
void QScrollBar_virtualbase_closeEvent(VirtualQScrollBar* self, QCloseEvent* event);
void QScrollBar_virtualbase_tabletEvent(VirtualQScrollBar* self, QTabletEvent* event);
void QScrollBar_virtualbase_actionEvent(VirtualQScrollBar* self, QActionEvent* event);
void QScrollBar_virtualbase_dragEnterEvent(VirtualQScrollBar* self, QDragEnterEvent* event);
void QScrollBar_virtualbase_dragMoveEvent(VirtualQScrollBar* self, QDragMoveEvent* event);
void QScrollBar_virtualbase_dragLeaveEvent(VirtualQScrollBar* self, QDragLeaveEvent* event);
void QScrollBar_virtualbase_dropEvent(VirtualQScrollBar* self, QDropEvent* event);
void QScrollBar_virtualbase_showEvent(VirtualQScrollBar* self, QShowEvent* event);
bool QScrollBar_virtualbase_nativeEvent(VirtualQScrollBar* self, struct miqt_string eventType, void* message, intptr_t* result);
int QScrollBar_virtualbase_metric(const VirtualQScrollBar* self, int param1);
void QScrollBar_virtualbase_initPainter(const VirtualQScrollBar* self, QPainter* painter);
QPaintDevice* QScrollBar_virtualbase_redirected(const VirtualQScrollBar* self, QPoint* offset);
QPainter* QScrollBar_virtualbase_sharedPainter(const VirtualQScrollBar* self);
void QScrollBar_virtualbase_inputMethodEvent(VirtualQScrollBar* self, QInputMethodEvent* param1);
QVariant* QScrollBar_virtualbase_inputMethodQuery(const VirtualQScrollBar* self, int param1);
bool QScrollBar_virtualbase_focusNextPrevChild(VirtualQScrollBar* self, bool next);
bool QScrollBar_virtualbase_eventFilter(VirtualQScrollBar* self, QObject* watched, QEvent* event);
void QScrollBar_virtualbase_childEvent(VirtualQScrollBar* self, QChildEvent* event);
void QScrollBar_virtualbase_customEvent(VirtualQScrollBar* self, QEvent* event);
void QScrollBar_virtualbase_connectNotify(VirtualQScrollBar* self, QMetaMethod* signal);
void QScrollBar_virtualbase_disconnectNotify(VirtualQScrollBar* self, QMetaMethod* signal);

void QScrollBar_protectedbase_setRepeatAction(VirtualQScrollBar* self, int action);
int QScrollBar_protectedbase_repeatAction(const VirtualQScrollBar* self);
void QScrollBar_protectedbase_updateMicroFocus(VirtualQScrollBar* self);
void QScrollBar_protectedbase_create(VirtualQScrollBar* self);
void QScrollBar_protectedbase_destroy(VirtualQScrollBar* self);
bool QScrollBar_protectedbase_focusNextChild(VirtualQScrollBar* self);
bool QScrollBar_protectedbase_focusPreviousChild(VirtualQScrollBar* self);
QObject* QScrollBar_protectedbase_sender(const VirtualQScrollBar* self);
int QScrollBar_protectedbase_senderSignalIndex(const VirtualQScrollBar* self);
int QScrollBar_protectedbase_receivers(const VirtualQScrollBar* self, const char* signal);
bool QScrollBar_protectedbase_isSignalConnected(const VirtualQScrollBar* self, QMetaMethod* signal);

const QMetaObject* QScrollBar_staticMetaObject();
void QScrollBar_delete(QScrollBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
