#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIAL_H
#define SEAQT_QTWIDGETS_GEN_QDIAL_H

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
class QDial;
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
typedef struct QDial QDial;
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
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDial VirtualQDial;
typedef struct QDial_VTable{
	void (*destructor)(VirtualQDial* self);
	QMetaObject* (*metaObject)(const VirtualQDial* self);
	void* (*metacast)(VirtualQDial* self, const char* param1);
	int (*metacall)(VirtualQDial* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQDial* self);
	QSize* (*minimumSizeHint)(const VirtualQDial* self);
	bool (*event)(VirtualQDial* self, QEvent* e);
	void (*resizeEvent)(VirtualQDial* self, QResizeEvent* re);
	void (*paintEvent)(VirtualQDial* self, QPaintEvent* pe);
	void (*mousePressEvent)(VirtualQDial* self, QMouseEvent* me);
	void (*mouseReleaseEvent)(VirtualQDial* self, QMouseEvent* me);
	void (*mouseMoveEvent)(VirtualQDial* self, QMouseEvent* me);
	void (*sliderChange)(VirtualQDial* self, int change);
	void (*initStyleOption)(const VirtualQDial* self, QStyleOptionSlider* option);
	void (*keyPressEvent)(VirtualQDial* self, QKeyEvent* ev);
	void (*timerEvent)(VirtualQDial* self, QTimerEvent* param1);
	void (*wheelEvent)(VirtualQDial* self, QWheelEvent* e);
	void (*changeEvent)(VirtualQDial* self, QEvent* e);
	int (*devType)(const VirtualQDial* self);
	void (*setVisible)(VirtualQDial* self, bool visible);
	int (*heightForWidth)(const VirtualQDial* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDial* self);
	QPaintEngine* (*paintEngine)(const VirtualQDial* self);
	void (*mouseDoubleClickEvent)(VirtualQDial* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQDial* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDial* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDial* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDial* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQDial* self, QEvent* event);
	void (*moveEvent)(VirtualQDial* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQDial* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDial* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDial* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDial* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDial* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDial* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDial* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDial* self, QDropEvent* event);
	void (*showEvent)(VirtualQDial* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDial* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDial* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQDial* self, int param1);
	void (*initPainter)(const VirtualQDial* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDial* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDial* self);
	void (*inputMethodEvent)(VirtualQDial* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDial* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDial* self, bool next);
	bool (*eventFilter)(VirtualQDial* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQDial* self, QChildEvent* event);
	void (*customEvent)(VirtualQDial* self, QEvent* event);
	void (*connectNotify)(VirtualQDial* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDial* self, QMetaMethod* signal);
}QDial_VTable;

const QDial_VTable* QDial_vtbl(const VirtualQDial* self);
void* QDial_vdata(const VirtualQDial* self);
void QDial_setVdata(VirtualQDial* self, void* vdata);

VirtualQDial* QDial_new(const QDial_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQDial* QDial_new2(const QDial_VTable* vtbl, void* vdata);

void QDial_virtbase(QDial* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QDial_metaObject(const QDial* self);
void* QDial_metacast(QDial* self, const char* param1);
int QDial_metacall(QDial* self, int param1, int param2, void** param3);
struct miqt_string QDial_tr(const char* s);
bool QDial_wrapping(const QDial* self);
int QDial_notchSize(const QDial* self);
void QDial_setNotchTarget(QDial* self, double target);
double QDial_notchTarget(const QDial* self);
bool QDial_notchesVisible(const QDial* self);
QSize* QDial_sizeHint(const QDial* self);
QSize* QDial_minimumSizeHint(const QDial* self);
void QDial_setNotchesVisible(QDial* self, bool visible);
void QDial_setWrapping(QDial* self, bool on);
bool QDial_event(QDial* self, QEvent* e);
void QDial_resizeEvent(QDial* self, QResizeEvent* re);
void QDial_paintEvent(QDial* self, QPaintEvent* pe);
void QDial_mousePressEvent(QDial* self, QMouseEvent* me);
void QDial_mouseReleaseEvent(QDial* self, QMouseEvent* me);
void QDial_mouseMoveEvent(QDial* self, QMouseEvent* me);
void QDial_sliderChange(QDial* self, int change);
void QDial_initStyleOption(const QDial* self, QStyleOptionSlider* option);
struct miqt_string QDial_tr2(const char* s, const char* c);
struct miqt_string QDial_tr3(const char* s, const char* c, int n);

QMetaObject* QDial_virtualbase_metaObject(const VirtualQDial* self);
void* QDial_virtualbase_metacast(VirtualQDial* self, const char* param1);
int QDial_virtualbase_metacall(VirtualQDial* self, int param1, int param2, void** param3);
QSize* QDial_virtualbase_sizeHint(const VirtualQDial* self);
QSize* QDial_virtualbase_minimumSizeHint(const VirtualQDial* self);
bool QDial_virtualbase_event(VirtualQDial* self, QEvent* e);
void QDial_virtualbase_resizeEvent(VirtualQDial* self, QResizeEvent* re);
void QDial_virtualbase_paintEvent(VirtualQDial* self, QPaintEvent* pe);
void QDial_virtualbase_mousePressEvent(VirtualQDial* self, QMouseEvent* me);
void QDial_virtualbase_mouseReleaseEvent(VirtualQDial* self, QMouseEvent* me);
void QDial_virtualbase_mouseMoveEvent(VirtualQDial* self, QMouseEvent* me);
void QDial_virtualbase_sliderChange(VirtualQDial* self, int change);
void QDial_virtualbase_initStyleOption(const VirtualQDial* self, QStyleOptionSlider* option);
void QDial_virtualbase_keyPressEvent(VirtualQDial* self, QKeyEvent* ev);
void QDial_virtualbase_timerEvent(VirtualQDial* self, QTimerEvent* param1);
void QDial_virtualbase_wheelEvent(VirtualQDial* self, QWheelEvent* e);
void QDial_virtualbase_changeEvent(VirtualQDial* self, QEvent* e);
int QDial_virtualbase_devType(const VirtualQDial* self);
void QDial_virtualbase_setVisible(VirtualQDial* self, bool visible);
int QDial_virtualbase_heightForWidth(const VirtualQDial* self, int param1);
bool QDial_virtualbase_hasHeightForWidth(const VirtualQDial* self);
QPaintEngine* QDial_virtualbase_paintEngine(const VirtualQDial* self);
void QDial_virtualbase_mouseDoubleClickEvent(VirtualQDial* self, QMouseEvent* event);
void QDial_virtualbase_keyReleaseEvent(VirtualQDial* self, QKeyEvent* event);
void QDial_virtualbase_focusInEvent(VirtualQDial* self, QFocusEvent* event);
void QDial_virtualbase_focusOutEvent(VirtualQDial* self, QFocusEvent* event);
void QDial_virtualbase_enterEvent(VirtualQDial* self, QEnterEvent* event);
void QDial_virtualbase_leaveEvent(VirtualQDial* self, QEvent* event);
void QDial_virtualbase_moveEvent(VirtualQDial* self, QMoveEvent* event);
void QDial_virtualbase_closeEvent(VirtualQDial* self, QCloseEvent* event);
void QDial_virtualbase_contextMenuEvent(VirtualQDial* self, QContextMenuEvent* event);
void QDial_virtualbase_tabletEvent(VirtualQDial* self, QTabletEvent* event);
void QDial_virtualbase_actionEvent(VirtualQDial* self, QActionEvent* event);
void QDial_virtualbase_dragEnterEvent(VirtualQDial* self, QDragEnterEvent* event);
void QDial_virtualbase_dragMoveEvent(VirtualQDial* self, QDragMoveEvent* event);
void QDial_virtualbase_dragLeaveEvent(VirtualQDial* self, QDragLeaveEvent* event);
void QDial_virtualbase_dropEvent(VirtualQDial* self, QDropEvent* event);
void QDial_virtualbase_showEvent(VirtualQDial* self, QShowEvent* event);
void QDial_virtualbase_hideEvent(VirtualQDial* self, QHideEvent* event);
bool QDial_virtualbase_nativeEvent(VirtualQDial* self, struct miqt_string eventType, void* message, intptr_t* result);
int QDial_virtualbase_metric(const VirtualQDial* self, int param1);
void QDial_virtualbase_initPainter(const VirtualQDial* self, QPainter* painter);
QPaintDevice* QDial_virtualbase_redirected(const VirtualQDial* self, QPoint* offset);
QPainter* QDial_virtualbase_sharedPainter(const VirtualQDial* self);
void QDial_virtualbase_inputMethodEvent(VirtualQDial* self, QInputMethodEvent* param1);
QVariant* QDial_virtualbase_inputMethodQuery(const VirtualQDial* self, int param1);
bool QDial_virtualbase_focusNextPrevChild(VirtualQDial* self, bool next);
bool QDial_virtualbase_eventFilter(VirtualQDial* self, QObject* watched, QEvent* event);
void QDial_virtualbase_childEvent(VirtualQDial* self, QChildEvent* event);
void QDial_virtualbase_customEvent(VirtualQDial* self, QEvent* event);
void QDial_virtualbase_connectNotify(VirtualQDial* self, QMetaMethod* signal);
void QDial_virtualbase_disconnectNotify(VirtualQDial* self, QMetaMethod* signal);

void QDial_protectedbase_setRepeatAction(VirtualQDial* self, int action);
int QDial_protectedbase_repeatAction(const VirtualQDial* self);
void QDial_protectedbase_updateMicroFocus(VirtualQDial* self);
void QDial_protectedbase_create(VirtualQDial* self);
void QDial_protectedbase_destroy(VirtualQDial* self);
bool QDial_protectedbase_focusNextChild(VirtualQDial* self);
bool QDial_protectedbase_focusPreviousChild(VirtualQDial* self);
QObject* QDial_protectedbase_sender(const VirtualQDial* self);
int QDial_protectedbase_senderSignalIndex(const VirtualQDial* self);
int QDial_protectedbase_receivers(const VirtualQDial* self, const char* signal);
bool QDial_protectedbase_isSignalConnected(const VirtualQDial* self, QMetaMethod* signal);

const QMetaObject* QDial_staticMetaObject();
void QDial_delete(QDial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
