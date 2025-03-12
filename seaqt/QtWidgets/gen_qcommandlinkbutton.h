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

typedef struct VirtualQCommandLinkButton VirtualQCommandLinkButton;
typedef struct QCommandLinkButton_VTable{
	void (*destructor)(VirtualQCommandLinkButton* self);
	QMetaObject* (*metaObject)(const VirtualQCommandLinkButton* self);
	void* (*metacast)(VirtualQCommandLinkButton* self, const char* param1);
	int (*metacall)(VirtualQCommandLinkButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQCommandLinkButton* self);
	int (*heightForWidth)(const VirtualQCommandLinkButton* self, int param1);
	QSize* (*minimumSizeHint)(const VirtualQCommandLinkButton* self);
	bool (*event)(VirtualQCommandLinkButton* self, QEvent* e);
	void (*paintEvent)(VirtualQCommandLinkButton* self, QPaintEvent* param1);
	void (*keyPressEvent)(VirtualQCommandLinkButton* self, QKeyEvent* param1);
	void (*focusInEvent)(VirtualQCommandLinkButton* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQCommandLinkButton* self, QFocusEvent* param1);
	bool (*hitButton)(const VirtualQCommandLinkButton* self, QPoint* pos);
	void (*checkStateSet)(VirtualQCommandLinkButton* self);
	void (*nextCheckState)(VirtualQCommandLinkButton* self);
	void (*keyReleaseEvent)(VirtualQCommandLinkButton* self, QKeyEvent* e);
	void (*mousePressEvent)(VirtualQCommandLinkButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQCommandLinkButton* self, QMouseEvent* e);
	void (*mouseMoveEvent)(VirtualQCommandLinkButton* self, QMouseEvent* e);
	void (*changeEvent)(VirtualQCommandLinkButton* self, QEvent* e);
	void (*timerEvent)(VirtualQCommandLinkButton* self, QTimerEvent* e);
	int (*devType)(const VirtualQCommandLinkButton* self);
	void (*setVisible)(VirtualQCommandLinkButton* self, bool visible);
	bool (*hasHeightForWidth)(const VirtualQCommandLinkButton* self);
	QPaintEngine* (*paintEngine)(const VirtualQCommandLinkButton* self);
	void (*mouseDoubleClickEvent)(VirtualQCommandLinkButton* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQCommandLinkButton* self, QWheelEvent* event);
	void (*enterEvent)(VirtualQCommandLinkButton* self, QEvent* event);
	void (*leaveEvent)(VirtualQCommandLinkButton* self, QEvent* event);
	void (*moveEvent)(VirtualQCommandLinkButton* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQCommandLinkButton* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQCommandLinkButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQCommandLinkButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQCommandLinkButton* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQCommandLinkButton* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQCommandLinkButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQCommandLinkButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQCommandLinkButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQCommandLinkButton* self, QDropEvent* event);
	void (*showEvent)(VirtualQCommandLinkButton* self, QShowEvent* event);
	void (*hideEvent)(VirtualQCommandLinkButton* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQCommandLinkButton* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQCommandLinkButton* self, int param1);
	void (*initPainter)(const VirtualQCommandLinkButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQCommandLinkButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQCommandLinkButton* self);
	void (*inputMethodEvent)(VirtualQCommandLinkButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQCommandLinkButton* self, int param1);
	bool (*focusNextPrevChild)(VirtualQCommandLinkButton* self, bool next);
	bool (*eventFilter)(VirtualQCommandLinkButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQCommandLinkButton* self, QChildEvent* event);
	void (*customEvent)(VirtualQCommandLinkButton* self, QEvent* event);
	void (*connectNotify)(VirtualQCommandLinkButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCommandLinkButton* self, QMetaMethod* signal);
}QCommandLinkButton_VTable;

const QCommandLinkButton_VTable* QCommandLinkButton_vtbl(const VirtualQCommandLinkButton* self);
void* QCommandLinkButton_vdata(const VirtualQCommandLinkButton* self);
void QCommandLinkButton_setVdata(VirtualQCommandLinkButton* self, void* vdata);

VirtualQCommandLinkButton* QCommandLinkButton_new(const QCommandLinkButton_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQCommandLinkButton* QCommandLinkButton_new2(const QCommandLinkButton_VTable* vtbl, void* vdata);
VirtualQCommandLinkButton* QCommandLinkButton_new3(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQCommandLinkButton* QCommandLinkButton_new4(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, struct miqt_string description);
VirtualQCommandLinkButton* QCommandLinkButton_new5(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent);
VirtualQCommandLinkButton* QCommandLinkButton_new6(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, struct miqt_string description, QWidget* parent);

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

QMetaObject* QCommandLinkButton_virtualbase_metaObject(const VirtualQCommandLinkButton* self);
void* QCommandLinkButton_virtualbase_metacast(VirtualQCommandLinkButton* self, const char* param1);
int QCommandLinkButton_virtualbase_metacall(VirtualQCommandLinkButton* self, int param1, int param2, void** param3);
QSize* QCommandLinkButton_virtualbase_sizeHint(const VirtualQCommandLinkButton* self);
int QCommandLinkButton_virtualbase_heightForWidth(const VirtualQCommandLinkButton* self, int param1);
QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const VirtualQCommandLinkButton* self);
bool QCommandLinkButton_virtualbase_event(VirtualQCommandLinkButton* self, QEvent* e);
void QCommandLinkButton_virtualbase_paintEvent(VirtualQCommandLinkButton* self, QPaintEvent* param1);
void QCommandLinkButton_virtualbase_keyPressEvent(VirtualQCommandLinkButton* self, QKeyEvent* param1);
void QCommandLinkButton_virtualbase_focusInEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1);
void QCommandLinkButton_virtualbase_focusOutEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1);
bool QCommandLinkButton_virtualbase_hitButton(const VirtualQCommandLinkButton* self, QPoint* pos);
void QCommandLinkButton_virtualbase_checkStateSet(VirtualQCommandLinkButton* self);
void QCommandLinkButton_virtualbase_nextCheckState(VirtualQCommandLinkButton* self);
void QCommandLinkButton_virtualbase_keyReleaseEvent(VirtualQCommandLinkButton* self, QKeyEvent* e);
void QCommandLinkButton_virtualbase_mousePressEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_mouseReleaseEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_mouseMoveEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);
void QCommandLinkButton_virtualbase_changeEvent(VirtualQCommandLinkButton* self, QEvent* e);
void QCommandLinkButton_virtualbase_timerEvent(VirtualQCommandLinkButton* self, QTimerEvent* e);
int QCommandLinkButton_virtualbase_devType(const VirtualQCommandLinkButton* self);
void QCommandLinkButton_virtualbase_setVisible(VirtualQCommandLinkButton* self, bool visible);
bool QCommandLinkButton_virtualbase_hasHeightForWidth(const VirtualQCommandLinkButton* self);
QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const VirtualQCommandLinkButton* self);
void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(VirtualQCommandLinkButton* self, QMouseEvent* event);
void QCommandLinkButton_virtualbase_wheelEvent(VirtualQCommandLinkButton* self, QWheelEvent* event);
void QCommandLinkButton_virtualbase_enterEvent(VirtualQCommandLinkButton* self, QEvent* event);
void QCommandLinkButton_virtualbase_leaveEvent(VirtualQCommandLinkButton* self, QEvent* event);
void QCommandLinkButton_virtualbase_moveEvent(VirtualQCommandLinkButton* self, QMoveEvent* event);
void QCommandLinkButton_virtualbase_resizeEvent(VirtualQCommandLinkButton* self, QResizeEvent* event);
void QCommandLinkButton_virtualbase_closeEvent(VirtualQCommandLinkButton* self, QCloseEvent* event);
void QCommandLinkButton_virtualbase_contextMenuEvent(VirtualQCommandLinkButton* self, QContextMenuEvent* event);
void QCommandLinkButton_virtualbase_tabletEvent(VirtualQCommandLinkButton* self, QTabletEvent* event);
void QCommandLinkButton_virtualbase_actionEvent(VirtualQCommandLinkButton* self, QActionEvent* event);
void QCommandLinkButton_virtualbase_dragEnterEvent(VirtualQCommandLinkButton* self, QDragEnterEvent* event);
void QCommandLinkButton_virtualbase_dragMoveEvent(VirtualQCommandLinkButton* self, QDragMoveEvent* event);
void QCommandLinkButton_virtualbase_dragLeaveEvent(VirtualQCommandLinkButton* self, QDragLeaveEvent* event);
void QCommandLinkButton_virtualbase_dropEvent(VirtualQCommandLinkButton* self, QDropEvent* event);
void QCommandLinkButton_virtualbase_showEvent(VirtualQCommandLinkButton* self, QShowEvent* event);
void QCommandLinkButton_virtualbase_hideEvent(VirtualQCommandLinkButton* self, QHideEvent* event);
bool QCommandLinkButton_virtualbase_nativeEvent(VirtualQCommandLinkButton* self, struct miqt_string eventType, void* message, long* result);
int QCommandLinkButton_virtualbase_metric(const VirtualQCommandLinkButton* self, int param1);
void QCommandLinkButton_virtualbase_initPainter(const VirtualQCommandLinkButton* self, QPainter* painter);
QPaintDevice* QCommandLinkButton_virtualbase_redirected(const VirtualQCommandLinkButton* self, QPoint* offset);
QPainter* QCommandLinkButton_virtualbase_sharedPainter(const VirtualQCommandLinkButton* self);
void QCommandLinkButton_virtualbase_inputMethodEvent(VirtualQCommandLinkButton* self, QInputMethodEvent* param1);
QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const VirtualQCommandLinkButton* self, int param1);
bool QCommandLinkButton_virtualbase_focusNextPrevChild(VirtualQCommandLinkButton* self, bool next);
bool QCommandLinkButton_virtualbase_eventFilter(VirtualQCommandLinkButton* self, QObject* watched, QEvent* event);
void QCommandLinkButton_virtualbase_childEvent(VirtualQCommandLinkButton* self, QChildEvent* event);
void QCommandLinkButton_virtualbase_customEvent(VirtualQCommandLinkButton* self, QEvent* event);
void QCommandLinkButton_virtualbase_connectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal);
void QCommandLinkButton_virtualbase_disconnectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal);

void QCommandLinkButton_protectedbase_initStyleOption(const VirtualQCommandLinkButton* self, QStyleOptionButton* option);
void QCommandLinkButton_protectedbase_updateMicroFocus(VirtualQCommandLinkButton* self);
void QCommandLinkButton_protectedbase_create(VirtualQCommandLinkButton* self);
void QCommandLinkButton_protectedbase_destroy(VirtualQCommandLinkButton* self);
bool QCommandLinkButton_protectedbase_focusNextChild(VirtualQCommandLinkButton* self);
bool QCommandLinkButton_protectedbase_focusPreviousChild(VirtualQCommandLinkButton* self);
QObject* QCommandLinkButton_protectedbase_sender(const VirtualQCommandLinkButton* self);
int QCommandLinkButton_protectedbase_senderSignalIndex(const VirtualQCommandLinkButton* self);
int QCommandLinkButton_protectedbase_receivers(const VirtualQCommandLinkButton* self, const char* signal);
bool QCommandLinkButton_protectedbase_isSignalConnected(const VirtualQCommandLinkButton* self, QMetaMethod* signal);

const QMetaObject* QCommandLinkButton_staticMetaObject();
void QCommandLinkButton_delete(QCommandLinkButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
