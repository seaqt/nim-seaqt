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
class QEnterEvent;
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
typedef struct QEnterEvent QEnterEvent;
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

struct QPushButton_VTable {
	void (*destructor)(struct QPushButton_VTable* vtbl, QPushButton* self);
	QMetaObject* (*metaObject)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	void* (*metacast)(struct QPushButton_VTable* vtbl, QPushButton* self, const char* param1);
	int (*metacall)(struct QPushButton_VTable* vtbl, QPushButton* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	QSize* (*minimumSizeHint)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	bool (*event)(struct QPushButton_VTable* vtbl, QPushButton* self, QEvent* e);
	void (*paintEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QPaintEvent* param1);
	void (*keyPressEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QKeyEvent* param1);
	void (*focusInEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QFocusEvent* param1);
	void (*mouseMoveEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QMouseEvent* param1);
	void (*initStyleOption)(struct QPushButton_VTable* vtbl, const QPushButton* self, QStyleOptionButton* option);
	bool (*hitButton)(struct QPushButton_VTable* vtbl, const QPushButton* self, QPoint* pos);
	void (*checkStateSet)(struct QPushButton_VTable* vtbl, QPushButton* self);
	void (*nextCheckState)(struct QPushButton_VTable* vtbl, QPushButton* self);
	void (*keyReleaseEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QKeyEvent* e);
	void (*mousePressEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QMouseEvent* e);
	void (*changeEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QEvent* e);
	void (*timerEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QTimerEvent* e);
	int (*devType)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	void (*setVisible)(struct QPushButton_VTable* vtbl, QPushButton* self, bool visible);
	int (*heightForWidth)(struct QPushButton_VTable* vtbl, const QPushButton* self, int param1);
	bool (*hasHeightForWidth)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	QPaintEngine* (*paintEngine)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	void (*mouseDoubleClickEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QMouseEvent* event);
	void (*wheelEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QWheelEvent* event);
	void (*enterEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QEnterEvent* event);
	void (*leaveEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QEvent* event);
	void (*moveEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QMoveEvent* event);
	void (*resizeEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QResizeEvent* event);
	void (*closeEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QTabletEvent* event);
	void (*actionEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QDropEvent* event);
	void (*showEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QShowEvent* event);
	void (*hideEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QHideEvent* event);
	bool (*nativeEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QPushButton_VTable* vtbl, const QPushButton* self, int param1);
	void (*initPainter)(struct QPushButton_VTable* vtbl, const QPushButton* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPushButton_VTable* vtbl, const QPushButton* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPushButton_VTable* vtbl, const QPushButton* self);
	void (*inputMethodEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QPushButton_VTable* vtbl, const QPushButton* self, int param1);
	bool (*focusNextPrevChild)(struct QPushButton_VTable* vtbl, QPushButton* self, bool next);
	bool (*eventFilter)(struct QPushButton_VTable* vtbl, QPushButton* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QChildEvent* event);
	void (*customEvent)(struct QPushButton_VTable* vtbl, QPushButton* self, QEvent* event);
	void (*connectNotify)(struct QPushButton_VTable* vtbl, QPushButton* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPushButton_VTable* vtbl, QPushButton* self, QMetaMethod* signal);
};
QPushButton* QPushButton_new(struct QPushButton_VTable* vtbl, QWidget* parent);
QPushButton* QPushButton_new2(struct QPushButton_VTable* vtbl);
QPushButton* QPushButton_new3(struct QPushButton_VTable* vtbl, struct miqt_string text);
QPushButton* QPushButton_new4(struct QPushButton_VTable* vtbl, QIcon* icon, struct miqt_string text);
QPushButton* QPushButton_new5(struct QPushButton_VTable* vtbl, struct miqt_string text, QWidget* parent);
QPushButton* QPushButton_new6(struct QPushButton_VTable* vtbl, QIcon* icon, struct miqt_string text, QWidget* parent);
void QPushButton_virtbase(QPushButton* src, QAbstractButton** outptr_QAbstractButton);
QMetaObject* QPushButton_metaObject(const QPushButton* self);
void* QPushButton_metacast(QPushButton* self, const char* param1);
int QPushButton_metacall(QPushButton* self, int param1, int param2, void** param3);
struct miqt_string QPushButton_tr(const char* s);
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
void QPushButton_mouseMoveEvent(QPushButton* self, QMouseEvent* param1);
void QPushButton_initStyleOption(const QPushButton* self, QStyleOptionButton* option);
bool QPushButton_hitButton(const QPushButton* self, QPoint* pos);
struct miqt_string QPushButton_tr2(const char* s, const char* c);
struct miqt_string QPushButton_tr3(const char* s, const char* c, int n);
QMetaObject* QPushButton_virtualbase_metaObject(const void* self);
void* QPushButton_virtualbase_metacast(void* self, const char* param1);
int QPushButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QPushButton_virtualbase_sizeHint(const void* self);
QSize* QPushButton_virtualbase_minimumSizeHint(const void* self);
bool QPushButton_virtualbase_event(void* self, QEvent* e);
void QPushButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QPushButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QPushButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QPushButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
void QPushButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QPushButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* option);
bool QPushButton_virtualbase_hitButton(const void* self, QPoint* pos);
void QPushButton_virtualbase_checkStateSet(void* self);
void QPushButton_virtualbase_nextCheckState(void* self);
void QPushButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QPushButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QPushButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QPushButton_virtualbase_changeEvent(void* self, QEvent* e);
void QPushButton_virtualbase_timerEvent(void* self, QTimerEvent* e);
int QPushButton_virtualbase_devType(const void* self);
void QPushButton_virtualbase_setVisible(void* self, bool visible);
int QPushButton_virtualbase_heightForWidth(const void* self, int param1);
bool QPushButton_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QPushButton_virtualbase_paintEngine(const void* self);
void QPushButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QPushButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QPushButton_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QPushButton_virtualbase_leaveEvent(void* self, QEvent* event);
void QPushButton_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QPushButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QPushButton_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QPushButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QPushButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QPushButton_virtualbase_actionEvent(void* self, QActionEvent* event);
void QPushButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QPushButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QPushButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QPushButton_virtualbase_dropEvent(void* self, QDropEvent* event);
void QPushButton_virtualbase_showEvent(void* self, QShowEvent* event);
void QPushButton_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QPushButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QPushButton_virtualbase_metric(const void* self, int param1);
void QPushButton_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPushButton_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPushButton_virtualbase_sharedPainter(const void* self);
void QPushButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QPushButton_virtualbase_inputMethodQuery(const void* self, int param1);
bool QPushButton_virtualbase_focusNextPrevChild(void* self, bool next);
bool QPushButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPushButton_virtualbase_childEvent(void* self, QChildEvent* event);
void QPushButton_virtualbase_customEvent(void* self, QEvent* event);
void QPushButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPushButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QPushButton_protectedbase_updateMicroFocus(void* self);
void QPushButton_protectedbase_create(void* self);
void QPushButton_protectedbase_destroy(void* self);
bool QPushButton_protectedbase_focusNextChild(void* self);
bool QPushButton_protectedbase_focusPreviousChild(void* self);
QObject* QPushButton_protectedbase_sender(const void* self);
int QPushButton_protectedbase_senderSignalIndex(const void* self);
int QPushButton_protectedbase_receivers(const void* self, const char* signal);
bool QPushButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPushButton_staticMetaObject();
void QPushButton_delete(QPushButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
