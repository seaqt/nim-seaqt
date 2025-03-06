#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QPROGRESSBAR_H
#define SEAQT_QTWIDGETS_GEN_QPROGRESSBAR_H

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
class QProgressBar;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionProgressBar;
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
typedef struct QProgressBar QProgressBar;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionProgressBar QStyleOptionProgressBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QProgressBar_VTable {
	void (*destructor)(struct QProgressBar_VTable* vtbl, QProgressBar* self);
	QMetaObject* (*metaObject)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	void* (*metacast)(struct QProgressBar_VTable* vtbl, QProgressBar* self, const char* param1);
	int (*metacall)(struct QProgressBar_VTable* vtbl, QProgressBar* self, int param1, int param2, void** param3);
	struct miqt_string (*text)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	QSize* (*sizeHint)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	QSize* (*minimumSizeHint)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	bool (*event)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QEvent* e);
	void (*paintEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QPaintEvent* param1);
	void (*initStyleOption)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, QStyleOptionProgressBar* option);
	int (*devType)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	void (*setVisible)(struct QProgressBar_VTable* vtbl, QProgressBar* self, bool visible);
	int (*heightForWidth)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, int param1);
	bool (*hasHeightForWidth)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	QPaintEngine* (*paintEngine)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	void (*mousePressEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMouseEvent* event);
	void (*wheelEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QKeyEvent* event);
	void (*focusInEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QFocusEvent* event);
	void (*enterEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QEnterEvent* event);
	void (*leaveEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QEvent* event);
	void (*moveEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMoveEvent* event);
	void (*resizeEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QResizeEvent* event);
	void (*closeEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QTabletEvent* event);
	void (*actionEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QDropEvent* event);
	void (*showEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QShowEvent* event);
	void (*hideEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QHideEvent* event);
	bool (*nativeEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QEvent* param1);
	int (*metric)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, int param1);
	void (*initPainter)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QProgressBar_VTable* vtbl, const QProgressBar* self);
	void (*inputMethodEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QProgressBar_VTable* vtbl, const QProgressBar* self, int param1);
	bool (*focusNextPrevChild)(struct QProgressBar_VTable* vtbl, QProgressBar* self, bool next);
	bool (*eventFilter)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QTimerEvent* event);
	void (*childEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QChildEvent* event);
	void (*customEvent)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QEvent* event);
	void (*connectNotify)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QProgressBar_VTable* vtbl, QProgressBar* self, QMetaMethod* signal);
};
QProgressBar* QProgressBar_new(struct QProgressBar_VTable* vtbl, QWidget* parent);
QProgressBar* QProgressBar_new2(struct QProgressBar_VTable* vtbl);
void QProgressBar_virtbase(QProgressBar* src, QWidget** outptr_QWidget);
QMetaObject* QProgressBar_metaObject(const QProgressBar* self);
void* QProgressBar_metacast(QProgressBar* self, const char* param1);
int QProgressBar_metacall(QProgressBar* self, int param1, int param2, void** param3);
struct miqt_string QProgressBar_tr(const char* s);
int QProgressBar_minimum(const QProgressBar* self);
int QProgressBar_maximum(const QProgressBar* self);
int QProgressBar_value(const QProgressBar* self);
struct miqt_string QProgressBar_text(const QProgressBar* self);
void QProgressBar_setTextVisible(QProgressBar* self, bool visible);
bool QProgressBar_isTextVisible(const QProgressBar* self);
int QProgressBar_alignment(const QProgressBar* self);
void QProgressBar_setAlignment(QProgressBar* self, int alignment);
QSize* QProgressBar_sizeHint(const QProgressBar* self);
QSize* QProgressBar_minimumSizeHint(const QProgressBar* self);
int QProgressBar_orientation(const QProgressBar* self);
void QProgressBar_setInvertedAppearance(QProgressBar* self, bool invert);
bool QProgressBar_invertedAppearance(const QProgressBar* self);
void QProgressBar_setTextDirection(QProgressBar* self, int textDirection);
int QProgressBar_textDirection(const QProgressBar* self);
void QProgressBar_setFormat(QProgressBar* self, struct miqt_string format);
void QProgressBar_resetFormat(QProgressBar* self);
struct miqt_string QProgressBar_format(const QProgressBar* self);
void QProgressBar_reset(QProgressBar* self);
void QProgressBar_setRange(QProgressBar* self, int minimum, int maximum);
void QProgressBar_setMinimum(QProgressBar* self, int minimum);
void QProgressBar_setMaximum(QProgressBar* self, int maximum);
void QProgressBar_setValue(QProgressBar* self, int value);
void QProgressBar_setOrientation(QProgressBar* self, int orientation);
void QProgressBar_valueChanged(QProgressBar* self, int value);
void QProgressBar_connect_valueChanged(QProgressBar* self, intptr_t slot);
bool QProgressBar_event(QProgressBar* self, QEvent* e);
void QProgressBar_paintEvent(QProgressBar* self, QPaintEvent* param1);
void QProgressBar_initStyleOption(const QProgressBar* self, QStyleOptionProgressBar* option);
struct miqt_string QProgressBar_tr2(const char* s, const char* c);
struct miqt_string QProgressBar_tr3(const char* s, const char* c, int n);
QMetaObject* QProgressBar_virtualbase_metaObject(const void* self);
void* QProgressBar_virtualbase_metacast(void* self, const char* param1);
int QProgressBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QProgressBar_virtualbase_text(const void* self);
QSize* QProgressBar_virtualbase_sizeHint(const void* self);
QSize* QProgressBar_virtualbase_minimumSizeHint(const void* self);
bool QProgressBar_virtualbase_event(void* self, QEvent* e);
void QProgressBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QProgressBar_virtualbase_initStyleOption(const void* self, QStyleOptionProgressBar* option);
int QProgressBar_virtualbase_devType(const void* self);
void QProgressBar_virtualbase_setVisible(void* self, bool visible);
int QProgressBar_virtualbase_heightForWidth(const void* self, int param1);
bool QProgressBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QProgressBar_virtualbase_paintEngine(const void* self);
void QProgressBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QProgressBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QProgressBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QProgressBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QProgressBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QProgressBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QProgressBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QProgressBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QProgressBar_virtualbase_leaveEvent(void* self, QEvent* event);
void QProgressBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QProgressBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QProgressBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QProgressBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QProgressBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QProgressBar_virtualbase_actionEvent(void* self, QActionEvent* event);
void QProgressBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QProgressBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QProgressBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QProgressBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QProgressBar_virtualbase_showEvent(void* self, QShowEvent* event);
void QProgressBar_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QProgressBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QProgressBar_virtualbase_changeEvent(void* self, QEvent* param1);
int QProgressBar_virtualbase_metric(const void* self, int param1);
void QProgressBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QProgressBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QProgressBar_virtualbase_sharedPainter(const void* self);
void QProgressBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QProgressBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QProgressBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QProgressBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QProgressBar_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QProgressBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QProgressBar_virtualbase_customEvent(void* self, QEvent* event);
void QProgressBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QProgressBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QProgressBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QProgressBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QProgressBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QProgressBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QProgressBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QProgressBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QProgressBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QProgressBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QProgressBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QProgressBar_staticMetaObject();
void QProgressBar_delete(QProgressBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
