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

struct QFontComboBox_VTable {
	void (*destructor)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self);
	QMetaObject* (*metaObject)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	void* (*metacast)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, const char* param1);
	int (*metacall)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	bool (*event)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QEvent* e);
	QSize* (*minimumSizeHint)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	void (*showPopup)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self);
	void (*hidePopup)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self);
	QVariant* (*inputMethodQuery)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self, int param1);
	void (*focusInEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QFocusEvent* e);
	void (*focusOutEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QFocusEvent* e);
	void (*changeEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QEvent* e);
	void (*resizeEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QResizeEvent* e);
	void (*paintEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QPaintEvent* e);
	void (*showEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QShowEvent* e);
	void (*hideEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QHideEvent* e);
	void (*mousePressEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMouseEvent* e);
	void (*keyPressEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QKeyEvent* e);
	void (*keyReleaseEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QKeyEvent* e);
	void (*wheelEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QWheelEvent* e);
	void (*contextMenuEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QContextMenuEvent* e);
	void (*inputMethodEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QInputMethodEvent* param1);
	int (*devType)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	void (*setVisible)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, bool visible);
	int (*heightForWidth)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self, int param1);
	bool (*hasHeightForWidth)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	QPaintEngine* (*paintEngine)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	void (*mouseDoubleClickEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMouseEvent* event);
	void (*enterEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QEvent* event);
	void (*leaveEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QEvent* event);
	void (*moveEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMoveEvent* event);
	void (*closeEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QCloseEvent* event);
	void (*tabletEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QDropEvent* event);
	bool (*nativeEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self, int param1);
	void (*initPainter)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QFontComboBox_VTable* vtbl, const QFontComboBox* self);
	bool (*focusNextPrevChild)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, bool next);
	bool (*eventFilter)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QTimerEvent* event);
	void (*childEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QChildEvent* event);
	void (*customEvent)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QEvent* event);
	void (*connectNotify)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFontComboBox_VTable* vtbl, QFontComboBox* self, QMetaMethod* signal);
};
QFontComboBox* QFontComboBox_new(struct QFontComboBox_VTable* vtbl, QWidget* parent);
QFontComboBox* QFontComboBox_new2(struct QFontComboBox_VTable* vtbl);
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
void QFontComboBox_connect_currentFontChanged(QFontComboBox* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t));
bool QFontComboBox_event(QFontComboBox* self, QEvent* e);
struct miqt_string QFontComboBox_tr2(const char* s, const char* c);
struct miqt_string QFontComboBox_tr3(const char* s, const char* c, int n);
struct miqt_string QFontComboBox_trUtf82(const char* s, const char* c);
struct miqt_string QFontComboBox_trUtf83(const char* s, const char* c, int n);
QMetaObject* QFontComboBox_virtualbase_metaObject(const void* self);
void* QFontComboBox_virtualbase_metacast(void* self, const char* param1);
int QFontComboBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QFontComboBox_virtualbase_sizeHint(const void* self);
bool QFontComboBox_virtualbase_event(void* self, QEvent* e);
QSize* QFontComboBox_virtualbase_minimumSizeHint(const void* self);
void QFontComboBox_virtualbase_showPopup(void* self);
void QFontComboBox_virtualbase_hidePopup(void* self);
QVariant* QFontComboBox_virtualbase_inputMethodQuery(const void* self, int param1);
void QFontComboBox_virtualbase_focusInEvent(void* self, QFocusEvent* e);
void QFontComboBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
void QFontComboBox_virtualbase_changeEvent(void* self, QEvent* e);
void QFontComboBox_virtualbase_resizeEvent(void* self, QResizeEvent* e);
void QFontComboBox_virtualbase_paintEvent(void* self, QPaintEvent* e);
void QFontComboBox_virtualbase_showEvent(void* self, QShowEvent* e);
void QFontComboBox_virtualbase_hideEvent(void* self, QHideEvent* e);
void QFontComboBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
void QFontComboBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QFontComboBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
void QFontComboBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
void QFontComboBox_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QFontComboBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e);
void QFontComboBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
int QFontComboBox_virtualbase_devType(const void* self);
void QFontComboBox_virtualbase_setVisible(void* self, bool visible);
int QFontComboBox_virtualbase_heightForWidth(const void* self, int param1);
bool QFontComboBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QFontComboBox_virtualbase_paintEngine(const void* self);
void QFontComboBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QFontComboBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QFontComboBox_virtualbase_enterEvent(void* self, QEvent* event);
void QFontComboBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QFontComboBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QFontComboBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QFontComboBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QFontComboBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QFontComboBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QFontComboBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QFontComboBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QFontComboBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QFontComboBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QFontComboBox_virtualbase_metric(const void* self, int param1);
void QFontComboBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QFontComboBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QFontComboBox_virtualbase_sharedPainter(const void* self);
bool QFontComboBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QFontComboBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFontComboBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFontComboBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QFontComboBox_virtualbase_customEvent(void* self, QEvent* event);
void QFontComboBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFontComboBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFontComboBox_protectedbase_initStyleOption(const void* self, QStyleOptionComboBox* option);
void QFontComboBox_protectedbase_updateMicroFocus(void* self);
void QFontComboBox_protectedbase_create(void* self);
void QFontComboBox_protectedbase_destroy(void* self);
bool QFontComboBox_protectedbase_focusNextChild(void* self);
bool QFontComboBox_protectedbase_focusPreviousChild(void* self);
QObject* QFontComboBox_protectedbase_sender(const void* self);
int QFontComboBox_protectedbase_senderSignalIndex(const void* self);
int QFontComboBox_protectedbase_receivers(const void* self, const char* signal);
bool QFontComboBox_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QFontComboBox_staticMetaObject();
void QFontComboBox_delete(QFontComboBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
