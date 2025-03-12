#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QNetworkRequest>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QPrinter>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWebHistory>
#include <QWebPage>
#include <QWebSettings>
#include <QWebView>
#include <QWheelEvent>
#include <QWidget>
#include <qwebview.h>
#include "gen_qwebview.h"
class VirtualQWebView final : public QWebView {
	const QWebView_VTable* vtbl;
	void* vdata;
public:
	friend const QWebView_VTable* QWebView_vtbl(const VirtualQWebView* self);
	friend void* QWebView_vdata(const VirtualQWebView* self);
	friend void QWebView_setVdata(VirtualQWebView* self, void* vdata);

	VirtualQWebView(const QWebView_VTable* vtbl, void* vdata, QWidget* parent): QWebView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebView(const QWebView_VTable* vtbl, void* vdata): QWebView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWebView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWebView_virtualbase_metaObject(const VirtualQWebView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWebView_virtualbase_metacast(VirtualQWebView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebView_virtualbase_metacall(VirtualQWebView* self, int param1, int param2, void** param3);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWebView::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWebView_virtualbase_inputMethodQuery(const VirtualQWebView* self, int property);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWebView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebView_virtualbase_sizeHint(const VirtualQWebView* self);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebView_virtualbase_event(VirtualQWebView* self, QEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QWebView::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_resizeEvent(VirtualQWebView* self, QResizeEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QWebView::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_paintEvent(VirtualQWebView* self, QPaintEvent* param1);

	virtual QWebView* createWindow(QWebPage::WebWindowType type) override {
		if (vtbl->createWindow == 0) {
			return QWebView::createWindow(type);
		}

		QWebPage::WebWindowType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QWebView* callback_return_value = vtbl->createWindow(this, sigval1);

		return callback_return_value;
	}

	friend QWebView* QWebView_virtualbase_createWindow(VirtualQWebView* self, int type);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWebView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_changeEvent(VirtualQWebView* self, QEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWebView::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_mouseMoveEvent(VirtualQWebView* self, QMouseEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QWebView::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_mousePressEvent(VirtualQWebView* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWebView::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_mouseDoubleClickEvent(VirtualQWebView* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWebView::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_mouseReleaseEvent(VirtualQWebView* self, QMouseEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QWebView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_contextMenuEvent(VirtualQWebView* self, QContextMenuEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QWebView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_wheelEvent(VirtualQWebView* self, QWheelEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QWebView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_keyPressEvent(VirtualQWebView* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWebView::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_keyReleaseEvent(VirtualQWebView* self, QKeyEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QWebView::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_dragEnterEvent(VirtualQWebView* self, QDragEnterEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWebView::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_dragLeaveEvent(VirtualQWebView* self, QDragLeaveEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QWebView::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_dragMoveEvent(VirtualQWebView* self, QDragMoveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QWebView::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_dropEvent(VirtualQWebView* self, QDropEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QWebView::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_focusInEvent(VirtualQWebView* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QWebView::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_focusOutEvent(VirtualQWebView* self, QFocusEvent* param1);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWebView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_inputMethodEvent(VirtualQWebView* self, QInputMethodEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWebView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebView_virtualbase_focusNextPrevChild(VirtualQWebView* self, bool next);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWebView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebView_virtualbase_devType(const VirtualQWebView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWebView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QWebView_virtualbase_setVisible(VirtualQWebView* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWebView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebView_virtualbase_minimumSizeHint(const VirtualQWebView* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWebView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebView_virtualbase_heightForWidth(const VirtualQWebView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWebView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWebView_virtualbase_hasHeightForWidth(const VirtualQWebView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWebView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QWebView_virtualbase_paintEngine(const VirtualQWebView* self);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWebView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_enterEvent(VirtualQWebView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWebView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_leaveEvent(VirtualQWebView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWebView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_moveEvent(VirtualQWebView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QWebView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_closeEvent(VirtualQWebView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWebView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_tabletEvent(VirtualQWebView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWebView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_actionEvent(VirtualQWebView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QWebView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_showEvent(VirtualQWebView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWebView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_hideEvent(VirtualQWebView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWebView::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QWebView_virtualbase_nativeEvent(VirtualQWebView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWebView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebView_virtualbase_metric(const VirtualQWebView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWebView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QWebView_virtualbase_initPainter(const VirtualQWebView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWebView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWebView_virtualbase_redirected(const VirtualQWebView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWebView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QWebView_virtualbase_sharedPainter(const VirtualQWebView* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebView_virtualbase_eventFilter(VirtualQWebView* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_timerEvent(VirtualQWebView* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_childEvent(VirtualQWebView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWebView_virtualbase_customEvent(VirtualQWebView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWebView_virtualbase_connectNotify(VirtualQWebView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWebView_virtualbase_disconnectNotify(VirtualQWebView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWebView_protectedbase_updateMicroFocus(VirtualQWebView* self);
	friend void QWebView_protectedbase_create(VirtualQWebView* self);
	friend void QWebView_protectedbase_destroy(VirtualQWebView* self);
	friend bool QWebView_protectedbase_focusNextChild(VirtualQWebView* self);
	friend bool QWebView_protectedbase_focusPreviousChild(VirtualQWebView* self);
	friend QObject* QWebView_protectedbase_sender(const VirtualQWebView* self);
	friend int QWebView_protectedbase_senderSignalIndex(const VirtualQWebView* self);
	friend int QWebView_protectedbase_receivers(const VirtualQWebView* self, const char* signal);
	friend bool QWebView_protectedbase_isSignalConnected(const VirtualQWebView* self, QMetaMethod* signal);
};

VirtualQWebView* QWebView_new(const QWebView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQWebView(vtbl, vdata, parent);
}

VirtualQWebView* QWebView_new2(const QWebView_VTable* vtbl, void* vdata) {
	return new VirtualQWebView(vtbl, vdata);
}

void QWebView_virtbase(QWebView* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWebView_metaObject(const QWebView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebView_metacast(QWebView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebView_metacall(QWebView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebView_tr(const char* s) {
	QString _ret = QWebView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebView_trUtf8(const char* s) {
	QString _ret = QWebView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebPage* QWebView_page(const QWebView* self) {
	return self->page();
}

void QWebView_setPage(QWebView* self, QWebPage* page) {
	self->setPage(page);
}

void QWebView_load(QWebView* self, QUrl* url) {
	self->load(*url);
}

void QWebView_loadWithRequest(QWebView* self, QNetworkRequest* request) {
	self->load(*request);
}

void QWebView_setHtml(QWebView* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QWebView_setContent(QWebView* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

QWebHistory* QWebView_history(const QWebView* self) {
	return self->history();
}

QWebSettings* QWebView_settings(const QWebView* self) {
	return self->settings();
}

struct miqt_string QWebView_title(const QWebView* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebView_setUrl(QWebView* self, QUrl* url) {
	self->setUrl(*url);
}

QUrl* QWebView_url(const QWebView* self) {
	return new QUrl(self->url());
}

QIcon* QWebView_icon(const QWebView* self) {
	return new QIcon(self->icon());
}

bool QWebView_hasSelection(const QWebView* self) {
	return self->hasSelection();
}

struct miqt_string QWebView_selectedText(const QWebView* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebView_selectedHtml(const QWebView* self) {
	QString _ret = self->selectedHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QWebView_pageAction(const QWebView* self, int action) {
	return self->pageAction(static_cast<QWebPage::WebAction>(action));
}

void QWebView_triggerPageAction(QWebView* self, int action) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action));
}

bool QWebView_isModified(const QWebView* self) {
	return self->isModified();
}

QVariant* QWebView_inputMethodQuery(const QWebView* self, int property) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

QSize* QWebView_sizeHint(const QWebView* self) {
	return new QSize(self->sizeHint());
}

double QWebView_zoomFactor(const QWebView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QWebView_setZoomFactor(QWebView* self, double factor) {
	self->setZoomFactor(static_cast<qreal>(factor));
}

void QWebView_setTextSizeMultiplier(QWebView* self, double factor) {
	self->setTextSizeMultiplier(static_cast<qreal>(factor));
}

double QWebView_textSizeMultiplier(const QWebView* self) {
	qreal _ret = self->textSizeMultiplier();
	return static_cast<double>(_ret);
}

int QWebView_renderHints(const QWebView* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

void QWebView_setRenderHints(QWebView* self, int hints) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(hints));
}

void QWebView_setRenderHint(QWebView* self, int hint) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint));
}

bool QWebView_findText(QWebView* self, struct miqt_string subString) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString);
}

bool QWebView_event(QWebView* self, QEvent* param1) {
	return self->event(param1);
}

void QWebView_stop(QWebView* self) {
	self->stop();
}

void QWebView_back(QWebView* self) {
	self->back();
}

void QWebView_forward(QWebView* self) {
	self->forward();
}

void QWebView_reload(QWebView* self) {
	self->reload();
}

void QWebView_print(const QWebView* self, QPrinter* param1) {
	self->print(param1);
}

void QWebView_loadStarted(QWebView* self) {
	self->loadStarted();
}

void QWebView_connect_loadStarted(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)()>(&QWebView::loadStarted), self, local_caller{slot, callback, release});
}

void QWebView_loadProgress(QWebView* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QWebView_connect_loadProgress(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int progress) {
			int sigval1 = progress;
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(int)>(&QWebView::loadProgress), self, local_caller{slot, callback, release});
}

void QWebView_loadFinished(QWebView* self, bool param1) {
	self->loadFinished(param1);
}

void QWebView_connect_loadFinished(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(bool)>(&QWebView::loadFinished), self, local_caller{slot, callback, release});
}

void QWebView_titleChanged(QWebView* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->titleChanged(title_QString);
}

void QWebView_connect_titleChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval1 = title_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(const QString&)>(&QWebView::titleChanged), self, local_caller{slot, callback, release});
}

void QWebView_statusBarMessage(QWebView* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->statusBarMessage(text_QString);
}

void QWebView_connect_statusBarMessage(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(const QString&)>(&QWebView::statusBarMessage), self, local_caller{slot, callback, release});
}

void QWebView_linkClicked(QWebView* self, QUrl* param1) {
	self->linkClicked(*param1);
}

void QWebView_connect_linkClicked(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(const QUrl&)>(&QWebView::linkClicked), self, local_caller{slot, callback, release});
}

void QWebView_selectionChanged(QWebView* self) {
	self->selectionChanged();
}

void QWebView_connect_selectionChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)()>(&QWebView::selectionChanged), self, local_caller{slot, callback, release});
}

void QWebView_iconChanged(QWebView* self) {
	self->iconChanged();
}

void QWebView_connect_iconChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)()>(&QWebView::iconChanged), self, local_caller{slot, callback, release});
}

void QWebView_urlChanged(QWebView* self, QUrl* param1) {
	self->urlChanged(*param1);
}

void QWebView_connect_urlChanged(VirtualQWebView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebView::connect(self, static_cast<void (QWebView::*)(const QUrl&)>(&QWebView::urlChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWebView_tr2(const char* s, const char* c) {
	QString _ret = QWebView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebView_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebView_trUtf82(const char* s, const char* c) {
	QString _ret = QWebView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebView_load2(QWebView* self, QNetworkRequest* request, int operation) {
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation));
}

void QWebView_load3(QWebView* self, QNetworkRequest* request, int operation, struct miqt_string body) {
	QByteArray body_QByteArray(body.data, body.len);
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation), body_QByteArray);
}

void QWebView_setHtml2(QWebView* self, struct miqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QWebView_setContent2(QWebView* self, struct miqt_string data, struct miqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QWebView_setContent3(QWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QWebView_triggerPageAction2(QWebView* self, int action, bool checked) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action), checked);
}

void QWebView_setRenderHint2(QWebView* self, int hint, bool enabled) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint), enabled);
}

bool QWebView_findText2(QWebView* self, struct miqt_string subString, int options) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString, static_cast<QWebPage::FindFlags>(options));
}

QMetaObject* QWebView_virtualbase_metaObject(const VirtualQWebView* self) {

	return (QMetaObject*) self->QWebView::metaObject();
}

void* QWebView_virtualbase_metacast(VirtualQWebView* self, const char* param1) {

	return self->QWebView::qt_metacast(param1);
}

int QWebView_virtualbase_metacall(VirtualQWebView* self, int param1, int param2, void** param3) {

	return self->QWebView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QWebView_virtualbase_inputMethodQuery(const VirtualQWebView* self, int property) {

	return new QVariant(self->QWebView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

QSize* QWebView_virtualbase_sizeHint(const VirtualQWebView* self) {

	return new QSize(self->QWebView::sizeHint());
}

bool QWebView_virtualbase_event(VirtualQWebView* self, QEvent* param1) {

	return self->QWebView::event(param1);
}

void QWebView_virtualbase_resizeEvent(VirtualQWebView* self, QResizeEvent* param1) {

	self->QWebView::resizeEvent(param1);
}

void QWebView_virtualbase_paintEvent(VirtualQWebView* self, QPaintEvent* param1) {

	self->QWebView::paintEvent(param1);
}

QWebView* QWebView_virtualbase_createWindow(VirtualQWebView* self, int type) {

	return self->QWebView::createWindow(static_cast<QWebPage::WebWindowType>(type));
}

void QWebView_virtualbase_changeEvent(VirtualQWebView* self, QEvent* param1) {

	self->QWebView::changeEvent(param1);
}

void QWebView_virtualbase_mouseMoveEvent(VirtualQWebView* self, QMouseEvent* param1) {

	self->QWebView::mouseMoveEvent(param1);
}

void QWebView_virtualbase_mousePressEvent(VirtualQWebView* self, QMouseEvent* param1) {

	self->QWebView::mousePressEvent(param1);
}

void QWebView_virtualbase_mouseDoubleClickEvent(VirtualQWebView* self, QMouseEvent* param1) {

	self->QWebView::mouseDoubleClickEvent(param1);
}

void QWebView_virtualbase_mouseReleaseEvent(VirtualQWebView* self, QMouseEvent* param1) {

	self->QWebView::mouseReleaseEvent(param1);
}

void QWebView_virtualbase_contextMenuEvent(VirtualQWebView* self, QContextMenuEvent* param1) {

	self->QWebView::contextMenuEvent(param1);
}

void QWebView_virtualbase_wheelEvent(VirtualQWebView* self, QWheelEvent* param1) {

	self->QWebView::wheelEvent(param1);
}

void QWebView_virtualbase_keyPressEvent(VirtualQWebView* self, QKeyEvent* param1) {

	self->QWebView::keyPressEvent(param1);
}

void QWebView_virtualbase_keyReleaseEvent(VirtualQWebView* self, QKeyEvent* param1) {

	self->QWebView::keyReleaseEvent(param1);
}

void QWebView_virtualbase_dragEnterEvent(VirtualQWebView* self, QDragEnterEvent* param1) {

	self->QWebView::dragEnterEvent(param1);
}

void QWebView_virtualbase_dragLeaveEvent(VirtualQWebView* self, QDragLeaveEvent* param1) {

	self->QWebView::dragLeaveEvent(param1);
}

void QWebView_virtualbase_dragMoveEvent(VirtualQWebView* self, QDragMoveEvent* param1) {

	self->QWebView::dragMoveEvent(param1);
}

void QWebView_virtualbase_dropEvent(VirtualQWebView* self, QDropEvent* param1) {

	self->QWebView::dropEvent(param1);
}

void QWebView_virtualbase_focusInEvent(VirtualQWebView* self, QFocusEvent* param1) {

	self->QWebView::focusInEvent(param1);
}

void QWebView_virtualbase_focusOutEvent(VirtualQWebView* self, QFocusEvent* param1) {

	self->QWebView::focusOutEvent(param1);
}

void QWebView_virtualbase_inputMethodEvent(VirtualQWebView* self, QInputMethodEvent* param1) {

	self->QWebView::inputMethodEvent(param1);
}

bool QWebView_virtualbase_focusNextPrevChild(VirtualQWebView* self, bool next) {

	return self->QWebView::focusNextPrevChild(next);
}

int QWebView_virtualbase_devType(const VirtualQWebView* self) {

	return self->QWebView::devType();
}

void QWebView_virtualbase_setVisible(VirtualQWebView* self, bool visible) {

	self->QWebView::setVisible(visible);
}

QSize* QWebView_virtualbase_minimumSizeHint(const VirtualQWebView* self) {

	return new QSize(self->QWebView::minimumSizeHint());
}

int QWebView_virtualbase_heightForWidth(const VirtualQWebView* self, int param1) {

	return self->QWebView::heightForWidth(static_cast<int>(param1));
}

bool QWebView_virtualbase_hasHeightForWidth(const VirtualQWebView* self) {

	return self->QWebView::hasHeightForWidth();
}

QPaintEngine* QWebView_virtualbase_paintEngine(const VirtualQWebView* self) {

	return self->QWebView::paintEngine();
}

void QWebView_virtualbase_enterEvent(VirtualQWebView* self, QEvent* event) {

	self->QWebView::enterEvent(event);
}

void QWebView_virtualbase_leaveEvent(VirtualQWebView* self, QEvent* event) {

	self->QWebView::leaveEvent(event);
}

void QWebView_virtualbase_moveEvent(VirtualQWebView* self, QMoveEvent* event) {

	self->QWebView::moveEvent(event);
}

void QWebView_virtualbase_closeEvent(VirtualQWebView* self, QCloseEvent* event) {

	self->QWebView::closeEvent(event);
}

void QWebView_virtualbase_tabletEvent(VirtualQWebView* self, QTabletEvent* event) {

	self->QWebView::tabletEvent(event);
}

void QWebView_virtualbase_actionEvent(VirtualQWebView* self, QActionEvent* event) {

	self->QWebView::actionEvent(event);
}

void QWebView_virtualbase_showEvent(VirtualQWebView* self, QShowEvent* event) {

	self->QWebView::showEvent(event);
}

void QWebView_virtualbase_hideEvent(VirtualQWebView* self, QHideEvent* event) {

	self->QWebView::hideEvent(event);
}

bool QWebView_virtualbase_nativeEvent(VirtualQWebView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QWebView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QWebView_virtualbase_metric(const VirtualQWebView* self, int param1) {

	return self->QWebView::metric(static_cast<VirtualQWebView::PaintDeviceMetric>(param1));
}

void QWebView_virtualbase_initPainter(const VirtualQWebView* self, QPainter* painter) {

	self->QWebView::initPainter(painter);
}

QPaintDevice* QWebView_virtualbase_redirected(const VirtualQWebView* self, QPoint* offset) {

	return self->QWebView::redirected(offset);
}

QPainter* QWebView_virtualbase_sharedPainter(const VirtualQWebView* self) {

	return self->QWebView::sharedPainter();
}

bool QWebView_virtualbase_eventFilter(VirtualQWebView* self, QObject* watched, QEvent* event) {

	return self->QWebView::eventFilter(watched, event);
}

void QWebView_virtualbase_timerEvent(VirtualQWebView* self, QTimerEvent* event) {

	self->QWebView::timerEvent(event);
}

void QWebView_virtualbase_childEvent(VirtualQWebView* self, QChildEvent* event) {

	self->QWebView::childEvent(event);
}

void QWebView_virtualbase_customEvent(VirtualQWebView* self, QEvent* event) {

	self->QWebView::customEvent(event);
}

void QWebView_virtualbase_connectNotify(VirtualQWebView* self, QMetaMethod* signal) {

	self->QWebView::connectNotify(*signal);
}

void QWebView_virtualbase_disconnectNotify(VirtualQWebView* self, QMetaMethod* signal) {

	self->QWebView::disconnectNotify(*signal);
}

const QMetaObject* QWebView_staticMetaObject() { return &QWebView::staticMetaObject; }

const QWebView_VTable* QWebView_vtbl(const VirtualQWebView* self) { return self->vtbl; }
void* QWebView_vdata(const VirtualQWebView* self) { return self->vdata; }
void QWebView_setVdata(VirtualQWebView* self, void* vdata) { self->vdata = vdata; }

void QWebView_protectedbase_updateMicroFocus(VirtualQWebView* self) {
	self->updateMicroFocus();
}

void QWebView_protectedbase_create(VirtualQWebView* self) {
	self->create();
}

void QWebView_protectedbase_destroy(VirtualQWebView* self) {
	self->destroy();
}

bool QWebView_protectedbase_focusNextChild(VirtualQWebView* self) {
	return self->focusNextChild();
}

bool QWebView_protectedbase_focusPreviousChild(VirtualQWebView* self) {
	return self->focusPreviousChild();
}

QObject* QWebView_protectedbase_sender(const VirtualQWebView* self) {
	return self->sender();
}

int QWebView_protectedbase_senderSignalIndex(const VirtualQWebView* self) {
	return self->senderSignalIndex();
}

int QWebView_protectedbase_receivers(const VirtualQWebView* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebView_protectedbase_isSignalConnected(const VirtualQWebView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebView_delete(QWebView* self) {
	delete self;
}

