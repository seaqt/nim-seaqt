#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QRADIOBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QRADIOBUTTON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
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
class QRadioButton;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionButton;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
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
typedef struct QRadioButton QRadioButton;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QRadioButton_VTable {
	void (*destructor)(struct QRadioButton_VTable* vtbl, QRadioButton* self);
	QMetaObject* (*metaObject)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	void* (*metacast)(struct QRadioButton_VTable* vtbl, QRadioButton* self, const char* param1);
	int (*metacall)(struct QRadioButton_VTable* vtbl, QRadioButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	QSize* (*minimumSizeHint)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	bool (*event)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QEvent* e);
	bool (*hitButton)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, QPoint* param1);
	void (*paintEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QPaintEvent* param1);
	void (*mouseMoveEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMouseEvent* param1);
	void (*initStyleOption)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, QStyleOptionButton* button);
	void (*checkStateSet)(struct QRadioButton_VTable* vtbl, QRadioButton* self);
	void (*nextCheckState)(struct QRadioButton_VTable* vtbl, QRadioButton* self);
	void (*keyPressEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QKeyEvent* e);
	void (*keyReleaseEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QKeyEvent* e);
	void (*mousePressEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMouseEvent* e);
	void (*focusInEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QFocusEvent* e);
	void (*focusOutEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QFocusEvent* e);
	void (*changeEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QEvent* e);
	void (*timerEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QTimerEvent* e);
	int (*devType)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	void (*setVisible)(struct QRadioButton_VTable* vtbl, QRadioButton* self, bool visible);
	int (*heightForWidth)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, int param1);
	bool (*hasHeightForWidth)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	QPaintEngine* (*paintEngine)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	void (*mouseDoubleClickEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMouseEvent* event);
	void (*wheelEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QWheelEvent* event);
	void (*enterEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QEnterEvent* event);
	void (*leaveEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QEvent* event);
	void (*moveEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMoveEvent* event);
	void (*resizeEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QResizeEvent* event);
	void (*closeEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QTabletEvent* event);
	void (*actionEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QDropEvent* event);
	void (*showEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QShowEvent* event);
	void (*hideEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QHideEvent* event);
	bool (*nativeEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, int param1);
	void (*initPainter)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QRadioButton_VTable* vtbl, const QRadioButton* self);
	void (*inputMethodEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QRadioButton_VTable* vtbl, const QRadioButton* self, int param1);
	bool (*focusNextPrevChild)(struct QRadioButton_VTable* vtbl, QRadioButton* self, bool next);
	bool (*eventFilter)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QChildEvent* event);
	void (*customEvent)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QEvent* event);
	void (*connectNotify)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QRadioButton_VTable* vtbl, QRadioButton* self, QMetaMethod* signal);
};
QRadioButton* QRadioButton_new(struct QRadioButton_VTable* vtbl, QWidget* parent);
QRadioButton* QRadioButton_new2(struct QRadioButton_VTable* vtbl);
QRadioButton* QRadioButton_new3(struct QRadioButton_VTable* vtbl, struct miqt_string text);
QRadioButton* QRadioButton_new4(struct QRadioButton_VTable* vtbl, struct miqt_string text, QWidget* parent);
void QRadioButton_virtbase(QRadioButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QRadioButton_metaObject(const QRadioButton* self);
void* QRadioButton_metacast(QRadioButton* self, const char* param1);
int QRadioButton_metacall(QRadioButton* self, int param1, int param2, void** param3);
struct miqt_string QRadioButton_tr(const char* s);
QSize* QRadioButton_sizeHint(const QRadioButton* self);
QSize* QRadioButton_minimumSizeHint(const QRadioButton* self);
bool QRadioButton_event(QRadioButton* self, QEvent* e);
bool QRadioButton_hitButton(const QRadioButton* self, QPoint* param1);
void QRadioButton_paintEvent(QRadioButton* self, QPaintEvent* param1);
void QRadioButton_mouseMoveEvent(QRadioButton* self, QMouseEvent* param1);
void QRadioButton_initStyleOption(const QRadioButton* self, QStyleOptionButton* button);
struct miqt_string QRadioButton_tr2(const char* s, const char* c);
struct miqt_string QRadioButton_tr3(const char* s, const char* c, int n);
QMetaObject* QRadioButton_virtualbase_metaObject(const void* self);
void* QRadioButton_virtualbase_metacast(void* self, const char* param1);
int QRadioButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QRadioButton_virtualbase_sizeHint(const void* self);
QSize* QRadioButton_virtualbase_minimumSizeHint(const void* self);
bool QRadioButton_virtualbase_event(void* self, QEvent* e);
bool QRadioButton_virtualbase_hitButton(const void* self, QPoint* param1);
void QRadioButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QRadioButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QRadioButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* button);
void QRadioButton_virtualbase_checkStateSet(void* self);
void QRadioButton_virtualbase_nextCheckState(void* self);
void QRadioButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
void QRadioButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QRadioButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QRadioButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QRadioButton_virtualbase_focusInEvent(void* self, QFocusEvent* e);
void QRadioButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
void QRadioButton_virtualbase_changeEvent(void* self, QEvent* e);
void QRadioButton_virtualbase_timerEvent(void* self, QTimerEvent* e);
int QRadioButton_virtualbase_devType(const void* self);
void QRadioButton_virtualbase_setVisible(void* self, bool visible);
int QRadioButton_virtualbase_heightForWidth(const void* self, int param1);
bool QRadioButton_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QRadioButton_virtualbase_paintEngine(const void* self);
void QRadioButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QRadioButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QRadioButton_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QRadioButton_virtualbase_leaveEvent(void* self, QEvent* event);
void QRadioButton_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QRadioButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QRadioButton_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QRadioButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QRadioButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QRadioButton_virtualbase_actionEvent(void* self, QActionEvent* event);
void QRadioButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QRadioButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QRadioButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QRadioButton_virtualbase_dropEvent(void* self, QDropEvent* event);
void QRadioButton_virtualbase_showEvent(void* self, QShowEvent* event);
void QRadioButton_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QRadioButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QRadioButton_virtualbase_metric(const void* self, int param1);
void QRadioButton_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QRadioButton_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QRadioButton_virtualbase_sharedPainter(const void* self);
void QRadioButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QRadioButton_virtualbase_inputMethodQuery(const void* self, int param1);
bool QRadioButton_virtualbase_focusNextPrevChild(void* self, bool next);
bool QRadioButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QRadioButton_virtualbase_childEvent(void* self, QChildEvent* event);
void QRadioButton_virtualbase_customEvent(void* self, QEvent* event);
void QRadioButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QRadioButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QRadioButton_protectedbase_updateMicroFocus(void* self);
void QRadioButton_protectedbase_create(void* self);
void QRadioButton_protectedbase_destroy(void* self);
bool QRadioButton_protectedbase_focusNextChild(void* self);
bool QRadioButton_protectedbase_focusPreviousChild(void* self);
QObject* QRadioButton_protectedbase_sender(const void* self);
int QRadioButton_protectedbase_senderSignalIndex(const void* self);
int QRadioButton_protectedbase_receivers(const void* self, const char* signal);
bool QRadioButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QRadioButton_staticMetaObject();
void QRadioButton_delete(QRadioButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
