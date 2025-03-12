#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QPROGRESSBAR_H
#define SEAQT_QTWIDGETS_GEN_QPROGRESSBAR_H

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
class QProgressBar;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionProgressBar;
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
typedef struct QProgressBar QProgressBar;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionProgressBar QStyleOptionProgressBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQProgressBar VirtualQProgressBar;
typedef struct QProgressBar_VTable{
	void (*destructor)(VirtualQProgressBar* self);
	QMetaObject* (*metaObject)(const VirtualQProgressBar* self);
	void* (*metacast)(VirtualQProgressBar* self, const char* param1);
	int (*metacall)(VirtualQProgressBar* self, int param1, int param2, void** param3);
	struct miqt_string (*text)(const VirtualQProgressBar* self);
	QSize* (*sizeHint)(const VirtualQProgressBar* self);
	QSize* (*minimumSizeHint)(const VirtualQProgressBar* self);
	bool (*event)(VirtualQProgressBar* self, QEvent* e);
	void (*paintEvent)(VirtualQProgressBar* self, QPaintEvent* param1);
	void (*initStyleOption)(const VirtualQProgressBar* self, QStyleOptionProgressBar* option);
	int (*devType)(const VirtualQProgressBar* self);
	void (*setVisible)(VirtualQProgressBar* self, bool visible);
	int (*heightForWidth)(const VirtualQProgressBar* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQProgressBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQProgressBar* self);
	void (*mousePressEvent)(VirtualQProgressBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQProgressBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQProgressBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQProgressBar* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQProgressBar* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQProgressBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQProgressBar* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQProgressBar* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQProgressBar* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQProgressBar* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQProgressBar* self, QEvent* event);
	void (*moveEvent)(VirtualQProgressBar* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQProgressBar* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQProgressBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQProgressBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQProgressBar* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQProgressBar* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQProgressBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQProgressBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQProgressBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQProgressBar* self, QDropEvent* event);
	void (*showEvent)(VirtualQProgressBar* self, QShowEvent* event);
	void (*hideEvent)(VirtualQProgressBar* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQProgressBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQProgressBar* self, QEvent* param1);
	int (*metric)(const VirtualQProgressBar* self, int param1);
	void (*initPainter)(const VirtualQProgressBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQProgressBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQProgressBar* self);
	void (*inputMethodEvent)(VirtualQProgressBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQProgressBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQProgressBar* self, bool next);
	bool (*eventFilter)(VirtualQProgressBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQProgressBar* self, QTimerEvent* event);
	void (*childEvent)(VirtualQProgressBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQProgressBar* self, QEvent* event);
	void (*connectNotify)(VirtualQProgressBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQProgressBar* self, QMetaMethod* signal);
}QProgressBar_VTable;

const QProgressBar_VTable* QProgressBar_vtbl(const VirtualQProgressBar* self);
void* QProgressBar_vdata(const VirtualQProgressBar* self);
void QProgressBar_setVdata(VirtualQProgressBar* self, void* vdata);

VirtualQProgressBar* QProgressBar_new(const QProgressBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQProgressBar* QProgressBar_new2(const QProgressBar_VTable* vtbl, void* vdata);

void QProgressBar_virtbase(QProgressBar* src, QWidget** outptr_QWidget);
QMetaObject* QProgressBar_metaObject(const QProgressBar* self);
void* QProgressBar_metacast(QProgressBar* self, const char* param1);
int QProgressBar_metacall(QProgressBar* self, int param1, int param2, void** param3);
struct miqt_string QProgressBar_tr(const char* s);
int QProgressBar_minimum(const QProgressBar* self);
int QProgressBar_maximum(const QProgressBar* self);
int QProgressBar_value(const QProgressBar* self);
struct miqt_string QProgressBar_text(const QProgressBar* self);
void QProgressBar_setTextVisible(QProgressBar* self, bool visible);
bool QProgressBar_isTextVisible(const QProgressBar* self);
int QProgressBar_alignment(const QProgressBar* self);
void QProgressBar_setAlignment(QProgressBar* self, int alignment);
QSize* QProgressBar_sizeHint(const QProgressBar* self);
QSize* QProgressBar_minimumSizeHint(const QProgressBar* self);
int QProgressBar_orientation(const QProgressBar* self);
void QProgressBar_setInvertedAppearance(QProgressBar* self, bool invert);
bool QProgressBar_invertedAppearance(const QProgressBar* self);
void QProgressBar_setTextDirection(QProgressBar* self, int textDirection);
int QProgressBar_textDirection(const QProgressBar* self);
void QProgressBar_setFormat(QProgressBar* self, struct miqt_string format);
void QProgressBar_resetFormat(QProgressBar* self);
struct miqt_string QProgressBar_format(const QProgressBar* self);
void QProgressBar_reset(QProgressBar* self);
void QProgressBar_setRange(QProgressBar* self, int minimum, int maximum);
void QProgressBar_setMinimum(QProgressBar* self, int minimum);
void QProgressBar_setMaximum(QProgressBar* self, int maximum);
void QProgressBar_setValue(QProgressBar* self, int value);
void QProgressBar_setOrientation(QProgressBar* self, int orientation);
void QProgressBar_valueChanged(QProgressBar* self, int value);
void QProgressBar_connect_valueChanged(VirtualQProgressBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QProgressBar_event(QProgressBar* self, QEvent* e);
void QProgressBar_paintEvent(QProgressBar* self, QPaintEvent* param1);
void QProgressBar_initStyleOption(const QProgressBar* self, QStyleOptionProgressBar* option);
struct miqt_string QProgressBar_tr2(const char* s, const char* c);
struct miqt_string QProgressBar_tr3(const char* s, const char* c, int n);

QMetaObject* QProgressBar_virtualbase_metaObject(const VirtualQProgressBar* self);
void* QProgressBar_virtualbase_metacast(VirtualQProgressBar* self, const char* param1);
int QProgressBar_virtualbase_metacall(VirtualQProgressBar* self, int param1, int param2, void** param3);
struct miqt_string QProgressBar_virtualbase_text(const VirtualQProgressBar* self);
QSize* QProgressBar_virtualbase_sizeHint(const VirtualQProgressBar* self);
QSize* QProgressBar_virtualbase_minimumSizeHint(const VirtualQProgressBar* self);
bool QProgressBar_virtualbase_event(VirtualQProgressBar* self, QEvent* e);
void QProgressBar_virtualbase_paintEvent(VirtualQProgressBar* self, QPaintEvent* param1);
void QProgressBar_virtualbase_initStyleOption(const VirtualQProgressBar* self, QStyleOptionProgressBar* option);
int QProgressBar_virtualbase_devType(const VirtualQProgressBar* self);
void QProgressBar_virtualbase_setVisible(VirtualQProgressBar* self, bool visible);
int QProgressBar_virtualbase_heightForWidth(const VirtualQProgressBar* self, int param1);
bool QProgressBar_virtualbase_hasHeightForWidth(const VirtualQProgressBar* self);
QPaintEngine* QProgressBar_virtualbase_paintEngine(const VirtualQProgressBar* self);
void QProgressBar_virtualbase_mousePressEvent(VirtualQProgressBar* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseReleaseEvent(VirtualQProgressBar* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseDoubleClickEvent(VirtualQProgressBar* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseMoveEvent(VirtualQProgressBar* self, QMouseEvent* event);
void QProgressBar_virtualbase_wheelEvent(VirtualQProgressBar* self, QWheelEvent* event);
void QProgressBar_virtualbase_keyPressEvent(VirtualQProgressBar* self, QKeyEvent* event);
void QProgressBar_virtualbase_keyReleaseEvent(VirtualQProgressBar* self, QKeyEvent* event);
void QProgressBar_virtualbase_focusInEvent(VirtualQProgressBar* self, QFocusEvent* event);
void QProgressBar_virtualbase_focusOutEvent(VirtualQProgressBar* self, QFocusEvent* event);
void QProgressBar_virtualbase_enterEvent(VirtualQProgressBar* self, QEnterEvent* event);
void QProgressBar_virtualbase_leaveEvent(VirtualQProgressBar* self, QEvent* event);
void QProgressBar_virtualbase_moveEvent(VirtualQProgressBar* self, QMoveEvent* event);
void QProgressBar_virtualbase_resizeEvent(VirtualQProgressBar* self, QResizeEvent* event);
void QProgressBar_virtualbase_closeEvent(VirtualQProgressBar* self, QCloseEvent* event);
void QProgressBar_virtualbase_contextMenuEvent(VirtualQProgressBar* self, QContextMenuEvent* event);
void QProgressBar_virtualbase_tabletEvent(VirtualQProgressBar* self, QTabletEvent* event);
void QProgressBar_virtualbase_actionEvent(VirtualQProgressBar* self, QActionEvent* event);
void QProgressBar_virtualbase_dragEnterEvent(VirtualQProgressBar* self, QDragEnterEvent* event);
void QProgressBar_virtualbase_dragMoveEvent(VirtualQProgressBar* self, QDragMoveEvent* event);
void QProgressBar_virtualbase_dragLeaveEvent(VirtualQProgressBar* self, QDragLeaveEvent* event);
void QProgressBar_virtualbase_dropEvent(VirtualQProgressBar* self, QDropEvent* event);
void QProgressBar_virtualbase_showEvent(VirtualQProgressBar* self, QShowEvent* event);
void QProgressBar_virtualbase_hideEvent(VirtualQProgressBar* self, QHideEvent* event);
bool QProgressBar_virtualbase_nativeEvent(VirtualQProgressBar* self, struct miqt_string eventType, void* message, intptr_t* result);
void QProgressBar_virtualbase_changeEvent(VirtualQProgressBar* self, QEvent* param1);
int QProgressBar_virtualbase_metric(const VirtualQProgressBar* self, int param1);
void QProgressBar_virtualbase_initPainter(const VirtualQProgressBar* self, QPainter* painter);
QPaintDevice* QProgressBar_virtualbase_redirected(const VirtualQProgressBar* self, QPoint* offset);
QPainter* QProgressBar_virtualbase_sharedPainter(const VirtualQProgressBar* self);
void QProgressBar_virtualbase_inputMethodEvent(VirtualQProgressBar* self, QInputMethodEvent* param1);
QVariant* QProgressBar_virtualbase_inputMethodQuery(const VirtualQProgressBar* self, int param1);
bool QProgressBar_virtualbase_focusNextPrevChild(VirtualQProgressBar* self, bool next);
bool QProgressBar_virtualbase_eventFilter(VirtualQProgressBar* self, QObject* watched, QEvent* event);
void QProgressBar_virtualbase_timerEvent(VirtualQProgressBar* self, QTimerEvent* event);
void QProgressBar_virtualbase_childEvent(VirtualQProgressBar* self, QChildEvent* event);
void QProgressBar_virtualbase_customEvent(VirtualQProgressBar* self, QEvent* event);
void QProgressBar_virtualbase_connectNotify(VirtualQProgressBar* self, QMetaMethod* signal);
void QProgressBar_virtualbase_disconnectNotify(VirtualQProgressBar* self, QMetaMethod* signal);

void QProgressBar_protectedbase_updateMicroFocus(VirtualQProgressBar* self);
void QProgressBar_protectedbase_create(VirtualQProgressBar* self);
void QProgressBar_protectedbase_destroy(VirtualQProgressBar* self);
bool QProgressBar_protectedbase_focusNextChild(VirtualQProgressBar* self);
bool QProgressBar_protectedbase_focusPreviousChild(VirtualQProgressBar* self);
QObject* QProgressBar_protectedbase_sender(const VirtualQProgressBar* self);
int QProgressBar_protectedbase_senderSignalIndex(const VirtualQProgressBar* self);
int QProgressBar_protectedbase_receivers(const VirtualQProgressBar* self, const char* signal);
bool QProgressBar_protectedbase_isSignalConnected(const VirtualQProgressBar* self, QMetaMethod* signal);

const QMetaObject* QProgressBar_staticMetaObject();
void QProgressBar_delete(QProgressBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
