#pragma once
#ifndef SEAQT_QTSVG_GEN_QSVGWIDGET_H
#define SEAQT_QTSVG_GEN_QSVGWIDGET_H

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
class QSvgRenderer;
class QSvgWidget;
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
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QSvgWidget QSvgWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QSvgWidget_VTable {
	void (*destructor)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self);
	QMetaObject* (*metaObject)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	void* (*metacast)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, const char* param1);
	int (*metacall)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	void (*paintEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QPaintEvent* event);
	int (*devType)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	void (*setVisible)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, bool visible);
	QSize* (*minimumSizeHint)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	int (*heightForWidth)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	QPaintEngine* (*paintEngine)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	bool (*event)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QEvent* event);
	void (*mousePressEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QEvent* event);
	void (*leaveEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QEvent* event);
	void (*moveEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMoveEvent* event);
	void (*resizeEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QResizeEvent* event);
	void (*closeEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QDropEvent* event);
	void (*showEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QEvent* param1);
	int (*metric)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self, int param1);
	void (*initPainter)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self);
	void (*inputMethodEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSvgWidget_VTable* vtbl, const QSvgWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, bool next);
	bool (*eventFilter)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QChildEvent* event);
	void (*customEvent)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QEvent* event);
	void (*connectNotify)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSvgWidget_VTable* vtbl, QSvgWidget* self, QMetaMethod* signal);
};
QSvgWidget* QSvgWidget_new(struct QSvgWidget_VTable* vtbl, QWidget* parent);
QSvgWidget* QSvgWidget_new2(struct QSvgWidget_VTable* vtbl);
QSvgWidget* QSvgWidget_new3(struct QSvgWidget_VTable* vtbl, struct miqt_string file);
QSvgWidget* QSvgWidget_new4(struct QSvgWidget_VTable* vtbl, struct miqt_string file, QWidget* parent);
void QSvgWidget_virtbase(QSvgWidget* src, QWidget** outptr_QWidget);
QMetaObject* QSvgWidget_metaObject(const QSvgWidget* self);
void* QSvgWidget_metacast(QSvgWidget* self, const char* param1);
int QSvgWidget_metacall(QSvgWidget* self, int param1, int param2, void** param3);
struct miqt_string QSvgWidget_tr(const char* s);
struct miqt_string QSvgWidget_trUtf8(const char* s);
QSvgRenderer* QSvgWidget_renderer(const QSvgWidget* self);
QSize* QSvgWidget_sizeHint(const QSvgWidget* self);
void QSvgWidget_load(QSvgWidget* self, struct miqt_string file);
void QSvgWidget_loadWithContents(QSvgWidget* self, struct miqt_string contents);
void QSvgWidget_paintEvent(QSvgWidget* self, QPaintEvent* event);
struct miqt_string QSvgWidget_tr2(const char* s, const char* c);
struct miqt_string QSvgWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QSvgWidget_trUtf82(const char* s, const char* c);
struct miqt_string QSvgWidget_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSvgWidget_virtualbase_metaObject(const void* self);
void* QSvgWidget_virtualbase_metacast(void* self, const char* param1);
int QSvgWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QSvgWidget_virtualbase_sizeHint(const void* self);
void QSvgWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
int QSvgWidget_virtualbase_devType(const void* self);
void QSvgWidget_virtualbase_setVisible(void* self, bool visible);
QSize* QSvgWidget_virtualbase_minimumSizeHint(const void* self);
int QSvgWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QSvgWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSvgWidget_virtualbase_paintEngine(const void* self);
bool QSvgWidget_virtualbase_event(void* self, QEvent* event);
void QSvgWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSvgWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QSvgWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QSvgWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QSvgWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSvgWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSvgWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSvgWidget_virtualbase_enterEvent(void* self, QEvent* event);
void QSvgWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QSvgWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QSvgWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QSvgWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSvgWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSvgWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSvgWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSvgWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSvgWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSvgWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSvgWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QSvgWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QSvgWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSvgWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QSvgWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QSvgWidget_virtualbase_metric(const void* self, int param1);
void QSvgWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSvgWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSvgWidget_virtualbase_sharedPainter(const void* self);
void QSvgWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSvgWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSvgWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSvgWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSvgWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSvgWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QSvgWidget_virtualbase_customEvent(void* self, QEvent* event);
void QSvgWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSvgWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSvgWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QSvgWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QSvgWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QSvgWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QSvgWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QSvgWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSvgWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSvgWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSvgWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSvgWidget_staticMetaObject();
void QSvgWidget_delete(QSvgWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
