#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSLIDER_H
#define SEAQT_QTWIDGETS_GEN_QSLIDER_H

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
class QSlider;
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
typedef struct QSlider QSlider;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QSlider_VTable {
	void (*destructor)(struct QSlider_VTable* vtbl, QSlider* self);
	QMetaObject* (*metaObject)(struct QSlider_VTable* vtbl, const QSlider* self);
	void* (*metacast)(struct QSlider_VTable* vtbl, QSlider* self, const char* param1);
	int (*metacall)(struct QSlider_VTable* vtbl, QSlider* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QSlider_VTable* vtbl, const QSlider* self);
	QSize* (*minimumSizeHint)(struct QSlider_VTable* vtbl, const QSlider* self);
	bool (*event)(struct QSlider_VTable* vtbl, QSlider* self, QEvent* event);
	void (*paintEvent)(struct QSlider_VTable* vtbl, QSlider* self, QPaintEvent* ev);
	void (*mousePressEvent)(struct QSlider_VTable* vtbl, QSlider* self, QMouseEvent* ev);
	void (*mouseReleaseEvent)(struct QSlider_VTable* vtbl, QSlider* self, QMouseEvent* ev);
	void (*mouseMoveEvent)(struct QSlider_VTable* vtbl, QSlider* self, QMouseEvent* ev);
	void (*sliderChange)(struct QSlider_VTable* vtbl, QSlider* self, int change);
	void (*keyPressEvent)(struct QSlider_VTable* vtbl, QSlider* self, QKeyEvent* ev);
	void (*timerEvent)(struct QSlider_VTable* vtbl, QSlider* self, QTimerEvent* param1);
	void (*wheelEvent)(struct QSlider_VTable* vtbl, QSlider* self, QWheelEvent* e);
	void (*changeEvent)(struct QSlider_VTable* vtbl, QSlider* self, QEvent* e);
	int (*devType)(struct QSlider_VTable* vtbl, const QSlider* self);
	void (*setVisible)(struct QSlider_VTable* vtbl, QSlider* self, bool visible);
	int (*heightForWidth)(struct QSlider_VTable* vtbl, const QSlider* self, int param1);
	bool (*hasHeightForWidth)(struct QSlider_VTable* vtbl, const QSlider* self);
	QPaintEngine* (*paintEngine)(struct QSlider_VTable* vtbl, const QSlider* self);
	void (*mouseDoubleClickEvent)(struct QSlider_VTable* vtbl, QSlider* self, QMouseEvent* event);
	void (*keyReleaseEvent)(struct QSlider_VTable* vtbl, QSlider* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSlider_VTable* vtbl, QSlider* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSlider_VTable* vtbl, QSlider* self, QFocusEvent* event);
	void (*enterEvent)(struct QSlider_VTable* vtbl, QSlider* self, QEvent* event);
	void (*leaveEvent)(struct QSlider_VTable* vtbl, QSlider* self, QEvent* event);
	void (*moveEvent)(struct QSlider_VTable* vtbl, QSlider* self, QMoveEvent* event);
	void (*resizeEvent)(struct QSlider_VTable* vtbl, QSlider* self, QResizeEvent* event);
	void (*closeEvent)(struct QSlider_VTable* vtbl, QSlider* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSlider_VTable* vtbl, QSlider* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSlider_VTable* vtbl, QSlider* self, QTabletEvent* event);
	void (*actionEvent)(struct QSlider_VTable* vtbl, QSlider* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSlider_VTable* vtbl, QSlider* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSlider_VTable* vtbl, QSlider* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSlider_VTable* vtbl, QSlider* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSlider_VTable* vtbl, QSlider* self, QDropEvent* event);
	void (*showEvent)(struct QSlider_VTable* vtbl, QSlider* self, QShowEvent* event);
	void (*hideEvent)(struct QSlider_VTable* vtbl, QSlider* self, QHideEvent* event);
	bool (*nativeEvent)(struct QSlider_VTable* vtbl, QSlider* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QSlider_VTable* vtbl, const QSlider* self, int param1);
	void (*initPainter)(struct QSlider_VTable* vtbl, const QSlider* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSlider_VTable* vtbl, const QSlider* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSlider_VTable* vtbl, const QSlider* self);
	void (*inputMethodEvent)(struct QSlider_VTable* vtbl, QSlider* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSlider_VTable* vtbl, const QSlider* self, int param1);
	bool (*focusNextPrevChild)(struct QSlider_VTable* vtbl, QSlider* self, bool next);
	bool (*eventFilter)(struct QSlider_VTable* vtbl, QSlider* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QSlider_VTable* vtbl, QSlider* self, QChildEvent* event);
	void (*customEvent)(struct QSlider_VTable* vtbl, QSlider* self, QEvent* event);
	void (*connectNotify)(struct QSlider_VTable* vtbl, QSlider* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSlider_VTable* vtbl, QSlider* self, QMetaMethod* signal);
};
QSlider* QSlider_new(struct QSlider_VTable* vtbl, QWidget* parent);
QSlider* QSlider_new2(struct QSlider_VTable* vtbl);
QSlider* QSlider_new3(struct QSlider_VTable* vtbl, int orientation);
QSlider* QSlider_new4(struct QSlider_VTable* vtbl, int orientation, QWidget* parent);
void QSlider_virtbase(QSlider* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QSlider_metaObject(const QSlider* self);
void* QSlider_metacast(QSlider* self, const char* param1);
int QSlider_metacall(QSlider* self, int param1, int param2, void** param3);
struct miqt_string QSlider_tr(const char* s);
struct miqt_string QSlider_trUtf8(const char* s);
QSize* QSlider_sizeHint(const QSlider* self);
QSize* QSlider_minimumSizeHint(const QSlider* self);
void QSlider_setTickPosition(QSlider* self, int position);
int QSlider_tickPosition(const QSlider* self);
void QSlider_setTickInterval(QSlider* self, int ti);
int QSlider_tickInterval(const QSlider* self);
bool QSlider_event(QSlider* self, QEvent* event);
void QSlider_paintEvent(QSlider* self, QPaintEvent* ev);
void QSlider_mousePressEvent(QSlider* self, QMouseEvent* ev);
void QSlider_mouseReleaseEvent(QSlider* self, QMouseEvent* ev);
void QSlider_mouseMoveEvent(QSlider* self, QMouseEvent* ev);
struct miqt_string QSlider_tr2(const char* s, const char* c);
struct miqt_string QSlider_tr3(const char* s, const char* c, int n);
struct miqt_string QSlider_trUtf82(const char* s, const char* c);
struct miqt_string QSlider_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSlider_virtualbase_metaObject(const void* self);
void* QSlider_virtualbase_metacast(void* self, const char* param1);
int QSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QSlider_virtualbase_sizeHint(const void* self);
QSize* QSlider_virtualbase_minimumSizeHint(const void* self);
bool QSlider_virtualbase_event(void* self, QEvent* event);
void QSlider_virtualbase_paintEvent(void* self, QPaintEvent* ev);
void QSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* ev);
void QSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev);
void QSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev);
void QSlider_virtualbase_sliderChange(void* self, int change);
void QSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);
void QSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QSlider_virtualbase_changeEvent(void* self, QEvent* e);
int QSlider_virtualbase_devType(const void* self);
void QSlider_virtualbase_setVisible(void* self, bool visible);
int QSlider_virtualbase_heightForWidth(const void* self, int param1);
bool QSlider_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSlider_virtualbase_paintEngine(const void* self);
void QSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSlider_virtualbase_enterEvent(void* self, QEvent* event);
void QSlider_virtualbase_leaveEvent(void* self, QEvent* event);
void QSlider_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QSlider_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSlider_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSlider_virtualbase_dropEvent(void* self, QDropEvent* event);
void QSlider_virtualbase_showEvent(void* self, QShowEvent* event);
void QSlider_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QSlider_virtualbase_metric(const void* self, int param1);
void QSlider_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSlider_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSlider_virtualbase_sharedPainter(const void* self);
void QSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSlider_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSlider_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSlider_virtualbase_childEvent(void* self, QChildEvent* event);
void QSlider_virtualbase_customEvent(void* self, QEvent* event);
void QSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSlider_protectedbase_initStyleOption(const void* self, QStyleOptionSlider* option);
void QSlider_protectedbase_setRepeatAction(void* self, int action);
int QSlider_protectedbase_repeatAction(const void* self);
void QSlider_protectedbase_updateMicroFocus(void* self);
void QSlider_protectedbase_create(void* self);
void QSlider_protectedbase_destroy(void* self);
bool QSlider_protectedbase_focusNextChild(void* self);
bool QSlider_protectedbase_focusPreviousChild(void* self);
QObject* QSlider_protectedbase_sender(const void* self);
int QSlider_protectedbase_senderSignalIndex(const void* self);
int QSlider_protectedbase_receivers(const void* self, const char* signal);
bool QSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSlider_staticMetaObject();
void QSlider_delete(QSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
