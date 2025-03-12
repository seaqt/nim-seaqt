#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QPUSHBUTTON_H
#define SEAQT_QTWIDGETS_GEN_QPUSHBUTTON_H

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
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMenu;
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
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMenu QMenu;
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

typedef struct VirtualQPushButton VirtualQPushButton;
typedef struct QPushButton_VTable{
	void (*destructor)(VirtualQPushButton* self);
	QMetaObject* (*metaObject)(const VirtualQPushButton* self);
	void* (*metacast)(VirtualQPushButton* self, const char* param1);
	int (*metacall)(VirtualQPushButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQPushButton* self);
	QSize* (*minimumSizeHint)(const VirtualQPushButton* self);
	bool (*event)(VirtualQPushButton* self, QEvent* e);
	void (*paintEvent)(VirtualQPushButton* self, QPaintEvent* param1);
	void (*keyPressEvent)(VirtualQPushButton* self, QKeyEvent* param1);
	void (*focusInEvent)(VirtualQPushButton* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQPushButton* self, QFocusEvent* param1);
	bool (*hitButton)(const VirtualQPushButton* self, QPoint* pos);
	void (*checkStateSet)(VirtualQPushButton* self);
	void (*nextCheckState)(VirtualQPushButton* self);
	void (*keyReleaseEvent)(VirtualQPushButton* self, QKeyEvent* e);
	void (*mousePressEvent)(VirtualQPushButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQPushButton* self, QMouseEvent* e);
	void (*mouseMoveEvent)(VirtualQPushButton* self, QMouseEvent* e);
	void (*changeEvent)(VirtualQPushButton* self, QEvent* e);
	void (*timerEvent)(VirtualQPushButton* self, QTimerEvent* e);
	int (*devType)(const VirtualQPushButton* self);
	void (*setVisible)(VirtualQPushButton* self, bool visible);
	int (*heightForWidth)(const VirtualQPushButton* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPushButton* self);
	QPaintEngine* (*paintEngine)(const VirtualQPushButton* self);
	void (*mouseDoubleClickEvent)(VirtualQPushButton* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPushButton* self, QWheelEvent* event);
	void (*enterEvent)(VirtualQPushButton* self, QEvent* event);
	void (*leaveEvent)(VirtualQPushButton* self, QEvent* event);
	void (*moveEvent)(VirtualQPushButton* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQPushButton* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQPushButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQPushButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQPushButton* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPushButton* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPushButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPushButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPushButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPushButton* self, QDropEvent* event);
	void (*showEvent)(VirtualQPushButton* self, QShowEvent* event);
	void (*hideEvent)(VirtualQPushButton* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPushButton* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQPushButton* self, int param1);
	void (*initPainter)(const VirtualQPushButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPushButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPushButton* self);
	void (*inputMethodEvent)(VirtualQPushButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPushButton* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPushButton* self, bool next);
	bool (*eventFilter)(VirtualQPushButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQPushButton* self, QChildEvent* event);
	void (*customEvent)(VirtualQPushButton* self, QEvent* event);
	void (*connectNotify)(VirtualQPushButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPushButton* self, QMetaMethod* signal);
}QPushButton_VTable;

const QPushButton_VTable* QPushButton_vtbl(const VirtualQPushButton* self);
void* QPushButton_vdata(const VirtualQPushButton* self);
void QPushButton_setVdata(VirtualQPushButton* self, void* vdata);

VirtualQPushButton* QPushButton_new(const QPushButton_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQPushButton* QPushButton_new2(const QPushButton_VTable* vtbl, void* vdata);
VirtualQPushButton* QPushButton_new3(const QPushButton_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQPushButton* QPushButton_new4(const QPushButton_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text);
VirtualQPushButton* QPushButton_new5(const QPushButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent);
VirtualQPushButton* QPushButton_new6(const QPushButton_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text, QWidget* parent);

void QPushButton_virtbase(QPushButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QPushButton_metaObject(const QPushButton* self);
void* QPushButton_metacast(QPushButton* self, const char* param1);
int QPushButton_metacall(QPushButton* self, int param1, int param2, void** param3);
struct miqt_string QPushButton_tr(const char* s);
struct miqt_string QPushButton_trUtf8(const char* s);
QSize* QPushButton_sizeHint(const QPushButton* self);
QSize* QPushButton_minimumSizeHint(const QPushButton* self);
bool QPushButton_autoDefault(const QPushButton* self);
void QPushButton_setAutoDefault(QPushButton* self, bool autoDefault);
bool QPushButton_isDefault(const QPushButton* self);
void QPushButton_setDefault(QPushButton* self, bool defaultVal);
void QPushButton_setMenu(QPushButton* self, QMenu* menu);
QMenu* QPushButton_menu(const QPushButton* self);
void QPushButton_setFlat(QPushButton* self, bool flat);
bool QPushButton_isFlat(const QPushButton* self);
void QPushButton_showMenu(QPushButton* self);
bool QPushButton_event(QPushButton* self, QEvent* e);
void QPushButton_paintEvent(QPushButton* self, QPaintEvent* param1);
void QPushButton_keyPressEvent(QPushButton* self, QKeyEvent* param1);
void QPushButton_focusInEvent(QPushButton* self, QFocusEvent* param1);
void QPushButton_focusOutEvent(QPushButton* self, QFocusEvent* param1);
bool QPushButton_hitButton(const QPushButton* self, QPoint* pos);
struct miqt_string QPushButton_tr2(const char* s, const char* c);
struct miqt_string QPushButton_tr3(const char* s, const char* c, int n);
struct miqt_string QPushButton_trUtf82(const char* s, const char* c);
struct miqt_string QPushButton_trUtf83(const char* s, const char* c, int n);

QMetaObject* QPushButton_virtualbase_metaObject(const VirtualQPushButton* self);
void* QPushButton_virtualbase_metacast(VirtualQPushButton* self, const char* param1);
int QPushButton_virtualbase_metacall(VirtualQPushButton* self, int param1, int param2, void** param3);
QSize* QPushButton_virtualbase_sizeHint(const VirtualQPushButton* self);
QSize* QPushButton_virtualbase_minimumSizeHint(const VirtualQPushButton* self);
bool QPushButton_virtualbase_event(VirtualQPushButton* self, QEvent* e);
void QPushButton_virtualbase_paintEvent(VirtualQPushButton* self, QPaintEvent* param1);
void QPushButton_virtualbase_keyPressEvent(VirtualQPushButton* self, QKeyEvent* param1);
void QPushButton_virtualbase_focusInEvent(VirtualQPushButton* self, QFocusEvent* param1);
void QPushButton_virtualbase_focusOutEvent(VirtualQPushButton* self, QFocusEvent* param1);
bool QPushButton_virtualbase_hitButton(const VirtualQPushButton* self, QPoint* pos);
void QPushButton_virtualbase_checkStateSet(VirtualQPushButton* self);
void QPushButton_virtualbase_nextCheckState(VirtualQPushButton* self);
void QPushButton_virtualbase_keyReleaseEvent(VirtualQPushButton* self, QKeyEvent* e);
void QPushButton_virtualbase_mousePressEvent(VirtualQPushButton* self, QMouseEvent* e);
void QPushButton_virtualbase_mouseReleaseEvent(VirtualQPushButton* self, QMouseEvent* e);
void QPushButton_virtualbase_mouseMoveEvent(VirtualQPushButton* self, QMouseEvent* e);
void QPushButton_virtualbase_changeEvent(VirtualQPushButton* self, QEvent* e);
void QPushButton_virtualbase_timerEvent(VirtualQPushButton* self, QTimerEvent* e);
int QPushButton_virtualbase_devType(const VirtualQPushButton* self);
void QPushButton_virtualbase_setVisible(VirtualQPushButton* self, bool visible);
int QPushButton_virtualbase_heightForWidth(const VirtualQPushButton* self, int param1);
bool QPushButton_virtualbase_hasHeightForWidth(const VirtualQPushButton* self);
QPaintEngine* QPushButton_virtualbase_paintEngine(const VirtualQPushButton* self);
void QPushButton_virtualbase_mouseDoubleClickEvent(VirtualQPushButton* self, QMouseEvent* event);
void QPushButton_virtualbase_wheelEvent(VirtualQPushButton* self, QWheelEvent* event);
void QPushButton_virtualbase_enterEvent(VirtualQPushButton* self, QEvent* event);
void QPushButton_virtualbase_leaveEvent(VirtualQPushButton* self, QEvent* event);
void QPushButton_virtualbase_moveEvent(VirtualQPushButton* self, QMoveEvent* event);
void QPushButton_virtualbase_resizeEvent(VirtualQPushButton* self, QResizeEvent* event);
void QPushButton_virtualbase_closeEvent(VirtualQPushButton* self, QCloseEvent* event);
void QPushButton_virtualbase_contextMenuEvent(VirtualQPushButton* self, QContextMenuEvent* event);
void QPushButton_virtualbase_tabletEvent(VirtualQPushButton* self, QTabletEvent* event);
void QPushButton_virtualbase_actionEvent(VirtualQPushButton* self, QActionEvent* event);
void QPushButton_virtualbase_dragEnterEvent(VirtualQPushButton* self, QDragEnterEvent* event);
void QPushButton_virtualbase_dragMoveEvent(VirtualQPushButton* self, QDragMoveEvent* event);
void QPushButton_virtualbase_dragLeaveEvent(VirtualQPushButton* self, QDragLeaveEvent* event);
void QPushButton_virtualbase_dropEvent(VirtualQPushButton* self, QDropEvent* event);
void QPushButton_virtualbase_showEvent(VirtualQPushButton* self, QShowEvent* event);
void QPushButton_virtualbase_hideEvent(VirtualQPushButton* self, QHideEvent* event);
bool QPushButton_virtualbase_nativeEvent(VirtualQPushButton* self, struct miqt_string eventType, void* message, long* result);
int QPushButton_virtualbase_metric(const VirtualQPushButton* self, int param1);
void QPushButton_virtualbase_initPainter(const VirtualQPushButton* self, QPainter* painter);
QPaintDevice* QPushButton_virtualbase_redirected(const VirtualQPushButton* self, QPoint* offset);
QPainter* QPushButton_virtualbase_sharedPainter(const VirtualQPushButton* self);
void QPushButton_virtualbase_inputMethodEvent(VirtualQPushButton* self, QInputMethodEvent* param1);
QVariant* QPushButton_virtualbase_inputMethodQuery(const VirtualQPushButton* self, int param1);
bool QPushButton_virtualbase_focusNextPrevChild(VirtualQPushButton* self, bool next);
bool QPushButton_virtualbase_eventFilter(VirtualQPushButton* self, QObject* watched, QEvent* event);
void QPushButton_virtualbase_childEvent(VirtualQPushButton* self, QChildEvent* event);
void QPushButton_virtualbase_customEvent(VirtualQPushButton* self, QEvent* event);
void QPushButton_virtualbase_connectNotify(VirtualQPushButton* self, QMetaMethod* signal);
void QPushButton_virtualbase_disconnectNotify(VirtualQPushButton* self, QMetaMethod* signal);

void QPushButton_protectedbase_initStyleOption(const VirtualQPushButton* self, QStyleOptionButton* option);
void QPushButton_protectedbase_updateMicroFocus(VirtualQPushButton* self);
void QPushButton_protectedbase_create(VirtualQPushButton* self);
void QPushButton_protectedbase_destroy(VirtualQPushButton* self);
bool QPushButton_protectedbase_focusNextChild(VirtualQPushButton* self);
bool QPushButton_protectedbase_focusPreviousChild(VirtualQPushButton* self);
QObject* QPushButton_protectedbase_sender(const VirtualQPushButton* self);
int QPushButton_protectedbase_senderSignalIndex(const VirtualQPushButton* self);
int QPushButton_protectedbase_receivers(const VirtualQPushButton* self, const char* signal);
bool QPushButton_protectedbase_isSignalConnected(const VirtualQPushButton* self, QMetaMethod* signal);

const QMetaObject* QPushButton_staticMetaObject();
void QPushButton_delete(QPushButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
