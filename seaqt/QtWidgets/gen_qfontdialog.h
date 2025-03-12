#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFONTDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QFONTDIALOG_H

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
class QDialog;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QFont;
class QFontDialog;
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
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFontDialog QFontDialog;
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

typedef struct VirtualQFontDialog VirtualQFontDialog;
typedef struct QFontDialog_VTable{
	void (*destructor)(VirtualQFontDialog* self);
	QMetaObject* (*metaObject)(const VirtualQFontDialog* self);
	void* (*metacast)(VirtualQFontDialog* self, const char* param1);
	int (*metacall)(VirtualQFontDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQFontDialog* self, bool visible);
	void (*changeEvent)(VirtualQFontDialog* self, QEvent* event);
	void (*done)(VirtualQFontDialog* self, int result);
	bool (*eventFilter)(VirtualQFontDialog* self, QObject* object, QEvent* event);
	QSize* (*sizeHint)(const VirtualQFontDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQFontDialog* self);
	void (*open)(VirtualQFontDialog* self);
	int (*exec)(VirtualQFontDialog* self);
	void (*accept)(VirtualQFontDialog* self);
	void (*reject)(VirtualQFontDialog* self);
	void (*keyPressEvent)(VirtualQFontDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQFontDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQFontDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQFontDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQFontDialog* self, QContextMenuEvent* param1);
	int (*devType)(const VirtualQFontDialog* self);
	int (*heightForWidth)(const VirtualQFontDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQFontDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQFontDialog* self);
	bool (*event)(VirtualQFontDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQFontDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQFontDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQFontDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQFontDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQFontDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQFontDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQFontDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQFontDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQFontDialog* self, QEvent* event);
	void (*leaveEvent)(VirtualQFontDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQFontDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQFontDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQFontDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQFontDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQFontDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQFontDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQFontDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQFontDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQFontDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQFontDialog* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQFontDialog* self, int param1);
	void (*initPainter)(const VirtualQFontDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQFontDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQFontDialog* self);
	void (*inputMethodEvent)(VirtualQFontDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQFontDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQFontDialog* self, bool next);
	void (*timerEvent)(VirtualQFontDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFontDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQFontDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQFontDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFontDialog* self, QMetaMethod* signal);
}QFontDialog_VTable;

const QFontDialog_VTable* QFontDialog_vtbl(const VirtualQFontDialog* self);
void* QFontDialog_vdata(const VirtualQFontDialog* self);
void QFontDialog_setVdata(VirtualQFontDialog* self, void* vdata);

VirtualQFontDialog* QFontDialog_new(const QFontDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFontDialog* QFontDialog_new2(const QFontDialog_VTable* vtbl, void* vdata);
VirtualQFontDialog* QFontDialog_new3(const QFontDialog_VTable* vtbl, void* vdata, QFont* initial);
VirtualQFontDialog* QFontDialog_new4(const QFontDialog_VTable* vtbl, void* vdata, QFont* initial, QWidget* parent);

void QFontDialog_virtbase(QFontDialog* src, QDialog** outptr_QDialog);
QMetaObject* QFontDialog_metaObject(const QFontDialog* self);
void* QFontDialog_metacast(QFontDialog* self, const char* param1);
int QFontDialog_metacall(QFontDialog* self, int param1, int param2, void** param3);
struct miqt_string QFontDialog_tr(const char* s);
struct miqt_string QFontDialog_trUtf8(const char* s);
void QFontDialog_setCurrentFont(QFontDialog* self, QFont* font);
QFont* QFontDialog_currentFont(const QFontDialog* self);
QFont* QFontDialog_selectedFont(const QFontDialog* self);
void QFontDialog_setOption(QFontDialog* self, int option);
bool QFontDialog_testOption(const QFontDialog* self, int option);
void QFontDialog_setOptions(QFontDialog* self, int options);
int QFontDialog_options(const QFontDialog* self);
void QFontDialog_setVisible(QFontDialog* self, bool visible);
QFont* QFontDialog_getFont(bool* ok);
QFont* QFontDialog_getFont2(bool* ok, QFont* initial);
void QFontDialog_currentFontChanged(QFontDialog* self, QFont* font);
void QFontDialog_connect_currentFontChanged(VirtualQFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
void QFontDialog_fontSelected(QFontDialog* self, QFont* font);
void QFontDialog_connect_fontSelected(VirtualQFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
void QFontDialog_changeEvent(QFontDialog* self, QEvent* event);
void QFontDialog_done(QFontDialog* self, int result);
bool QFontDialog_eventFilter(QFontDialog* self, QObject* object, QEvent* event);
struct miqt_string QFontDialog_tr2(const char* s, const char* c);
struct miqt_string QFontDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QFontDialog_trUtf82(const char* s, const char* c);
struct miqt_string QFontDialog_trUtf83(const char* s, const char* c, int n);
void QFontDialog_setOption2(QFontDialog* self, int option, bool on);
QFont* QFontDialog_getFont22(bool* ok, QWidget* parent);
QFont* QFontDialog_getFont3(bool* ok, QFont* initial, QWidget* parent);
QFont* QFontDialog_getFont4(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title);
QFont* QFontDialog_getFont5(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title, int options);

QMetaObject* QFontDialog_virtualbase_metaObject(const VirtualQFontDialog* self);
void* QFontDialog_virtualbase_metacast(VirtualQFontDialog* self, const char* param1);
int QFontDialog_virtualbase_metacall(VirtualQFontDialog* self, int param1, int param2, void** param3);
void QFontDialog_virtualbase_setVisible(VirtualQFontDialog* self, bool visible);
void QFontDialog_virtualbase_changeEvent(VirtualQFontDialog* self, QEvent* event);
void QFontDialog_virtualbase_done(VirtualQFontDialog* self, int result);
bool QFontDialog_virtualbase_eventFilter(VirtualQFontDialog* self, QObject* object, QEvent* event);
QSize* QFontDialog_virtualbase_sizeHint(const VirtualQFontDialog* self);
QSize* QFontDialog_virtualbase_minimumSizeHint(const VirtualQFontDialog* self);
void QFontDialog_virtualbase_open(VirtualQFontDialog* self);
int QFontDialog_virtualbase_exec(VirtualQFontDialog* self);
void QFontDialog_virtualbase_accept(VirtualQFontDialog* self);
void QFontDialog_virtualbase_reject(VirtualQFontDialog* self);
void QFontDialog_virtualbase_keyPressEvent(VirtualQFontDialog* self, QKeyEvent* param1);
void QFontDialog_virtualbase_closeEvent(VirtualQFontDialog* self, QCloseEvent* param1);
void QFontDialog_virtualbase_showEvent(VirtualQFontDialog* self, QShowEvent* param1);
void QFontDialog_virtualbase_resizeEvent(VirtualQFontDialog* self, QResizeEvent* param1);
void QFontDialog_virtualbase_contextMenuEvent(VirtualQFontDialog* self, QContextMenuEvent* param1);
int QFontDialog_virtualbase_devType(const VirtualQFontDialog* self);
int QFontDialog_virtualbase_heightForWidth(const VirtualQFontDialog* self, int param1);
bool QFontDialog_virtualbase_hasHeightForWidth(const VirtualQFontDialog* self);
QPaintEngine* QFontDialog_virtualbase_paintEngine(const VirtualQFontDialog* self);
bool QFontDialog_virtualbase_event(VirtualQFontDialog* self, QEvent* event);
void QFontDialog_virtualbase_mousePressEvent(VirtualQFontDialog* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseReleaseEvent(VirtualQFontDialog* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseDoubleClickEvent(VirtualQFontDialog* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseMoveEvent(VirtualQFontDialog* self, QMouseEvent* event);
void QFontDialog_virtualbase_wheelEvent(VirtualQFontDialog* self, QWheelEvent* event);
void QFontDialog_virtualbase_keyReleaseEvent(VirtualQFontDialog* self, QKeyEvent* event);
void QFontDialog_virtualbase_focusInEvent(VirtualQFontDialog* self, QFocusEvent* event);
void QFontDialog_virtualbase_focusOutEvent(VirtualQFontDialog* self, QFocusEvent* event);
void QFontDialog_virtualbase_enterEvent(VirtualQFontDialog* self, QEvent* event);
void QFontDialog_virtualbase_leaveEvent(VirtualQFontDialog* self, QEvent* event);
void QFontDialog_virtualbase_paintEvent(VirtualQFontDialog* self, QPaintEvent* event);
void QFontDialog_virtualbase_moveEvent(VirtualQFontDialog* self, QMoveEvent* event);
void QFontDialog_virtualbase_tabletEvent(VirtualQFontDialog* self, QTabletEvent* event);
void QFontDialog_virtualbase_actionEvent(VirtualQFontDialog* self, QActionEvent* event);
void QFontDialog_virtualbase_dragEnterEvent(VirtualQFontDialog* self, QDragEnterEvent* event);
void QFontDialog_virtualbase_dragMoveEvent(VirtualQFontDialog* self, QDragMoveEvent* event);
void QFontDialog_virtualbase_dragLeaveEvent(VirtualQFontDialog* self, QDragLeaveEvent* event);
void QFontDialog_virtualbase_dropEvent(VirtualQFontDialog* self, QDropEvent* event);
void QFontDialog_virtualbase_hideEvent(VirtualQFontDialog* self, QHideEvent* event);
bool QFontDialog_virtualbase_nativeEvent(VirtualQFontDialog* self, struct miqt_string eventType, void* message, long* result);
int QFontDialog_virtualbase_metric(const VirtualQFontDialog* self, int param1);
void QFontDialog_virtualbase_initPainter(const VirtualQFontDialog* self, QPainter* painter);
QPaintDevice* QFontDialog_virtualbase_redirected(const VirtualQFontDialog* self, QPoint* offset);
QPainter* QFontDialog_virtualbase_sharedPainter(const VirtualQFontDialog* self);
void QFontDialog_virtualbase_inputMethodEvent(VirtualQFontDialog* self, QInputMethodEvent* param1);
QVariant* QFontDialog_virtualbase_inputMethodQuery(const VirtualQFontDialog* self, int param1);
bool QFontDialog_virtualbase_focusNextPrevChild(VirtualQFontDialog* self, bool next);
void QFontDialog_virtualbase_timerEvent(VirtualQFontDialog* self, QTimerEvent* event);
void QFontDialog_virtualbase_childEvent(VirtualQFontDialog* self, QChildEvent* event);
void QFontDialog_virtualbase_customEvent(VirtualQFontDialog* self, QEvent* event);
void QFontDialog_virtualbase_connectNotify(VirtualQFontDialog* self, QMetaMethod* signal);
void QFontDialog_virtualbase_disconnectNotify(VirtualQFontDialog* self, QMetaMethod* signal);

void QFontDialog_protectedbase_adjustPosition(VirtualQFontDialog* self, QWidget* param1);
void QFontDialog_protectedbase_updateMicroFocus(VirtualQFontDialog* self);
void QFontDialog_protectedbase_create(VirtualQFontDialog* self);
void QFontDialog_protectedbase_destroy(VirtualQFontDialog* self);
bool QFontDialog_protectedbase_focusNextChild(VirtualQFontDialog* self);
bool QFontDialog_protectedbase_focusPreviousChild(VirtualQFontDialog* self);
QObject* QFontDialog_protectedbase_sender(const VirtualQFontDialog* self);
int QFontDialog_protectedbase_senderSignalIndex(const VirtualQFontDialog* self);
int QFontDialog_protectedbase_receivers(const VirtualQFontDialog* self, const char* signal);
bool QFontDialog_protectedbase_isSignalConnected(const VirtualQFontDialog* self, QMetaMethod* signal);

const QMetaObject* QFontDialog_staticMetaObject();
void QFontDialog_delete(QFontDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
