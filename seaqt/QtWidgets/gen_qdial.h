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

struct QDial_VTable {
	void (*destructor)(struct QDial_VTable* vtbl, QDial* self);
	QMetaObject* (*metaObject)(struct QDial_VTable* vtbl, const QDial* self);
	void* (*metacast)(struct QDial_VTable* vtbl, QDial* self, const char* param1);
	int (*metacall)(struct QDial_VTable* vtbl, QDial* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QDial_VTable* vtbl, const QDial* self);
	QSize* (*minimumSizeHint)(struct QDial_VTable* vtbl, const QDial* self);
	bool (*event)(struct QDial_VTable* vtbl, QDial* self, QEvent* e);
	void (*resizeEvent)(struct QDial_VTable* vtbl, QDial* self, QResizeEvent* re);
	void (*paintEvent)(struct QDial_VTable* vtbl, QDial* self, QPaintEvent* pe);
	void (*mousePressEvent)(struct QDial_VTable* vtbl, QDial* self, QMouseEvent* me);
	void (*mouseReleaseEvent)(struct QDial_VTable* vtbl, QDial* self, QMouseEvent* me);
	void (*mouseMoveEvent)(struct QDial_VTable* vtbl, QDial* self, QMouseEvent* me);
	void (*sliderChange)(struct QDial_VTable* vtbl, QDial* self, int change);
	void (*keyPressEvent)(struct QDial_VTable* vtbl, QDial* self, QKeyEvent* ev);
	void (*timerEvent)(struct QDial_VTable* vtbl, QDial* self, QTimerEvent* param1);
	void (*wheelEvent)(struct QDial_VTable* vtbl, QDial* self, QWheelEvent* e);
	void (*changeEvent)(struct QDial_VTable* vtbl, QDial* self, QEvent* e);
	int (*devType)(struct QDial_VTable* vtbl, const QDial* self);
	void (*setVisible)(struct QDial_VTable* vtbl, QDial* self, bool visible);
	int (*heightForWidth)(struct QDial_VTable* vtbl, const QDial* self, int param1);
	bool (*hasHeightForWidth)(struct QDial_VTable* vtbl, const QDial* self);
	QPaintEngine* (*paintEngine)(struct QDial_VTable* vtbl, const QDial* self);
	void (*mouseDoubleClickEvent)(struct QDial_VTable* vtbl, QDial* self, QMouseEvent* event);
	void (*keyReleaseEvent)(struct QDial_VTable* vtbl, QDial* self, QKeyEvent* event);
	void (*focusInEvent)(struct QDial_VTable* vtbl, QDial* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QDial_VTable* vtbl, QDial* self, QFocusEvent* event);
	void (*enterEvent)(struct QDial_VTable* vtbl, QDial* self, QEvent* event);
	void (*leaveEvent)(struct QDial_VTable* vtbl, QDial* self, QEvent* event);
	void (*moveEvent)(struct QDial_VTable* vtbl, QDial* self, QMoveEvent* event);
	void (*closeEvent)(struct QDial_VTable* vtbl, QDial* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QDial_VTable* vtbl, QDial* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QDial_VTable* vtbl, QDial* self, QTabletEvent* event);
	void (*actionEvent)(struct QDial_VTable* vtbl, QDial* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QDial_VTable* vtbl, QDial* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QDial_VTable* vtbl, QDial* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QDial_VTable* vtbl, QDial* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QDial_VTable* vtbl, QDial* self, QDropEvent* event);
	void (*showEvent)(struct QDial_VTable* vtbl, QDial* self, QShowEvent* event);
	void (*hideEvent)(struct QDial_VTable* vtbl, QDial* self, QHideEvent* event);
	bool (*nativeEvent)(struct QDial_VTable* vtbl, QDial* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QDial_VTable* vtbl, const QDial* self, int param1);
	void (*initPainter)(struct QDial_VTable* vtbl, const QDial* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QDial_VTable* vtbl, const QDial* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QDial_VTable* vtbl, const QDial* self);
	void (*inputMethodEvent)(struct QDial_VTable* vtbl, QDial* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QDial_VTable* vtbl, const QDial* self, int param1);
	bool (*focusNextPrevChild)(struct QDial_VTable* vtbl, QDial* self, bool next);
	bool (*eventFilter)(struct QDial_VTable* vtbl, QDial* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QDial_VTable* vtbl, QDial* self, QChildEvent* event);
	void (*customEvent)(struct QDial_VTable* vtbl, QDial* self, QEvent* event);
	void (*connectNotify)(struct QDial_VTable* vtbl, QDial* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDial_VTable* vtbl, QDial* self, QMetaMethod* signal);
};
QDial* QDial_new(struct QDial_VTable* vtbl, QWidget* parent);
QDial* QDial_new2(struct QDial_VTable* vtbl);
void QDial_virtbase(QDial* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QDial_metaObject(const QDial* self);
void* QDial_metacast(QDial* self, const char* param1);
int QDial_metacall(QDial* self, int param1, int param2, void** param3);
struct miqt_string QDial_tr(const char* s);
struct miqt_string QDial_trUtf8(const char* s);
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
struct miqt_string QDial_tr2(const char* s, const char* c);
struct miqt_string QDial_tr3(const char* s, const char* c, int n);
struct miqt_string QDial_trUtf82(const char* s, const char* c);
struct miqt_string QDial_trUtf83(const char* s, const char* c, int n);
QMetaObject* QDial_virtualbase_metaObject(const void* self);
void* QDial_virtualbase_metacast(void* self, const char* param1);
int QDial_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QDial_virtualbase_sizeHint(const void* self);
QSize* QDial_virtualbase_minimumSizeHint(const void* self);
bool QDial_virtualbase_event(void* self, QEvent* e);
void QDial_virtualbase_resizeEvent(void* self, QResizeEvent* re);
void QDial_virtualbase_paintEvent(void* self, QPaintEvent* pe);
void QDial_virtualbase_mousePressEvent(void* self, QMouseEvent* me);
void QDial_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* me);
void QDial_virtualbase_mouseMoveEvent(void* self, QMouseEvent* me);
void QDial_virtualbase_sliderChange(void* self, int change);
void QDial_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);
void QDial_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QDial_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QDial_virtualbase_changeEvent(void* self, QEvent* e);
int QDial_virtualbase_devType(const void* self);
void QDial_virtualbase_setVisible(void* self, bool visible);
int QDial_virtualbase_heightForWidth(const void* self, int param1);
bool QDial_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QDial_virtualbase_paintEngine(const void* self);
void QDial_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QDial_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QDial_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QDial_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QDial_virtualbase_enterEvent(void* self, QEvent* event);
void QDial_virtualbase_leaveEvent(void* self, QEvent* event);
void QDial_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QDial_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QDial_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QDial_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QDial_virtualbase_actionEvent(void* self, QActionEvent* event);
void QDial_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QDial_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QDial_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QDial_virtualbase_dropEvent(void* self, QDropEvent* event);
void QDial_virtualbase_showEvent(void* self, QShowEvent* event);
void QDial_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDial_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QDial_virtualbase_metric(const void* self, int param1);
void QDial_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QDial_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QDial_virtualbase_sharedPainter(const void* self);
void QDial_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QDial_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDial_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDial_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDial_virtualbase_childEvent(void* self, QChildEvent* event);
void QDial_virtualbase_customEvent(void* self, QEvent* event);
void QDial_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDial_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDial_protectedbase_initStyleOption(const void* self, QStyleOptionSlider* option);
void QDial_protectedbase_setRepeatAction(void* self, int action);
int QDial_protectedbase_repeatAction(const void* self);
void QDial_protectedbase_updateMicroFocus(void* self);
void QDial_protectedbase_create(void* self);
void QDial_protectedbase_destroy(void* self);
bool QDial_protectedbase_focusNextChild(void* self);
bool QDial_protectedbase_focusPreviousChild(void* self);
QObject* QDial_protectedbase_sender(const void* self);
int QDial_protectedbase_senderSignalIndex(const void* self);
int QDial_protectedbase_receivers(const void* self, const char* signal);
bool QDial_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QDial_staticMetaObject();
void QDial_delete(QDial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
