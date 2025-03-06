#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSPINBOX_H
#define SEAQT_QTWIDGETS_GEN_QSPINBOX_H

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
class QDoubleSpinBox;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
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
class QSpinBox;
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
typedef struct QDoubleSpinBox QDoubleSpinBox;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
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
typedef struct QSpinBox QSpinBox;
typedef struct QStyleOptionSpinBox QStyleOptionSpinBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QSpinBox* QSpinBox_new(QWidget* parent);
QSpinBox* QSpinBox_new2();
void QSpinBox_virtbase(QSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox);
QMetaObject* QSpinBox_metaObject(const QSpinBox* self);
void* QSpinBox_metacast(QSpinBox* self, const char* param1);
struct miqt_string QSpinBox_tr(const char* s);
struct miqt_string QSpinBox_trUtf8(const char* s);
int QSpinBox_value(const QSpinBox* self);
struct miqt_string QSpinBox_prefix(const QSpinBox* self);
void QSpinBox_setPrefix(QSpinBox* self, struct miqt_string prefix);
struct miqt_string QSpinBox_suffix(const QSpinBox* self);
void QSpinBox_setSuffix(QSpinBox* self, struct miqt_string suffix);
struct miqt_string QSpinBox_cleanText(const QSpinBox* self);
int QSpinBox_singleStep(const QSpinBox* self);
void QSpinBox_setSingleStep(QSpinBox* self, int val);
int QSpinBox_minimum(const QSpinBox* self);
void QSpinBox_setMinimum(QSpinBox* self, int min);
int QSpinBox_maximum(const QSpinBox* self);
void QSpinBox_setMaximum(QSpinBox* self, int max);
void QSpinBox_setRange(QSpinBox* self, int min, int max);
int QSpinBox_stepType(const QSpinBox* self);
void QSpinBox_setStepType(QSpinBox* self, int stepType);
int QSpinBox_displayIntegerBase(const QSpinBox* self);
void QSpinBox_setDisplayIntegerBase(QSpinBox* self, int base);
bool QSpinBox_event(QSpinBox* self, QEvent* event);
int QSpinBox_validate(const QSpinBox* self, struct miqt_string input, int* pos);
int QSpinBox_valueFromText(const QSpinBox* self, struct miqt_string text);
struct miqt_string QSpinBox_textFromValue(const QSpinBox* self, int val);
void QSpinBox_fixup(const QSpinBox* self, struct miqt_string str);
void QSpinBox_setValue(QSpinBox* self, int val);
void QSpinBox_valueChanged(QSpinBox* self, int param1);
void QSpinBox_connect_valueChanged(QSpinBox* self, intptr_t slot);
void QSpinBox_textChanged(QSpinBox* self, struct miqt_string param1);
void QSpinBox_connect_textChanged(QSpinBox* self, intptr_t slot);
void QSpinBox_valueChangedWithQString(QSpinBox* self, struct miqt_string param1);
void QSpinBox_connect_valueChangedWithQString(QSpinBox* self, intptr_t slot);
struct miqt_string QSpinBox_tr2(const char* s, const char* c);
struct miqt_string QSpinBox_tr3(const char* s, const char* c, int n);
struct miqt_string QSpinBox_trUtf82(const char* s, const char* c);
struct miqt_string QSpinBox_trUtf83(const char* s, const char* c, int n);
bool QSpinBox_override_virtual_event(void* self, intptr_t slot);
bool QSpinBox_virtualbase_event(void* self, QEvent* event);
bool QSpinBox_override_virtual_validate(void* self, intptr_t slot);
int QSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QSpinBox_override_virtual_valueFromText(void* self, intptr_t slot);
int QSpinBox_virtualbase_valueFromText(const void* self, struct miqt_string text);
bool QSpinBox_override_virtual_textFromValue(void* self, intptr_t slot);
struct miqt_string QSpinBox_virtualbase_textFromValue(const void* self, int val);
bool QSpinBox_override_virtual_fixup(void* self, intptr_t slot);
void QSpinBox_virtualbase_fixup(const void* self, struct miqt_string str);
bool QSpinBox_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QSpinBox_virtualbase_sizeHint(const void* self);
bool QSpinBox_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QSpinBox_virtualbase_minimumSizeHint(const void* self);
bool QSpinBox_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QSpinBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSpinBox_override_virtual_stepBy(void* self, intptr_t slot);
void QSpinBox_virtualbase_stepBy(void* self, int steps);
bool QSpinBox_override_virtual_clear(void* self, intptr_t slot);
void QSpinBox_virtualbase_clear(void* self);
bool QSpinBox_override_virtual_resizeEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QSpinBox_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QSpinBox_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QSpinBox_override_virtual_wheelEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QSpinBox_override_virtual_focusInEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QSpinBox_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QSpinBox_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QSpinBox_override_virtual_changeEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_changeEvent(void* self, QEvent* event);
bool QSpinBox_override_virtual_closeEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QSpinBox_override_virtual_hideEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSpinBox_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QSpinBox_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QSpinBox_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QSpinBox_override_virtual_timerEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSpinBox_override_virtual_paintEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QSpinBox_override_virtual_showEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_showEvent(void* self, QShowEvent* event);
bool QSpinBox_override_virtual_stepEnabled(void* self, intptr_t slot);
int QSpinBox_virtualbase_stepEnabled(const void* self);
bool QSpinBox_override_virtual_devType(void* self, intptr_t slot);
int QSpinBox_virtualbase_devType(const void* self);
bool QSpinBox_override_virtual_setVisible(void* self, intptr_t slot);
void QSpinBox_virtualbase_setVisible(void* self, bool visible);
bool QSpinBox_override_virtual_heightForWidth(void* self, intptr_t slot);
int QSpinBox_virtualbase_heightForWidth(const void* self, int param1);
bool QSpinBox_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QSpinBox_virtualbase_hasHeightForWidth(const void* self);
bool QSpinBox_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QSpinBox_virtualbase_paintEngine(const void* self);
bool QSpinBox_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QSpinBox_override_virtual_enterEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_enterEvent(void* self, QEvent* event);
bool QSpinBox_override_virtual_leaveEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_leaveEvent(void* self, QEvent* event);
bool QSpinBox_override_virtual_moveEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QSpinBox_override_virtual_tabletEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QSpinBox_override_virtual_actionEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QSpinBox_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QSpinBox_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QSpinBox_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QSpinBox_override_virtual_dropEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QSpinBox_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QSpinBox_override_virtual_metric(void* self, intptr_t slot);
int QSpinBox_virtualbase_metric(const void* self, int param1);
bool QSpinBox_override_virtual_initPainter(void* self, intptr_t slot);
void QSpinBox_virtualbase_initPainter(const void* self, QPainter* painter);
bool QSpinBox_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QSpinBox_virtualbase_redirected(const void* self, QPoint* offset);
bool QSpinBox_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QSpinBox_virtualbase_sharedPainter(const void* self);
bool QSpinBox_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QSpinBox_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QSpinBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSpinBox_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSpinBox_override_virtual_childEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_childEvent(void* self, QChildEvent* event);
bool QSpinBox_override_virtual_customEvent(void* self, intptr_t slot);
void QSpinBox_virtualbase_customEvent(void* self, QEvent* event);
bool QSpinBox_override_virtual_connectNotify(void* self, intptr_t slot);
void QSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSpinBox_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option);
QLineEdit* QSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self);
void QSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit);
void QSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QSpinBox_delete(QSpinBox* self);

QDoubleSpinBox* QDoubleSpinBox_new(QWidget* parent);
QDoubleSpinBox* QDoubleSpinBox_new2();
void QDoubleSpinBox_virtbase(QDoubleSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox);
QMetaObject* QDoubleSpinBox_metaObject(const QDoubleSpinBox* self);
void* QDoubleSpinBox_metacast(QDoubleSpinBox* self, const char* param1);
struct miqt_string QDoubleSpinBox_tr(const char* s);
struct miqt_string QDoubleSpinBox_trUtf8(const char* s);
double QDoubleSpinBox_value(const QDoubleSpinBox* self);
struct miqt_string QDoubleSpinBox_prefix(const QDoubleSpinBox* self);
void QDoubleSpinBox_setPrefix(QDoubleSpinBox* self, struct miqt_string prefix);
struct miqt_string QDoubleSpinBox_suffix(const QDoubleSpinBox* self);
void QDoubleSpinBox_setSuffix(QDoubleSpinBox* self, struct miqt_string suffix);
struct miqt_string QDoubleSpinBox_cleanText(const QDoubleSpinBox* self);
double QDoubleSpinBox_singleStep(const QDoubleSpinBox* self);
void QDoubleSpinBox_setSingleStep(QDoubleSpinBox* self, double val);
double QDoubleSpinBox_minimum(const QDoubleSpinBox* self);
void QDoubleSpinBox_setMinimum(QDoubleSpinBox* self, double min);
double QDoubleSpinBox_maximum(const QDoubleSpinBox* self);
void QDoubleSpinBox_setMaximum(QDoubleSpinBox* self, double max);
void QDoubleSpinBox_setRange(QDoubleSpinBox* self, double min, double max);
int QDoubleSpinBox_stepType(const QDoubleSpinBox* self);
void QDoubleSpinBox_setStepType(QDoubleSpinBox* self, int stepType);
int QDoubleSpinBox_decimals(const QDoubleSpinBox* self);
void QDoubleSpinBox_setDecimals(QDoubleSpinBox* self, int prec);
int QDoubleSpinBox_validate(const QDoubleSpinBox* self, struct miqt_string input, int* pos);
double QDoubleSpinBox_valueFromText(const QDoubleSpinBox* self, struct miqt_string text);
struct miqt_string QDoubleSpinBox_textFromValue(const QDoubleSpinBox* self, double val);
void QDoubleSpinBox_fixup(const QDoubleSpinBox* self, struct miqt_string str);
void QDoubleSpinBox_setValue(QDoubleSpinBox* self, double val);
void QDoubleSpinBox_valueChanged(QDoubleSpinBox* self, double param1);
void QDoubleSpinBox_connect_valueChanged(QDoubleSpinBox* self, intptr_t slot);
void QDoubleSpinBox_textChanged(QDoubleSpinBox* self, struct miqt_string param1);
void QDoubleSpinBox_connect_textChanged(QDoubleSpinBox* self, intptr_t slot);
void QDoubleSpinBox_valueChangedWithQString(QDoubleSpinBox* self, struct miqt_string param1);
void QDoubleSpinBox_connect_valueChangedWithQString(QDoubleSpinBox* self, intptr_t slot);
struct miqt_string QDoubleSpinBox_tr2(const char* s, const char* c);
struct miqt_string QDoubleSpinBox_tr3(const char* s, const char* c, int n);
struct miqt_string QDoubleSpinBox_trUtf82(const char* s, const char* c);
struct miqt_string QDoubleSpinBox_trUtf83(const char* s, const char* c, int n);
bool QDoubleSpinBox_override_virtual_validate(void* self, intptr_t slot);
int QDoubleSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QDoubleSpinBox_override_virtual_valueFromText(void* self, intptr_t slot);
double QDoubleSpinBox_virtualbase_valueFromText(const void* self, struct miqt_string text);
bool QDoubleSpinBox_override_virtual_textFromValue(void* self, intptr_t slot);
struct miqt_string QDoubleSpinBox_virtualbase_textFromValue(const void* self, double val);
bool QDoubleSpinBox_override_virtual_fixup(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_fixup(const void* self, struct miqt_string str);
bool QDoubleSpinBox_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QDoubleSpinBox_virtualbase_sizeHint(const void* self);
bool QDoubleSpinBox_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QDoubleSpinBox_virtualbase_minimumSizeHint(const void* self);
bool QDoubleSpinBox_override_virtual_event(void* self, intptr_t slot);
bool QDoubleSpinBox_virtualbase_event(void* self, QEvent* event);
bool QDoubleSpinBox_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QDoubleSpinBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDoubleSpinBox_override_virtual_stepBy(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_stepBy(void* self, int steps);
bool QDoubleSpinBox_override_virtual_clear(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_clear(void* self);
bool QDoubleSpinBox_override_virtual_resizeEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QDoubleSpinBox_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QDoubleSpinBox_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QDoubleSpinBox_override_virtual_wheelEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QDoubleSpinBox_override_virtual_focusInEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QDoubleSpinBox_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QDoubleSpinBox_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QDoubleSpinBox_override_virtual_changeEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_changeEvent(void* self, QEvent* event);
bool QDoubleSpinBox_override_virtual_closeEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QDoubleSpinBox_override_virtual_hideEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDoubleSpinBox_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QDoubleSpinBox_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QDoubleSpinBox_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QDoubleSpinBox_override_virtual_timerEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QDoubleSpinBox_override_virtual_paintEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QDoubleSpinBox_override_virtual_showEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_showEvent(void* self, QShowEvent* event);
bool QDoubleSpinBox_override_virtual_stepEnabled(void* self, intptr_t slot);
int QDoubleSpinBox_virtualbase_stepEnabled(const void* self);
bool QDoubleSpinBox_override_virtual_devType(void* self, intptr_t slot);
int QDoubleSpinBox_virtualbase_devType(const void* self);
bool QDoubleSpinBox_override_virtual_setVisible(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_setVisible(void* self, bool visible);
bool QDoubleSpinBox_override_virtual_heightForWidth(void* self, intptr_t slot);
int QDoubleSpinBox_virtualbase_heightForWidth(const void* self, int param1);
bool QDoubleSpinBox_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QDoubleSpinBox_virtualbase_hasHeightForWidth(const void* self);
bool QDoubleSpinBox_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QDoubleSpinBox_virtualbase_paintEngine(const void* self);
bool QDoubleSpinBox_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QDoubleSpinBox_override_virtual_enterEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_enterEvent(void* self, QEvent* event);
bool QDoubleSpinBox_override_virtual_leaveEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_leaveEvent(void* self, QEvent* event);
bool QDoubleSpinBox_override_virtual_moveEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QDoubleSpinBox_override_virtual_tabletEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QDoubleSpinBox_override_virtual_actionEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QDoubleSpinBox_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QDoubleSpinBox_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QDoubleSpinBox_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QDoubleSpinBox_override_virtual_dropEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QDoubleSpinBox_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QDoubleSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QDoubleSpinBox_override_virtual_metric(void* self, intptr_t slot);
int QDoubleSpinBox_virtualbase_metric(const void* self, int param1);
bool QDoubleSpinBox_override_virtual_initPainter(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_initPainter(const void* self, QPainter* painter);
bool QDoubleSpinBox_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QDoubleSpinBox_virtualbase_redirected(const void* self, QPoint* offset);
bool QDoubleSpinBox_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QDoubleSpinBox_virtualbase_sharedPainter(const void* self);
bool QDoubleSpinBox_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QDoubleSpinBox_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QDoubleSpinBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDoubleSpinBox_override_virtual_eventFilter(void* self, intptr_t slot);
bool QDoubleSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QDoubleSpinBox_override_virtual_childEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_childEvent(void* self, QChildEvent* event);
bool QDoubleSpinBox_override_virtual_customEvent(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_customEvent(void* self, QEvent* event);
bool QDoubleSpinBox_override_virtual_connectNotify(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QDoubleSpinBox_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QDoubleSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDoubleSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option);
QLineEdit* QDoubleSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self);
void QDoubleSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit);
void QDoubleSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QDoubleSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QDoubleSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QDoubleSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QDoubleSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QDoubleSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDoubleSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDoubleSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDoubleSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QDoubleSpinBox_delete(QDoubleSpinBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
