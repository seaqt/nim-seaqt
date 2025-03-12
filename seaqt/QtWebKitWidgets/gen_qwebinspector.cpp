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
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWebInspector>
#include <QWebPage>
#include <QWheelEvent>
#include <QWidget>
#include <qwebinspector.h>
#include "gen_qwebinspector.h"
class VirtualQWebInspector final : public QWebInspector {
	const QWebInspector_VTable* vtbl;
	void* vdata;
public:
	friend const QWebInspector_VTable* QWebInspector_vtbl(const VirtualQWebInspector* self);
	friend void* QWebInspector_vdata(const VirtualQWebInspector* self);
	friend void QWebInspector_setVdata(VirtualQWebInspector* self, void* vdata);

	VirtualQWebInspector(const QWebInspector_VTable* vtbl, void* vdata, QWidget* parent): QWebInspector(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebInspector(const QWebInspector_VTable* vtbl, void* vdata): QWebInspector(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWebInspector() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebInspector::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWebInspector_virtualbase_metaObject(const VirtualQWebInspector* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebInspector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWebInspector_virtualbase_metacast(VirtualQWebInspector* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebInspector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebInspector_virtualbase_metacall(VirtualQWebInspector* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWebInspector::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebInspector_virtualbase_sizeHint(const VirtualQWebInspector* self);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebInspector::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebInspector_virtualbase_event(VirtualQWebInspector* self, QEvent* param1);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWebInspector::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_resizeEvent(VirtualQWebInspector* self, QResizeEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QWebInspector::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_showEvent(VirtualQWebInspector* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWebInspector::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_hideEvent(VirtualQWebInspector* self, QHideEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QWebInspector::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_closeEvent(VirtualQWebInspector* self, QCloseEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWebInspector::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebInspector_virtualbase_devType(const VirtualQWebInspector* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWebInspector::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QWebInspector_virtualbase_setVisible(VirtualQWebInspector* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWebInspector::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebInspector_virtualbase_minimumSizeHint(const VirtualQWebInspector* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWebInspector::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebInspector_virtualbase_heightForWidth(const VirtualQWebInspector* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWebInspector::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWebInspector_virtualbase_hasHeightForWidth(const VirtualQWebInspector* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWebInspector::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QWebInspector_virtualbase_paintEngine(const VirtualQWebInspector* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWebInspector::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_mousePressEvent(VirtualQWebInspector* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWebInspector::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_mouseReleaseEvent(VirtualQWebInspector* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWebInspector::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_mouseDoubleClickEvent(VirtualQWebInspector* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWebInspector::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_mouseMoveEvent(VirtualQWebInspector* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWebInspector::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_wheelEvent(VirtualQWebInspector* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWebInspector::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_keyPressEvent(VirtualQWebInspector* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWebInspector::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_keyReleaseEvent(VirtualQWebInspector* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWebInspector::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_focusInEvent(VirtualQWebInspector* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWebInspector::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_focusOutEvent(VirtualQWebInspector* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWebInspector::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_enterEvent(VirtualQWebInspector* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWebInspector::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_leaveEvent(VirtualQWebInspector* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWebInspector::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_paintEvent(VirtualQWebInspector* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWebInspector::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_moveEvent(VirtualQWebInspector* self, QMoveEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QWebInspector::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_contextMenuEvent(VirtualQWebInspector* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWebInspector::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_tabletEvent(VirtualQWebInspector* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWebInspector::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_actionEvent(VirtualQWebInspector* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QWebInspector::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_dragEnterEvent(VirtualQWebInspector* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QWebInspector::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_dragMoveEvent(VirtualQWebInspector* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWebInspector::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_dragLeaveEvent(VirtualQWebInspector* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QWebInspector::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_dropEvent(VirtualQWebInspector* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWebInspector::nativeEvent(eventType, message, result);
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

	friend bool QWebInspector_virtualbase_nativeEvent(VirtualQWebInspector* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWebInspector::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_changeEvent(VirtualQWebInspector* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWebInspector::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebInspector_virtualbase_metric(const VirtualQWebInspector* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWebInspector::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QWebInspector_virtualbase_initPainter(const VirtualQWebInspector* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWebInspector::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWebInspector_virtualbase_redirected(const VirtualQWebInspector* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWebInspector::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QWebInspector_virtualbase_sharedPainter(const VirtualQWebInspector* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWebInspector::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_inputMethodEvent(VirtualQWebInspector* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWebInspector::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWebInspector_virtualbase_inputMethodQuery(const VirtualQWebInspector* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWebInspector::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebInspector_virtualbase_focusNextPrevChild(VirtualQWebInspector* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebInspector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebInspector_virtualbase_eventFilter(VirtualQWebInspector* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebInspector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_timerEvent(VirtualQWebInspector* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebInspector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_childEvent(VirtualQWebInspector* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebInspector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWebInspector_virtualbase_customEvent(VirtualQWebInspector* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebInspector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWebInspector_virtualbase_connectNotify(VirtualQWebInspector* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebInspector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWebInspector_virtualbase_disconnectNotify(VirtualQWebInspector* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWebInspector_protectedbase_updateMicroFocus(VirtualQWebInspector* self);
	friend void QWebInspector_protectedbase_create(VirtualQWebInspector* self);
	friend void QWebInspector_protectedbase_destroy(VirtualQWebInspector* self);
	friend bool QWebInspector_protectedbase_focusNextChild(VirtualQWebInspector* self);
	friend bool QWebInspector_protectedbase_focusPreviousChild(VirtualQWebInspector* self);
	friend QObject* QWebInspector_protectedbase_sender(const VirtualQWebInspector* self);
	friend int QWebInspector_protectedbase_senderSignalIndex(const VirtualQWebInspector* self);
	friend int QWebInspector_protectedbase_receivers(const VirtualQWebInspector* self, const char* signal);
	friend bool QWebInspector_protectedbase_isSignalConnected(const VirtualQWebInspector* self, QMetaMethod* signal);
};

VirtualQWebInspector* QWebInspector_new(const QWebInspector_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQWebInspector(vtbl, vdata, parent);
}

VirtualQWebInspector* QWebInspector_new2(const QWebInspector_VTable* vtbl, void* vdata) {
	return new VirtualQWebInspector(vtbl, vdata);
}

void QWebInspector_virtbase(QWebInspector* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWebInspector_metaObject(const QWebInspector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebInspector_metacast(QWebInspector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebInspector_metacall(QWebInspector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebInspector_tr(const char* s) {
	QString _ret = QWebInspector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf8(const char* s) {
	QString _ret = QWebInspector::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebInspector_setPage(QWebInspector* self, QWebPage* page) {
	self->setPage(page);
}

QWebPage* QWebInspector_page(const QWebInspector* self) {
	return self->page();
}

QSize* QWebInspector_sizeHint(const QWebInspector* self) {
	return new QSize(self->sizeHint());
}

bool QWebInspector_event(QWebInspector* self, QEvent* param1) {
	return self->event(param1);
}

struct miqt_string QWebInspector_tr2(const char* s, const char* c) {
	QString _ret = QWebInspector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebInspector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf82(const char* s, const char* c) {
	QString _ret = QWebInspector::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebInspector::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebInspector_virtualbase_metaObject(const VirtualQWebInspector* self) {

	return (QMetaObject*) self->QWebInspector::metaObject();
}

void* QWebInspector_virtualbase_metacast(VirtualQWebInspector* self, const char* param1) {

	return self->QWebInspector::qt_metacast(param1);
}

int QWebInspector_virtualbase_metacall(VirtualQWebInspector* self, int param1, int param2, void** param3) {

	return self->QWebInspector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QWebInspector_virtualbase_sizeHint(const VirtualQWebInspector* self) {

	return new QSize(self->QWebInspector::sizeHint());
}

bool QWebInspector_virtualbase_event(VirtualQWebInspector* self, QEvent* param1) {

	return self->QWebInspector::event(param1);
}

void QWebInspector_virtualbase_resizeEvent(VirtualQWebInspector* self, QResizeEvent* event) {

	self->QWebInspector::resizeEvent(event);
}

void QWebInspector_virtualbase_showEvent(VirtualQWebInspector* self, QShowEvent* event) {

	self->QWebInspector::showEvent(event);
}

void QWebInspector_virtualbase_hideEvent(VirtualQWebInspector* self, QHideEvent* event) {

	self->QWebInspector::hideEvent(event);
}

void QWebInspector_virtualbase_closeEvent(VirtualQWebInspector* self, QCloseEvent* event) {

	self->QWebInspector::closeEvent(event);
}

int QWebInspector_virtualbase_devType(const VirtualQWebInspector* self) {

	return self->QWebInspector::devType();
}

void QWebInspector_virtualbase_setVisible(VirtualQWebInspector* self, bool visible) {

	self->QWebInspector::setVisible(visible);
}

QSize* QWebInspector_virtualbase_minimumSizeHint(const VirtualQWebInspector* self) {

	return new QSize(self->QWebInspector::minimumSizeHint());
}

int QWebInspector_virtualbase_heightForWidth(const VirtualQWebInspector* self, int param1) {

	return self->QWebInspector::heightForWidth(static_cast<int>(param1));
}

bool QWebInspector_virtualbase_hasHeightForWidth(const VirtualQWebInspector* self) {

	return self->QWebInspector::hasHeightForWidth();
}

QPaintEngine* QWebInspector_virtualbase_paintEngine(const VirtualQWebInspector* self) {

	return self->QWebInspector::paintEngine();
}

void QWebInspector_virtualbase_mousePressEvent(VirtualQWebInspector* self, QMouseEvent* event) {

	self->QWebInspector::mousePressEvent(event);
}

void QWebInspector_virtualbase_mouseReleaseEvent(VirtualQWebInspector* self, QMouseEvent* event) {

	self->QWebInspector::mouseReleaseEvent(event);
}

void QWebInspector_virtualbase_mouseDoubleClickEvent(VirtualQWebInspector* self, QMouseEvent* event) {

	self->QWebInspector::mouseDoubleClickEvent(event);
}

void QWebInspector_virtualbase_mouseMoveEvent(VirtualQWebInspector* self, QMouseEvent* event) {

	self->QWebInspector::mouseMoveEvent(event);
}

void QWebInspector_virtualbase_wheelEvent(VirtualQWebInspector* self, QWheelEvent* event) {

	self->QWebInspector::wheelEvent(event);
}

void QWebInspector_virtualbase_keyPressEvent(VirtualQWebInspector* self, QKeyEvent* event) {

	self->QWebInspector::keyPressEvent(event);
}

void QWebInspector_virtualbase_keyReleaseEvent(VirtualQWebInspector* self, QKeyEvent* event) {

	self->QWebInspector::keyReleaseEvent(event);
}

void QWebInspector_virtualbase_focusInEvent(VirtualQWebInspector* self, QFocusEvent* event) {

	self->QWebInspector::focusInEvent(event);
}

void QWebInspector_virtualbase_focusOutEvent(VirtualQWebInspector* self, QFocusEvent* event) {

	self->QWebInspector::focusOutEvent(event);
}

void QWebInspector_virtualbase_enterEvent(VirtualQWebInspector* self, QEvent* event) {

	self->QWebInspector::enterEvent(event);
}

void QWebInspector_virtualbase_leaveEvent(VirtualQWebInspector* self, QEvent* event) {

	self->QWebInspector::leaveEvent(event);
}

void QWebInspector_virtualbase_paintEvent(VirtualQWebInspector* self, QPaintEvent* event) {

	self->QWebInspector::paintEvent(event);
}

void QWebInspector_virtualbase_moveEvent(VirtualQWebInspector* self, QMoveEvent* event) {

	self->QWebInspector::moveEvent(event);
}

void QWebInspector_virtualbase_contextMenuEvent(VirtualQWebInspector* self, QContextMenuEvent* event) {

	self->QWebInspector::contextMenuEvent(event);
}

void QWebInspector_virtualbase_tabletEvent(VirtualQWebInspector* self, QTabletEvent* event) {

	self->QWebInspector::tabletEvent(event);
}

void QWebInspector_virtualbase_actionEvent(VirtualQWebInspector* self, QActionEvent* event) {

	self->QWebInspector::actionEvent(event);
}

void QWebInspector_virtualbase_dragEnterEvent(VirtualQWebInspector* self, QDragEnterEvent* event) {

	self->QWebInspector::dragEnterEvent(event);
}

void QWebInspector_virtualbase_dragMoveEvent(VirtualQWebInspector* self, QDragMoveEvent* event) {

	self->QWebInspector::dragMoveEvent(event);
}

void QWebInspector_virtualbase_dragLeaveEvent(VirtualQWebInspector* self, QDragLeaveEvent* event) {

	self->QWebInspector::dragLeaveEvent(event);
}

void QWebInspector_virtualbase_dropEvent(VirtualQWebInspector* self, QDropEvent* event) {

	self->QWebInspector::dropEvent(event);
}

bool QWebInspector_virtualbase_nativeEvent(VirtualQWebInspector* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QWebInspector::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QWebInspector_virtualbase_changeEvent(VirtualQWebInspector* self, QEvent* param1) {

	self->QWebInspector::changeEvent(param1);
}

int QWebInspector_virtualbase_metric(const VirtualQWebInspector* self, int param1) {

	return self->QWebInspector::metric(static_cast<VirtualQWebInspector::PaintDeviceMetric>(param1));
}

void QWebInspector_virtualbase_initPainter(const VirtualQWebInspector* self, QPainter* painter) {

	self->QWebInspector::initPainter(painter);
}

QPaintDevice* QWebInspector_virtualbase_redirected(const VirtualQWebInspector* self, QPoint* offset) {

	return self->QWebInspector::redirected(offset);
}

QPainter* QWebInspector_virtualbase_sharedPainter(const VirtualQWebInspector* self) {

	return self->QWebInspector::sharedPainter();
}

void QWebInspector_virtualbase_inputMethodEvent(VirtualQWebInspector* self, QInputMethodEvent* param1) {

	self->QWebInspector::inputMethodEvent(param1);
}

QVariant* QWebInspector_virtualbase_inputMethodQuery(const VirtualQWebInspector* self, int param1) {

	return new QVariant(self->QWebInspector::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QWebInspector_virtualbase_focusNextPrevChild(VirtualQWebInspector* self, bool next) {

	return self->QWebInspector::focusNextPrevChild(next);
}

bool QWebInspector_virtualbase_eventFilter(VirtualQWebInspector* self, QObject* watched, QEvent* event) {

	return self->QWebInspector::eventFilter(watched, event);
}

void QWebInspector_virtualbase_timerEvent(VirtualQWebInspector* self, QTimerEvent* event) {

	self->QWebInspector::timerEvent(event);
}

void QWebInspector_virtualbase_childEvent(VirtualQWebInspector* self, QChildEvent* event) {

	self->QWebInspector::childEvent(event);
}

void QWebInspector_virtualbase_customEvent(VirtualQWebInspector* self, QEvent* event) {

	self->QWebInspector::customEvent(event);
}

void QWebInspector_virtualbase_connectNotify(VirtualQWebInspector* self, QMetaMethod* signal) {

	self->QWebInspector::connectNotify(*signal);
}

void QWebInspector_virtualbase_disconnectNotify(VirtualQWebInspector* self, QMetaMethod* signal) {

	self->QWebInspector::disconnectNotify(*signal);
}

const QMetaObject* QWebInspector_staticMetaObject() { return &QWebInspector::staticMetaObject; }

const QWebInspector_VTable* QWebInspector_vtbl(const VirtualQWebInspector* self) { return self->vtbl; }
void* QWebInspector_vdata(const VirtualQWebInspector* self) { return self->vdata; }
void QWebInspector_setVdata(VirtualQWebInspector* self, void* vdata) { self->vdata = vdata; }

void QWebInspector_protectedbase_updateMicroFocus(VirtualQWebInspector* self) {
	self->updateMicroFocus();
}

void QWebInspector_protectedbase_create(VirtualQWebInspector* self) {
	self->create();
}

void QWebInspector_protectedbase_destroy(VirtualQWebInspector* self) {
	self->destroy();
}

bool QWebInspector_protectedbase_focusNextChild(VirtualQWebInspector* self) {
	return self->focusNextChild();
}

bool QWebInspector_protectedbase_focusPreviousChild(VirtualQWebInspector* self) {
	return self->focusPreviousChild();
}

QObject* QWebInspector_protectedbase_sender(const VirtualQWebInspector* self) {
	return self->sender();
}

int QWebInspector_protectedbase_senderSignalIndex(const VirtualQWebInspector* self) {
	return self->senderSignalIndex();
}

int QWebInspector_protectedbase_receivers(const VirtualQWebInspector* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebInspector_protectedbase_isSignalConnected(const VirtualQWebInspector* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebInspector_delete(QWebInspector* self) {
	delete self;
}

