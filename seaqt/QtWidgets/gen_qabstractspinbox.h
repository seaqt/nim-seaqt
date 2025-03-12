#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTSPINBOX_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTSPINBOX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSpinBox;
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
class QLineEdit;
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
class QStyleOptionSpinBox;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractSpinBox QAbstractSpinBox;
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
typedef struct QLineEdit QLineEdit;
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
typedef struct QStyleOptionSpinBox QStyleOptionSpinBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQAbstractSpinBox VirtualQAbstractSpinBox;
typedef struct QAbstractSpinBox_VTable{
	void (*destructor)(VirtualQAbstractSpinBox* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractSpinBox* self);
	void* (*metacast)(VirtualQAbstractSpinBox* self, const char* param1);
	int (*metacall)(VirtualQAbstractSpinBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQAbstractSpinBox* self);
	QSize* (*minimumSizeHint)(const VirtualQAbstractSpinBox* self);
	bool (*event)(VirtualQAbstractSpinBox* self, QEvent* event);
	QVariant* (*inputMethodQuery)(const VirtualQAbstractSpinBox* self, int param1);
	int (*validate)(const VirtualQAbstractSpinBox* self, struct miqt_string input, int* pos);
	void (*fixup)(const VirtualQAbstractSpinBox* self, struct miqt_string input);
	void (*stepBy)(VirtualQAbstractSpinBox* self, int steps);
	void (*clear)(VirtualQAbstractSpinBox* self);
	void (*resizeEvent)(VirtualQAbstractSpinBox* self, QResizeEvent* event);
	void (*keyPressEvent)(VirtualQAbstractSpinBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQAbstractSpinBox* self, QKeyEvent* event);
	void (*wheelEvent)(VirtualQAbstractSpinBox* self, QWheelEvent* event);
	void (*focusInEvent)(VirtualQAbstractSpinBox* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQAbstractSpinBox* self, QFocusEvent* event);
	void (*contextMenuEvent)(VirtualQAbstractSpinBox* self, QContextMenuEvent* event);
	void (*changeEvent)(VirtualQAbstractSpinBox* self, QEvent* event);
	void (*closeEvent)(VirtualQAbstractSpinBox* self, QCloseEvent* event);
	void (*hideEvent)(VirtualQAbstractSpinBox* self, QHideEvent* event);
	void (*mousePressEvent)(VirtualQAbstractSpinBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQAbstractSpinBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQAbstractSpinBox* self, QMouseEvent* event);
	void (*timerEvent)(VirtualQAbstractSpinBox* self, QTimerEvent* event);
	void (*paintEvent)(VirtualQAbstractSpinBox* self, QPaintEvent* event);
	void (*showEvent)(VirtualQAbstractSpinBox* self, QShowEvent* event);
	void (*initStyleOption)(const VirtualQAbstractSpinBox* self, QStyleOptionSpinBox* option);
	int (*stepEnabled)(const VirtualQAbstractSpinBox* self);
	int (*devType)(const VirtualQAbstractSpinBox* self);
	void (*setVisible)(VirtualQAbstractSpinBox* self, bool visible);
	int (*heightForWidth)(const VirtualQAbstractSpinBox* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQAbstractSpinBox* self);
	QPaintEngine* (*paintEngine)(const VirtualQAbstractSpinBox* self);
	void (*mouseDoubleClickEvent)(VirtualQAbstractSpinBox* self, QMouseEvent* event);
	void (*enterEvent)(VirtualQAbstractSpinBox* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQAbstractSpinBox* self, QEvent* event);
	void (*moveEvent)(VirtualQAbstractSpinBox* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQAbstractSpinBox* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQAbstractSpinBox* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQAbstractSpinBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQAbstractSpinBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQAbstractSpinBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQAbstractSpinBox* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQAbstractSpinBox* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQAbstractSpinBox* self, int param1);
	void (*initPainter)(const VirtualQAbstractSpinBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQAbstractSpinBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQAbstractSpinBox* self);
	void (*inputMethodEvent)(VirtualQAbstractSpinBox* self, QInputMethodEvent* param1);
	bool (*focusNextPrevChild)(VirtualQAbstractSpinBox* self, bool next);
	bool (*eventFilter)(VirtualQAbstractSpinBox* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQAbstractSpinBox* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractSpinBox* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractSpinBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractSpinBox* self, QMetaMethod* signal);
}QAbstractSpinBox_VTable;

const QAbstractSpinBox_VTable* QAbstractSpinBox_vtbl(const VirtualQAbstractSpinBox* self);
void* QAbstractSpinBox_vdata(const VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_setVdata(VirtualQAbstractSpinBox* self, void* vdata);

VirtualQAbstractSpinBox* QAbstractSpinBox_new(const QAbstractSpinBox_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQAbstractSpinBox* QAbstractSpinBox_new2(const QAbstractSpinBox_VTable* vtbl, void* vdata);

void QAbstractSpinBox_virtbase(QAbstractSpinBox* src, QWidget** outptr_QWidget);
QMetaObject* QAbstractSpinBox_metaObject(const QAbstractSpinBox* self);
void* QAbstractSpinBox_metacast(QAbstractSpinBox* self, const char* param1);
int QAbstractSpinBox_metacall(QAbstractSpinBox* self, int param1, int param2, void** param3);
struct miqt_string QAbstractSpinBox_tr(const char* s);
int QAbstractSpinBox_buttonSymbols(const QAbstractSpinBox* self);
void QAbstractSpinBox_setButtonSymbols(QAbstractSpinBox* self, int bs);
void QAbstractSpinBox_setCorrectionMode(QAbstractSpinBox* self, int cm);
int QAbstractSpinBox_correctionMode(const QAbstractSpinBox* self);
bool QAbstractSpinBox_hasAcceptableInput(const QAbstractSpinBox* self);
struct miqt_string QAbstractSpinBox_text(const QAbstractSpinBox* self);
struct miqt_string QAbstractSpinBox_specialValueText(const QAbstractSpinBox* self);
void QAbstractSpinBox_setSpecialValueText(QAbstractSpinBox* self, struct miqt_string txt);
bool QAbstractSpinBox_wrapping(const QAbstractSpinBox* self);
void QAbstractSpinBox_setWrapping(QAbstractSpinBox* self, bool w);
void QAbstractSpinBox_setReadOnly(QAbstractSpinBox* self, bool r);
bool QAbstractSpinBox_isReadOnly(const QAbstractSpinBox* self);
void QAbstractSpinBox_setKeyboardTracking(QAbstractSpinBox* self, bool kt);
bool QAbstractSpinBox_keyboardTracking(const QAbstractSpinBox* self);
void QAbstractSpinBox_setAlignment(QAbstractSpinBox* self, int flag);
int QAbstractSpinBox_alignment(const QAbstractSpinBox* self);
void QAbstractSpinBox_setFrame(QAbstractSpinBox* self, bool frame);
bool QAbstractSpinBox_hasFrame(const QAbstractSpinBox* self);
void QAbstractSpinBox_setAccelerated(QAbstractSpinBox* self, bool on);
bool QAbstractSpinBox_isAccelerated(const QAbstractSpinBox* self);
void QAbstractSpinBox_setGroupSeparatorShown(QAbstractSpinBox* self, bool shown);
bool QAbstractSpinBox_isGroupSeparatorShown(const QAbstractSpinBox* self);
QSize* QAbstractSpinBox_sizeHint(const QAbstractSpinBox* self);
QSize* QAbstractSpinBox_minimumSizeHint(const QAbstractSpinBox* self);
void QAbstractSpinBox_interpretText(QAbstractSpinBox* self);
bool QAbstractSpinBox_event(QAbstractSpinBox* self, QEvent* event);
QVariant* QAbstractSpinBox_inputMethodQuery(const QAbstractSpinBox* self, int param1);
int QAbstractSpinBox_validate(const QAbstractSpinBox* self, struct miqt_string input, int* pos);
void QAbstractSpinBox_fixup(const QAbstractSpinBox* self, struct miqt_string input);
void QAbstractSpinBox_stepBy(QAbstractSpinBox* self, int steps);
void QAbstractSpinBox_stepUp(QAbstractSpinBox* self);
void QAbstractSpinBox_stepDown(QAbstractSpinBox* self);
void QAbstractSpinBox_selectAll(QAbstractSpinBox* self);
void QAbstractSpinBox_clear(QAbstractSpinBox* self);
void QAbstractSpinBox_resizeEvent(QAbstractSpinBox* self, QResizeEvent* event);
void QAbstractSpinBox_keyPressEvent(QAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_keyReleaseEvent(QAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_wheelEvent(QAbstractSpinBox* self, QWheelEvent* event);
void QAbstractSpinBox_focusInEvent(QAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_focusOutEvent(QAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_contextMenuEvent(QAbstractSpinBox* self, QContextMenuEvent* event);
void QAbstractSpinBox_changeEvent(QAbstractSpinBox* self, QEvent* event);
void QAbstractSpinBox_closeEvent(QAbstractSpinBox* self, QCloseEvent* event);
void QAbstractSpinBox_hideEvent(QAbstractSpinBox* self, QHideEvent* event);
void QAbstractSpinBox_mousePressEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_mouseReleaseEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_mouseMoveEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_timerEvent(QAbstractSpinBox* self, QTimerEvent* event);
void QAbstractSpinBox_paintEvent(QAbstractSpinBox* self, QPaintEvent* event);
void QAbstractSpinBox_showEvent(QAbstractSpinBox* self, QShowEvent* event);
void QAbstractSpinBox_initStyleOption(const QAbstractSpinBox* self, QStyleOptionSpinBox* option);
int QAbstractSpinBox_stepEnabled(const QAbstractSpinBox* self);
void QAbstractSpinBox_editingFinished(QAbstractSpinBox* self);
void QAbstractSpinBox_connect_editingFinished(VirtualQAbstractSpinBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAbstractSpinBox_tr2(const char* s, const char* c);
struct miqt_string QAbstractSpinBox_tr3(const char* s, const char* c, int n);

QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const VirtualQAbstractSpinBox* self);
void* QAbstractSpinBox_virtualbase_metacast(VirtualQAbstractSpinBox* self, const char* param1);
int QAbstractSpinBox_virtualbase_metacall(VirtualQAbstractSpinBox* self, int param1, int param2, void** param3);
QSize* QAbstractSpinBox_virtualbase_sizeHint(const VirtualQAbstractSpinBox* self);
QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const VirtualQAbstractSpinBox* self);
bool QAbstractSpinBox_virtualbase_event(VirtualQAbstractSpinBox* self, QEvent* event);
QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const VirtualQAbstractSpinBox* self, int param1);
int QAbstractSpinBox_virtualbase_validate(const VirtualQAbstractSpinBox* self, struct miqt_string input, int* pos);
void QAbstractSpinBox_virtualbase_fixup(const VirtualQAbstractSpinBox* self, struct miqt_string input);
void QAbstractSpinBox_virtualbase_stepBy(VirtualQAbstractSpinBox* self, int steps);
void QAbstractSpinBox_virtualbase_clear(VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_virtualbase_resizeEvent(VirtualQAbstractSpinBox* self, QResizeEvent* event);
void QAbstractSpinBox_virtualbase_keyPressEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_virtualbase_keyReleaseEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_virtualbase_wheelEvent(VirtualQAbstractSpinBox* self, QWheelEvent* event);
void QAbstractSpinBox_virtualbase_focusInEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_virtualbase_focusOutEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_virtualbase_contextMenuEvent(VirtualQAbstractSpinBox* self, QContextMenuEvent* event);
void QAbstractSpinBox_virtualbase_changeEvent(VirtualQAbstractSpinBox* self, QEvent* event);
void QAbstractSpinBox_virtualbase_closeEvent(VirtualQAbstractSpinBox* self, QCloseEvent* event);
void QAbstractSpinBox_virtualbase_hideEvent(VirtualQAbstractSpinBox* self, QHideEvent* event);
void QAbstractSpinBox_virtualbase_mousePressEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_mouseReleaseEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_mouseMoveEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_timerEvent(VirtualQAbstractSpinBox* self, QTimerEvent* event);
void QAbstractSpinBox_virtualbase_paintEvent(VirtualQAbstractSpinBox* self, QPaintEvent* event);
void QAbstractSpinBox_virtualbase_showEvent(VirtualQAbstractSpinBox* self, QShowEvent* event);
void QAbstractSpinBox_virtualbase_initStyleOption(const VirtualQAbstractSpinBox* self, QStyleOptionSpinBox* option);
int QAbstractSpinBox_virtualbase_stepEnabled(const VirtualQAbstractSpinBox* self);
int QAbstractSpinBox_virtualbase_devType(const VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_virtualbase_setVisible(VirtualQAbstractSpinBox* self, bool visible);
int QAbstractSpinBox_virtualbase_heightForWidth(const VirtualQAbstractSpinBox* self, int param1);
bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const VirtualQAbstractSpinBox* self);
QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_enterEvent(VirtualQAbstractSpinBox* self, QEnterEvent* event);
void QAbstractSpinBox_virtualbase_leaveEvent(VirtualQAbstractSpinBox* self, QEvent* event);
void QAbstractSpinBox_virtualbase_moveEvent(VirtualQAbstractSpinBox* self, QMoveEvent* event);
void QAbstractSpinBox_virtualbase_tabletEvent(VirtualQAbstractSpinBox* self, QTabletEvent* event);
void QAbstractSpinBox_virtualbase_actionEvent(VirtualQAbstractSpinBox* self, QActionEvent* event);
void QAbstractSpinBox_virtualbase_dragEnterEvent(VirtualQAbstractSpinBox* self, QDragEnterEvent* event);
void QAbstractSpinBox_virtualbase_dragMoveEvent(VirtualQAbstractSpinBox* self, QDragMoveEvent* event);
void QAbstractSpinBox_virtualbase_dragLeaveEvent(VirtualQAbstractSpinBox* self, QDragLeaveEvent* event);
void QAbstractSpinBox_virtualbase_dropEvent(VirtualQAbstractSpinBox* self, QDropEvent* event);
bool QAbstractSpinBox_virtualbase_nativeEvent(VirtualQAbstractSpinBox* self, struct miqt_string eventType, void* message, intptr_t* result);
int QAbstractSpinBox_virtualbase_metric(const VirtualQAbstractSpinBox* self, int param1);
void QAbstractSpinBox_virtualbase_initPainter(const VirtualQAbstractSpinBox* self, QPainter* painter);
QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const VirtualQAbstractSpinBox* self, QPoint* offset);
QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_virtualbase_inputMethodEvent(VirtualQAbstractSpinBox* self, QInputMethodEvent* param1);
bool QAbstractSpinBox_virtualbase_focusNextPrevChild(VirtualQAbstractSpinBox* self, bool next);
bool QAbstractSpinBox_virtualbase_eventFilter(VirtualQAbstractSpinBox* self, QObject* watched, QEvent* event);
void QAbstractSpinBox_virtualbase_childEvent(VirtualQAbstractSpinBox* self, QChildEvent* event);
void QAbstractSpinBox_virtualbase_customEvent(VirtualQAbstractSpinBox* self, QEvent* event);
void QAbstractSpinBox_virtualbase_connectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal);
void QAbstractSpinBox_virtualbase_disconnectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal);

QLineEdit* QAbstractSpinBox_protectedbase_lineEdit(const VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_protectedbase_setLineEdit(VirtualQAbstractSpinBox* self, QLineEdit* edit);
void QAbstractSpinBox_protectedbase_updateMicroFocus(VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_protectedbase_create(VirtualQAbstractSpinBox* self);
void QAbstractSpinBox_protectedbase_destroy(VirtualQAbstractSpinBox* self);
bool QAbstractSpinBox_protectedbase_focusNextChild(VirtualQAbstractSpinBox* self);
bool QAbstractSpinBox_protectedbase_focusPreviousChild(VirtualQAbstractSpinBox* self);
QObject* QAbstractSpinBox_protectedbase_sender(const VirtualQAbstractSpinBox* self);
int QAbstractSpinBox_protectedbase_senderSignalIndex(const VirtualQAbstractSpinBox* self);
int QAbstractSpinBox_protectedbase_receivers(const VirtualQAbstractSpinBox* self, const char* signal);
bool QAbstractSpinBox_protectedbase_isSignalConnected(const VirtualQAbstractSpinBox* self, QMetaMethod* signal);

const QMetaObject* QAbstractSpinBox_staticMetaObject();
void QAbstractSpinBox_delete(QAbstractSpinBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
