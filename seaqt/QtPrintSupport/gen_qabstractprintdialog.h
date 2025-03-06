#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QABSTRACTPRINTDIALOG_H
#define SEAQT_QTPRINTSUPPORT_GEN_QABSTRACTPRINTDIALOG_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractPrintDialog;
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
class QPrinter;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractPrintDialog QAbstractPrintDialog;
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
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractPrintDialog_VTable {
	void (*destructor)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self);
	QMetaObject* (*metaObject)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	void* (*metacast)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, const char* param1);
	int (*metacall)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, bool visible);
	QSize* (*sizeHint)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	QSize* (*minimumSizeHint)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	void (*open)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self);
	int (*exec)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self);
	void (*done)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, int param1);
	void (*accept)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self);
	void (*reject)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self);
	void (*keyPressEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	int (*heightForWidth)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	QPaintEngine* (*paintEngine)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	bool (*event)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QEvent* event);
	void (*leaveEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QEvent* event);
	void (*paintEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QEvent* param1);
	int (*metric)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self, int param1);
	void (*initPainter)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self);
	void (*inputMethodEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QAbstractPrintDialog_VTable* vtbl, const QAbstractPrintDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, bool next);
	void (*timerEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QEvent* event);
	void (*connectNotify)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractPrintDialog_VTable* vtbl, QAbstractPrintDialog* self, QMetaMethod* signal);
};
QAbstractPrintDialog* QAbstractPrintDialog_new(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer);
QAbstractPrintDialog* QAbstractPrintDialog_new2(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent);
void QAbstractPrintDialog_virtbase(QAbstractPrintDialog* src, QDialog** outptr_QDialog);
QMetaObject* QAbstractPrintDialog_metaObject(const QAbstractPrintDialog* self);
void* QAbstractPrintDialog_metacast(QAbstractPrintDialog* self, const char* param1);
int QAbstractPrintDialog_metacall(QAbstractPrintDialog* self, int param1, int param2, void** param3);
struct miqt_string QAbstractPrintDialog_tr(const char* s);
struct miqt_string QAbstractPrintDialog_trUtf8(const char* s);
void QAbstractPrintDialog_addEnabledOption(QAbstractPrintDialog* self, int option);
void QAbstractPrintDialog_setEnabledOptions(QAbstractPrintDialog* self, int options);
int QAbstractPrintDialog_enabledOptions(const QAbstractPrintDialog* self);
bool QAbstractPrintDialog_isOptionEnabled(const QAbstractPrintDialog* self, int option);
void QAbstractPrintDialog_setOptionTabs(QAbstractPrintDialog* self, struct miqt_array /* of QWidget* */  tabs);
void QAbstractPrintDialog_setPrintRange(QAbstractPrintDialog* self, int range);
int QAbstractPrintDialog_printRange(const QAbstractPrintDialog* self);
void QAbstractPrintDialog_setMinMax(QAbstractPrintDialog* self, int min, int max);
int QAbstractPrintDialog_minPage(const QAbstractPrintDialog* self);
int QAbstractPrintDialog_maxPage(const QAbstractPrintDialog* self);
void QAbstractPrintDialog_setFromTo(QAbstractPrintDialog* self, int fromPage, int toPage);
int QAbstractPrintDialog_fromPage(const QAbstractPrintDialog* self);
int QAbstractPrintDialog_toPage(const QAbstractPrintDialog* self);
QPrinter* QAbstractPrintDialog_printer(const QAbstractPrintDialog* self);
struct miqt_string QAbstractPrintDialog_tr2(const char* s, const char* c);
struct miqt_string QAbstractPrintDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractPrintDialog_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractPrintDialog_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const void* self);
void* QAbstractPrintDialog_virtualbase_metacast(void* self, const char* param1);
int QAbstractPrintDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractPrintDialog_virtualbase_setVisible(void* self, bool visible);
QSize* QAbstractPrintDialog_virtualbase_sizeHint(const void* self);
QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const void* self);
void QAbstractPrintDialog_virtualbase_open(void* self);
int QAbstractPrintDialog_virtualbase_exec(void* self);
void QAbstractPrintDialog_virtualbase_done(void* self, int param1);
void QAbstractPrintDialog_virtualbase_accept(void* self);
void QAbstractPrintDialog_virtualbase_reject(void* self);
void QAbstractPrintDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QAbstractPrintDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QAbstractPrintDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QAbstractPrintDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QAbstractPrintDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QAbstractPrintDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QAbstractPrintDialog_virtualbase_devType(const void* self);
int QAbstractPrintDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const void* self);
bool QAbstractPrintDialog_virtualbase_event(void* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QAbstractPrintDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QAbstractPrintDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QAbstractPrintDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QAbstractPrintDialog_virtualbase_enterEvent(void* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QAbstractPrintDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractPrintDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractPrintDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractPrintDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QAbstractPrintDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QAbstractPrintDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QAbstractPrintDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QAbstractPrintDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QAbstractPrintDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QAbstractPrintDialog_virtualbase_changeEvent(void* self, QEvent* param1);
int QAbstractPrintDialog_virtualbase_metric(const void* self, int param1);
void QAbstractPrintDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const void* self);
void QAbstractPrintDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QAbstractPrintDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractPrintDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractPrintDialog_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractPrintDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractPrintDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QAbstractPrintDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QAbstractPrintDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QAbstractPrintDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QAbstractPrintDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QAbstractPrintDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QAbstractPrintDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAbstractPrintDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAbstractPrintDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAbstractPrintDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractPrintDialog_staticMetaObject();
void QAbstractPrintDialog_delete(QAbstractPrintDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
