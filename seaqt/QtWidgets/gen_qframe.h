#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFRAME_H
#define SEAQT_QTWIDGETS_GEN_QFRAME_H

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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QFrame_VTable {
	void (*destructor)(struct QFrame_VTable* vtbl, QFrame* self);
	QMetaObject* (*metaObject)(struct QFrame_VTable* vtbl, const QFrame* self);
	void* (*metacast)(struct QFrame_VTable* vtbl, QFrame* self, const char* param1);
	int (*metacall)(struct QFrame_VTable* vtbl, QFrame* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QFrame_VTable* vtbl, const QFrame* self);
	bool (*event)(struct QFrame_VTable* vtbl, QFrame* self, QEvent* e);
	void (*paintEvent)(struct QFrame_VTable* vtbl, QFrame* self, QPaintEvent* param1);
	void (*changeEvent)(struct QFrame_VTable* vtbl, QFrame* self, QEvent* param1);
	int (*devType)(struct QFrame_VTable* vtbl, const QFrame* self);
	void (*setVisible)(struct QFrame_VTable* vtbl, QFrame* self, bool visible);
	QSize* (*minimumSizeHint)(struct QFrame_VTable* vtbl, const QFrame* self);
	int (*heightForWidth)(struct QFrame_VTable* vtbl, const QFrame* self, int param1);
	bool (*hasHeightForWidth)(struct QFrame_VTable* vtbl, const QFrame* self);
	QPaintEngine* (*paintEngine)(struct QFrame_VTable* vtbl, const QFrame* self);
	void (*mousePressEvent)(struct QFrame_VTable* vtbl, QFrame* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QFrame_VTable* vtbl, QFrame* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QFrame_VTable* vtbl, QFrame* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QFrame_VTable* vtbl, QFrame* self, QMouseEvent* event);
	void (*wheelEvent)(struct QFrame_VTable* vtbl, QFrame* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QFrame_VTable* vtbl, QFrame* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QFrame_VTable* vtbl, QFrame* self, QKeyEvent* event);
	void (*focusInEvent)(struct QFrame_VTable* vtbl, QFrame* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QFrame_VTable* vtbl, QFrame* self, QFocusEvent* event);
	void (*enterEvent)(struct QFrame_VTable* vtbl, QFrame* self, QEvent* event);
	void (*leaveEvent)(struct QFrame_VTable* vtbl, QFrame* self, QEvent* event);
	void (*moveEvent)(struct QFrame_VTable* vtbl, QFrame* self, QMoveEvent* event);
	void (*resizeEvent)(struct QFrame_VTable* vtbl, QFrame* self, QResizeEvent* event);
	void (*closeEvent)(struct QFrame_VTable* vtbl, QFrame* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QFrame_VTable* vtbl, QFrame* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QFrame_VTable* vtbl, QFrame* self, QTabletEvent* event);
	void (*actionEvent)(struct QFrame_VTable* vtbl, QFrame* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QFrame_VTable* vtbl, QFrame* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QFrame_VTable* vtbl, QFrame* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QFrame_VTable* vtbl, QFrame* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QFrame_VTable* vtbl, QFrame* self, QDropEvent* event);
	void (*showEvent)(struct QFrame_VTable* vtbl, QFrame* self, QShowEvent* event);
	void (*hideEvent)(struct QFrame_VTable* vtbl, QFrame* self, QHideEvent* event);
	bool (*nativeEvent)(struct QFrame_VTable* vtbl, QFrame* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QFrame_VTable* vtbl, const QFrame* self, int param1);
	void (*initPainter)(struct QFrame_VTable* vtbl, const QFrame* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QFrame_VTable* vtbl, const QFrame* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QFrame_VTable* vtbl, const QFrame* self);
	void (*inputMethodEvent)(struct QFrame_VTable* vtbl, QFrame* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QFrame_VTable* vtbl, const QFrame* self, int param1);
	bool (*focusNextPrevChild)(struct QFrame_VTable* vtbl, QFrame* self, bool next);
	bool (*eventFilter)(struct QFrame_VTable* vtbl, QFrame* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QFrame_VTable* vtbl, QFrame* self, QTimerEvent* event);
	void (*childEvent)(struct QFrame_VTable* vtbl, QFrame* self, QChildEvent* event);
	void (*customEvent)(struct QFrame_VTable* vtbl, QFrame* self, QEvent* event);
	void (*connectNotify)(struct QFrame_VTable* vtbl, QFrame* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFrame_VTable* vtbl, QFrame* self, QMetaMethod* signal);
};
QFrame* QFrame_new(struct QFrame_VTable* vtbl, QWidget* parent);
QFrame* QFrame_new2(struct QFrame_VTable* vtbl);
QFrame* QFrame_new3(struct QFrame_VTable* vtbl, QWidget* parent, int f);
void QFrame_virtbase(QFrame* src, QWidget** outptr_QWidget);
QMetaObject* QFrame_metaObject(const QFrame* self);
void* QFrame_metacast(QFrame* self, const char* param1);
int QFrame_metacall(QFrame* self, int param1, int param2, void** param3);
struct miqt_string QFrame_tr(const char* s);
struct miqt_string QFrame_trUtf8(const char* s);
int QFrame_frameStyle(const QFrame* self);
void QFrame_setFrameStyle(QFrame* self, int frameStyle);
int QFrame_frameWidth(const QFrame* self);
QSize* QFrame_sizeHint(const QFrame* self);
int QFrame_frameShape(const QFrame* self);
void QFrame_setFrameShape(QFrame* self, int frameShape);
int QFrame_frameShadow(const QFrame* self);
void QFrame_setFrameShadow(QFrame* self, int frameShadow);
int QFrame_lineWidth(const QFrame* self);
void QFrame_setLineWidth(QFrame* self, int lineWidth);
int QFrame_midLineWidth(const QFrame* self);
void QFrame_setMidLineWidth(QFrame* self, int midLineWidth);
QRect* QFrame_frameRect(const QFrame* self);
void QFrame_setFrameRect(QFrame* self, QRect* frameRect);
bool QFrame_event(QFrame* self, QEvent* e);
void QFrame_paintEvent(QFrame* self, QPaintEvent* param1);
void QFrame_changeEvent(QFrame* self, QEvent* param1);
struct miqt_string QFrame_tr2(const char* s, const char* c);
struct miqt_string QFrame_tr3(const char* s, const char* c, int n);
struct miqt_string QFrame_trUtf82(const char* s, const char* c);
struct miqt_string QFrame_trUtf83(const char* s, const char* c, int n);
QMetaObject* QFrame_virtualbase_metaObject(const void* self);
void* QFrame_virtualbase_metacast(void* self, const char* param1);
int QFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QFrame_virtualbase_sizeHint(const void* self);
bool QFrame_virtualbase_event(void* self, QEvent* e);
void QFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QFrame_virtualbase_changeEvent(void* self, QEvent* param1);
int QFrame_virtualbase_devType(const void* self);
void QFrame_virtualbase_setVisible(void* self, bool visible);
QSize* QFrame_virtualbase_minimumSizeHint(const void* self);
int QFrame_virtualbase_heightForWidth(const void* self, int param1);
bool QFrame_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QFrame_virtualbase_paintEngine(const void* self);
void QFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QFrame_virtualbase_enterEvent(void* self, QEvent* event);
void QFrame_virtualbase_leaveEvent(void* self, QEvent* event);
void QFrame_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QFrame_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QFrame_virtualbase_actionEvent(void* self, QActionEvent* event);
void QFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QFrame_virtualbase_dropEvent(void* self, QDropEvent* event);
void QFrame_virtualbase_showEvent(void* self, QShowEvent* event);
void QFrame_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QFrame_virtualbase_metric(const void* self, int param1);
void QFrame_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QFrame_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QFrame_virtualbase_sharedPainter(const void* self);
void QFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QFrame_virtualbase_inputMethodQuery(const void* self, int param1);
bool QFrame_virtualbase_focusNextPrevChild(void* self, bool next);
bool QFrame_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFrame_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFrame_virtualbase_childEvent(void* self, QChildEvent* event);
void QFrame_virtualbase_customEvent(void* self, QEvent* event);
void QFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFrame_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QFrame_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QFrame_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QFrame_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QFrame_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QFrame_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QFrame_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QFrame_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QFrame_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QFrame_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QFrame_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QFrame_staticMetaObject();
void QFrame_delete(QFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
