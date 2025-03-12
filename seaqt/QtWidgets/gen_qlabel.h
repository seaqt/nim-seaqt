#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLABEL_H
#define SEAQT_QTWIDGETS_GEN_QLABEL_H

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
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QLabel;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QMovie;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPicture;
class QPixmap;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
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
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QLabel QLabel;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QMovie QMovie;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPicture QPicture;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQLabel VirtualQLabel;
typedef struct QLabel_VTable{
	void (*destructor)(VirtualQLabel* self);
	QMetaObject* (*metaObject)(const VirtualQLabel* self);
	void* (*metacast)(VirtualQLabel* self, const char* param1);
	int (*metacall)(VirtualQLabel* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQLabel* self);
	QSize* (*minimumSizeHint)(const VirtualQLabel* self);
	int (*heightForWidth)(const VirtualQLabel* self, int param1);
	bool (*event)(VirtualQLabel* self, QEvent* e);
	void (*keyPressEvent)(VirtualQLabel* self, QKeyEvent* ev);
	void (*paintEvent)(VirtualQLabel* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQLabel* self, QEvent* param1);
	void (*mousePressEvent)(VirtualQLabel* self, QMouseEvent* ev);
	void (*mouseMoveEvent)(VirtualQLabel* self, QMouseEvent* ev);
	void (*mouseReleaseEvent)(VirtualQLabel* self, QMouseEvent* ev);
	void (*contextMenuEvent)(VirtualQLabel* self, QContextMenuEvent* ev);
	void (*focusInEvent)(VirtualQLabel* self, QFocusEvent* ev);
	void (*focusOutEvent)(VirtualQLabel* self, QFocusEvent* ev);
	bool (*focusNextPrevChild)(VirtualQLabel* self, bool next);
	void (*initStyleOption)(const VirtualQLabel* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQLabel* self);
	void (*setVisible)(VirtualQLabel* self, bool visible);
	bool (*hasHeightForWidth)(const VirtualQLabel* self);
	QPaintEngine* (*paintEngine)(const VirtualQLabel* self);
	void (*mouseDoubleClickEvent)(VirtualQLabel* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQLabel* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQLabel* self, QKeyEvent* event);
	void (*enterEvent)(VirtualQLabel* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQLabel* self, QEvent* event);
	void (*moveEvent)(VirtualQLabel* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQLabel* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQLabel* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQLabel* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQLabel* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQLabel* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQLabel* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQLabel* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQLabel* self, QDropEvent* event);
	void (*showEvent)(VirtualQLabel* self, QShowEvent* event);
	void (*hideEvent)(VirtualQLabel* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQLabel* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQLabel* self, int param1);
	void (*initPainter)(const VirtualQLabel* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQLabel* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQLabel* self);
	void (*inputMethodEvent)(VirtualQLabel* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQLabel* self, int param1);
	bool (*eventFilter)(VirtualQLabel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLabel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQLabel* self, QChildEvent* event);
	void (*customEvent)(VirtualQLabel* self, QEvent* event);
	void (*connectNotify)(VirtualQLabel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLabel* self, QMetaMethod* signal);
}QLabel_VTable;

const QLabel_VTable* QLabel_vtbl(const VirtualQLabel* self);
void* QLabel_vdata(const VirtualQLabel* self);
void QLabel_setVdata(VirtualQLabel* self, void* vdata);

VirtualQLabel* QLabel_new(const QLabel_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQLabel* QLabel_new2(const QLabel_VTable* vtbl, void* vdata);
VirtualQLabel* QLabel_new3(const QLabel_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQLabel* QLabel_new4(const QLabel_VTable* vtbl, void* vdata, QWidget* parent, int f);
VirtualQLabel* QLabel_new5(const QLabel_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent);
VirtualQLabel* QLabel_new6(const QLabel_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent, int f);

void QLabel_virtbase(QLabel* src, QFrame** outptr_QFrame);
QMetaObject* QLabel_metaObject(const QLabel* self);
void* QLabel_metacast(QLabel* self, const char* param1);
int QLabel_metacall(QLabel* self, int param1, int param2, void** param3);
struct miqt_string QLabel_tr(const char* s);
struct miqt_string QLabel_text(const QLabel* self);
QPixmap* QLabel_pixmap(const QLabel* self, int param1);
QPixmap* QLabel_pixmap2(const QLabel* self);
QPicture* QLabel_picture(const QLabel* self, int param1);
QPicture* QLabel_picture2(const QLabel* self);
QMovie* QLabel_movie(const QLabel* self);
int QLabel_textFormat(const QLabel* self);
void QLabel_setTextFormat(QLabel* self, int textFormat);
int QLabel_alignment(const QLabel* self);
void QLabel_setAlignment(QLabel* self, int alignment);
void QLabel_setWordWrap(QLabel* self, bool on);
bool QLabel_wordWrap(const QLabel* self);
int QLabel_indent(const QLabel* self);
void QLabel_setIndent(QLabel* self, int indent);
int QLabel_margin(const QLabel* self);
void QLabel_setMargin(QLabel* self, int margin);
bool QLabel_hasScaledContents(const QLabel* self);
void QLabel_setScaledContents(QLabel* self, bool scaledContents);
QSize* QLabel_sizeHint(const QLabel* self);
QSize* QLabel_minimumSizeHint(const QLabel* self);
void QLabel_setBuddy(QLabel* self, QWidget* buddy);
QWidget* QLabel_buddy(const QLabel* self);
int QLabel_heightForWidth(const QLabel* self, int param1);
bool QLabel_openExternalLinks(const QLabel* self);
void QLabel_setOpenExternalLinks(QLabel* self, bool open);
void QLabel_setTextInteractionFlags(QLabel* self, int flags);
int QLabel_textInteractionFlags(const QLabel* self);
void QLabel_setSelection(QLabel* self, int param1, int param2);
bool QLabel_hasSelectedText(const QLabel* self);
struct miqt_string QLabel_selectedText(const QLabel* self);
int QLabel_selectionStart(const QLabel* self);
void QLabel_setText(QLabel* self, struct miqt_string text);
void QLabel_setPixmap(QLabel* self, QPixmap* pixmap);
void QLabel_setPicture(QLabel* self, QPicture* picture);
void QLabel_setMovie(QLabel* self, QMovie* movie);
void QLabel_setNum(QLabel* self, int num);
void QLabel_setNumWithNum(QLabel* self, double num);
void QLabel_clear(QLabel* self);
void QLabel_linkActivated(QLabel* self, struct miqt_string link);
void QLabel_connect_linkActivated(VirtualQLabel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QLabel_linkHovered(QLabel* self, struct miqt_string link);
void QLabel_connect_linkHovered(VirtualQLabel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
bool QLabel_event(QLabel* self, QEvent* e);
void QLabel_keyPressEvent(QLabel* self, QKeyEvent* ev);
void QLabel_paintEvent(QLabel* self, QPaintEvent* param1);
void QLabel_changeEvent(QLabel* self, QEvent* param1);
void QLabel_mousePressEvent(QLabel* self, QMouseEvent* ev);
void QLabel_mouseMoveEvent(QLabel* self, QMouseEvent* ev);
void QLabel_mouseReleaseEvent(QLabel* self, QMouseEvent* ev);
void QLabel_contextMenuEvent(QLabel* self, QContextMenuEvent* ev);
void QLabel_focusInEvent(QLabel* self, QFocusEvent* ev);
void QLabel_focusOutEvent(QLabel* self, QFocusEvent* ev);
bool QLabel_focusNextPrevChild(QLabel* self, bool next);
struct miqt_string QLabel_tr2(const char* s, const char* c);
struct miqt_string QLabel_tr3(const char* s, const char* c, int n);

QMetaObject* QLabel_virtualbase_metaObject(const VirtualQLabel* self);
void* QLabel_virtualbase_metacast(VirtualQLabel* self, const char* param1);
int QLabel_virtualbase_metacall(VirtualQLabel* self, int param1, int param2, void** param3);
QSize* QLabel_virtualbase_sizeHint(const VirtualQLabel* self);
QSize* QLabel_virtualbase_minimumSizeHint(const VirtualQLabel* self);
int QLabel_virtualbase_heightForWidth(const VirtualQLabel* self, int param1);
bool QLabel_virtualbase_event(VirtualQLabel* self, QEvent* e);
void QLabel_virtualbase_keyPressEvent(VirtualQLabel* self, QKeyEvent* ev);
void QLabel_virtualbase_paintEvent(VirtualQLabel* self, QPaintEvent* param1);
void QLabel_virtualbase_changeEvent(VirtualQLabel* self, QEvent* param1);
void QLabel_virtualbase_mousePressEvent(VirtualQLabel* self, QMouseEvent* ev);
void QLabel_virtualbase_mouseMoveEvent(VirtualQLabel* self, QMouseEvent* ev);
void QLabel_virtualbase_mouseReleaseEvent(VirtualQLabel* self, QMouseEvent* ev);
void QLabel_virtualbase_contextMenuEvent(VirtualQLabel* self, QContextMenuEvent* ev);
void QLabel_virtualbase_focusInEvent(VirtualQLabel* self, QFocusEvent* ev);
void QLabel_virtualbase_focusOutEvent(VirtualQLabel* self, QFocusEvent* ev);
bool QLabel_virtualbase_focusNextPrevChild(VirtualQLabel* self, bool next);
void QLabel_virtualbase_initStyleOption(const VirtualQLabel* self, QStyleOptionFrame* option);
int QLabel_virtualbase_devType(const VirtualQLabel* self);
void QLabel_virtualbase_setVisible(VirtualQLabel* self, bool visible);
bool QLabel_virtualbase_hasHeightForWidth(const VirtualQLabel* self);
QPaintEngine* QLabel_virtualbase_paintEngine(const VirtualQLabel* self);
void QLabel_virtualbase_mouseDoubleClickEvent(VirtualQLabel* self, QMouseEvent* event);
void QLabel_virtualbase_wheelEvent(VirtualQLabel* self, QWheelEvent* event);
void QLabel_virtualbase_keyReleaseEvent(VirtualQLabel* self, QKeyEvent* event);
void QLabel_virtualbase_enterEvent(VirtualQLabel* self, QEnterEvent* event);
void QLabel_virtualbase_leaveEvent(VirtualQLabel* self, QEvent* event);
void QLabel_virtualbase_moveEvent(VirtualQLabel* self, QMoveEvent* event);
void QLabel_virtualbase_resizeEvent(VirtualQLabel* self, QResizeEvent* event);
void QLabel_virtualbase_closeEvent(VirtualQLabel* self, QCloseEvent* event);
void QLabel_virtualbase_tabletEvent(VirtualQLabel* self, QTabletEvent* event);
void QLabel_virtualbase_actionEvent(VirtualQLabel* self, QActionEvent* event);
void QLabel_virtualbase_dragEnterEvent(VirtualQLabel* self, QDragEnterEvent* event);
void QLabel_virtualbase_dragMoveEvent(VirtualQLabel* self, QDragMoveEvent* event);
void QLabel_virtualbase_dragLeaveEvent(VirtualQLabel* self, QDragLeaveEvent* event);
void QLabel_virtualbase_dropEvent(VirtualQLabel* self, QDropEvent* event);
void QLabel_virtualbase_showEvent(VirtualQLabel* self, QShowEvent* event);
void QLabel_virtualbase_hideEvent(VirtualQLabel* self, QHideEvent* event);
bool QLabel_virtualbase_nativeEvent(VirtualQLabel* self, struct miqt_string eventType, void* message, intptr_t* result);
int QLabel_virtualbase_metric(const VirtualQLabel* self, int param1);
void QLabel_virtualbase_initPainter(const VirtualQLabel* self, QPainter* painter);
QPaintDevice* QLabel_virtualbase_redirected(const VirtualQLabel* self, QPoint* offset);
QPainter* QLabel_virtualbase_sharedPainter(const VirtualQLabel* self);
void QLabel_virtualbase_inputMethodEvent(VirtualQLabel* self, QInputMethodEvent* param1);
QVariant* QLabel_virtualbase_inputMethodQuery(const VirtualQLabel* self, int param1);
bool QLabel_virtualbase_eventFilter(VirtualQLabel* self, QObject* watched, QEvent* event);
void QLabel_virtualbase_timerEvent(VirtualQLabel* self, QTimerEvent* event);
void QLabel_virtualbase_childEvent(VirtualQLabel* self, QChildEvent* event);
void QLabel_virtualbase_customEvent(VirtualQLabel* self, QEvent* event);
void QLabel_virtualbase_connectNotify(VirtualQLabel* self, QMetaMethod* signal);
void QLabel_virtualbase_disconnectNotify(VirtualQLabel* self, QMetaMethod* signal);

void QLabel_protectedbase_drawFrame(VirtualQLabel* self, QPainter* param1);
void QLabel_protectedbase_updateMicroFocus(VirtualQLabel* self);
void QLabel_protectedbase_create(VirtualQLabel* self);
void QLabel_protectedbase_destroy(VirtualQLabel* self);
bool QLabel_protectedbase_focusNextChild(VirtualQLabel* self);
bool QLabel_protectedbase_focusPreviousChild(VirtualQLabel* self);
QObject* QLabel_protectedbase_sender(const VirtualQLabel* self);
int QLabel_protectedbase_senderSignalIndex(const VirtualQLabel* self);
int QLabel_protectedbase_receivers(const VirtualQLabel* self, const char* signal);
bool QLabel_protectedbase_isSignalConnected(const VirtualQLabel* self, QMetaMethod* signal);

const QMetaObject* QLabel_staticMetaObject();
void QLabel_delete(QLabel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
