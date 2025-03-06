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
class QEnterEvent;
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
typedef struct QEnterEvent QEnterEvent;
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

struct QFontDialog_VTable {
	void (*destructor)(struct QFontDialog_VTable* vtbl, QFontDialog* self);
	QMetaObject* (*metaObject)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	void* (*metacast)(struct QFontDialog_VTable* vtbl, QFontDialog* self, const char* param1);
	int (*metacall)(struct QFontDialog_VTable* vtbl, QFontDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QFontDialog_VTable* vtbl, QFontDialog* self, bool visible);
	void (*changeEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QEvent* event);
	void (*done)(struct QFontDialog_VTable* vtbl, QFontDialog* self, int result);
	bool (*eventFilter)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QObject* object, QEvent* event);
	QSize* (*sizeHint)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	QSize* (*minimumSizeHint)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	void (*open)(struct QFontDialog_VTable* vtbl, QFontDialog* self);
	int (*exec)(struct QFontDialog_VTable* vtbl, QFontDialog* self);
	void (*accept)(struct QFontDialog_VTable* vtbl, QFontDialog* self);
	void (*reject)(struct QFontDialog_VTable* vtbl, QFontDialog* self);
	void (*keyPressEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QContextMenuEvent* param1);
	int (*devType)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	int (*heightForWidth)(struct QFontDialog_VTable* vtbl, const QFontDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	QPaintEngine* (*paintEngine)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	bool (*event)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QEnterEvent* event);
	void (*leaveEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QEvent* event);
	void (*paintEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QFontDialog_VTable* vtbl, const QFontDialog* self, int param1);
	void (*initPainter)(struct QFontDialog_VTable* vtbl, const QFontDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QFontDialog_VTable* vtbl, const QFontDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QFontDialog_VTable* vtbl, const QFontDialog* self);
	void (*inputMethodEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QFontDialog_VTable* vtbl, const QFontDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QFontDialog_VTable* vtbl, QFontDialog* self, bool next);
	void (*timerEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QChildEvent* event);
	void (*customEvent)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QEvent* event);
	void (*connectNotify)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFontDialog_VTable* vtbl, QFontDialog* self, QMetaMethod* signal);
};
QFontDialog* QFontDialog_new(struct QFontDialog_VTable* vtbl, QWidget* parent);
QFontDialog* QFontDialog_new2(struct QFontDialog_VTable* vtbl);
QFontDialog* QFontDialog_new3(struct QFontDialog_VTable* vtbl, QFont* initial);
QFontDialog* QFontDialog_new4(struct QFontDialog_VTable* vtbl, QFont* initial, QWidget* parent);
void QFontDialog_virtbase(QFontDialog* src, QDialog** outptr_QDialog);
QMetaObject* QFontDialog_metaObject(const QFontDialog* self);
void* QFontDialog_metacast(QFontDialog* self, const char* param1);
int QFontDialog_metacall(QFontDialog* self, int param1, int param2, void** param3);
struct miqt_string QFontDialog_tr(const char* s);
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
void QFontDialog_connect_currentFontChanged(QFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
void QFontDialog_fontSelected(QFontDialog* self, QFont* font);
void QFontDialog_connect_fontSelected(QFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
void QFontDialog_changeEvent(QFontDialog* self, QEvent* event);
void QFontDialog_done(QFontDialog* self, int result);
bool QFontDialog_eventFilter(QFontDialog* self, QObject* object, QEvent* event);
struct miqt_string QFontDialog_tr2(const char* s, const char* c);
struct miqt_string QFontDialog_tr3(const char* s, const char* c, int n);
void QFontDialog_setOption2(QFontDialog* self, int option, bool on);
QFont* QFontDialog_getFont22(bool* ok, QWidget* parent);
QFont* QFontDialog_getFont3(bool* ok, QFont* initial, QWidget* parent);
QFont* QFontDialog_getFont4(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title);
QFont* QFontDialog_getFont5(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title, int options);
QMetaObject* QFontDialog_virtualbase_metaObject(const void* self);
void* QFontDialog_virtualbase_metacast(void* self, const char* param1);
int QFontDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QFontDialog_virtualbase_setVisible(void* self, bool visible);
void QFontDialog_virtualbase_changeEvent(void* self, QEvent* event);
void QFontDialog_virtualbase_done(void* self, int result);
bool QFontDialog_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QFontDialog_virtualbase_sizeHint(const void* self);
QSize* QFontDialog_virtualbase_minimumSizeHint(const void* self);
void QFontDialog_virtualbase_open(void* self);
int QFontDialog_virtualbase_exec(void* self);
void QFontDialog_virtualbase_accept(void* self);
void QFontDialog_virtualbase_reject(void* self);
void QFontDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QFontDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QFontDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QFontDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QFontDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
int QFontDialog_virtualbase_devType(const void* self);
int QFontDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QFontDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QFontDialog_virtualbase_paintEngine(const void* self);
bool QFontDialog_virtualbase_event(void* self, QEvent* event);
void QFontDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QFontDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QFontDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QFontDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QFontDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QFontDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QFontDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QFontDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QFontDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QFontDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QFontDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QFontDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QFontDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QFontDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QFontDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QFontDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QFontDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QFontDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QFontDialog_virtualbase_metric(const void* self, int param1);
void QFontDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QFontDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QFontDialog_virtualbase_sharedPainter(const void* self);
void QFontDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QFontDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QFontDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QFontDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFontDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QFontDialog_virtualbase_customEvent(void* self, QEvent* event);
void QFontDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFontDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFontDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
void QFontDialog_protectedbase_updateMicroFocus(void* self);
void QFontDialog_protectedbase_create(void* self);
void QFontDialog_protectedbase_destroy(void* self);
bool QFontDialog_protectedbase_focusNextChild(void* self);
bool QFontDialog_protectedbase_focusPreviousChild(void* self);
QObject* QFontDialog_protectedbase_sender(const void* self);
int QFontDialog_protectedbase_senderSignalIndex(const void* self);
int QFontDialog_protectedbase_receivers(const void* self, const char* signal);
bool QFontDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QFontDialog_staticMetaObject();
void QFontDialog_delete(QFontDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
