#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSCROLLBAR_H
#define SEAQT_QTWIDGETS_GEN_QSCROLLBAR_H

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
class QScrollBar;
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
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QScrollBar_VTable {
	void (*destructor)(struct QScrollBar_VTable* vtbl, QScrollBar* self);
	QMetaObject* (*metaObject)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	void* (*metacast)(struct QScrollBar_VTable* vtbl, QScrollBar* self, const char* param1);
	int (*metacall)(struct QScrollBar_VTable* vtbl, QScrollBar* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	bool (*event)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QEvent* event);
	void (*wheelEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QWheelEvent* param1);
	void (*paintEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QPaintEvent* param1);
	void (*mousePressEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMouseEvent* param1);
	void (*hideEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QHideEvent* param1);
	void (*sliderChange)(struct QScrollBar_VTable* vtbl, QScrollBar* self, int change);
	void (*contextMenuEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QContextMenuEvent* param1);
	void (*initStyleOption)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, QStyleOptionSlider* option);
	void (*keyPressEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QKeyEvent* ev);
	void (*timerEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QTimerEvent* param1);
	void (*changeEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QEvent* e);
	int (*devType)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	void (*setVisible)(struct QScrollBar_VTable* vtbl, QScrollBar* self, bool visible);
	QSize* (*minimumSizeHint)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	int (*heightForWidth)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, int param1);
	bool (*hasHeightForWidth)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	QPaintEngine* (*paintEngine)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	void (*mouseDoubleClickEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMouseEvent* event);
	void (*keyReleaseEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QKeyEvent* event);
	void (*focusInEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QFocusEvent* event);
	void (*enterEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QEnterEvent* event);
	void (*leaveEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QEvent* event);
	void (*moveEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMoveEvent* event);
	void (*resizeEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QResizeEvent* event);
	void (*closeEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QCloseEvent* event);
	void (*tabletEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QTabletEvent* event);
	void (*actionEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QDropEvent* event);
	void (*showEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QShowEvent* event);
	bool (*nativeEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, int param1);
	void (*initPainter)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QScrollBar_VTable* vtbl, const QScrollBar* self);
	void (*inputMethodEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QScrollBar_VTable* vtbl, const QScrollBar* self, int param1);
	bool (*focusNextPrevChild)(struct QScrollBar_VTable* vtbl, QScrollBar* self, bool next);
	bool (*eventFilter)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QChildEvent* event);
	void (*customEvent)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QEvent* event);
	void (*connectNotify)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QScrollBar_VTable* vtbl, QScrollBar* self, QMetaMethod* signal);
};
QScrollBar* QScrollBar_new(struct QScrollBar_VTable* vtbl, QWidget* parent);
QScrollBar* QScrollBar_new2(struct QScrollBar_VTable* vtbl);
QScrollBar* QScrollBar_new3(struct QScrollBar_VTable* vtbl, int param1);
QScrollBar* QScrollBar_new4(struct QScrollBar_VTable* vtbl, int param1, QWidget* parent);
void QScrollBar_virtbase(QScrollBar* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QScrollBar_metaObject(const QScrollBar* self);
void* QScrollBar_metacast(QScrollBar* self, const char* param1);
int QScrollBar_metacall(QScrollBar* self, int param1, int param2, void** param3);
struct miqt_string QScrollBar_tr(const char* s);
QSize* QScrollBar_sizeHint(const QScrollBar* self);
bool QScrollBar_event(QScrollBar* self, QEvent* event);
void QScrollBar_wheelEvent(QScrollBar* self, QWheelEvent* param1);
void QScrollBar_paintEvent(QScrollBar* self, QPaintEvent* param1);
void QScrollBar_mousePressEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_mouseReleaseEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_mouseMoveEvent(QScrollBar* self, QMouseEvent* param1);
void QScrollBar_hideEvent(QScrollBar* self, QHideEvent* param1);
void QScrollBar_sliderChange(QScrollBar* self, int change);
void QScrollBar_contextMenuEvent(QScrollBar* self, QContextMenuEvent* param1);
void QScrollBar_initStyleOption(const QScrollBar* self, QStyleOptionSlider* option);
struct miqt_string QScrollBar_tr2(const char* s, const char* c);
struct miqt_string QScrollBar_tr3(const char* s, const char* c, int n);
QMetaObject* QScrollBar_virtualbase_metaObject(const void* self);
void* QScrollBar_virtualbase_metacast(void* self, const char* param1);
int QScrollBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QScrollBar_virtualbase_sizeHint(const void* self);
bool QScrollBar_virtualbase_event(void* self, QEvent* event);
void QScrollBar_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QScrollBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QScrollBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QScrollBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QScrollBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QScrollBar_virtualbase_hideEvent(void* self, QHideEvent* param1);
void QScrollBar_virtualbase_sliderChange(void* self, int change);
void QScrollBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QScrollBar_virtualbase_initStyleOption(const void* self, QStyleOptionSlider* option);
void QScrollBar_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);
void QScrollBar_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QScrollBar_virtualbase_changeEvent(void* self, QEvent* e);
int QScrollBar_virtualbase_devType(const void* self);
void QScrollBar_virtualbase_setVisible(void* self, bool visible);
QSize* QScrollBar_virtualbase_minimumSizeHint(const void* self);
int QScrollBar_virtualbase_heightForWidth(const void* self, int param1);
bool QScrollBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QScrollBar_virtualbase_paintEngine(const void* self);
void QScrollBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QScrollBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QScrollBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QScrollBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QScrollBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QScrollBar_virtualbase_leaveEvent(void* self, QEvent* event);
void QScrollBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QScrollBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QScrollBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QScrollBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QScrollBar_virtualbase_actionEvent(void* self, QActionEvent* event);
void QScrollBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QScrollBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QScrollBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QScrollBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QScrollBar_virtualbase_showEvent(void* self, QShowEvent* event);
bool QScrollBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QScrollBar_virtualbase_metric(const void* self, int param1);
void QScrollBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QScrollBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QScrollBar_virtualbase_sharedPainter(const void* self);
void QScrollBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QScrollBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QScrollBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QScrollBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QScrollBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QScrollBar_virtualbase_customEvent(void* self, QEvent* event);
void QScrollBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QScrollBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QScrollBar_protectedbase_setRepeatAction(bool* _dynamic_cast_ok, void* self, int action);
int QScrollBar_protectedbase_repeatAction(bool* _dynamic_cast_ok, const void* self);
void QScrollBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QScrollBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QScrollBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QScrollBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QScrollBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QScrollBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QScrollBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QScrollBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QScrollBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QScrollBar_staticMetaObject();
void QScrollBar_delete(QScrollBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
