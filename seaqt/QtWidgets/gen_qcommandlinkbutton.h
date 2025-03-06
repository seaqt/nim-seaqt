#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCOMMANDLINKBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QCOMMANDLINKBUTTON_H

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
class QCommandLinkButton;
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
class QPushButton;
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
typedef struct QCommandLinkButton QCommandLinkButton;
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
typedef struct QPushButton QPushButton;
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

struct QCommandLinkButton_VTable {
	void (*destructor)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self);
	QMetaObject* (*metaObject)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	void* (*metacast)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, const char* param1);
	int (*metacall)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	int (*heightForWidth)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, int param1);
	QSize* (*minimumSizeHint)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	bool (*event)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QEvent* e);
	void (*paintEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QPaintEvent* param1);
	void (*keyPressEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QKeyEvent* param1);
	void (*focusInEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QFocusEvent* param1);
	bool (*hitButton)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, QPoint* pos);
	void (*checkStateSet)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self);
	void (*nextCheckState)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self);
	void (*keyReleaseEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QKeyEvent* e);
	void (*mousePressEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMouseEvent* e);
	void (*mouseMoveEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMouseEvent* e);
	void (*changeEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QEvent* e);
	void (*timerEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QTimerEvent* e);
	int (*devType)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	void (*setVisible)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, bool visible);
	bool (*hasHeightForWidth)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	QPaintEngine* (*paintEngine)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	void (*mouseDoubleClickEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMouseEvent* event);
	void (*wheelEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QWheelEvent* event);
	void (*enterEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QEvent* event);
	void (*leaveEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QEvent* event);
	void (*moveEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMoveEvent* event);
	void (*resizeEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QResizeEvent* event);
	void (*closeEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QTabletEvent* event);
	void (*actionEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QDropEvent* event);
	void (*showEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QShowEvent* event);
	void (*hideEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QHideEvent* event);
	bool (*nativeEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, int param1);
	void (*initPainter)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self);
	void (*inputMethodEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QCommandLinkButton_VTable* vtbl, const QCommandLinkButton* self, int param1);
	bool (*focusNextPrevChild)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, bool next);
	bool (*eventFilter)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QChildEvent* event);
	void (*customEvent)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QEvent* event);
	void (*connectNotify)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCommandLinkButton_VTable* vtbl, QCommandLinkButton* self, QMetaMethod* signal);
};
QCommandLinkButton* QCommandLinkButton_new(struct QCommandLinkButton_VTable* vtbl, QWidget* parent);
QCommandLinkButton* QCommandLinkButton_new2(struct QCommandLinkButton_VTable* vtbl);
QCommandLinkButton* QCommandLinkButton_new3(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text);
QCommandLinkButton* QCommandLinkButton_new4(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description);
QCommandLinkButton* QCommandLinkButton_new5(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, QWidget* parent);
QCommandLinkButton* QCommandLinkButton_new6(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description, QWidget* parent);
void QCommandLinkButton_virtbase(QCommandLinkButton* src, QPushButton** outptr_QPushButton);
QMetaObject* QCommandLinkButton_metaObject(const QCommandLinkButton* self);
void* QCommandLinkButton_metacast(QCommandLinkButton* self, const char* param1);
int QCommandLinkButton_metacall(QCommandLinkButton* self, int param1, int param2, void** param3);
struct miqt_string QCommandLinkButton_tr(const char* s);
struct miqt_string QCommandLinkButton_trUtf8(const char* s);
struct miqt_string QCommandLinkButton_description(const QCommandLinkButton* self);
void QCommandLinkButton_setDescription(QCommandLinkButton* self, struct miqt_string description);
QSize* QCommandLinkButton_sizeHint(const QCommandLinkButton* self);
int QCommandLinkButton_heightForWidth(const QCommandLinkButton* self, int param1);
QSize* QCommandLinkButton_minimumSizeHint(const QCommandLinkButton* self);
bool QCommandLinkButton_event(QCommandLinkButton* self, QEvent* e);
void QCommandLinkButton_paintEvent(QCommandLinkButton* self, QPaintEvent* param1);
struct miqt_string QCommandLinkButton_tr2(const char* s, const char* c);
struct miqt_string QCommandLinkButton_tr3(const char* s, const char* c, int n);
struct miqt_string QCommandLinkButton_trUtf82(const char* s, const char* c);
struct miqt_string QCommandLinkButton_trUtf83(const char* s, const char* c, int n);
QMetaObject* QCommandLinkButton_virtualbase_metaObject(const void* self);
void* QCommandLinkButton_virtualbase_metacast(void* self, const char* param1);
int QCommandLinkButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QCommandLinkButton_virtualbase_sizeHint(const void* self);
int QCommandLinkButton_virtualbase_heightForWidth(const void* self, int param1);
QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const void* self);
bool QCommandLinkButton_virtualbase_event(void* self, QEvent* e);
void QCommandLinkButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QCommandLinkButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QCommandLinkButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QCommandLinkButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QCommandLinkButton_virtualbase_hitButton(const void* self, QPoint* pos);
void QCommandLinkButton_virtualbase_checkStateSet(void* self);
void QCommandLinkButton_virtualbase_nextCheckState(void* self);
void QCommandLinkButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QCommandLinkButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_changeEvent(void* self, QEvent* e);
void QCommandLinkButton_virtualbase_timerEvent(void* self, QTimerEvent* e);
int QCommandLinkButton_virtualbase_devType(const void* self);
void QCommandLinkButton_virtualbase_setVisible(void* self, bool visible);
bool QCommandLinkButton_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const void* self);
void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QCommandLinkButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QCommandLinkButton_virtualbase_enterEvent(void* self, QEvent* event);
void QCommandLinkButton_virtualbase_leaveEvent(void* self, QEvent* event);
void QCommandLinkButton_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QCommandLinkButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QCommandLinkButton_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QCommandLinkButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QCommandLinkButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QCommandLinkButton_virtualbase_actionEvent(void* self, QActionEvent* event);
void QCommandLinkButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QCommandLinkButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QCommandLinkButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QCommandLinkButton_virtualbase_dropEvent(void* self, QDropEvent* event);
void QCommandLinkButton_virtualbase_showEvent(void* self, QShowEvent* event);
void QCommandLinkButton_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QCommandLinkButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QCommandLinkButton_virtualbase_metric(const void* self, int param1);
void QCommandLinkButton_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QCommandLinkButton_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QCommandLinkButton_virtualbase_sharedPainter(const void* self);
void QCommandLinkButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const void* self, int param1);
bool QCommandLinkButton_virtualbase_focusNextPrevChild(void* self, bool next);
bool QCommandLinkButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCommandLinkButton_virtualbase_childEvent(void* self, QChildEvent* event);
void QCommandLinkButton_virtualbase_customEvent(void* self, QEvent* event);
void QCommandLinkButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCommandLinkButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QCommandLinkButton_protectedbase_initStyleOption(const void* self, QStyleOptionButton* option);
void QCommandLinkButton_protectedbase_updateMicroFocus(void* self);
void QCommandLinkButton_protectedbase_create(void* self);
void QCommandLinkButton_protectedbase_destroy(void* self);
bool QCommandLinkButton_protectedbase_focusNextChild(void* self);
bool QCommandLinkButton_protectedbase_focusPreviousChild(void* self);
QObject* QCommandLinkButton_protectedbase_sender(const void* self);
int QCommandLinkButton_protectedbase_senderSignalIndex(const void* self);
int QCommandLinkButton_protectedbase_receivers(const void* self, const char* signal);
bool QCommandLinkButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QCommandLinkButton_staticMetaObject();
void QCommandLinkButton_delete(QCommandLinkButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
