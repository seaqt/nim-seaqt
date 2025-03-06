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

struct QColorDialog_VTable {
	void (*destructor)(struct QColorDialog_VTable* vtbl, QColorDialog* self);
	QMetaObject* (*metaObject)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	void* (*metacast)(struct QColorDialog_VTable* vtbl, QColorDialog* self, const char* param1);
	int (*metacall)(struct QColorDialog_VTable* vtbl, QColorDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QColorDialog_VTable* vtbl, QColorDialog* self, bool visible);
	void (*changeEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QEvent* event);
	void (*done)(struct QColorDialog_VTable* vtbl, QColorDialog* self, int result);
	QSize* (*sizeHint)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	QSize* (*minimumSizeHint)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	void (*open)(struct QColorDialog_VTable* vtbl, QColorDialog* self);
	int (*exec)(struct QColorDialog_VTable* vtbl, QColorDialog* self);
	void (*accept)(struct QColorDialog_VTable* vtbl, QColorDialog* self);
	void (*reject)(struct QColorDialog_VTable* vtbl, QColorDialog* self);
	void (*keyPressEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	int (*heightForWidth)(struct QColorDialog_VTable* vtbl, const QColorDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	QPaintEngine* (*paintEngine)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	bool (*event)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QEvent* event);
	void (*leaveEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QEvent* event);
	void (*paintEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QColorDialog_VTable* vtbl, const QColorDialog* self, int param1);
	void (*initPainter)(struct QColorDialog_VTable* vtbl, const QColorDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QColorDialog_VTable* vtbl, const QColorDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QColorDialog_VTable* vtbl, const QColorDialog* self);
	void (*inputMethodEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QColorDialog_VTable* vtbl, const QColorDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QColorDialog_VTable* vtbl, QColorDialog* self, bool next);
	void (*timerEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QChildEvent* event);
	void (*customEvent)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QEvent* event);
	void (*connectNotify)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QColorDialog_VTable* vtbl, QColorDialog* self, QMetaMethod* signal);
};
QColorDialog* QColorDialog_new(struct QColorDialog_VTable* vtbl, QWidget* parent);
QColorDialog* QColorDialog_new2(struct QColorDialog_VTable* vtbl);
QColorDialog* QColorDialog_new3(struct QColorDialog_VTable* vtbl, QColor* initial);
QColorDialog* QColorDialog_new4(struct QColorDialog_VTable* vtbl, QColor* initial, QWidget* parent);
void QColorDialog_virtbase(QColorDialog* src, QDialog** outptr_QDialog);
QMetaObject* QColorDialog_metaObject(const QColorDialog* self);
void* QColorDialog_metacast(QColorDialog* self, const char* param1);
int QColorDialog_metacall(QColorDialog* self, int param1, int param2, void** param3);
struct miqt_string QColorDialog_tr(const char* s);
struct miqt_string QColorDialog_trUtf8(const char* s);
void QColorDialog_setCurrentColor(QColorDialog* self, QColor* color);
QColor* QColorDialog_currentColor(const QColorDialog* self);
QColor* QColorDialog_selectedColor(const QColorDialog* self);
void QColorDialog_setOption(QColorDialog* self, int option);
bool QColorDialog_testOption(const QColorDialog* self, int option);
void QColorDialog_setOptions(QColorDialog* self, int options);
int QColorDialog_options(const QColorDialog* self);
void QColorDialog_setVisible(QColorDialog* self, bool visible);
QColor* QColorDialog_getColor();
unsigned int QColorDialog_getRgba();
int QColorDialog_customCount();
QColor* QColorDialog_customColor(int index);
void QColorDialog_setCustomColor(int index, QColor* color);
QColor* QColorDialog_standardColor(int index);
void QColorDialog_setStandardColor(int index, QColor* color);
void QColorDialog_currentColorChanged(QColorDialog* self, QColor* color);
void QColorDialog_connect_currentColorChanged(QColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QColorDialog_colorSelected(QColorDialog* self, QColor* color);
void QColorDialog_connect_colorSelected(QColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QColorDialog_changeEvent(QColorDialog* self, QEvent* event);
void QColorDialog_done(QColorDialog* self, int result);
struct miqt_string QColorDialog_tr2(const char* s, const char* c);
struct miqt_string QColorDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QColorDialog_trUtf82(const char* s, const char* c);
struct miqt_string QColorDialog_trUtf83(const char* s, const char* c, int n);
void QColorDialog_setOption2(QColorDialog* self, int option, bool on);
QColor* QColorDialog_getColor1(QColor* initial);
QColor* QColorDialog_getColor2(QColor* initial, QWidget* parent);
QColor* QColorDialog_getColor3(QColor* initial, QWidget* parent, struct miqt_string title);
QColor* QColorDialog_getColor4(QColor* initial, QWidget* parent, struct miqt_string title, int options);
unsigned int QColorDialog_getRgba1(unsigned int rgba);
unsigned int QColorDialog_getRgba2(unsigned int rgba, bool* ok);
unsigned int QColorDialog_getRgba3(unsigned int rgba, bool* ok, QWidget* parent);
QMetaObject* QColorDialog_virtualbase_metaObject(const void* self);
void* QColorDialog_virtualbase_metacast(void* self, const char* param1);
int QColorDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QColorDialog_virtualbase_setVisible(void* self, bool visible);
void QColorDialog_virtualbase_changeEvent(void* self, QEvent* event);
void QColorDialog_virtualbase_done(void* self, int result);
QSize* QColorDialog_virtualbase_sizeHint(const void* self);
QSize* QColorDialog_virtualbase_minimumSizeHint(const void* self);
void QColorDialog_virtualbase_open(void* self);
int QColorDialog_virtualbase_exec(void* self);
void QColorDialog_virtualbase_accept(void* self);
void QColorDialog_virtualbase_reject(void* self);
void QColorDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QColorDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QColorDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QColorDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QColorDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QColorDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QColorDialog_virtualbase_devType(const void* self);
int QColorDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QColorDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QColorDialog_virtualbase_paintEngine(const void* self);
bool QColorDialog_virtualbase_event(void* self, QEvent* event);
void QColorDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QColorDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QColorDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QColorDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QColorDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QColorDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QColorDialog_virtualbase_enterEvent(void* self, QEvent* event);
void QColorDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QColorDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QColorDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QColorDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QColorDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QColorDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QColorDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QColorDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QColorDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QColorDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QColorDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QColorDialog_virtualbase_metric(const void* self, int param1);
void QColorDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QColorDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QColorDialog_virtualbase_sharedPainter(const void* self);
void QColorDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QColorDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QColorDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QColorDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QColorDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QColorDialog_virtualbase_customEvent(void* self, QEvent* event);
void QColorDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QColorDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QColorDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QColorDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QColorDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QColorDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QColorDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QColorDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QColorDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QColorDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QColorDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QColorDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QColorDialog_staticMetaObject();
void QColorDialog_delete(QColorDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
