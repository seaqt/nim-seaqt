#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTACKEDWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QSTACKEDWIDGET_H

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
class QFrame;
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
class QStackedWidget;
class QStyleOptionFrame;
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
typedef struct QFrame QFrame;
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
typedef struct QStackedWidget QStackedWidget;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QStackedWidget_VTable {
	void (*destructor)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self);
	QMetaObject* (*metaObject)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	void* (*metacast)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, const char* param1);
	int (*metacall)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, int param1, int param2, void** param3);
	bool (*event)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QEvent* e);
	QSize* (*sizeHint)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	void (*paintEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QPaintEvent* param1);
	void (*changeEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QEvent* param1);
	int (*devType)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	void (*setVisible)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, bool visible);
	QSize* (*minimumSizeHint)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	int (*heightForWidth)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	QPaintEngine* (*paintEngine)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	void (*mousePressEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QEvent* event);
	void (*leaveEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QEvent* event);
	void (*moveEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMoveEvent* event);
	void (*resizeEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QResizeEvent* event);
	void (*closeEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QDropEvent* event);
	void (*showEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self, int param1);
	void (*initPainter)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self);
	void (*inputMethodEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QStackedWidget_VTable* vtbl, const QStackedWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, bool next);
	bool (*eventFilter)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QChildEvent* event);
	void (*customEvent)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QEvent* event);
	void (*connectNotify)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStackedWidget_VTable* vtbl, QStackedWidget* self, QMetaMethod* signal);
};
QStackedWidget* QStackedWidget_new(struct QStackedWidget_VTable* vtbl, QWidget* parent);
QStackedWidget* QStackedWidget_new2(struct QStackedWidget_VTable* vtbl);
void QStackedWidget_virtbase(QStackedWidget* src, QFrame** outptr_QFrame);
QMetaObject* QStackedWidget_metaObject(const QStackedWidget* self);
void* QStackedWidget_metacast(QStackedWidget* self, const char* param1);
int QStackedWidget_metacall(QStackedWidget* self, int param1, int param2, void** param3);
struct miqt_string QStackedWidget_tr(const char* s);
struct miqt_string QStackedWidget_trUtf8(const char* s);
int QStackedWidget_addWidget(QStackedWidget* self, QWidget* w);
int QStackedWidget_insertWidget(QStackedWidget* self, int index, QWidget* w);
void QStackedWidget_removeWidget(QStackedWidget* self, QWidget* w);
QWidget* QStackedWidget_currentWidget(const QStackedWidget* self);
int QStackedWidget_currentIndex(const QStackedWidget* self);
int QStackedWidget_indexOf(const QStackedWidget* self, QWidget* param1);
QWidget* QStackedWidget_widget(const QStackedWidget* self, int param1);
int QStackedWidget_count(const QStackedWidget* self);
void QStackedWidget_setCurrentIndex(QStackedWidget* self, int index);
void QStackedWidget_setCurrentWidget(QStackedWidget* self, QWidget* w);
void QStackedWidget_currentChanged(QStackedWidget* self, int param1);
void QStackedWidget_connect_currentChanged(QStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QStackedWidget_widgetRemoved(QStackedWidget* self, int index);
void QStackedWidget_connect_widgetRemoved(QStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QStackedWidget_event(QStackedWidget* self, QEvent* e);
struct miqt_string QStackedWidget_tr2(const char* s, const char* c);
struct miqt_string QStackedWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QStackedWidget_trUtf82(const char* s, const char* c);
struct miqt_string QStackedWidget_trUtf83(const char* s, const char* c, int n);
QMetaObject* QStackedWidget_virtualbase_metaObject(const void* self);
void* QStackedWidget_virtualbase_metacast(void* self, const char* param1);
int QStackedWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QStackedWidget_virtualbase_event(void* self, QEvent* e);
QSize* QStackedWidget_virtualbase_sizeHint(const void* self);
void QStackedWidget_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QStackedWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QStackedWidget_virtualbase_devType(const void* self);
void QStackedWidget_virtualbase_setVisible(void* self, bool visible);
QSize* QStackedWidget_virtualbase_minimumSizeHint(const void* self);
int QStackedWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QStackedWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QStackedWidget_virtualbase_paintEngine(const void* self);
void QStackedWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QStackedWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QStackedWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QStackedWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QStackedWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QStackedWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QStackedWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QStackedWidget_virtualbase_enterEvent(void* self, QEvent* event);
void QStackedWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QStackedWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QStackedWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QStackedWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QStackedWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QStackedWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QStackedWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QStackedWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QStackedWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QStackedWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QStackedWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QStackedWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QStackedWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QStackedWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QStackedWidget_virtualbase_metric(const void* self, int param1);
void QStackedWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QStackedWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QStackedWidget_virtualbase_sharedPainter(const void* self);
void QStackedWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QStackedWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QStackedWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QStackedWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStackedWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStackedWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QStackedWidget_virtualbase_customEvent(void* self, QEvent* event);
void QStackedWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStackedWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QStackedWidget_protectedbase_drawFrame(void* self, QPainter* param1);
void QStackedWidget_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
void QStackedWidget_protectedbase_updateMicroFocus(void* self);
void QStackedWidget_protectedbase_create(void* self);
void QStackedWidget_protectedbase_destroy(void* self);
bool QStackedWidget_protectedbase_focusNextChild(void* self);
bool QStackedWidget_protectedbase_focusPreviousChild(void* self);
QObject* QStackedWidget_protectedbase_sender(const void* self);
int QStackedWidget_protectedbase_senderSignalIndex(const void* self);
int QStackedWidget_protectedbase_receivers(const void* self, const char* signal);
bool QStackedWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QStackedWidget_staticMetaObject();
void QStackedWidget_delete(QStackedWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
