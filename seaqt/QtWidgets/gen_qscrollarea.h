#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSCROLLAREA_H
#define SEAQT_QTWIDGETS_GEN_QSCROLLAREA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractScrollArea;
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
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMargins;
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
class QScrollArea;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
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
typedef struct QScrollArea QScrollArea;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QScrollArea_VTable {
	void (*destructor)(struct QScrollArea_VTable* vtbl, QScrollArea* self);
	QMetaObject* (*metaObject)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	void* (*metacast)(struct QScrollArea_VTable* vtbl, QScrollArea* self, const char* param1);
	int (*metacall)(struct QScrollArea_VTable* vtbl, QScrollArea* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	bool (*focusNextPrevChild)(struct QScrollArea_VTable* vtbl, QScrollArea* self, bool next);
	bool (*event)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEvent* param1);
	bool (*eventFilter)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QObject* param1, QEvent* param2);
	void (*resizeEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QResizeEvent* param1);
	void (*scrollContentsBy)(struct QScrollArea_VTable* vtbl, QScrollArea* self, int dx, int dy);
	QSize* (*viewportSizeHint)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	QSize* (*minimumSizeHint)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	void (*setupViewport)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QWidget* viewport);
	bool (*viewportEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEvent* param1);
	void (*paintEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QPaintEvent* param1);
	void (*mousePressEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QDropEvent* param1);
	void (*keyPressEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QKeyEvent* param1);
	void (*changeEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEvent* param1);
	void (*initStyleOption)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, QStyleOptionFrame* option);
	int (*devType)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	void (*setVisible)(struct QScrollArea_VTable* vtbl, QScrollArea* self, bool visible);
	int (*heightForWidth)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, int param1);
	bool (*hasHeightForWidth)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	QPaintEngine* (*paintEngine)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	void (*keyReleaseEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QKeyEvent* event);
	void (*focusInEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QFocusEvent* event);
	void (*enterEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEnterEvent* event);
	void (*leaveEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEvent* event);
	void (*moveEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMoveEvent* event);
	void (*closeEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QCloseEvent* event);
	void (*tabletEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QTabletEvent* event);
	void (*actionEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QActionEvent* event);
	void (*showEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QShowEvent* event);
	void (*hideEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QHideEvent* event);
	bool (*nativeEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, int param1);
	void (*initPainter)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QScrollArea_VTable* vtbl, const QScrollArea* self);
	void (*inputMethodEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QScrollArea_VTable* vtbl, const QScrollArea* self, int param1);
	void (*timerEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QTimerEvent* event);
	void (*childEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QChildEvent* event);
	void (*customEvent)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QEvent* event);
	void (*connectNotify)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QScrollArea_VTable* vtbl, QScrollArea* self, QMetaMethod* signal);
};
QScrollArea* QScrollArea_new(struct QScrollArea_VTable* vtbl, QWidget* parent);
QScrollArea* QScrollArea_new2(struct QScrollArea_VTable* vtbl);
void QScrollArea_virtbase(QScrollArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QScrollArea_metaObject(const QScrollArea* self);
void* QScrollArea_metacast(QScrollArea* self, const char* param1);
int QScrollArea_metacall(QScrollArea* self, int param1, int param2, void** param3);
struct miqt_string QScrollArea_tr(const char* s);
QWidget* QScrollArea_widget(const QScrollArea* self);
void QScrollArea_setWidget(QScrollArea* self, QWidget* widget);
QWidget* QScrollArea_takeWidget(QScrollArea* self);
bool QScrollArea_widgetResizable(const QScrollArea* self);
void QScrollArea_setWidgetResizable(QScrollArea* self, bool resizable);
QSize* QScrollArea_sizeHint(const QScrollArea* self);
bool QScrollArea_focusNextPrevChild(QScrollArea* self, bool next);
int QScrollArea_alignment(const QScrollArea* self);
void QScrollArea_setAlignment(QScrollArea* self, int alignment);
void QScrollArea_ensureVisible(QScrollArea* self, int x, int y);
void QScrollArea_ensureWidgetVisible(QScrollArea* self, QWidget* childWidget);
bool QScrollArea_event(QScrollArea* self, QEvent* param1);
bool QScrollArea_eventFilter(QScrollArea* self, QObject* param1, QEvent* param2);
void QScrollArea_resizeEvent(QScrollArea* self, QResizeEvent* param1);
void QScrollArea_scrollContentsBy(QScrollArea* self, int dx, int dy);
QSize* QScrollArea_viewportSizeHint(const QScrollArea* self);
struct miqt_string QScrollArea_tr2(const char* s, const char* c);
struct miqt_string QScrollArea_tr3(const char* s, const char* c, int n);
void QScrollArea_ensureVisible3(QScrollArea* self, int x, int y, int xmargin);
void QScrollArea_ensureVisible4(QScrollArea* self, int x, int y, int xmargin, int ymargin);
void QScrollArea_ensureWidgetVisible2(QScrollArea* self, QWidget* childWidget, int xmargin);
void QScrollArea_ensureWidgetVisible3(QScrollArea* self, QWidget* childWidget, int xmargin, int ymargin);
QMetaObject* QScrollArea_virtualbase_metaObject(const void* self);
void* QScrollArea_virtualbase_metacast(void* self, const char* param1);
int QScrollArea_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QScrollArea_virtualbase_sizeHint(const void* self);
bool QScrollArea_virtualbase_focusNextPrevChild(void* self, bool next);
bool QScrollArea_virtualbase_event(void* self, QEvent* param1);
bool QScrollArea_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
void QScrollArea_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QScrollArea_virtualbase_scrollContentsBy(void* self, int dx, int dy);
QSize* QScrollArea_virtualbase_viewportSizeHint(const void* self);
QSize* QScrollArea_virtualbase_minimumSizeHint(const void* self);
void QScrollArea_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QScrollArea_virtualbase_viewportEvent(void* self, QEvent* param1);
void QScrollArea_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QScrollArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
void QScrollArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QScrollArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QScrollArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QScrollArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
void QScrollArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
void QScrollArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
void QScrollArea_virtualbase_dropEvent(void* self, QDropEvent* param1);
void QScrollArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QScrollArea_virtualbase_changeEvent(void* self, QEvent* param1);
void QScrollArea_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
int QScrollArea_virtualbase_devType(const void* self);
void QScrollArea_virtualbase_setVisible(void* self, bool visible);
int QScrollArea_virtualbase_heightForWidth(const void* self, int param1);
bool QScrollArea_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QScrollArea_virtualbase_paintEngine(const void* self);
void QScrollArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QScrollArea_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QScrollArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QScrollArea_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QScrollArea_virtualbase_leaveEvent(void* self, QEvent* event);
void QScrollArea_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QScrollArea_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QScrollArea_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QScrollArea_virtualbase_actionEvent(void* self, QActionEvent* event);
void QScrollArea_virtualbase_showEvent(void* self, QShowEvent* event);
void QScrollArea_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QScrollArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QScrollArea_virtualbase_metric(const void* self, int param1);
void QScrollArea_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QScrollArea_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QScrollArea_virtualbase_sharedPainter(const void* self);
void QScrollArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QScrollArea_virtualbase_inputMethodQuery(const void* self, int param1);
void QScrollArea_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QScrollArea_virtualbase_childEvent(void* self, QChildEvent* event);
void QScrollArea_virtualbase_customEvent(void* self, QEvent* event);
void QScrollArea_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QScrollArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QScrollArea_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QScrollArea_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QScrollArea_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QScrollArea_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QScrollArea_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QScrollArea_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QScrollArea_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QScrollArea_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QScrollArea_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QScrollArea_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QScrollArea_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QScrollArea_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QScrollArea_staticMetaObject();
void QScrollArea_delete(QScrollArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
