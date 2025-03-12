#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTEXTBROWSER_H
#define SEAQT_QTWIDGETS_GEN_QTEXTBROWSER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractScrollArea;
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
class QMargins;
class QMetaMethod;
class QMetaObject;
class QMimeData;
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
class QStyleOptionFrame;
class QTabletEvent;
class QTextBrowser;
class QTextCursor;
class QTextEdit;
class QTimerEvent;
class QUrl;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
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
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTextBrowser QTextBrowser;
typedef struct QTextCursor QTextCursor;
typedef struct QTextEdit QTextEdit;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQTextBrowser VirtualQTextBrowser;
typedef struct QTextBrowser_VTable{
	void (*destructor)(VirtualQTextBrowser* self);
	QMetaObject* (*metaObject)(const VirtualQTextBrowser* self);
	void* (*metacast)(VirtualQTextBrowser* self, const char* param1);
	int (*metacall)(VirtualQTextBrowser* self, int param1, int param2, void** param3);
	QVariant* (*loadResource)(VirtualQTextBrowser* self, int type, QUrl* name);
	void (*backward)(VirtualQTextBrowser* self);
	void (*forward)(VirtualQTextBrowser* self);
	void (*home)(VirtualQTextBrowser* self);
	void (*reload)(VirtualQTextBrowser* self);
	bool (*event)(VirtualQTextBrowser* self, QEvent* e);
	void (*keyPressEvent)(VirtualQTextBrowser* self, QKeyEvent* ev);
	void (*mouseMoveEvent)(VirtualQTextBrowser* self, QMouseEvent* ev);
	void (*mousePressEvent)(VirtualQTextBrowser* self, QMouseEvent* ev);
	void (*mouseReleaseEvent)(VirtualQTextBrowser* self, QMouseEvent* ev);
	void (*focusOutEvent)(VirtualQTextBrowser* self, QFocusEvent* ev);
	bool (*focusNextPrevChild)(VirtualQTextBrowser* self, bool next);
	void (*paintEvent)(VirtualQTextBrowser* self, QPaintEvent* e);
	void (*doSetSource)(VirtualQTextBrowser* self, QUrl* name, int type);
	QVariant* (*inputMethodQuery)(const VirtualQTextBrowser* self, int property);
	void (*timerEvent)(VirtualQTextBrowser* self, QTimerEvent* e);
	void (*keyReleaseEvent)(VirtualQTextBrowser* self, QKeyEvent* e);
	void (*resizeEvent)(VirtualQTextBrowser* self, QResizeEvent* e);
	void (*mouseDoubleClickEvent)(VirtualQTextBrowser* self, QMouseEvent* e);
	void (*contextMenuEvent)(VirtualQTextBrowser* self, QContextMenuEvent* e);
	void (*dragEnterEvent)(VirtualQTextBrowser* self, QDragEnterEvent* e);
	void (*dragLeaveEvent)(VirtualQTextBrowser* self, QDragLeaveEvent* e);
	void (*dragMoveEvent)(VirtualQTextBrowser* self, QDragMoveEvent* e);
	void (*dropEvent)(VirtualQTextBrowser* self, QDropEvent* e);
	void (*focusInEvent)(VirtualQTextBrowser* self, QFocusEvent* e);
	void (*showEvent)(VirtualQTextBrowser* self, QShowEvent* param1);
	void (*changeEvent)(VirtualQTextBrowser* self, QEvent* e);
	void (*wheelEvent)(VirtualQTextBrowser* self, QWheelEvent* e);
	QMimeData* (*createMimeDataFromSelection)(const VirtualQTextBrowser* self);
	bool (*canInsertFromMimeData)(const VirtualQTextBrowser* self, QMimeData* source);
	void (*insertFromMimeData)(VirtualQTextBrowser* self, QMimeData* source);
	void (*inputMethodEvent)(VirtualQTextBrowser* self, QInputMethodEvent* param1);
	void (*scrollContentsBy)(VirtualQTextBrowser* self, int dx, int dy);
	void (*doSetTextCursor)(VirtualQTextBrowser* self, QTextCursor* cursor);
	QSize* (*minimumSizeHint)(const VirtualQTextBrowser* self);
	QSize* (*sizeHint)(const VirtualQTextBrowser* self);
	void (*setupViewport)(VirtualQTextBrowser* self, QWidget* viewport);
	bool (*eventFilter)(VirtualQTextBrowser* self, QObject* param1, QEvent* param2);
	bool (*viewportEvent)(VirtualQTextBrowser* self, QEvent* param1);
	QSize* (*viewportSizeHint)(const VirtualQTextBrowser* self);
	void (*initStyleOption)(const VirtualQTextBrowser* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQTextBrowser* self);
	void (*setVisible)(VirtualQTextBrowser* self, bool visible);
	int (*heightForWidth)(const VirtualQTextBrowser* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQTextBrowser* self);
	QPaintEngine* (*paintEngine)(const VirtualQTextBrowser* self);
	void (*enterEvent)(VirtualQTextBrowser* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQTextBrowser* self, QEvent* event);
	void (*moveEvent)(VirtualQTextBrowser* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQTextBrowser* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQTextBrowser* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQTextBrowser* self, QActionEvent* event);
	void (*hideEvent)(VirtualQTextBrowser* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQTextBrowser* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQTextBrowser* self, int param1);
	void (*initPainter)(const VirtualQTextBrowser* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQTextBrowser* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQTextBrowser* self);
	void (*childEvent)(VirtualQTextBrowser* self, QChildEvent* event);
	void (*customEvent)(VirtualQTextBrowser* self, QEvent* event);
	void (*connectNotify)(VirtualQTextBrowser* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTextBrowser* self, QMetaMethod* signal);
}QTextBrowser_VTable;

const QTextBrowser_VTable* QTextBrowser_vtbl(const VirtualQTextBrowser* self);
void* QTextBrowser_vdata(const VirtualQTextBrowser* self);
void QTextBrowser_setVdata(VirtualQTextBrowser* self, void* vdata);

VirtualQTextBrowser* QTextBrowser_new(const QTextBrowser_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQTextBrowser* QTextBrowser_new2(const QTextBrowser_VTable* vtbl, void* vdata);

void QTextBrowser_virtbase(QTextBrowser* src, QTextEdit** outptr_QTextEdit);
QMetaObject* QTextBrowser_metaObject(const QTextBrowser* self);
void* QTextBrowser_metacast(QTextBrowser* self, const char* param1);
int QTextBrowser_metacall(QTextBrowser* self, int param1, int param2, void** param3);
struct miqt_string QTextBrowser_tr(const char* s);
QUrl* QTextBrowser_source(const QTextBrowser* self);
int QTextBrowser_sourceType(const QTextBrowser* self);
struct miqt_array /* of struct miqt_string */  QTextBrowser_searchPaths(const QTextBrowser* self);
void QTextBrowser_setSearchPaths(QTextBrowser* self, struct miqt_array /* of struct miqt_string */  paths);
QVariant* QTextBrowser_loadResource(QTextBrowser* self, int type, QUrl* name);
bool QTextBrowser_isBackwardAvailable(const QTextBrowser* self);
bool QTextBrowser_isForwardAvailable(const QTextBrowser* self);
void QTextBrowser_clearHistory(QTextBrowser* self);
struct miqt_string QTextBrowser_historyTitle(const QTextBrowser* self, int param1);
QUrl* QTextBrowser_historyUrl(const QTextBrowser* self, int param1);
int QTextBrowser_backwardHistoryCount(const QTextBrowser* self);
int QTextBrowser_forwardHistoryCount(const QTextBrowser* self);
bool QTextBrowser_openExternalLinks(const QTextBrowser* self);
void QTextBrowser_setOpenExternalLinks(QTextBrowser* self, bool open);
bool QTextBrowser_openLinks(const QTextBrowser* self);
void QTextBrowser_setOpenLinks(QTextBrowser* self, bool open);
void QTextBrowser_setSource(QTextBrowser* self, QUrl* name);
void QTextBrowser_backward(QTextBrowser* self);
void QTextBrowser_forward(QTextBrowser* self);
void QTextBrowser_home(QTextBrowser* self);
void QTextBrowser_reload(QTextBrowser* self);
void QTextBrowser_backwardAvailable(QTextBrowser* self, bool param1);
void QTextBrowser_connect_backwardAvailable(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QTextBrowser_forwardAvailable(QTextBrowser* self, bool param1);
void QTextBrowser_connect_forwardAvailable(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QTextBrowser_historyChanged(QTextBrowser* self);
void QTextBrowser_connect_historyChanged(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QTextBrowser_sourceChanged(QTextBrowser* self, QUrl* param1);
void QTextBrowser_connect_sourceChanged(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QTextBrowser_highlighted(QTextBrowser* self, QUrl* param1);
void QTextBrowser_connect_highlighted(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QTextBrowser_anchorClicked(QTextBrowser* self, QUrl* param1);
void QTextBrowser_connect_anchorClicked(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
bool QTextBrowser_event(QTextBrowser* self, QEvent* e);
void QTextBrowser_keyPressEvent(QTextBrowser* self, QKeyEvent* ev);
void QTextBrowser_mouseMoveEvent(QTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_mousePressEvent(QTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_mouseReleaseEvent(QTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_focusOutEvent(QTextBrowser* self, QFocusEvent* ev);
bool QTextBrowser_focusNextPrevChild(QTextBrowser* self, bool next);
void QTextBrowser_paintEvent(QTextBrowser* self, QPaintEvent* e);
void QTextBrowser_doSetSource(QTextBrowser* self, QUrl* name, int type);
struct miqt_string QTextBrowser_tr2(const char* s, const char* c);
struct miqt_string QTextBrowser_tr3(const char* s, const char* c, int n);
void QTextBrowser_setSource2(QTextBrowser* self, QUrl* name, int type);

QMetaObject* QTextBrowser_virtualbase_metaObject(const VirtualQTextBrowser* self);
void* QTextBrowser_virtualbase_metacast(VirtualQTextBrowser* self, const char* param1);
int QTextBrowser_virtualbase_metacall(VirtualQTextBrowser* self, int param1, int param2, void** param3);
QVariant* QTextBrowser_virtualbase_loadResource(VirtualQTextBrowser* self, int type, QUrl* name);
void QTextBrowser_virtualbase_backward(VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_forward(VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_home(VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_reload(VirtualQTextBrowser* self);
bool QTextBrowser_virtualbase_event(VirtualQTextBrowser* self, QEvent* e);
void QTextBrowser_virtualbase_keyPressEvent(VirtualQTextBrowser* self, QKeyEvent* ev);
void QTextBrowser_virtualbase_mouseMoveEvent(VirtualQTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_virtualbase_mousePressEvent(VirtualQTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_virtualbase_mouseReleaseEvent(VirtualQTextBrowser* self, QMouseEvent* ev);
void QTextBrowser_virtualbase_focusOutEvent(VirtualQTextBrowser* self, QFocusEvent* ev);
bool QTextBrowser_virtualbase_focusNextPrevChild(VirtualQTextBrowser* self, bool next);
void QTextBrowser_virtualbase_paintEvent(VirtualQTextBrowser* self, QPaintEvent* e);
void QTextBrowser_virtualbase_doSetSource(VirtualQTextBrowser* self, QUrl* name, int type);
QVariant* QTextBrowser_virtualbase_inputMethodQuery(const VirtualQTextBrowser* self, int property);
void QTextBrowser_virtualbase_timerEvent(VirtualQTextBrowser* self, QTimerEvent* e);
void QTextBrowser_virtualbase_keyReleaseEvent(VirtualQTextBrowser* self, QKeyEvent* e);
void QTextBrowser_virtualbase_resizeEvent(VirtualQTextBrowser* self, QResizeEvent* e);
void QTextBrowser_virtualbase_mouseDoubleClickEvent(VirtualQTextBrowser* self, QMouseEvent* e);
void QTextBrowser_virtualbase_contextMenuEvent(VirtualQTextBrowser* self, QContextMenuEvent* e);
void QTextBrowser_virtualbase_dragEnterEvent(VirtualQTextBrowser* self, QDragEnterEvent* e);
void QTextBrowser_virtualbase_dragLeaveEvent(VirtualQTextBrowser* self, QDragLeaveEvent* e);
void QTextBrowser_virtualbase_dragMoveEvent(VirtualQTextBrowser* self, QDragMoveEvent* e);
void QTextBrowser_virtualbase_dropEvent(VirtualQTextBrowser* self, QDropEvent* e);
void QTextBrowser_virtualbase_focusInEvent(VirtualQTextBrowser* self, QFocusEvent* e);
void QTextBrowser_virtualbase_showEvent(VirtualQTextBrowser* self, QShowEvent* param1);
void QTextBrowser_virtualbase_changeEvent(VirtualQTextBrowser* self, QEvent* e);
void QTextBrowser_virtualbase_wheelEvent(VirtualQTextBrowser* self, QWheelEvent* e);
QMimeData* QTextBrowser_virtualbase_createMimeDataFromSelection(const VirtualQTextBrowser* self);
bool QTextBrowser_virtualbase_canInsertFromMimeData(const VirtualQTextBrowser* self, QMimeData* source);
void QTextBrowser_virtualbase_insertFromMimeData(VirtualQTextBrowser* self, QMimeData* source);
void QTextBrowser_virtualbase_inputMethodEvent(VirtualQTextBrowser* self, QInputMethodEvent* param1);
void QTextBrowser_virtualbase_scrollContentsBy(VirtualQTextBrowser* self, int dx, int dy);
void QTextBrowser_virtualbase_doSetTextCursor(VirtualQTextBrowser* self, QTextCursor* cursor);
QSize* QTextBrowser_virtualbase_minimumSizeHint(const VirtualQTextBrowser* self);
QSize* QTextBrowser_virtualbase_sizeHint(const VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_setupViewport(VirtualQTextBrowser* self, QWidget* viewport);
bool QTextBrowser_virtualbase_eventFilter(VirtualQTextBrowser* self, QObject* param1, QEvent* param2);
bool QTextBrowser_virtualbase_viewportEvent(VirtualQTextBrowser* self, QEvent* param1);
QSize* QTextBrowser_virtualbase_viewportSizeHint(const VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_initStyleOption(const VirtualQTextBrowser* self, QStyleOptionFrame* option);
int QTextBrowser_virtualbase_devType(const VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_setVisible(VirtualQTextBrowser* self, bool visible);
int QTextBrowser_virtualbase_heightForWidth(const VirtualQTextBrowser* self, int param1);
bool QTextBrowser_virtualbase_hasHeightForWidth(const VirtualQTextBrowser* self);
QPaintEngine* QTextBrowser_virtualbase_paintEngine(const VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_enterEvent(VirtualQTextBrowser* self, QEnterEvent* event);
void QTextBrowser_virtualbase_leaveEvent(VirtualQTextBrowser* self, QEvent* event);
void QTextBrowser_virtualbase_moveEvent(VirtualQTextBrowser* self, QMoveEvent* event);
void QTextBrowser_virtualbase_closeEvent(VirtualQTextBrowser* self, QCloseEvent* event);
void QTextBrowser_virtualbase_tabletEvent(VirtualQTextBrowser* self, QTabletEvent* event);
void QTextBrowser_virtualbase_actionEvent(VirtualQTextBrowser* self, QActionEvent* event);
void QTextBrowser_virtualbase_hideEvent(VirtualQTextBrowser* self, QHideEvent* event);
bool QTextBrowser_virtualbase_nativeEvent(VirtualQTextBrowser* self, struct miqt_string eventType, void* message, intptr_t* result);
int QTextBrowser_virtualbase_metric(const VirtualQTextBrowser* self, int param1);
void QTextBrowser_virtualbase_initPainter(const VirtualQTextBrowser* self, QPainter* painter);
QPaintDevice* QTextBrowser_virtualbase_redirected(const VirtualQTextBrowser* self, QPoint* offset);
QPainter* QTextBrowser_virtualbase_sharedPainter(const VirtualQTextBrowser* self);
void QTextBrowser_virtualbase_childEvent(VirtualQTextBrowser* self, QChildEvent* event);
void QTextBrowser_virtualbase_customEvent(VirtualQTextBrowser* self, QEvent* event);
void QTextBrowser_virtualbase_connectNotify(VirtualQTextBrowser* self, QMetaMethod* signal);
void QTextBrowser_virtualbase_disconnectNotify(VirtualQTextBrowser* self, QMetaMethod* signal);

void QTextBrowser_protectedbase_zoomInF(VirtualQTextBrowser* self, float range);
void QTextBrowser_protectedbase_setViewportMargins(VirtualQTextBrowser* self, int left, int top, int right, int bottom);
QMargins* QTextBrowser_protectedbase_viewportMargins(const VirtualQTextBrowser* self);
void QTextBrowser_protectedbase_drawFrame(VirtualQTextBrowser* self, QPainter* param1);
void QTextBrowser_protectedbase_updateMicroFocus(VirtualQTextBrowser* self);
void QTextBrowser_protectedbase_create(VirtualQTextBrowser* self);
void QTextBrowser_protectedbase_destroy(VirtualQTextBrowser* self);
bool QTextBrowser_protectedbase_focusNextChild(VirtualQTextBrowser* self);
bool QTextBrowser_protectedbase_focusPreviousChild(VirtualQTextBrowser* self);
QObject* QTextBrowser_protectedbase_sender(const VirtualQTextBrowser* self);
int QTextBrowser_protectedbase_senderSignalIndex(const VirtualQTextBrowser* self);
int QTextBrowser_protectedbase_receivers(const VirtualQTextBrowser* self, const char* signal);
bool QTextBrowser_protectedbase_isSignalConnected(const VirtualQTextBrowser* self, QMetaMethod* signal);

const QMetaObject* QTextBrowser_staticMetaObject();
void QTextBrowser_delete(QTextBrowser* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
