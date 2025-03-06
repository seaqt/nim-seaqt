#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIALOGBUTTONBOX_H
#define SEAQT_QTWIDGETS_GEN_QDIALOGBUTTONBOX_H

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
class QDialogButtonBox;
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
class QPushButton;
class QResizeEvent;
class QShowEvent;
class QSize;
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
typedef struct QDialogButtonBox QDialogButtonBox;
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
typedef struct QPushButton QPushButton;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QDialogButtonBox_VTable {
	void (*destructor)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self);
	QMetaObject* (*metaObject)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	void* (*metacast)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, const char* param1);
	int (*metacall)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, int param1, int param2, void** param3);
	void (*changeEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QEvent* event);
	bool (*event)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QEvent* event);
	int (*devType)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	void (*setVisible)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, bool visible);
	QSize* (*sizeHint)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	QSize* (*minimumSizeHint)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	int (*heightForWidth)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self, int param1);
	bool (*hasHeightForWidth)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	QPaintEngine* (*paintEngine)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	void (*mousePressEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMouseEvent* event);
	void (*wheelEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QKeyEvent* event);
	void (*focusInEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QFocusEvent* event);
	void (*enterEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QEnterEvent* event);
	void (*leaveEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QEvent* event);
	void (*paintEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QPaintEvent* event);
	void (*moveEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMoveEvent* event);
	void (*resizeEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QResizeEvent* event);
	void (*closeEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QDropEvent* event);
	void (*showEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QShowEvent* event);
	void (*hideEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QHideEvent* event);
	bool (*nativeEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self, int param1);
	void (*initPainter)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self);
	void (*inputMethodEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QDialogButtonBox_VTable* vtbl, const QDialogButtonBox* self, int param1);
	bool (*focusNextPrevChild)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, bool next);
	bool (*eventFilter)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QTimerEvent* event);
	void (*childEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QChildEvent* event);
	void (*customEvent)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QEvent* event);
	void (*connectNotify)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDialogButtonBox_VTable* vtbl, QDialogButtonBox* self, QMetaMethod* signal);
};
QDialogButtonBox* QDialogButtonBox_new(struct QDialogButtonBox_VTable* vtbl, QWidget* parent);
QDialogButtonBox* QDialogButtonBox_new2(struct QDialogButtonBox_VTable* vtbl);
QDialogButtonBox* QDialogButtonBox_new3(struct QDialogButtonBox_VTable* vtbl, int orientation);
QDialogButtonBox* QDialogButtonBox_new4(struct QDialogButtonBox_VTable* vtbl, int buttons);
QDialogButtonBox* QDialogButtonBox_new5(struct QDialogButtonBox_VTable* vtbl, int buttons, int orientation);
QDialogButtonBox* QDialogButtonBox_new6(struct QDialogButtonBox_VTable* vtbl, int orientation, QWidget* parent);
QDialogButtonBox* QDialogButtonBox_new7(struct QDialogButtonBox_VTable* vtbl, int buttons, QWidget* parent);
QDialogButtonBox* QDialogButtonBox_new8(struct QDialogButtonBox_VTable* vtbl, int buttons, int orientation, QWidget* parent);
void QDialogButtonBox_virtbase(QDialogButtonBox* src, QWidget** outptr_QWidget);
QMetaObject* QDialogButtonBox_metaObject(const QDialogButtonBox* self);
void* QDialogButtonBox_metacast(QDialogButtonBox* self, const char* param1);
int QDialogButtonBox_metacall(QDialogButtonBox* self, int param1, int param2, void** param3);
struct miqt_string QDialogButtonBox_tr(const char* s);
void QDialogButtonBox_setOrientation(QDialogButtonBox* self, int orientation);
int QDialogButtonBox_orientation(const QDialogButtonBox* self);
void QDialogButtonBox_addButton(QDialogButtonBox* self, QAbstractButton* button, int role);
QPushButton* QDialogButtonBox_addButton2(QDialogButtonBox* self, struct miqt_string text, int role);
QPushButton* QDialogButtonBox_addButtonWithButton(QDialogButtonBox* self, int button);
void QDialogButtonBox_removeButton(QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_clear(QDialogButtonBox* self);
struct miqt_array /* of QAbstractButton* */  QDialogButtonBox_buttons(const QDialogButtonBox* self);
int QDialogButtonBox_buttonRole(const QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_setStandardButtons(QDialogButtonBox* self, int buttons);
int QDialogButtonBox_standardButtons(const QDialogButtonBox* self);
int QDialogButtonBox_standardButton(const QDialogButtonBox* self, QAbstractButton* button);
QPushButton* QDialogButtonBox_button(const QDialogButtonBox* self, int which);
void QDialogButtonBox_setCenterButtons(QDialogButtonBox* self, bool center);
bool QDialogButtonBox_centerButtons(const QDialogButtonBox* self);
void QDialogButtonBox_clicked(QDialogButtonBox* self, QAbstractButton* button);
void QDialogButtonBox_connect_clicked(QDialogButtonBox* self, intptr_t slot);
void QDialogButtonBox_accepted(QDialogButtonBox* self);
void QDialogButtonBox_connect_accepted(QDialogButtonBox* self, intptr_t slot);
void QDialogButtonBox_helpRequested(QDialogButtonBox* self);
void QDialogButtonBox_connect_helpRequested(QDialogButtonBox* self, intptr_t slot);
void QDialogButtonBox_rejected(QDialogButtonBox* self);
void QDialogButtonBox_connect_rejected(QDialogButtonBox* self, intptr_t slot);
void QDialogButtonBox_changeEvent(QDialogButtonBox* self, QEvent* event);
bool QDialogButtonBox_event(QDialogButtonBox* self, QEvent* event);
struct miqt_string QDialogButtonBox_tr2(const char* s, const char* c);
struct miqt_string QDialogButtonBox_tr3(const char* s, const char* c, int n);
QMetaObject* QDialogButtonBox_virtualbase_metaObject(const void* self);
void* QDialogButtonBox_virtualbase_metacast(void* self, const char* param1);
int QDialogButtonBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QDialogButtonBox_virtualbase_changeEvent(void* self, QEvent* event);
bool QDialogButtonBox_virtualbase_event(void* self, QEvent* event);
int QDialogButtonBox_virtualbase_devType(const void* self);
void QDialogButtonBox_virtualbase_setVisible(void* self, bool visible);
QSize* QDialogButtonBox_virtualbase_sizeHint(const void* self);
QSize* QDialogButtonBox_virtualbase_minimumSizeHint(const void* self);
int QDialogButtonBox_virtualbase_heightForWidth(const void* self, int param1);
bool QDialogButtonBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QDialogButtonBox_virtualbase_paintEngine(const void* self);
void QDialogButtonBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QDialogButtonBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QDialogButtonBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QDialogButtonBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QDialogButtonBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QDialogButtonBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QDialogButtonBox_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QDialogButtonBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QDialogButtonBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QDialogButtonBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QDialogButtonBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QDialogButtonBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QDialogButtonBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QDialogButtonBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QDialogButtonBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QDialogButtonBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QDialogButtonBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QDialogButtonBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QDialogButtonBox_virtualbase_dropEvent(void* self, QDropEvent* event);
void QDialogButtonBox_virtualbase_showEvent(void* self, QShowEvent* event);
void QDialogButtonBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDialogButtonBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QDialogButtonBox_virtualbase_metric(const void* self, int param1);
void QDialogButtonBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QDialogButtonBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QDialogButtonBox_virtualbase_sharedPainter(const void* self);
void QDialogButtonBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QDialogButtonBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDialogButtonBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDialogButtonBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDialogButtonBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDialogButtonBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QDialogButtonBox_virtualbase_customEvent(void* self, QEvent* event);
void QDialogButtonBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDialogButtonBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDialogButtonBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QDialogButtonBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QDialogButtonBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QDialogButtonBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QDialogButtonBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QDialogButtonBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDialogButtonBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDialogButtonBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDialogButtonBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDialogButtonBox_staticMetaObject();
void QDialogButtonBox_delete(QDialogButtonBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
