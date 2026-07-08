#pragma once
#ifndef SEAQT_QTWEBKITWIDGETS_GEN_QWEBFRAME_H
#define SEAQT_QTWEBKITWIDGETS_GEN_QWEBFRAME_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QNetworkRequest;
class QObject;
class QPainter;
class QPixmap;
class QPoint;
class QPrinter;
class QRect;
class QRegion;
class QSize;
class QUrl;
class QVariant;
class QWebElement;
class QWebElementCollection;
class QWebFrame;
class QWebHitTestResult;
class QWebPage;
class QWebSecurityOrigin;
#else
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebElement QWebElement;
typedef struct QWebElementCollection QWebElementCollection;
typedef struct QWebFrame QWebFrame;
typedef struct QWebHitTestResult QWebHitTestResult;
typedef struct QWebPage QWebPage;
typedef struct QWebSecurityOrigin QWebSecurityOrigin;
#endif

QWebHitTestResult* QWebHitTestResult_new();
QWebHitTestResult* QWebHitTestResult_new_from(QWebHitTestResult* from);

void QWebHitTestResult_operatorAssign(QWebHitTestResult* self, QWebHitTestResult* from);
bool QWebHitTestResult_isNull(const QWebHitTestResult* self);
QPoint* QWebHitTestResult_pos(const QWebHitTestResult* self);
QRect* QWebHitTestResult_boundingRect(const QWebHitTestResult* self);
QWebElement* QWebHitTestResult_enclosingBlockElement(const QWebHitTestResult* self);
struct seaqt_string QWebHitTestResult_title(const QWebHitTestResult* self);
struct seaqt_string QWebHitTestResult_linkText(const QWebHitTestResult* self);
QUrl* QWebHitTestResult_linkUrl(const QWebHitTestResult* self);
QUrl* QWebHitTestResult_linkTitle(const QWebHitTestResult* self);
struct seaqt_string QWebHitTestResult_linkTitleString(const QWebHitTestResult* self);
QWebFrame* QWebHitTestResult_linkTargetFrame(const QWebHitTestResult* self);
QWebElement* QWebHitTestResult_linkElement(const QWebHitTestResult* self);
struct seaqt_string QWebHitTestResult_alternateText(const QWebHitTestResult* self);
QUrl* QWebHitTestResult_imageUrl(const QWebHitTestResult* self);
QPixmap* QWebHitTestResult_pixmap(const QWebHitTestResult* self);
QUrl* QWebHitTestResult_mediaUrl(const QWebHitTestResult* self);
bool QWebHitTestResult_isContentEditable(const QWebHitTestResult* self);
bool QWebHitTestResult_isContentSelected(const QWebHitTestResult* self);
QWebElement* QWebHitTestResult_element(const QWebHitTestResult* self);
QWebFrame* QWebHitTestResult_frame(const QWebHitTestResult* self);

void QWebHitTestResult_delete(QWebHitTestResult* self);

void QWebFrame_virtbase(QWebFrame* src, QObject** outptr_QObject);
QMetaObject* QWebFrame_metaObject(const QWebFrame* self);
void* QWebFrame_metacast(QWebFrame* self, const char* param1);
int QWebFrame_metacall(QWebFrame* self, int param1, int param2, void** param3);
struct seaqt_string QWebFrame_tr_s(const char* s);
struct seaqt_string QWebFrame_trUtf8_s(const char* s);
QWebPage* QWebFrame_page(const QWebFrame* self);
void QWebFrame_load_url(QWebFrame* self, QUrl* url);
void QWebFrame_load_request(QWebFrame* self, QNetworkRequest* request);
void QWebFrame_setHtml_html(QWebFrame* self, struct seaqt_string html);
void QWebFrame_setContent_data(QWebFrame* self, struct seaqt_string data);
void QWebFrame_addToJavaScriptWindowObject_name_object(QWebFrame* self, struct seaqt_string name, QObject* object);
struct seaqt_string QWebFrame_toHtml(const QWebFrame* self);
struct seaqt_string QWebFrame_toPlainText(const QWebFrame* self);
struct seaqt_string QWebFrame_title(const QWebFrame* self);
void QWebFrame_setUrl(QWebFrame* self, QUrl* url);
QUrl* QWebFrame_url(const QWebFrame* self);
QUrl* QWebFrame_requestedUrl(const QWebFrame* self);
QUrl* QWebFrame_baseUrl(const QWebFrame* self);
QIcon* QWebFrame_icon(const QWebFrame* self);
struct seaqt_string QWebFrame_frameName(const QWebFrame* self);
QWebFrame* QWebFrame_parentFrame(const QWebFrame* self);
struct seaqt_array /* of QWebFrame* */  QWebFrame_childFrames(const QWebFrame* self);
int QWebFrame_scrollBarPolicy(const QWebFrame* self, int orientation);
void QWebFrame_setScrollBarPolicy(QWebFrame* self, int orientation, int policy);
void QWebFrame_setScrollBarValue(QWebFrame* self, int orientation, int value);
int QWebFrame_scrollBarValue(const QWebFrame* self, int orientation);
int QWebFrame_scrollBarMinimum(const QWebFrame* self, int orientation);
int QWebFrame_scrollBarMaximum(const QWebFrame* self, int orientation);
QRect* QWebFrame_scrollBarGeometry(const QWebFrame* self, int orientation);
void QWebFrame_scroll(QWebFrame* self, int param1, int param2);
QPoint* QWebFrame_scrollPosition(const QWebFrame* self);
void QWebFrame_setScrollPosition(QWebFrame* self, QPoint* pos);
void QWebFrame_scrollToAnchor(QWebFrame* self, struct seaqt_string anchor);
void QWebFrame_render_QPainter(QWebFrame* self, QPainter* param1);
void QWebFrame_render_QPainter_QWebFrame_RenderLayers(QWebFrame* self, QPainter* param1, int layer);
void QWebFrame_setTextSizeMultiplier(QWebFrame* self, double factor);
double QWebFrame_textSizeMultiplier(const QWebFrame* self);
double QWebFrame_zoomFactor(const QWebFrame* self);
void QWebFrame_setZoomFactor(QWebFrame* self, double factor);
bool QWebFrame_hasFocus(const QWebFrame* self);
void QWebFrame_setFocus(QWebFrame* self);
QPoint* QWebFrame_pos(const QWebFrame* self);
QRect* QWebFrame_geometry(const QWebFrame* self);
QSize* QWebFrame_contentsSize(const QWebFrame* self);
QWebElement* QWebFrame_documentElement(const QWebFrame* self);
QWebElement* QWebFrame_ownerElement(const QWebFrame* self);
QWebElementCollection* QWebFrame_findAllElements(const QWebFrame* self, struct seaqt_string selectorQuery);
QWebElement* QWebFrame_findFirstElement(const QWebFrame* self, struct seaqt_string selectorQuery);
QWebHitTestResult* QWebFrame_hitTestContent(const QWebFrame* self, QPoint* pos);
bool QWebFrame_event(QWebFrame* self, QEvent* param1);
QWebSecurityOrigin* QWebFrame_securityOrigin(const QWebFrame* self);
QVariant* QWebFrame_evaluateJavaScript(QWebFrame* self, struct seaqt_string scriptSource);
void QWebFrame_print(const QWebFrame* self, QPrinter* printer);
void QWebFrame_javaScriptWindowObjectCleared(QWebFrame* self);
void QWebFrame_connect_javaScriptWindowObjectCleared(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebFrame_provisionalLoad(QWebFrame* self);
void QWebFrame_connect_provisionalLoad(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebFrame_titleChanged(QWebFrame* self, struct seaqt_string title);
void QWebFrame_connect_titleChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QWebFrame_urlChanged(QWebFrame* self, QUrl* url);
void QWebFrame_connect_urlChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QWebFrame_initialLayoutCompleted(QWebFrame* self);
void QWebFrame_connect_initialLayoutCompleted(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebFrame_iconChanged(QWebFrame* self);
void QWebFrame_connect_iconChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebFrame_contentsSizeChanged(QWebFrame* self, QSize* size);
void QWebFrame_connect_contentsSizeChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QWebFrame_loadStarted(QWebFrame* self);
void QWebFrame_connect_loadStarted(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWebFrame_loadFinished(QWebFrame* self, bool ok);
void QWebFrame_connect_loadFinished(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWebFrame_pageChanged(QWebFrame* self);
void QWebFrame_connect_pageChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QWebFrame_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebFrame_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QWebFrame_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QWebFrame_trUtf8_s_c_n(const char* s, const char* c, int n);
void QWebFrame_load_request_operation(QWebFrame* self, QNetworkRequest* request, int operation);
void QWebFrame_load_request_operation_body(QWebFrame* self, QNetworkRequest* request, int operation, struct seaqt_string body);
void QWebFrame_setHtml_html_baseUrl(QWebFrame* self, struct seaqt_string html, QUrl* baseUrl);
void QWebFrame_setContent_data_mimeType(QWebFrame* self, struct seaqt_string data, struct seaqt_string mimeType);
void QWebFrame_setContent_data_mimeType_baseUrl(QWebFrame* self, struct seaqt_string data, struct seaqt_string mimeType, QUrl* baseUrl);
void QWebFrame_addToJavaScriptWindowObject_name_object_ownership(QWebFrame* self, struct seaqt_string name, QObject* object, int ownership);
void QWebFrame_render_QPainter_QRegion(QWebFrame* self, QPainter* param1, QRegion* clip);
void QWebFrame_render_QPainter_QWebFrame_RenderLayers_QRegion(QWebFrame* self, QPainter* param1, int layer, QRegion* clip);


#ifdef __cplusplus
} /* extern C */
#endif

#endif
