#pragma once
#ifndef SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEVIEW_H
#define SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
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
class QPageLayout;
class QPageRanges;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QPrinter;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QUrl;
class QVariant;
class QWebEngineContextMenuRequest;
class QWebEngineHistory;
class QWebEngineHttpRequest;
class QWebEnginePage;
class QWebEngineProfile;
class QWebEngineSettings;
class QWebEngineView;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
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
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebEngineContextMenuRequest QWebEngineContextMenuRequest;
typedef struct QWebEngineHistory QWebEngineHistory;
typedef struct QWebEngineHttpRequest QWebEngineHttpRequest;
typedef struct QWebEnginePage QWebEnginePage;
typedef struct QWebEngineProfile QWebEngineProfile;
typedef struct QWebEngineSettings QWebEngineSettings;
typedef struct QWebEngineView QWebEngineView;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQWebEngineView VirtualQWebEngineView;
typedef struct QWebEngineView_VTable{
	void (*destructor)(VirtualQWebEngineView* self);
	QMetaObject* (*metaObject)(const VirtualQWebEngineView* self);
	void* (*metacast)(VirtualQWebEngineView* self, const char* param1);
	int (*metacall)(VirtualQWebEngineView* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQWebEngineView* self);
	QWebEngineView* (*createWindow)(VirtualQWebEngineView* self, int type);
	void (*contextMenuEvent)(VirtualQWebEngineView* self, QContextMenuEvent* param1);
	bool (*event)(VirtualQWebEngineView* self, QEvent* param1);
	void (*showEvent)(VirtualQWebEngineView* self, QShowEvent* param1);
	void (*hideEvent)(VirtualQWebEngineView* self, QHideEvent* param1);
	void (*closeEvent)(VirtualQWebEngineView* self, QCloseEvent* param1);
	void (*dragEnterEvent)(VirtualQWebEngineView* self, QDragEnterEvent* e);
	void (*dragLeaveEvent)(VirtualQWebEngineView* self, QDragLeaveEvent* e);
	void (*dragMoveEvent)(VirtualQWebEngineView* self, QDragMoveEvent* e);
	void (*dropEvent)(VirtualQWebEngineView* self, QDropEvent* e);
	int (*devType)(const VirtualQWebEngineView* self);
	void (*setVisible)(VirtualQWebEngineView* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQWebEngineView* self);
	int (*heightForWidth)(const VirtualQWebEngineView* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQWebEngineView* self);
	QPaintEngine* (*paintEngine)(const VirtualQWebEngineView* self);
	void (*mousePressEvent)(VirtualQWebEngineView* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQWebEngineView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQWebEngineView* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQWebEngineView* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQWebEngineView* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQWebEngineView* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQWebEngineView* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQWebEngineView* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQWebEngineView* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQWebEngineView* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQWebEngineView* self, QEvent* event);
	void (*paintEvent)(VirtualQWebEngineView* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQWebEngineView* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQWebEngineView* self, QResizeEvent* event);
	void (*tabletEvent)(VirtualQWebEngineView* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQWebEngineView* self, QActionEvent* event);
	bool (*nativeEvent)(VirtualQWebEngineView* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQWebEngineView* self, QEvent* param1);
	int (*metric)(const VirtualQWebEngineView* self, int param1);
	void (*initPainter)(const VirtualQWebEngineView* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQWebEngineView* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQWebEngineView* self);
	void (*inputMethodEvent)(VirtualQWebEngineView* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQWebEngineView* self, int param1);
	bool (*focusNextPrevChild)(VirtualQWebEngineView* self, bool next);
	bool (*eventFilter)(VirtualQWebEngineView* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebEngineView* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebEngineView* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebEngineView* self, QEvent* event);
	void (*connectNotify)(VirtualQWebEngineView* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebEngineView* self, QMetaMethod* signal);
}QWebEngineView_VTable;

const QWebEngineView_VTable* QWebEngineView_vtbl(const VirtualQWebEngineView* self);
void* QWebEngineView_vdata(const VirtualQWebEngineView* self);
void QWebEngineView_setVdata(VirtualQWebEngineView* self, void* vdata);

VirtualQWebEngineView* QWebEngineView_new(const QWebEngineView_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQWebEngineView* QWebEngineView_new2(const QWebEngineView_VTable* vtbl, void* vdata);
VirtualQWebEngineView* QWebEngineView_new3(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile);
VirtualQWebEngineView* QWebEngineView_new4(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page);
VirtualQWebEngineView* QWebEngineView_new5(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile, QWidget* parent);
VirtualQWebEngineView* QWebEngineView_new6(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page, QWidget* parent);

void QWebEngineView_virtbase(QWebEngineView* src, QWidget** outptr_QWidget);
QMetaObject* QWebEngineView_metaObject(const QWebEngineView* self);
void* QWebEngineView_metacast(QWebEngineView* self, const char* param1);
int QWebEngineView_metacall(QWebEngineView* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineView_tr(const char* s);
QWebEngineView* QWebEngineView_forPage(QWebEnginePage* page);
QWebEnginePage* QWebEngineView_page(const QWebEngineView* self);
void QWebEngineView_setPage(QWebEngineView* self, QWebEnginePage* page);
void QWebEngineView_load(QWebEngineView* self, QUrl* url);
void QWebEngineView_loadWithRequest(QWebEngineView* self, QWebEngineHttpRequest* request);
void QWebEngineView_setHtml(QWebEngineView* self, struct miqt_string html);
void QWebEngineView_setContent(QWebEngineView* self, struct miqt_string data);
QWebEngineHistory* QWebEngineView_history(const QWebEngineView* self);
struct miqt_string QWebEngineView_title(const QWebEngineView* self);
void QWebEngineView_setUrl(QWebEngineView* self, QUrl* url);
QUrl* QWebEngineView_url(const QWebEngineView* self);
QUrl* QWebEngineView_iconUrl(const QWebEngineView* self);
QIcon* QWebEngineView_icon(const QWebEngineView* self);
bool QWebEngineView_hasSelection(const QWebEngineView* self);
struct miqt_string QWebEngineView_selectedText(const QWebEngineView* self);
QAction* QWebEngineView_pageAction(const QWebEngineView* self, int action);
void QWebEngineView_triggerPageAction(QWebEngineView* self, int action);
double QWebEngineView_zoomFactor(const QWebEngineView* self);
void QWebEngineView_setZoomFactor(QWebEngineView* self, double factor);
QSize* QWebEngineView_sizeHint(const QWebEngineView* self);
QWebEngineSettings* QWebEngineView_settings(const QWebEngineView* self);
QMenu* QWebEngineView_createStandardContextMenu(QWebEngineView* self);
QWebEngineContextMenuRequest* QWebEngineView_lastContextMenuRequest(const QWebEngineView* self);
void QWebEngineView_printToPdf(QWebEngineView* self, struct miqt_string filePath);
void QWebEngineView_print(QWebEngineView* self, QPrinter* printer);
void QWebEngineView_stop(QWebEngineView* self);
void QWebEngineView_back(QWebEngineView* self);
void QWebEngineView_forward(QWebEngineView* self);
void QWebEngineView_reload(QWebEngineView* self);
void QWebEngineView_loadStarted(QWebEngineView* self);
void QWebEngineView_connect_loadStarted(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEngineView_loadProgress(QWebEngineView* self, int progress);
void QWebEngineView_connect_loadProgress(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QWebEngineView_loadFinished(QWebEngineView* self, bool param1);
void QWebEngineView_connect_loadFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebEngineView_titleChanged(QWebEngineView* self, struct miqt_string title);
void QWebEngineView_connect_titleChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QWebEngineView_selectionChanged(QWebEngineView* self);
void QWebEngineView_connect_selectionChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEngineView_urlChanged(QWebEngineView* self, QUrl* param1);
void QWebEngineView_connect_urlChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebEngineView_iconUrlChanged(QWebEngineView* self, QUrl* param1);
void QWebEngineView_connect_iconUrlChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebEngineView_iconChanged(QWebEngineView* self, QIcon* param1);
void QWebEngineView_connect_iconChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t));
void QWebEngineView_renderProcessTerminated(QWebEngineView* self, int terminationStatus, int exitCode);
void QWebEngineView_connect_renderProcessTerminated(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QWebEngineView_pdfPrintingFinished(QWebEngineView* self, struct miqt_string filePath, bool success);
void QWebEngineView_connect_pdfPrintingFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, bool), void (*release)(intptr_t));
void QWebEngineView_printRequested(QWebEngineView* self);
void QWebEngineView_connect_printRequested(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebEngineView_printFinished(QWebEngineView* self, bool success);
void QWebEngineView_connect_printFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
QWebEngineView* QWebEngineView_createWindow(QWebEngineView* self, int type);
void QWebEngineView_contextMenuEvent(QWebEngineView* self, QContextMenuEvent* param1);
bool QWebEngineView_event(QWebEngineView* self, QEvent* param1);
void QWebEngineView_showEvent(QWebEngineView* self, QShowEvent* param1);
void QWebEngineView_hideEvent(QWebEngineView* self, QHideEvent* param1);
void QWebEngineView_closeEvent(QWebEngineView* self, QCloseEvent* param1);
void QWebEngineView_dragEnterEvent(QWebEngineView* self, QDragEnterEvent* e);
void QWebEngineView_dragLeaveEvent(QWebEngineView* self, QDragLeaveEvent* e);
void QWebEngineView_dragMoveEvent(QWebEngineView* self, QDragMoveEvent* e);
void QWebEngineView_dropEvent(QWebEngineView* self, QDropEvent* e);
struct miqt_string QWebEngineView_tr2(const char* s, const char* c);
struct miqt_string QWebEngineView_tr3(const char* s, const char* c, int n);
void QWebEngineView_setHtml2(QWebEngineView* self, struct miqt_string html, QUrl* baseUrl);
void QWebEngineView_setContent2(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType);
void QWebEngineView_setContent3(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebEngineView_triggerPageAction2(QWebEngineView* self, int action, bool checked);
void QWebEngineView_printToPdf2(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout);
void QWebEngineView_printToPdf3(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout, QPageRanges* ranges);

QMetaObject* QWebEngineView_virtualbase_metaObject(const VirtualQWebEngineView* self);
void* QWebEngineView_virtualbase_metacast(VirtualQWebEngineView* self, const char* param1);
int QWebEngineView_virtualbase_metacall(VirtualQWebEngineView* self, int param1, int param2, void** param3);
QSize* QWebEngineView_virtualbase_sizeHint(const VirtualQWebEngineView* self);
QWebEngineView* QWebEngineView_virtualbase_createWindow(VirtualQWebEngineView* self, int type);
void QWebEngineView_virtualbase_contextMenuEvent(VirtualQWebEngineView* self, QContextMenuEvent* param1);
bool QWebEngineView_virtualbase_event(VirtualQWebEngineView* self, QEvent* param1);
void QWebEngineView_virtualbase_showEvent(VirtualQWebEngineView* self, QShowEvent* param1);
void QWebEngineView_virtualbase_hideEvent(VirtualQWebEngineView* self, QHideEvent* param1);
void QWebEngineView_virtualbase_closeEvent(VirtualQWebEngineView* self, QCloseEvent* param1);
void QWebEngineView_virtualbase_dragEnterEvent(VirtualQWebEngineView* self, QDragEnterEvent* e);
void QWebEngineView_virtualbase_dragLeaveEvent(VirtualQWebEngineView* self, QDragLeaveEvent* e);
void QWebEngineView_virtualbase_dragMoveEvent(VirtualQWebEngineView* self, QDragMoveEvent* e);
void QWebEngineView_virtualbase_dropEvent(VirtualQWebEngineView* self, QDropEvent* e);
int QWebEngineView_virtualbase_devType(const VirtualQWebEngineView* self);
void QWebEngineView_virtualbase_setVisible(VirtualQWebEngineView* self, bool visible);
QSize* QWebEngineView_virtualbase_minimumSizeHint(const VirtualQWebEngineView* self);
int QWebEngineView_virtualbase_heightForWidth(const VirtualQWebEngineView* self, int param1);
bool QWebEngineView_virtualbase_hasHeightForWidth(const VirtualQWebEngineView* self);
QPaintEngine* QWebEngineView_virtualbase_paintEngine(const VirtualQWebEngineView* self);
void QWebEngineView_virtualbase_mousePressEvent(VirtualQWebEngineView* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseReleaseEvent(VirtualQWebEngineView* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseDoubleClickEvent(VirtualQWebEngineView* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseMoveEvent(VirtualQWebEngineView* self, QMouseEvent* event);
void QWebEngineView_virtualbase_wheelEvent(VirtualQWebEngineView* self, QWheelEvent* event);
void QWebEngineView_virtualbase_keyPressEvent(VirtualQWebEngineView* self, QKeyEvent* event);
void QWebEngineView_virtualbase_keyReleaseEvent(VirtualQWebEngineView* self, QKeyEvent* event);
void QWebEngineView_virtualbase_focusInEvent(VirtualQWebEngineView* self, QFocusEvent* event);
void QWebEngineView_virtualbase_focusOutEvent(VirtualQWebEngineView* self, QFocusEvent* event);
void QWebEngineView_virtualbase_enterEvent(VirtualQWebEngineView* self, QEnterEvent* event);
void QWebEngineView_virtualbase_leaveEvent(VirtualQWebEngineView* self, QEvent* event);
void QWebEngineView_virtualbase_paintEvent(VirtualQWebEngineView* self, QPaintEvent* event);
void QWebEngineView_virtualbase_moveEvent(VirtualQWebEngineView* self, QMoveEvent* event);
void QWebEngineView_virtualbase_resizeEvent(VirtualQWebEngineView* self, QResizeEvent* event);
void QWebEngineView_virtualbase_tabletEvent(VirtualQWebEngineView* self, QTabletEvent* event);
void QWebEngineView_virtualbase_actionEvent(VirtualQWebEngineView* self, QActionEvent* event);
bool QWebEngineView_virtualbase_nativeEvent(VirtualQWebEngineView* self, struct miqt_string eventType, void* message, intptr_t* result);
void QWebEngineView_virtualbase_changeEvent(VirtualQWebEngineView* self, QEvent* param1);
int QWebEngineView_virtualbase_metric(const VirtualQWebEngineView* self, int param1);
void QWebEngineView_virtualbase_initPainter(const VirtualQWebEngineView* self, QPainter* painter);
QPaintDevice* QWebEngineView_virtualbase_redirected(const VirtualQWebEngineView* self, QPoint* offset);
QPainter* QWebEngineView_virtualbase_sharedPainter(const VirtualQWebEngineView* self);
void QWebEngineView_virtualbase_inputMethodEvent(VirtualQWebEngineView* self, QInputMethodEvent* param1);
QVariant* QWebEngineView_virtualbase_inputMethodQuery(const VirtualQWebEngineView* self, int param1);
bool QWebEngineView_virtualbase_focusNextPrevChild(VirtualQWebEngineView* self, bool next);
bool QWebEngineView_virtualbase_eventFilter(VirtualQWebEngineView* self, QObject* watched, QEvent* event);
void QWebEngineView_virtualbase_timerEvent(VirtualQWebEngineView* self, QTimerEvent* event);
void QWebEngineView_virtualbase_childEvent(VirtualQWebEngineView* self, QChildEvent* event);
void QWebEngineView_virtualbase_customEvent(VirtualQWebEngineView* self, QEvent* event);
void QWebEngineView_virtualbase_connectNotify(VirtualQWebEngineView* self, QMetaMethod* signal);
void QWebEngineView_virtualbase_disconnectNotify(VirtualQWebEngineView* self, QMetaMethod* signal);

void QWebEngineView_protectedbase_updateMicroFocus(VirtualQWebEngineView* self);
void QWebEngineView_protectedbase_create(VirtualQWebEngineView* self);
void QWebEngineView_protectedbase_destroy(VirtualQWebEngineView* self);
bool QWebEngineView_protectedbase_focusNextChild(VirtualQWebEngineView* self);
bool QWebEngineView_protectedbase_focusPreviousChild(VirtualQWebEngineView* self);
QObject* QWebEngineView_protectedbase_sender(const VirtualQWebEngineView* self);
int QWebEngineView_protectedbase_senderSignalIndex(const VirtualQWebEngineView* self);
int QWebEngineView_protectedbase_receivers(const VirtualQWebEngineView* self, const char* signal);
bool QWebEngineView_protectedbase_isSignalConnected(const VirtualQWebEngineView* self, QMetaMethod* signal);

const QMetaObject* QWebEngineView_staticMetaObject();
void QWebEngineView_delete(QWebEngineView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
