#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTSCROLLAREA_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTSCROLLAREA_H

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
class QScrollBar;
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
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractScrollArea_VTable {
	void (*destructor)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self);
	QMetaObject* (*metaObject)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void* (*metacast)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, const char* param1);
	int (*metacall)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, int param1, int param2, void** param3);
	QSize* (*minimumSizeHint)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	QSize* (*sizeHint)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void (*setupViewport)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QWidget* viewport);
	bool (*eventFilter)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QObject* param1, QEvent* param2);
	bool (*event)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* param1);
	bool (*viewportEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* param1);
	void (*resizeEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QResizeEvent* param1);
	void (*paintEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QPaintEvent* param1);
	void (*mousePressEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QDropEvent* param1);
	void (*keyPressEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QKeyEvent* param1);
	void (*scrollContentsBy)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, int dx, int dy);
	QSize* (*viewportSizeHint)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void (*changeEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* param1);
	int (*devType)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void (*setVisible)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, bool visible);
	int (*heightForWidth)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	QPaintEngine* (*paintEngine)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void (*keyReleaseEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QKeyEvent* event);
	void (*focusInEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QFocusEvent* event);
	void (*enterEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* event);
	void (*leaveEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* event);
	void (*moveEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMoveEvent* event);
	void (*closeEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QCloseEvent* event);
	void (*tabletEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QActionEvent* event);
	void (*showEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QShowEvent* event);
	void (*hideEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QHideEvent* event);
	bool (*nativeEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self, int param1);
	void (*initPainter)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self);
	void (*inputMethodEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QAbstractScrollArea_VTable* vtbl, const QAbstractScrollArea* self, int param1);
	bool (*focusNextPrevChild)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, bool next);
	void (*timerEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QEvent* event);
	void (*connectNotify)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractScrollArea_VTable* vtbl, QAbstractScrollArea* self, QMetaMethod* signal);
};
QAbstractScrollArea* QAbstractScrollArea_new(struct QAbstractScrollArea_VTable* vtbl, QWidget* parent);
QAbstractScrollArea* QAbstractScrollArea_new2(struct QAbstractScrollArea_VTable* vtbl);
void QAbstractScrollArea_virtbase(QAbstractScrollArea* src, QFrame** outptr_QFrame);
QMetaObject* QAbstractScrollArea_metaObject(const QAbstractScrollArea* self);
void* QAbstractScrollArea_metacast(QAbstractScrollArea* self, const char* param1);
int QAbstractScrollArea_metacall(QAbstractScrollArea* self, int param1, int param2, void** param3);
struct miqt_string QAbstractScrollArea_tr(const char* s);
struct miqt_string QAbstractScrollArea_trUtf8(const char* s);
int QAbstractScrollArea_verticalScrollBarPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setVerticalScrollBarPolicy(QAbstractScrollArea* self, int verticalScrollBarPolicy);
QScrollBar* QAbstractScrollArea_verticalScrollBar(const QAbstractScrollArea* self);
void QAbstractScrollArea_setVerticalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
int QAbstractScrollArea_horizontalScrollBarPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setHorizontalScrollBarPolicy(QAbstractScrollArea* self, int horizontalScrollBarPolicy);
QScrollBar* QAbstractScrollArea_horizontalScrollBar(const QAbstractScrollArea* self);
void QAbstractScrollArea_setHorizontalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
QWidget* QAbstractScrollArea_cornerWidget(const QAbstractScrollArea* self);
void QAbstractScrollArea_setCornerWidget(QAbstractScrollArea* self, QWidget* widget);
void QAbstractScrollArea_addScrollBarWidget(QAbstractScrollArea* self, QWidget* widget, int alignment);
struct miqt_array /* of QWidget* */  QAbstractScrollArea_scrollBarWidgets(QAbstractScrollArea* self, int alignment);
QWidget* QAbstractScrollArea_viewport(const QAbstractScrollArea* self);
void QAbstractScrollArea_setViewport(QAbstractScrollArea* self, QWidget* widget);
QSize* QAbstractScrollArea_maximumViewportSize(const QAbstractScrollArea* self);
QSize* QAbstractScrollArea_minimumSizeHint(const QAbstractScrollArea* self);
QSize* QAbstractScrollArea_sizeHint(const QAbstractScrollArea* self);
void QAbstractScrollArea_setupViewport(QAbstractScrollArea* self, QWidget* viewport);
int QAbstractScrollArea_sizeAdjustPolicy(const QAbstractScrollArea* self);
void QAbstractScrollArea_setSizeAdjustPolicy(QAbstractScrollArea* self, int policy);
bool QAbstractScrollArea_eventFilter(QAbstractScrollArea* self, QObject* param1, QEvent* param2);
bool QAbstractScrollArea_event(QAbstractScrollArea* self, QEvent* param1);
bool QAbstractScrollArea_viewportEvent(QAbstractScrollArea* self, QEvent* param1);
void QAbstractScrollArea_resizeEvent(QAbstractScrollArea* self, QResizeEvent* param1);
void QAbstractScrollArea_paintEvent(QAbstractScrollArea* self, QPaintEvent* param1);
void QAbstractScrollArea_mousePressEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseReleaseEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseDoubleClickEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_mouseMoveEvent(QAbstractScrollArea* self, QMouseEvent* param1);
void QAbstractScrollArea_wheelEvent(QAbstractScrollArea* self, QWheelEvent* param1);
void QAbstractScrollArea_contextMenuEvent(QAbstractScrollArea* self, QContextMenuEvent* param1);
void QAbstractScrollArea_dragEnterEvent(QAbstractScrollArea* self, QDragEnterEvent* param1);
void QAbstractScrollArea_dragMoveEvent(QAbstractScrollArea* self, QDragMoveEvent* param1);
void QAbstractScrollArea_dragLeaveEvent(QAbstractScrollArea* self, QDragLeaveEvent* param1);
void QAbstractScrollArea_dropEvent(QAbstractScrollArea* self, QDropEvent* param1);
void QAbstractScrollArea_keyPressEvent(QAbstractScrollArea* self, QKeyEvent* param1);
void QAbstractScrollArea_scrollContentsBy(QAbstractScrollArea* self, int dx, int dy);
QSize* QAbstractScrollArea_viewportSizeHint(const QAbstractScrollArea* self);
struct miqt_string QAbstractScrollArea_tr2(const char* s, const char* c);
struct miqt_string QAbstractScrollArea_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractScrollArea_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractScrollArea_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractScrollArea_virtualbase_metaObject(const void* self);
void* QAbstractScrollArea_virtualbase_metacast(void* self, const char* param1);
int QAbstractScrollArea_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QAbstractScrollArea_virtualbase_minimumSizeHint(const void* self);
QSize* QAbstractScrollArea_virtualbase_sizeHint(const void* self);
void QAbstractScrollArea_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QAbstractScrollArea_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QAbstractScrollArea_virtualbase_event(void* self, QEvent* param1);
bool QAbstractScrollArea_virtualbase_viewportEvent(void* self, QEvent* param1);
void QAbstractScrollArea_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QAbstractScrollArea_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QAbstractScrollArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QAbstractScrollArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QAbstractScrollArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QAbstractScrollArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
void QAbstractScrollArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
void QAbstractScrollArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
void QAbstractScrollArea_virtualbase_dropEvent(void* self, QDropEvent* param1);
void QAbstractScrollArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QAbstractScrollArea_virtualbase_scrollContentsBy(void* self, int dx, int dy);
QSize* QAbstractScrollArea_virtualbase_viewportSizeHint(const void* self);
void QAbstractScrollArea_virtualbase_changeEvent(void* self, QEvent* param1);
int QAbstractScrollArea_virtualbase_devType(const void* self);
void QAbstractScrollArea_virtualbase_setVisible(void* self, bool visible);
int QAbstractScrollArea_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractScrollArea_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractScrollArea_virtualbase_paintEngine(const void* self);
void QAbstractScrollArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QAbstractScrollArea_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QAbstractScrollArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QAbstractScrollArea_virtualbase_enterEvent(void* self, QEvent* event);
void QAbstractScrollArea_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractScrollArea_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractScrollArea_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QAbstractScrollArea_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractScrollArea_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractScrollArea_virtualbase_showEvent(void* self, QShowEvent* event);
void QAbstractScrollArea_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QAbstractScrollArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QAbstractScrollArea_virtualbase_metric(const void* self, int param1);
void QAbstractScrollArea_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractScrollArea_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractScrollArea_virtualbase_sharedPainter(const void* self);
void QAbstractScrollArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QAbstractScrollArea_virtualbase_inputMethodQuery(const void* self, int param1);
bool QAbstractScrollArea_virtualbase_focusNextPrevChild(void* self, bool next);
void QAbstractScrollArea_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractScrollArea_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractScrollArea_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractScrollArea_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractScrollArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractScrollArea_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(bool* _dynamic_cast_ok, void* self, QMargins* margins);
QMargins* QAbstractScrollArea_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QAbstractScrollArea_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QAbstractScrollArea_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QAbstractScrollArea_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QAbstractScrollArea_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QAbstractScrollArea_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QAbstractScrollArea_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QAbstractScrollArea_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QAbstractScrollArea_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAbstractScrollArea_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAbstractScrollArea_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAbstractScrollArea_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractScrollArea_staticMetaObject();
void QAbstractScrollArea_delete(QAbstractScrollArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
