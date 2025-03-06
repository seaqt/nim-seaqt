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

struct QFocusFrame_VTable {
	void (*destructor)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self);
	QMetaObject* (*metaObject)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	void* (*metacast)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, const char* param1);
	int (*metacall)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, int param1, int param2, void** param3);
	bool (*event)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QEvent* e);
	bool (*eventFilter)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QObject* param1, QEvent* param2);
	void (*paintEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QPaintEvent* param1);
	int (*devType)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	void (*setVisible)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, bool visible);
	QSize* (*sizeHint)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	QSize* (*minimumSizeHint)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	int (*heightForWidth)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self, int param1);
	bool (*hasHeightForWidth)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	QPaintEngine* (*paintEngine)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	void (*mousePressEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMouseEvent* event);
	void (*wheelEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QKeyEvent* event);
	void (*focusInEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QFocusEvent* event);
	void (*enterEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QEvent* event);
	void (*leaveEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QEvent* event);
	void (*moveEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMoveEvent* event);
	void (*resizeEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QResizeEvent* event);
	void (*closeEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QTabletEvent* event);
	void (*actionEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QDropEvent* event);
	void (*showEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QShowEvent* event);
	void (*hideEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QHideEvent* event);
	bool (*nativeEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QEvent* param1);
	int (*metric)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self, int param1);
	void (*initPainter)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self);
	void (*inputMethodEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QFocusFrame_VTable* vtbl, const QFocusFrame* self, int param1);
	bool (*focusNextPrevChild)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, bool next);
	void (*timerEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QTimerEvent* event);
	void (*childEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QChildEvent* event);
	void (*customEvent)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QEvent* event);
	void (*connectNotify)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFocusFrame_VTable* vtbl, QFocusFrame* self, QMetaMethod* signal);
};
QFocusFrame* QFocusFrame_new(struct QFocusFrame_VTable* vtbl, QWidget* parent);
QFocusFrame* QFocusFrame_new2(struct QFocusFrame_VTable* vtbl);
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
QMetaObject* QFocusFrame_virtualbase_metaObject(const void* self);
void* QFocusFrame_virtualbase_metacast(void* self, const char* param1);
int QFocusFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QFocusFrame_virtualbase_event(void* self, QEvent* e);
bool QFocusFrame_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
void QFocusFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1);
int QFocusFrame_virtualbase_devType(const void* self);
void QFocusFrame_virtualbase_setVisible(void* self, bool visible);
QSize* QFocusFrame_virtualbase_sizeHint(const void* self);
QSize* QFocusFrame_virtualbase_minimumSizeHint(const void* self);
int QFocusFrame_virtualbase_heightForWidth(const void* self, int param1);
bool QFocusFrame_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QFocusFrame_virtualbase_paintEngine(const void* self);
void QFocusFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QFocusFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QFocusFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QFocusFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QFocusFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QFocusFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QFocusFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QFocusFrame_virtualbase_enterEvent(void* self, QEvent* event);
void QFocusFrame_virtualbase_leaveEvent(void* self, QEvent* event);
void QFocusFrame_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QFocusFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QFocusFrame_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QFocusFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QFocusFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QFocusFrame_virtualbase_actionEvent(void* self, QActionEvent* event);
void QFocusFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QFocusFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QFocusFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QFocusFrame_virtualbase_dropEvent(void* self, QDropEvent* event);
void QFocusFrame_virtualbase_showEvent(void* self, QShowEvent* event);
void QFocusFrame_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QFocusFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QFocusFrame_virtualbase_changeEvent(void* self, QEvent* param1);
int QFocusFrame_virtualbase_metric(const void* self, int param1);
void QFocusFrame_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QFocusFrame_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QFocusFrame_virtualbase_sharedPainter(const void* self);
void QFocusFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QFocusFrame_virtualbase_inputMethodQuery(const void* self, int param1);
bool QFocusFrame_virtualbase_focusNextPrevChild(void* self, bool next);
void QFocusFrame_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFocusFrame_virtualbase_childEvent(void* self, QChildEvent* event);
void QFocusFrame_virtualbase_customEvent(void* self, QEvent* event);
void QFocusFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFocusFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFocusFrame_protectedbase_initStyleOption(const void* self, QStyleOption* option);
void QFocusFrame_protectedbase_updateMicroFocus(void* self);
void QFocusFrame_protectedbase_create(void* self);
void QFocusFrame_protectedbase_destroy(void* self);
bool QFocusFrame_protectedbase_focusNextChild(void* self);
bool QFocusFrame_protectedbase_focusPreviousChild(void* self);
QObject* QFocusFrame_protectedbase_sender(const void* self);
int QFocusFrame_protectedbase_senderSignalIndex(const void* self);
int QFocusFrame_protectedbase_receivers(const void* self, const char* signal);
bool QFocusFrame_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QFocusFrame_staticMetaObject();
void QFocusFrame_delete(QFocusFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
