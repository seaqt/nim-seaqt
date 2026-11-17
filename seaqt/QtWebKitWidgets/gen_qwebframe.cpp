#include <QByteArray>
#include <QEvent>
#include <QIcon>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkRequest>
#include <QObject>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QPrinter>
#include <QRect>
#include <QRegion>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QVariant>
#include <QWebElement>
#include <QWebElementCollection>
#include <QWebFrame>
#include <QWebHitTestResult>
#include <QWebPage>
#include <QWebSecurityOrigin>
#include <qwebframe.h>
#include "gen_qwebframe.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebHitTestResult* QWebHitTestResult_new() {
	return new (std::nothrow) QWebHitTestResult();
}

QWebHitTestResult* QWebHitTestResult_new_from(QWebHitTestResult* from) {
	return new (std::nothrow) QWebHitTestResult(*from);
}

void QWebHitTestResult_operatorAssign(QWebHitTestResult* self, QWebHitTestResult* from) {
	self->operator=(*from);
}

bool QWebHitTestResult_isNull(const QWebHitTestResult* self) {
	return self->isNull();
}

QPoint* QWebHitTestResult_pos(const QWebHitTestResult* self) {
	return new QPoint(self->pos());
}

QRect* QWebHitTestResult_boundingRect(const QWebHitTestResult* self) {
	return new QRect(self->boundingRect());
}

QWebElement* QWebHitTestResult_enclosingBlockElement(const QWebHitTestResult* self) {
	return new QWebElement(self->enclosingBlockElement());
}

struct seaqt_string QWebHitTestResult_title(const QWebHitTestResult* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHitTestResult_linkText(const QWebHitTestResult* self) {
	QString _ret = self->linkText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebHitTestResult_linkUrl(const QWebHitTestResult* self) {
	return new QUrl(self->linkUrl());
}

QUrl* QWebHitTestResult_linkTitle(const QWebHitTestResult* self) {
	return new QUrl(self->linkTitle());
}

struct seaqt_string QWebHitTestResult_linkTitleString(const QWebHitTestResult* self) {
	QString _ret = self->linkTitleString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebFrame* QWebHitTestResult_linkTargetFrame(const QWebHitTestResult* self) {
	return self->linkTargetFrame();
}

QWebElement* QWebHitTestResult_linkElement(const QWebHitTestResult* self) {
	return new QWebElement(self->linkElement());
}

struct seaqt_string QWebHitTestResult_alternateText(const QWebHitTestResult* self) {
	QString _ret = self->alternateText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebHitTestResult_imageUrl(const QWebHitTestResult* self) {
	return new QUrl(self->imageUrl());
}

QPixmap* QWebHitTestResult_pixmap(const QWebHitTestResult* self) {
	return new QPixmap(self->pixmap());
}

QUrl* QWebHitTestResult_mediaUrl(const QWebHitTestResult* self) {
	return new QUrl(self->mediaUrl());
}

bool QWebHitTestResult_isContentEditable(const QWebHitTestResult* self) {
	return self->isContentEditable();
}

bool QWebHitTestResult_isContentSelected(const QWebHitTestResult* self) {
	return self->isContentSelected();
}

QWebElement* QWebHitTestResult_element(const QWebHitTestResult* self) {
	return new QWebElement(self->element());
}

QWebFrame* QWebHitTestResult_frame(const QWebHitTestResult* self) {
	return self->frame();
}

void QWebHitTestResult_delete(QWebHitTestResult* self) {
	delete self;
}

void QWebFrame_virtbase(QWebFrame* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebFrame_metaObject(const QWebFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebFrame_metacast(QWebFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebFrame_metacall(QWebFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebFrame_tr_s(const char* s) {
	QString _ret = QWebFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_trUtf8_s(const char* s) {
	QString _ret = QWebFrame::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebPage* QWebFrame_page(const QWebFrame* self) {
	return self->page();
}

void QWebFrame_load_url(QWebFrame* self, QUrl* url) {
	self->load(*url);
}

void QWebFrame_load_request(QWebFrame* self, QNetworkRequest* request) {
	self->load(*request);
}

void QWebFrame_setHtml_html(QWebFrame* self, struct seaqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QWebFrame_setContent_data(QWebFrame* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

void QWebFrame_addToJavaScriptWindowObject_name_object(QWebFrame* self, struct seaqt_string name, QObject* object) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->addToJavaScriptWindowObject(name_QString, object);
}

struct seaqt_string QWebFrame_toHtml(const QWebFrame* self) {
	QString _ret = self->toHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_toPlainText(const QWebFrame* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_title(const QWebFrame* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebFrame_setUrl(QWebFrame* self, QUrl* url) {
	self->setUrl(*url);
}

QUrl* QWebFrame_url(const QWebFrame* self) {
	return new QUrl(self->url());
}

QUrl* QWebFrame_requestedUrl(const QWebFrame* self) {
	return new QUrl(self->requestedUrl());
}

QUrl* QWebFrame_baseUrl(const QWebFrame* self) {
	return new QUrl(self->baseUrl());
}

QIcon* QWebFrame_icon(const QWebFrame* self) {
	return new QIcon(self->icon());
}

struct seaqt_string QWebFrame_frameName(const QWebFrame* self) {
	QString _ret = self->frameName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebFrame* QWebFrame_parentFrame(const QWebFrame* self) {
	return self->parentFrame();
}

struct seaqt_array /* of QWebFrame* */  QWebFrame_childFrames(const QWebFrame* self) {
	QList<QWebFrame *> _ret = self->childFrames();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebFrame** _arr = static_cast<QWebFrame**>(malloc(sizeof(QWebFrame*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QWebFrame_scrollBarPolicy(const QWebFrame* self, int orientation) {
	Qt::ScrollBarPolicy _ret = self->scrollBarPolicy(static_cast<Qt::Orientation>(orientation));
	return static_cast<int>(_ret);
}

void QWebFrame_setScrollBarPolicy(QWebFrame* self, int orientation, int policy) {
	self->setScrollBarPolicy(static_cast<Qt::Orientation>(orientation), static_cast<Qt::ScrollBarPolicy>(policy));
}

void QWebFrame_setScrollBarValue(QWebFrame* self, int orientation, int value) {
	self->setScrollBarValue(static_cast<Qt::Orientation>(orientation), static_cast<int>(value));
}

int QWebFrame_scrollBarValue(const QWebFrame* self, int orientation) {
	return self->scrollBarValue(static_cast<Qt::Orientation>(orientation));
}

int QWebFrame_scrollBarMinimum(const QWebFrame* self, int orientation) {
	return self->scrollBarMinimum(static_cast<Qt::Orientation>(orientation));
}

int QWebFrame_scrollBarMaximum(const QWebFrame* self, int orientation) {
	return self->scrollBarMaximum(static_cast<Qt::Orientation>(orientation));
}

QRect* QWebFrame_scrollBarGeometry(const QWebFrame* self, int orientation) {
	return new QRect(self->scrollBarGeometry(static_cast<Qt::Orientation>(orientation)));
}

void QWebFrame_scroll(QWebFrame* self, int param1, int param2) {
	self->scroll(static_cast<int>(param1), static_cast<int>(param2));
}

QPoint* QWebFrame_scrollPosition(const QWebFrame* self) {
	return new QPoint(self->scrollPosition());
}

void QWebFrame_setScrollPosition(QWebFrame* self, QPoint* pos) {
	self->setScrollPosition(*pos);
}

void QWebFrame_scrollToAnchor(QWebFrame* self, struct seaqt_string anchor) {
	QString anchor_QString = QString::fromUtf8(anchor.data, anchor.len);
	self->scrollToAnchor(anchor_QString);
}

void QWebFrame_render_QPainter(QWebFrame* self, QPainter* param1) {
	self->render(param1);
}

void QWebFrame_render_QPainter_QWebFrame_RenderLayers(QWebFrame* self, QPainter* param1, int layer) {
	self->render(param1, static_cast<QWebFrame::RenderLayers>(layer));
}

void QWebFrame_setTextSizeMultiplier(QWebFrame* self, double factor) {
	self->setTextSizeMultiplier(static_cast<qreal>(factor));
}

double QWebFrame_textSizeMultiplier(const QWebFrame* self) {
	qreal _ret = self->textSizeMultiplier();
	return static_cast<double>(_ret);
}

double QWebFrame_zoomFactor(const QWebFrame* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QWebFrame_setZoomFactor(QWebFrame* self, double factor) {
	self->setZoomFactor(static_cast<qreal>(factor));
}

bool QWebFrame_hasFocus(const QWebFrame* self) {
	return self->hasFocus();
}

void QWebFrame_setFocus(QWebFrame* self) {
	self->setFocus();
}

QPoint* QWebFrame_pos(const QWebFrame* self) {
	return new QPoint(self->pos());
}

QRect* QWebFrame_geometry(const QWebFrame* self) {
	return new QRect(self->geometry());
}

QSize* QWebFrame_contentsSize(const QWebFrame* self) {
	return new QSize(self->contentsSize());
}

QWebElement* QWebFrame_documentElement(const QWebFrame* self) {
	return new QWebElement(self->documentElement());
}

QWebElement* QWebFrame_ownerElement(const QWebFrame* self) {
	return new QWebElement(self->ownerElement());
}

QWebElementCollection* QWebFrame_findAllElements(const QWebFrame* self, struct seaqt_string selectorQuery) {
	QString selectorQuery_QString = QString::fromUtf8(selectorQuery.data, selectorQuery.len);
	return new QWebElementCollection(self->findAllElements(selectorQuery_QString));
}

QWebElement* QWebFrame_findFirstElement(const QWebFrame* self, struct seaqt_string selectorQuery) {
	QString selectorQuery_QString = QString::fromUtf8(selectorQuery.data, selectorQuery.len);
	return new QWebElement(self->findFirstElement(selectorQuery_QString));
}

QWebHitTestResult* QWebFrame_hitTestContent(const QWebFrame* self, QPoint* pos) {
	return new QWebHitTestResult(self->hitTestContent(*pos));
}

bool QWebFrame_event(QWebFrame* self, QEvent* param1) {
	return self->event(param1);
}

QWebSecurityOrigin* QWebFrame_securityOrigin(const QWebFrame* self) {
	return new QWebSecurityOrigin(self->securityOrigin());
}

QVariant* QWebFrame_evaluateJavaScript(QWebFrame* self, struct seaqt_string scriptSource) {
	QString scriptSource_QString = QString::fromUtf8(scriptSource.data, scriptSource.len);
	return new QVariant(self->evaluateJavaScript(scriptSource_QString));
}

void QWebFrame_print(const QWebFrame* self, QPrinter* printer) {
	self->print(printer);
}

void QWebFrame_javaScriptWindowObjectCleared(QWebFrame* self) {
	self->javaScriptWindowObjectCleared();
}

void QWebFrame_connect_javaScriptWindowObjectCleared(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::javaScriptWindowObjectCleared), self, local_caller{slot, callback, release});
}

void QWebFrame_provisionalLoad(QWebFrame* self) {
	self->provisionalLoad();
}

void QWebFrame_connect_provisionalLoad(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::provisionalLoad), self, local_caller{slot, callback, release});
}

void QWebFrame_titleChanged(QWebFrame* self, struct seaqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->titleChanged(title_QString);
}

void QWebFrame_connect_titleChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string);
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct seaqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct seaqt_string sigval1 = title_ms;
			callback(slot, sigval1);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)(const QString&)>(&QWebFrame::titleChanged), self, local_caller{slot, callback, release});
}

void QWebFrame_urlChanged(QWebFrame* self, QUrl* url) {
	self->urlChanged(*url);
}

void QWebFrame_connect_urlChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(slot, sigval1);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)(const QUrl&)>(&QWebFrame::urlChanged), self, local_caller{slot, callback, release});
}

void QWebFrame_initialLayoutCompleted(QWebFrame* self) {
	self->initialLayoutCompleted();
}

void QWebFrame_connect_initialLayoutCompleted(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::initialLayoutCompleted), self, local_caller{slot, callback, release});
}

void QWebFrame_iconChanged(QWebFrame* self) {
	self->iconChanged();
}

void QWebFrame_connect_iconChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::iconChanged), self, local_caller{slot, callback, release});
}

void QWebFrame_contentsSizeChanged(QWebFrame* self, QSize* size) {
	self->contentsSizeChanged(*size);
}

void QWebFrame_connect_contentsSizeChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& size) {
			const QSize& size_ret = size;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&size_ret);
			callback(slot, sigval1);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)(const QSize&)>(&QWebFrame::contentsSizeChanged), self, local_caller{slot, callback, release});
}

void QWebFrame_loadStarted(QWebFrame* self) {
	self->loadStarted();
}

void QWebFrame_connect_loadStarted(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::loadStarted), self, local_caller{slot, callback, release});
}

void QWebFrame_loadFinished(QWebFrame* self, bool ok) {
	self->loadFinished(ok);
}

void QWebFrame_connect_loadFinished(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool ok) {
			bool sigval1 = ok;
			callback(slot, sigval1);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)(bool)>(&QWebFrame::loadFinished), self, local_caller{slot, callback, release});
}

void QWebFrame_pageChanged(QWebFrame* self) {
	self->pageChanged();
}

void QWebFrame_connect_pageChanged(QWebFrame* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebFrame::connect(self, static_cast<void (QWebFrame::*)()>(&QWebFrame::pageChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QWebFrame_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebFrame::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebFrame_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebFrame::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebFrame_load_request_operation(QWebFrame* self, QNetworkRequest* request, int operation) {
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation));
}

void QWebFrame_load_request_operation_body(QWebFrame* self, QNetworkRequest* request, int operation, struct seaqt_string body) {
	QByteArray body_QByteArray(body.data, body.len);
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation), body_QByteArray);
}

void QWebFrame_setHtml_html_baseUrl(QWebFrame* self, struct seaqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QWebFrame_setContent_data_mimeType(QWebFrame* self, struct seaqt_string data, struct seaqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QWebFrame_setContent_data_mimeType_baseUrl(QWebFrame* self, struct seaqt_string data, struct seaqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QWebFrame_addToJavaScriptWindowObject_name_object_ownership(QWebFrame* self, struct seaqt_string name, QObject* object, int ownership) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->addToJavaScriptWindowObject(name_QString, object, static_cast<QWebFrame::ValueOwnership>(ownership));
}

void QWebFrame_render_QPainter_QRegion(QWebFrame* self, QPainter* param1, QRegion* clip) {
	self->render(param1, *clip);
}

void QWebFrame_render_QPainter_QWebFrame_RenderLayers_QRegion(QWebFrame* self, QPainter* param1, int layer, QRegion* clip) {
	self->render(param1, static_cast<QWebFrame::RenderLayers>(layer), *clip);
}

const QMetaObject* QWebFrame_staticMetaObject() { return &QWebFrame::staticMetaObject; }
