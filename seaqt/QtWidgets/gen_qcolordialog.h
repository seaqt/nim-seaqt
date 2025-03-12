#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCOLORDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QCOLORDIALOG_H

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
class QColor;
class QColorDialog;
class QContextMenuEvent;
class QDialog;
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
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QColorDialog QColorDialog;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQColorDialog VirtualQColorDialog;
typedef struct QColorDialog_VTable{
	void (*destructor)(VirtualQColorDialog* self);
	QMetaObject* (*metaObject)(const VirtualQColorDialog* self);
	void* (*metacast)(VirtualQColorDialog* self, const char* param1);
	int (*metacall)(VirtualQColorDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQColorDialog* self, bool visible);
	void (*changeEvent)(VirtualQColorDialog* self, QEvent* event);
	void (*done)(VirtualQColorDialog* self, int result);
	QSize* (*sizeHint)(const VirtualQColorDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQColorDialog* self);
	void (*open)(VirtualQColorDialog* self);
	int (*exec)(VirtualQColorDialog* self);
	void (*accept)(VirtualQColorDialog* self);
	void (*reject)(VirtualQColorDialog* self);
	void (*keyPressEvent)(VirtualQColorDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQColorDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQColorDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQColorDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQColorDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQColorDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQColorDialog* self);
	int (*heightForWidth)(const VirtualQColorDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQColorDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQColorDialog* self);
	bool (*event)(VirtualQColorDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQColorDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQColorDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQColorDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQColorDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQColorDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQColorDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQColorDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQColorDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQColorDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQColorDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQColorDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQColorDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQColorDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQColorDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQColorDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQColorDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQColorDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQColorDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQColorDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQColorDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQColorDialog* self, int param1);
	void (*initPainter)(const VirtualQColorDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQColorDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQColorDialog* self);
	void (*inputMethodEvent)(VirtualQColorDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQColorDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQColorDialog* self, bool next);
	void (*timerEvent)(VirtualQColorDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQColorDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQColorDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQColorDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQColorDialog* self, QMetaMethod* signal);
}QColorDialog_VTable;

const QColorDialog_VTable* QColorDialog_vtbl(const VirtualQColorDialog* self);
void* QColorDialog_vdata(const VirtualQColorDialog* self);
void QColorDialog_setVdata(VirtualQColorDialog* self, void* vdata);

VirtualQColorDialog* QColorDialog_new(const QColorDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQColorDialog* QColorDialog_new2(const QColorDialog_VTable* vtbl, void* vdata);
VirtualQColorDialog* QColorDialog_new3(const QColorDialog_VTable* vtbl, void* vdata, QColor* initial);
VirtualQColorDialog* QColorDialog_new4(const QColorDialog_VTable* vtbl, void* vdata, QColor* initial, QWidget* parent);

void QColorDialog_virtbase(QColorDialog* src, QDialog** outptr_QDialog);
QMetaObject* QColorDialog_metaObject(const QColorDialog* self);
void* QColorDialog_metacast(QColorDialog* self, const char* param1);
int QColorDialog_metacall(QColorDialog* self, int param1, int param2, void** param3);
struct miqt_string QColorDialog_tr(const char* s);
void QColorDialog_setCurrentColor(QColorDialog* self, QColor* color);
QColor* QColorDialog_currentColor(const QColorDialog* self);
QColor* QColorDialog_selectedColor(const QColorDialog* self);
void QColorDialog_setOption(QColorDialog* self, int option);
bool QColorDialog_testOption(const QColorDialog* self, int option);
void QColorDialog_setOptions(QColorDialog* self, int options);
int QColorDialog_options(const QColorDialog* self);
void QColorDialog_setVisible(QColorDialog* self, bool visible);
QColor* QColorDialog_getColor();
int QColorDialog_customCount();
QColor* QColorDialog_customColor(int index);
void QColorDialog_setCustomColor(int index, QColor* color);
QColor* QColorDialog_standardColor(int index);
void QColorDialog_setStandardColor(int index, QColor* color);
void QColorDialog_currentColorChanged(QColorDialog* self, QColor* color);
void QColorDialog_connect_currentColorChanged(VirtualQColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QColorDialog_colorSelected(QColorDialog* self, QColor* color);
void QColorDialog_connect_colorSelected(VirtualQColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QColorDialog_changeEvent(QColorDialog* self, QEvent* event);
void QColorDialog_done(QColorDialog* self, int result);
struct miqt_string QColorDialog_tr2(const char* s, const char* c);
struct miqt_string QColorDialog_tr3(const char* s, const char* c, int n);
void QColorDialog_setOption2(QColorDialog* self, int option, bool on);
QColor* QColorDialog_getColor1(QColor* initial);
QColor* QColorDialog_getColor2(QColor* initial, QWidget* parent);
QColor* QColorDialog_getColor3(QColor* initial, QWidget* parent, struct miqt_string title);
QColor* QColorDialog_getColor4(QColor* initial, QWidget* parent, struct miqt_string title, int options);

QMetaObject* QColorDialog_virtualbase_metaObject(const VirtualQColorDialog* self);
void* QColorDialog_virtualbase_metacast(VirtualQColorDialog* self, const char* param1);
int QColorDialog_virtualbase_metacall(VirtualQColorDialog* self, int param1, int param2, void** param3);
void QColorDialog_virtualbase_setVisible(VirtualQColorDialog* self, bool visible);
void QColorDialog_virtualbase_changeEvent(VirtualQColorDialog* self, QEvent* event);
void QColorDialog_virtualbase_done(VirtualQColorDialog* self, int result);
QSize* QColorDialog_virtualbase_sizeHint(const VirtualQColorDialog* self);
QSize* QColorDialog_virtualbase_minimumSizeHint(const VirtualQColorDialog* self);
void QColorDialog_virtualbase_open(VirtualQColorDialog* self);
int QColorDialog_virtualbase_exec(VirtualQColorDialog* self);
void QColorDialog_virtualbase_accept(VirtualQColorDialog* self);
void QColorDialog_virtualbase_reject(VirtualQColorDialog* self);
void QColorDialog_virtualbase_keyPressEvent(VirtualQColorDialog* self, QKeyEvent* param1);
void QColorDialog_virtualbase_closeEvent(VirtualQColorDialog* self, QCloseEvent* param1);
void QColorDialog_virtualbase_showEvent(VirtualQColorDialog* self, QShowEvent* param1);
void QColorDialog_virtualbase_resizeEvent(VirtualQColorDialog* self, QResizeEvent* param1);
void QColorDialog_virtualbase_contextMenuEvent(VirtualQColorDialog* self, QContextMenuEvent* param1);
bool QColorDialog_virtualbase_eventFilter(VirtualQColorDialog* self, QObject* param1, QEvent* param2);
int QColorDialog_virtualbase_devType(const VirtualQColorDialog* self);
int QColorDialog_virtualbase_heightForWidth(const VirtualQColorDialog* self, int param1);
bool QColorDialog_virtualbase_hasHeightForWidth(const VirtualQColorDialog* self);
QPaintEngine* QColorDialog_virtualbase_paintEngine(const VirtualQColorDialog* self);
bool QColorDialog_virtualbase_event(VirtualQColorDialog* self, QEvent* event);
void QColorDialog_virtualbase_mousePressEvent(VirtualQColorDialog* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseReleaseEvent(VirtualQColorDialog* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseDoubleClickEvent(VirtualQColorDialog* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseMoveEvent(VirtualQColorDialog* self, QMouseEvent* event);
void QColorDialog_virtualbase_wheelEvent(VirtualQColorDialog* self, QWheelEvent* event);
void QColorDialog_virtualbase_keyReleaseEvent(VirtualQColorDialog* self, QKeyEvent* event);
void QColorDialog_virtualbase_focusInEvent(VirtualQColorDialog* self, QFocusEvent* event);
void QColorDialog_virtualbase_focusOutEvent(VirtualQColorDialog* self, QFocusEvent* event);
void QColorDialog_virtualbase_enterEvent(VirtualQColorDialog* self, QEnterEvent* event);
void QColorDialog_virtualbase_leaveEvent(VirtualQColorDialog* self, QEvent* event);
void QColorDialog_virtualbase_paintEvent(VirtualQColorDialog* self, QPaintEvent* event);
void QColorDialog_virtualbase_moveEvent(VirtualQColorDialog* self, QMoveEvent* event);
void QColorDialog_virtualbase_tabletEvent(VirtualQColorDialog* self, QTabletEvent* event);
void QColorDialog_virtualbase_actionEvent(VirtualQColorDialog* self, QActionEvent* event);
void QColorDialog_virtualbase_dragEnterEvent(VirtualQColorDialog* self, QDragEnterEvent* event);
void QColorDialog_virtualbase_dragMoveEvent(VirtualQColorDialog* self, QDragMoveEvent* event);
void QColorDialog_virtualbase_dragLeaveEvent(VirtualQColorDialog* self, QDragLeaveEvent* event);
void QColorDialog_virtualbase_dropEvent(VirtualQColorDialog* self, QDropEvent* event);
void QColorDialog_virtualbase_hideEvent(VirtualQColorDialog* self, QHideEvent* event);
bool QColorDialog_virtualbase_nativeEvent(VirtualQColorDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
int QColorDialog_virtualbase_metric(const VirtualQColorDialog* self, int param1);
void QColorDialog_virtualbase_initPainter(const VirtualQColorDialog* self, QPainter* painter);
QPaintDevice* QColorDialog_virtualbase_redirected(const VirtualQColorDialog* self, QPoint* offset);
QPainter* QColorDialog_virtualbase_sharedPainter(const VirtualQColorDialog* self);
void QColorDialog_virtualbase_inputMethodEvent(VirtualQColorDialog* self, QInputMethodEvent* param1);
QVariant* QColorDialog_virtualbase_inputMethodQuery(const VirtualQColorDialog* self, int param1);
bool QColorDialog_virtualbase_focusNextPrevChild(VirtualQColorDialog* self, bool next);
void QColorDialog_virtualbase_timerEvent(VirtualQColorDialog* self, QTimerEvent* event);
void QColorDialog_virtualbase_childEvent(VirtualQColorDialog* self, QChildEvent* event);
void QColorDialog_virtualbase_customEvent(VirtualQColorDialog* self, QEvent* event);
void QColorDialog_virtualbase_connectNotify(VirtualQColorDialog* self, QMetaMethod* signal);
void QColorDialog_virtualbase_disconnectNotify(VirtualQColorDialog* self, QMetaMethod* signal);

void QColorDialog_protectedbase_adjustPosition(VirtualQColorDialog* self, QWidget* param1);
void QColorDialog_protectedbase_updateMicroFocus(VirtualQColorDialog* self);
void QColorDialog_protectedbase_create(VirtualQColorDialog* self);
void QColorDialog_protectedbase_destroy(VirtualQColorDialog* self);
bool QColorDialog_protectedbase_focusNextChild(VirtualQColorDialog* self);
bool QColorDialog_protectedbase_focusPreviousChild(VirtualQColorDialog* self);
QObject* QColorDialog_protectedbase_sender(const VirtualQColorDialog* self);
int QColorDialog_protectedbase_senderSignalIndex(const VirtualQColorDialog* self);
int QColorDialog_protectedbase_receivers(const VirtualQColorDialog* self, const char* signal);
bool QColorDialog_protectedbase_isSignalConnected(const VirtualQColorDialog* self, QMetaMethod* signal);

const QMetaObject* QColorDialog_staticMetaObject();
void QColorDialog_delete(QColorDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
