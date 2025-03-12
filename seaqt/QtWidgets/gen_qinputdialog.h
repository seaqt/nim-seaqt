#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QINPUTDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QINPUTDIALOG_H

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
class QContextMenuEvent;
class QDialog;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputDialog;
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
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputDialog QInputDialog;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQInputDialog VirtualQInputDialog;
typedef struct QInputDialog_VTable{
	void (*destructor)(VirtualQInputDialog* self);
	QMetaObject* (*metaObject)(const VirtualQInputDialog* self);
	void* (*metacast)(VirtualQInputDialog* self, const char* param1);
	int (*metacall)(VirtualQInputDialog* self, int param1, int param2, void** param3);
	QSize* (*minimumSizeHint)(const VirtualQInputDialog* self);
	QSize* (*sizeHint)(const VirtualQInputDialog* self);
	void (*setVisible)(VirtualQInputDialog* self, bool visible);
	void (*done)(VirtualQInputDialog* self, int result);
	void (*open)(VirtualQInputDialog* self);
	int (*exec)(VirtualQInputDialog* self);
	void (*accept)(VirtualQInputDialog* self);
	void (*reject)(VirtualQInputDialog* self);
	void (*keyPressEvent)(VirtualQInputDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQInputDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQInputDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQInputDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQInputDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQInputDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQInputDialog* self);
	int (*heightForWidth)(const VirtualQInputDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQInputDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQInputDialog* self);
	bool (*event)(VirtualQInputDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQInputDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQInputDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQInputDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQInputDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQInputDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQInputDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQInputDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQInputDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQInputDialog* self, QEvent* event);
	void (*leaveEvent)(VirtualQInputDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQInputDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQInputDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQInputDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQInputDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQInputDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQInputDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQInputDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQInputDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQInputDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQInputDialog* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQInputDialog* self, QEvent* param1);
	int (*metric)(const VirtualQInputDialog* self, int param1);
	void (*initPainter)(const VirtualQInputDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQInputDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQInputDialog* self);
	void (*inputMethodEvent)(VirtualQInputDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQInputDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQInputDialog* self, bool next);
	void (*timerEvent)(VirtualQInputDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQInputDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQInputDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQInputDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQInputDialog* self, QMetaMethod* signal);
}QInputDialog_VTable;

const QInputDialog_VTable* QInputDialog_vtbl(const VirtualQInputDialog* self);
void* QInputDialog_vdata(const VirtualQInputDialog* self);
void QInputDialog_setVdata(VirtualQInputDialog* self, void* vdata);

VirtualQInputDialog* QInputDialog_new(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQInputDialog* QInputDialog_new2(const QInputDialog_VTable* vtbl, void* vdata);
VirtualQInputDialog* QInputDialog_new3(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags);

void QInputDialog_virtbase(QInputDialog* src, QDialog** outptr_QDialog);
QMetaObject* QInputDialog_metaObject(const QInputDialog* self);
void* QInputDialog_metacast(QInputDialog* self, const char* param1);
int QInputDialog_metacall(QInputDialog* self, int param1, int param2, void** param3);
struct miqt_string QInputDialog_tr(const char* s);
struct miqt_string QInputDialog_trUtf8(const char* s);
void QInputDialog_setInputMode(QInputDialog* self, int mode);
int QInputDialog_inputMode(const QInputDialog* self);
void QInputDialog_setLabelText(QInputDialog* self, struct miqt_string text);
struct miqt_string QInputDialog_labelText(const QInputDialog* self);
void QInputDialog_setOption(QInputDialog* self, int option);
bool QInputDialog_testOption(const QInputDialog* self, int option);
void QInputDialog_setOptions(QInputDialog* self, int options);
int QInputDialog_options(const QInputDialog* self);
void QInputDialog_setTextValue(QInputDialog* self, struct miqt_string text);
struct miqt_string QInputDialog_textValue(const QInputDialog* self);
void QInputDialog_setTextEchoMode(QInputDialog* self, int mode);
int QInputDialog_textEchoMode(const QInputDialog* self);
void QInputDialog_setComboBoxEditable(QInputDialog* self, bool editable);
bool QInputDialog_isComboBoxEditable(const QInputDialog* self);
void QInputDialog_setComboBoxItems(QInputDialog* self, struct miqt_array /* of struct miqt_string */  items);
struct miqt_array /* of struct miqt_string */  QInputDialog_comboBoxItems(const QInputDialog* self);
void QInputDialog_setIntValue(QInputDialog* self, int value);
int QInputDialog_intValue(const QInputDialog* self);
void QInputDialog_setIntMinimum(QInputDialog* self, int min);
int QInputDialog_intMinimum(const QInputDialog* self);
void QInputDialog_setIntMaximum(QInputDialog* self, int max);
int QInputDialog_intMaximum(const QInputDialog* self);
void QInputDialog_setIntRange(QInputDialog* self, int min, int max);
void QInputDialog_setIntStep(QInputDialog* self, int step);
int QInputDialog_intStep(const QInputDialog* self);
void QInputDialog_setDoubleValue(QInputDialog* self, double value);
double QInputDialog_doubleValue(const QInputDialog* self);
void QInputDialog_setDoubleMinimum(QInputDialog* self, double min);
double QInputDialog_doubleMinimum(const QInputDialog* self);
void QInputDialog_setDoubleMaximum(QInputDialog* self, double max);
double QInputDialog_doubleMaximum(const QInputDialog* self);
void QInputDialog_setDoubleRange(QInputDialog* self, double min, double max);
void QInputDialog_setDoubleDecimals(QInputDialog* self, int decimals);
int QInputDialog_doubleDecimals(const QInputDialog* self);
void QInputDialog_setOkButtonText(QInputDialog* self, struct miqt_string text);
struct miqt_string QInputDialog_okButtonText(const QInputDialog* self);
void QInputDialog_setCancelButtonText(QInputDialog* self, struct miqt_string text);
struct miqt_string QInputDialog_cancelButtonText(const QInputDialog* self);
QSize* QInputDialog_minimumSizeHint(const QInputDialog* self);
QSize* QInputDialog_sizeHint(const QInputDialog* self);
void QInputDialog_setVisible(QInputDialog* self, bool visible);
struct miqt_string QInputDialog_getText(QWidget* parent, struct miqt_string title, struct miqt_string label);
struct miqt_string QInputDialog_getMultiLineText(QWidget* parent, struct miqt_string title, struct miqt_string label);
struct miqt_string QInputDialog_getItem(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items);
int QInputDialog_getInt(QWidget* parent, struct miqt_string title, struct miqt_string label);
double QInputDialog_getDouble(QWidget* parent, struct miqt_string title, struct miqt_string label);
double QInputDialog_getDouble2(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags, double step);
void QInputDialog_setDoubleStep(QInputDialog* self, double step);
double QInputDialog_doubleStep(const QInputDialog* self);
void QInputDialog_textValueChanged(QInputDialog* self, struct miqt_string text);
void QInputDialog_connect_textValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QInputDialog_textValueSelected(QInputDialog* self, struct miqt_string text);
void QInputDialog_connect_textValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QInputDialog_intValueChanged(QInputDialog* self, int value);
void QInputDialog_connect_intValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QInputDialog_intValueSelected(QInputDialog* self, int value);
void QInputDialog_connect_intValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QInputDialog_doubleValueChanged(QInputDialog* self, double value);
void QInputDialog_connect_doubleValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QInputDialog_doubleValueSelected(QInputDialog* self, double value);
void QInputDialog_connect_doubleValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QInputDialog_done(QInputDialog* self, int result);
struct miqt_string QInputDialog_tr2(const char* s, const char* c);
struct miqt_string QInputDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QInputDialog_trUtf82(const char* s, const char* c);
struct miqt_string QInputDialog_trUtf83(const char* s, const char* c, int n);
void QInputDialog_setOption2(QInputDialog* self, int option, bool on);
struct miqt_string QInputDialog_getText4(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo);
struct miqt_string QInputDialog_getText5(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text);
struct miqt_string QInputDialog_getText6(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok);
struct miqt_string QInputDialog_getText7(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags);
struct miqt_string QInputDialog_getText8(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags, int inputMethodHints);
struct miqt_string QInputDialog_getMultiLineText4(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text);
struct miqt_string QInputDialog_getMultiLineText5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok);
struct miqt_string QInputDialog_getMultiLineText6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags);
struct miqt_string QInputDialog_getMultiLineText7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags, int inputMethodHints);
struct miqt_string QInputDialog_getItem5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current);
struct miqt_string QInputDialog_getItem6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable);
struct miqt_string QInputDialog_getItem7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok);
struct miqt_string QInputDialog_getItem8(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags);
struct miqt_string QInputDialog_getItem9(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags, int inputMethodHints);
int QInputDialog_getInt4(QWidget* parent, struct miqt_string title, struct miqt_string label, int value);
int QInputDialog_getInt5(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue);
int QInputDialog_getInt6(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue);
int QInputDialog_getInt7(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step);
int QInputDialog_getInt8(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok);
int QInputDialog_getInt9(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok, int flags);
double QInputDialog_getDouble4(QWidget* parent, struct miqt_string title, struct miqt_string label, double value);
double QInputDialog_getDouble5(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue);
double QInputDialog_getDouble6(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue);
double QInputDialog_getDouble7(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals);
double QInputDialog_getDouble8(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok);
double QInputDialog_getDouble9(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags);

QMetaObject* QInputDialog_virtualbase_metaObject(const VirtualQInputDialog* self);
void* QInputDialog_virtualbase_metacast(VirtualQInputDialog* self, const char* param1);
int QInputDialog_virtualbase_metacall(VirtualQInputDialog* self, int param1, int param2, void** param3);
QSize* QInputDialog_virtualbase_minimumSizeHint(const VirtualQInputDialog* self);
QSize* QInputDialog_virtualbase_sizeHint(const VirtualQInputDialog* self);
void QInputDialog_virtualbase_setVisible(VirtualQInputDialog* self, bool visible);
void QInputDialog_virtualbase_done(VirtualQInputDialog* self, int result);
void QInputDialog_virtualbase_open(VirtualQInputDialog* self);
int QInputDialog_virtualbase_exec(VirtualQInputDialog* self);
void QInputDialog_virtualbase_accept(VirtualQInputDialog* self);
void QInputDialog_virtualbase_reject(VirtualQInputDialog* self);
void QInputDialog_virtualbase_keyPressEvent(VirtualQInputDialog* self, QKeyEvent* param1);
void QInputDialog_virtualbase_closeEvent(VirtualQInputDialog* self, QCloseEvent* param1);
void QInputDialog_virtualbase_showEvent(VirtualQInputDialog* self, QShowEvent* param1);
void QInputDialog_virtualbase_resizeEvent(VirtualQInputDialog* self, QResizeEvent* param1);
void QInputDialog_virtualbase_contextMenuEvent(VirtualQInputDialog* self, QContextMenuEvent* param1);
bool QInputDialog_virtualbase_eventFilter(VirtualQInputDialog* self, QObject* param1, QEvent* param2);
int QInputDialog_virtualbase_devType(const VirtualQInputDialog* self);
int QInputDialog_virtualbase_heightForWidth(const VirtualQInputDialog* self, int param1);
bool QInputDialog_virtualbase_hasHeightForWidth(const VirtualQInputDialog* self);
QPaintEngine* QInputDialog_virtualbase_paintEngine(const VirtualQInputDialog* self);
bool QInputDialog_virtualbase_event(VirtualQInputDialog* self, QEvent* event);
void QInputDialog_virtualbase_mousePressEvent(VirtualQInputDialog* self, QMouseEvent* event);
void QInputDialog_virtualbase_mouseReleaseEvent(VirtualQInputDialog* self, QMouseEvent* event);
void QInputDialog_virtualbase_mouseDoubleClickEvent(VirtualQInputDialog* self, QMouseEvent* event);
void QInputDialog_virtualbase_mouseMoveEvent(VirtualQInputDialog* self, QMouseEvent* event);
void QInputDialog_virtualbase_wheelEvent(VirtualQInputDialog* self, QWheelEvent* event);
void QInputDialog_virtualbase_keyReleaseEvent(VirtualQInputDialog* self, QKeyEvent* event);
void QInputDialog_virtualbase_focusInEvent(VirtualQInputDialog* self, QFocusEvent* event);
void QInputDialog_virtualbase_focusOutEvent(VirtualQInputDialog* self, QFocusEvent* event);
void QInputDialog_virtualbase_enterEvent(VirtualQInputDialog* self, QEvent* event);
void QInputDialog_virtualbase_leaveEvent(VirtualQInputDialog* self, QEvent* event);
void QInputDialog_virtualbase_paintEvent(VirtualQInputDialog* self, QPaintEvent* event);
void QInputDialog_virtualbase_moveEvent(VirtualQInputDialog* self, QMoveEvent* event);
void QInputDialog_virtualbase_tabletEvent(VirtualQInputDialog* self, QTabletEvent* event);
void QInputDialog_virtualbase_actionEvent(VirtualQInputDialog* self, QActionEvent* event);
void QInputDialog_virtualbase_dragEnterEvent(VirtualQInputDialog* self, QDragEnterEvent* event);
void QInputDialog_virtualbase_dragMoveEvent(VirtualQInputDialog* self, QDragMoveEvent* event);
void QInputDialog_virtualbase_dragLeaveEvent(VirtualQInputDialog* self, QDragLeaveEvent* event);
void QInputDialog_virtualbase_dropEvent(VirtualQInputDialog* self, QDropEvent* event);
void QInputDialog_virtualbase_hideEvent(VirtualQInputDialog* self, QHideEvent* event);
bool QInputDialog_virtualbase_nativeEvent(VirtualQInputDialog* self, struct miqt_string eventType, void* message, long* result);
void QInputDialog_virtualbase_changeEvent(VirtualQInputDialog* self, QEvent* param1);
int QInputDialog_virtualbase_metric(const VirtualQInputDialog* self, int param1);
void QInputDialog_virtualbase_initPainter(const VirtualQInputDialog* self, QPainter* painter);
QPaintDevice* QInputDialog_virtualbase_redirected(const VirtualQInputDialog* self, QPoint* offset);
QPainter* QInputDialog_virtualbase_sharedPainter(const VirtualQInputDialog* self);
void QInputDialog_virtualbase_inputMethodEvent(VirtualQInputDialog* self, QInputMethodEvent* param1);
QVariant* QInputDialog_virtualbase_inputMethodQuery(const VirtualQInputDialog* self, int param1);
bool QInputDialog_virtualbase_focusNextPrevChild(VirtualQInputDialog* self, bool next);
void QInputDialog_virtualbase_timerEvent(VirtualQInputDialog* self, QTimerEvent* event);
void QInputDialog_virtualbase_childEvent(VirtualQInputDialog* self, QChildEvent* event);
void QInputDialog_virtualbase_customEvent(VirtualQInputDialog* self, QEvent* event);
void QInputDialog_virtualbase_connectNotify(VirtualQInputDialog* self, QMetaMethod* signal);
void QInputDialog_virtualbase_disconnectNotify(VirtualQInputDialog* self, QMetaMethod* signal);

void QInputDialog_protectedbase_adjustPosition(VirtualQInputDialog* self, QWidget* param1);
void QInputDialog_protectedbase_updateMicroFocus(VirtualQInputDialog* self);
void QInputDialog_protectedbase_create(VirtualQInputDialog* self);
void QInputDialog_protectedbase_destroy(VirtualQInputDialog* self);
bool QInputDialog_protectedbase_focusNextChild(VirtualQInputDialog* self);
bool QInputDialog_protectedbase_focusPreviousChild(VirtualQInputDialog* self);
QObject* QInputDialog_protectedbase_sender(const VirtualQInputDialog* self);
int QInputDialog_protectedbase_senderSignalIndex(const VirtualQInputDialog* self);
int QInputDialog_protectedbase_receivers(const VirtualQInputDialog* self, const char* signal);
bool QInputDialog_protectedbase_isSignalConnected(const VirtualQInputDialog* self, QMetaMethod* signal);

const QMetaObject* QInputDialog_staticMetaObject();
void QInputDialog_delete(QInputDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
