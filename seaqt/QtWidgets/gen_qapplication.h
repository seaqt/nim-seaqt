#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QAPPLICATION_H
#define SEAQT_QTWIDGETS_GEN_QAPPLICATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QApplication;
class QChildEvent;
class QCoreApplication;
class QDesktopWidget;
class QEvent;
class QFont;
class QFontMetrics;
class QGuiApplication;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPalette;
class QPoint;
class QSize;
class QStyle;
class QTimerEvent;
class QWidget;
#else
typedef struct QApplication QApplication;
typedef struct QChildEvent QChildEvent;
typedef struct QCoreApplication QCoreApplication;
typedef struct QDesktopWidget QDesktopWidget;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QFontMetrics QFontMetrics;
typedef struct QGuiApplication QGuiApplication;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPalette QPalette;
typedef struct QPoint QPoint;
typedef struct QSize QSize;
typedef struct QStyle QStyle;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQApplication VirtualQApplication;
typedef struct QApplication_VTable{
	void (*destructor)(VirtualQApplication* self);
	QMetaObject* (*metaObject)(const VirtualQApplication* self);
	void* (*metacast)(VirtualQApplication* self, const char* param1);
	int (*metacall)(VirtualQApplication* self, int param1, int param2, void** param3);
	bool (*notify)(VirtualQApplication* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQApplication* self, QEvent* param1);
	bool (*eventFilter)(VirtualQApplication* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQApplication* self, QTimerEvent* event);
	void (*childEvent)(VirtualQApplication* self, QChildEvent* event);
	void (*customEvent)(VirtualQApplication* self, QEvent* event);
	void (*connectNotify)(VirtualQApplication* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQApplication* self, QMetaMethod* signal);
}QApplication_VTable;

void* QApplication_vdata(VirtualQApplication* self);
VirtualQApplication* vdata_QApplication(void* vdata);

VirtualQApplication* QApplication_new_int_char(const QApplication_VTable* vtbl, size_t vdata, int* argc, char** argv);
VirtualQApplication* QApplication_new_int_char_int(const QApplication_VTable* vtbl, size_t vdata, int* argc, char** argv, int param3);

void QApplication_virtbase(QApplication* src, QGuiApplication** outptr_QGuiApplication);
QMetaObject* QApplication_metaObject(const QApplication* self);
void* QApplication_metacast(QApplication* self, const char* param1);
int QApplication_metacall(QApplication* self, int param1, int param2, void** param3);
struct seaqt_string QApplication_tr_s(const char* s);
struct seaqt_string QApplication_trUtf8_s(const char* s);
QStyle* QApplication_style();
void QApplication_setStyle_QStyle(QStyle* style);
QStyle* QApplication_setStyle_QString(struct seaqt_string style);
int QApplication_colorSpec();
void QApplication_setColorSpec(int colorSpec);
QPalette* QApplication_palette_QWidget(QWidget* param1);
QPalette* QApplication_palette_char(const char* className);
void QApplication_setPalette_QPalette(QPalette* param1);
QFont* QApplication_font();
QFont* QApplication_font_QWidget(QWidget* param1);
QFont* QApplication_font_char(const char* className);
void QApplication_setFont_QFont(QFont* param1);
QFontMetrics* QApplication_fontMetrics();
void QApplication_setWindowIcon(QIcon* icon);
QIcon* QApplication_windowIcon();
struct seaqt_array /* of QWidget* */  QApplication_allWidgets();
struct seaqt_array /* of QWidget* */  QApplication_topLevelWidgets();
QDesktopWidget* QApplication_desktop();
QWidget* QApplication_activePopupWidget();
QWidget* QApplication_activeModalWidget();
QWidget* QApplication_focusWidget();
QWidget* QApplication_activeWindow();
void QApplication_setActiveWindow(QWidget* act);
QWidget* QApplication_widgetAt_p(QPoint* p);
QWidget* QApplication_widgetAt_x_y(int x, int y);
QWidget* QApplication_topLevelAt_p(QPoint* p);
QWidget* QApplication_topLevelAt_x_y(int x, int y);
void QApplication_beep();
void QApplication_alert_widget(QWidget* widget);
void QApplication_setCursorFlashTime(int cursorFlashTime);
int QApplication_cursorFlashTime();
void QApplication_setDoubleClickInterval(int doubleClickInterval);
int QApplication_doubleClickInterval();
void QApplication_setKeyboardInputInterval(int keyboardInputInterval);
int QApplication_keyboardInputInterval();
void QApplication_setWheelScrollLines(int wheelScrollLines);
int QApplication_wheelScrollLines();
void QApplication_setGlobalStrut(QSize* globalStrut);
QSize* QApplication_globalStrut();
void QApplication_setStartDragTime(int ms);
int QApplication_startDragTime();
void QApplication_setStartDragDistance(int l);
int QApplication_startDragDistance();
bool QApplication_isEffectEnabled(int param1);
void QApplication_setEffectEnabled_Qt_UIEffect(int param1);
int QApplication_exec();
bool QApplication_notify(QApplication* self, QObject* param1, QEvent* param2);
void QApplication_focusChanged(QApplication* self, QWidget* old, QWidget* now);
void QApplication_connect_focusChanged(QApplication* self, intptr_t slot, void (*callback)(intptr_t, QWidget*, QWidget*), void (*release)(intptr_t));
struct seaqt_string QApplication_styleSheet(const QApplication* self);
void QApplication_setStyleSheet(QApplication* self, struct seaqt_string sheet);
void QApplication_setAutoSipEnabled(QApplication* self, const bool enabled);
bool QApplication_autoSipEnabled(const QApplication* self);
void QApplication_closeAllWindows();
void QApplication_aboutQt();
bool QApplication_event(QApplication* self, QEvent* param1);
struct seaqt_string QApplication_tr_s_c(const char* s, const char* c);
struct seaqt_string QApplication_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QApplication_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QApplication_trUtf8_s_c_n(const char* s, const char* c, int n);
void QApplication_setPalette_QPalette_char(QPalette* param1, const char* className);
void QApplication_setFont_QFont_char(QFont* param1, const char* className);
void QApplication_alert_widget_duration(QWidget* widget, int duration);
void QApplication_setEffectEnabled_Qt_UIEffect_bool(int param1, bool enable);

QMetaObject* QApplication_virtualbase_metaObject(const VirtualQApplication* self);
void* QApplication_virtualbase_metacast(VirtualQApplication* self, const char* param1);
int QApplication_virtualbase_metacall(VirtualQApplication* self, int param1, int param2, void** param3);
bool QApplication_virtualbase_notify(VirtualQApplication* self, QObject* param1, QEvent* param2);
bool QApplication_virtualbase_event(VirtualQApplication* self, QEvent* param1);
bool QApplication_virtualbase_eventFilter(VirtualQApplication* self, QObject* watched, QEvent* event);
void QApplication_virtualbase_timerEvent(VirtualQApplication* self, QTimerEvent* event);
void QApplication_virtualbase_childEvent(VirtualQApplication* self, QChildEvent* event);
void QApplication_virtualbase_customEvent(VirtualQApplication* self, QEvent* event);
void QApplication_virtualbase_connectNotify(VirtualQApplication* self, QMetaMethod* signal);
void QApplication_virtualbase_disconnectNotify(VirtualQApplication* self, QMetaMethod* signal);

QObject* QApplication_protectedbase_sender(const VirtualQApplication* self);
int QApplication_protectedbase_senderSignalIndex(const VirtualQApplication* self);
int QApplication_protectedbase_receivers(const VirtualQApplication* self, const char* signal);
bool QApplication_protectedbase_isSignalConnected(const VirtualQApplication* self, QMetaMethod* signal);

const QMetaObject* QApplication_staticMetaObject();
void QApplication_delete(QApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
