#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFONTCOMBOBOX_H
#define SEAQT_QTWIDGETS_GEN_QFONTCOMBOBOX_H

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
class QComboBox;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QFont;
class QFontComboBox;
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
class QStyleOptionComboBox;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QComboBox QComboBox;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFontComboBox QFontComboBox;
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
typedef struct QStyleOptionComboBox QStyleOptionComboBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQFontComboBox VirtualQFontComboBox;
typedef struct QFontComboBox_VTable{
	void (*destructor)(VirtualQFontComboBox* self);
	QMetaObject* (*metaObject)(const VirtualQFontComboBox* self);
	void* (*metacast)(VirtualQFontComboBox* self, const char* param1);
	int (*metacall)(VirtualQFontComboBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQFontComboBox* self);
	bool (*event)(VirtualQFontComboBox* self, QEvent* e);
	QSize* (*minimumSizeHint)(const VirtualQFontComboBox* self);
	void (*showPopup)(VirtualQFontComboBox* self);
	void (*hidePopup)(VirtualQFontComboBox* self);
	QVariant* (*inputMethodQuery)(const VirtualQFontComboBox* self, int param1);
	void (*focusInEvent)(VirtualQFontComboBox* self, QFocusEvent* e);
	void (*focusOutEvent)(VirtualQFontComboBox* self, QFocusEvent* e);
	void (*changeEvent)(VirtualQFontComboBox* self, QEvent* e);
	void (*resizeEvent)(VirtualQFontComboBox* self, QResizeEvent* e);
	void (*paintEvent)(VirtualQFontComboBox* self, QPaintEvent* e);
	void (*showEvent)(VirtualQFontComboBox* self, QShowEvent* e);
	void (*hideEvent)(VirtualQFontComboBox* self, QHideEvent* e);
	void (*mousePressEvent)(VirtualQFontComboBox* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQFontComboBox* self, QMouseEvent* e);
	void (*keyPressEvent)(VirtualQFontComboBox* self, QKeyEvent* e);
	void (*keyReleaseEvent)(VirtualQFontComboBox* self, QKeyEvent* e);
	void (*wheelEvent)(VirtualQFontComboBox* self, QWheelEvent* e);
	void (*contextMenuEvent)(VirtualQFontComboBox* self, QContextMenuEvent* e);
	void (*inputMethodEvent)(VirtualQFontComboBox* self, QInputMethodEvent* param1);
	int (*devType)(const VirtualQFontComboBox* self);
	void (*setVisible)(VirtualQFontComboBox* self, bool visible);
	int (*heightForWidth)(const VirtualQFontComboBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQFontComboBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQFontComboBox* self);
	void (*mouseDoubleClickEvent)(VirtualQFontComboBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQFontComboBox* self, QMouseEvent* event);
	void (*enterEvent)(VirtualQFontComboBox* self, QEvent* event);
	void (*leaveEvent)(VirtualQFontComboBox* self, QEvent* event);
	void (*moveEvent)(VirtualQFontComboBox* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQFontComboBox* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQFontComboBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQFontComboBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQFontComboBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQFontComboBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQFontComboBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQFontComboBox* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQFontComboBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQFontComboBox* self, int param1);
	void (*initPainter)(const VirtualQFontComboBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQFontComboBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQFontComboBox* self);
	bool (*focusNextPrevChild)(VirtualQFontComboBox* self, bool next);
	bool (*eventFilter)(VirtualQFontComboBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFontComboBox* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFontComboBox* self, QChildEvent* event);
	void (*customEvent)(VirtualQFontComboBox* self, QEvent* event);
	void (*connectNotify)(VirtualQFontComboBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFontComboBox* self, QMetaMethod* signal);
}QFontComboBox_VTable;

const QFontComboBox_VTable* QFontComboBox_vtbl(const VirtualQFontComboBox* self);
void* QFontComboBox_vdata(const VirtualQFontComboBox* self);
void QFontComboBox_setVdata(VirtualQFontComboBox* self, void* vdata);

VirtualQFontComboBox* QFontComboBox_new(const QFontComboBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFontComboBox* QFontComboBox_new2(const QFontComboBox_VTable* vtbl, void* vdata);

void QFontComboBox_virtbase(QFontComboBox* src, QComboBox** outptr_QComboBox);
QMetaObject* QFontComboBox_metaObject(const QFontComboBox* self);
void* QFontComboBox_metacast(QFontComboBox* self, const char* param1);
int QFontComboBox_metacall(QFontComboBox* self, int param1, int param2, void** param3);
struct miqt_string QFontComboBox_tr(const char* s);
struct miqt_string QFontComboBox_trUtf8(const char* s);
void QFontComboBox_setWritingSystem(QFontComboBox* self, int writingSystem);
int QFontComboBox_writingSystem(const QFontComboBox* self);
void QFontComboBox_setFontFilters(QFontComboBox* self, int filters);
int QFontComboBox_fontFilters(const QFontComboBox* self);
QFont* QFontComboBox_currentFont(const QFontComboBox* self);
QSize* QFontComboBox_sizeHint(const QFontComboBox* self);
void QFontComboBox_setCurrentFont(QFontComboBox* self, QFont* f);
void QFontComboBox_currentFontChanged(QFontComboBox* self, QFont* f);
void QFontComboBox_connect_currentFontChanged(VirtualQFontComboBox* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
bool QFontComboBox_event(QFontComboBox* self, QEvent* e);
struct miqt_string QFontComboBox_tr2(const char* s, const char* c);
struct miqt_string QFontComboBox_tr3(const char* s, const char* c, int n);
struct miqt_string QFontComboBox_trUtf82(const char* s, const char* c);
struct miqt_string QFontComboBox_trUtf83(const char* s, const char* c, int n);

QMetaObject* QFontComboBox_virtualbase_metaObject(const VirtualQFontComboBox* self);
void* QFontComboBox_virtualbase_metacast(VirtualQFontComboBox* self, const char* param1);
int QFontComboBox_virtualbase_metacall(VirtualQFontComboBox* self, int param1, int param2, void** param3);
QSize* QFontComboBox_virtualbase_sizeHint(const VirtualQFontComboBox* self);
bool QFontComboBox_virtualbase_event(VirtualQFontComboBox* self, QEvent* e);
QSize* QFontComboBox_virtualbase_minimumSizeHint(const VirtualQFontComboBox* self);
void QFontComboBox_virtualbase_showPopup(VirtualQFontComboBox* self);
void QFontComboBox_virtualbase_hidePopup(VirtualQFontComboBox* self);
QVariant* QFontComboBox_virtualbase_inputMethodQuery(const VirtualQFontComboBox* self, int param1);
void QFontComboBox_virtualbase_focusInEvent(VirtualQFontComboBox* self, QFocusEvent* e);
void QFontComboBox_virtualbase_focusOutEvent(VirtualQFontComboBox* self, QFocusEvent* e);
void QFontComboBox_virtualbase_changeEvent(VirtualQFontComboBox* self, QEvent* e);
void QFontComboBox_virtualbase_resizeEvent(VirtualQFontComboBox* self, QResizeEvent* e);
void QFontComboBox_virtualbase_paintEvent(VirtualQFontComboBox* self, QPaintEvent* e);
void QFontComboBox_virtualbase_showEvent(VirtualQFontComboBox* self, QShowEvent* e);
void QFontComboBox_virtualbase_hideEvent(VirtualQFontComboBox* self, QHideEvent* e);
void QFontComboBox_virtualbase_mousePressEvent(VirtualQFontComboBox* self, QMouseEvent* e);
void QFontComboBox_virtualbase_mouseReleaseEvent(VirtualQFontComboBox* self, QMouseEvent* e);
void QFontComboBox_virtualbase_keyPressEvent(VirtualQFontComboBox* self, QKeyEvent* e);
void QFontComboBox_virtualbase_keyReleaseEvent(VirtualQFontComboBox* self, QKeyEvent* e);
void QFontComboBox_virtualbase_wheelEvent(VirtualQFontComboBox* self, QWheelEvent* e);
void QFontComboBox_virtualbase_contextMenuEvent(VirtualQFontComboBox* self, QContextMenuEvent* e);
void QFontComboBox_virtualbase_inputMethodEvent(VirtualQFontComboBox* self, QInputMethodEvent* param1);
int QFontComboBox_virtualbase_devType(const VirtualQFontComboBox* self);
void QFontComboBox_virtualbase_setVisible(VirtualQFontComboBox* self, bool visible);
int QFontComboBox_virtualbase_heightForWidth(const VirtualQFontComboBox* self, int param1);
bool QFontComboBox_virtualbase_hasHeightForWidth(const VirtualQFontComboBox* self);
QPaintEngine* QFontComboBox_virtualbase_paintEngine(const VirtualQFontComboBox* self);
void QFontComboBox_virtualbase_mouseDoubleClickEvent(VirtualQFontComboBox* self, QMouseEvent* event);
void QFontComboBox_virtualbase_mouseMoveEvent(VirtualQFontComboBox* self, QMouseEvent* event);
void QFontComboBox_virtualbase_enterEvent(VirtualQFontComboBox* self, QEvent* event);
void QFontComboBox_virtualbase_leaveEvent(VirtualQFontComboBox* self, QEvent* event);
void QFontComboBox_virtualbase_moveEvent(VirtualQFontComboBox* self, QMoveEvent* event);
void QFontComboBox_virtualbase_closeEvent(VirtualQFontComboBox* self, QCloseEvent* event);
void QFontComboBox_virtualbase_tabletEvent(VirtualQFontComboBox* self, QTabletEvent* event);
void QFontComboBox_virtualbase_actionEvent(VirtualQFontComboBox* self, QActionEvent* event);
void QFontComboBox_virtualbase_dragEnterEvent(VirtualQFontComboBox* self, QDragEnterEvent* event);
void QFontComboBox_virtualbase_dragMoveEvent(VirtualQFontComboBox* self, QDragMoveEvent* event);
void QFontComboBox_virtualbase_dragLeaveEvent(VirtualQFontComboBox* self, QDragLeaveEvent* event);
void QFontComboBox_virtualbase_dropEvent(VirtualQFontComboBox* self, QDropEvent* event);
bool QFontComboBox_virtualbase_nativeEvent(VirtualQFontComboBox* self, struct miqt_string eventType, void* message, long* result);
int QFontComboBox_virtualbase_metric(const VirtualQFontComboBox* self, int param1);
void QFontComboBox_virtualbase_initPainter(const VirtualQFontComboBox* self, QPainter* painter);
QPaintDevice* QFontComboBox_virtualbase_redirected(const VirtualQFontComboBox* self, QPoint* offset);
QPainter* QFontComboBox_virtualbase_sharedPainter(const VirtualQFontComboBox* self);
bool QFontComboBox_virtualbase_focusNextPrevChild(VirtualQFontComboBox* self, bool next);
bool QFontComboBox_virtualbase_eventFilter(VirtualQFontComboBox* self, QObject* watched, QEvent* event);
void QFontComboBox_virtualbase_timerEvent(VirtualQFontComboBox* self, QTimerEvent* event);
void QFontComboBox_virtualbase_childEvent(VirtualQFontComboBox* self, QChildEvent* event);
void QFontComboBox_virtualbase_customEvent(VirtualQFontComboBox* self, QEvent* event);
void QFontComboBox_virtualbase_connectNotify(VirtualQFontComboBox* self, QMetaMethod* signal);
void QFontComboBox_virtualbase_disconnectNotify(VirtualQFontComboBox* self, QMetaMethod* signal);

void QFontComboBox_protectedbase_initStyleOption(const VirtualQFontComboBox* self, QStyleOptionComboBox* option);
void QFontComboBox_protectedbase_updateMicroFocus(VirtualQFontComboBox* self);
void QFontComboBox_protectedbase_create(VirtualQFontComboBox* self);
void QFontComboBox_protectedbase_destroy(VirtualQFontComboBox* self);
bool QFontComboBox_protectedbase_focusNextChild(VirtualQFontComboBox* self);
bool QFontComboBox_protectedbase_focusPreviousChild(VirtualQFontComboBox* self);
QObject* QFontComboBox_protectedbase_sender(const VirtualQFontComboBox* self);
int QFontComboBox_protectedbase_senderSignalIndex(const VirtualQFontComboBox* self);
int QFontComboBox_protectedbase_receivers(const VirtualQFontComboBox* self, const char* signal);
bool QFontComboBox_protectedbase_isSignalConnected(const VirtualQFontComboBox* self, QMetaMethod* signal);

const QMetaObject* QFontComboBox_staticMetaObject();
void QFontComboBox_delete(QFontComboBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
