#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintDeviceWindow>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRasterWindow>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QWheelEvent>
#include <QWindow>
#include <qrasterwindow.h>
#include "gen_qrasterwindow.h"
class VirtualQRasterWindow final : public QRasterWindow {
	const QRasterWindow_VTable* vtbl;
	void* vdata;
public:
	friend const QRasterWindow_VTable* QRasterWindow_vtbl(const VirtualQRasterWindow* self);
	friend void* QRasterWindow_vdata(const VirtualQRasterWindow* self);
	friend void QRasterWindow_setVdata(VirtualQRasterWindow* self, void* vdata);

	VirtualQRasterWindow(const QRasterWindow_VTable* vtbl, void* vdata): QRasterWindow(), vtbl(vtbl), vdata(vdata) {}
	VirtualQRasterWindow(const QRasterWindow_VTable* vtbl, void* vdata, QWindow* parent): QRasterWindow(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRasterWindow() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRasterWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QRasterWindow_virtualbase_metaObject(const VirtualQRasterWindow* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRasterWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QRasterWindow_virtualbase_metacast(VirtualQRasterWindow* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRasterWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_metacall(VirtualQRasterWindow* self, int param1, int param2, void** param3);

	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QRasterWindow::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_metric(const VirtualQRasterWindow* self, int metric);

	virtual QPaintDevice* redirected(QPoint* param1) const override {
		if (vtbl->redirected == 0) {
			return QRasterWindow::redirected(param1);
		}

		QPoint* sigval1 = param1;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRasterWindow_virtualbase_redirected(const VirtualQRasterWindow* self, QPoint* param1);

	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QRasterWindow::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_exposeEvent(VirtualQRasterWindow* self, QExposeEvent* param1);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QRasterWindow::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_paintEvent(VirtualQRasterWindow* self, QPaintEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRasterWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_event(VirtualQRasterWindow* self, QEvent* event);

	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QRasterWindow::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_surfaceType(const VirtualQRasterWindow* self);

	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QRasterWindow::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSurfaceFormat* QRasterWindow_virtualbase_format(const VirtualQRasterWindow* self);

	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QRasterWindow::size();
		}


		QSize* callback_return_value = vtbl->size(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRasterWindow_virtualbase_size(const VirtualQRasterWindow* self);

	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QRasterWindow::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const VirtualQRasterWindow* self);

	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QRasterWindow::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(this);

		return callback_return_value;
	}

	friend QObject* QRasterWindow_virtualbase_focusObject(const VirtualQRasterWindow* self);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QRasterWindow::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_resizeEvent(VirtualQRasterWindow* self, QResizeEvent* param1);

	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QRasterWindow::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_moveEvent(VirtualQRasterWindow* self, QMoveEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QRasterWindow::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_focusInEvent(VirtualQRasterWindow* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QRasterWindow::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_focusOutEvent(VirtualQRasterWindow* self, QFocusEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QRasterWindow::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_showEvent(VirtualQRasterWindow* self, QShowEvent* param1);

	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QRasterWindow::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_hideEvent(VirtualQRasterWindow* self, QHideEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QRasterWindow::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_closeEvent(VirtualQRasterWindow* self, QCloseEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QRasterWindow::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_keyPressEvent(VirtualQRasterWindow* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRasterWindow::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_keyReleaseEvent(VirtualQRasterWindow* self, QKeyEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QRasterWindow::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mousePressEvent(VirtualQRasterWindow* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRasterWindow::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseReleaseEvent(VirtualQRasterWindow* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRasterWindow::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseDoubleClickEvent(VirtualQRasterWindow* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRasterWindow::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseMoveEvent(VirtualQRasterWindow* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QRasterWindow::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_wheelEvent(VirtualQRasterWindow* self, QWheelEvent* param1);

	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QRasterWindow::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_touchEvent(VirtualQRasterWindow* self, QTouchEvent* param1);

	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QRasterWindow::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_tabletEvent(VirtualQRasterWindow* self, QTabletEvent* param1);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRasterWindow::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_nativeEvent(VirtualQRasterWindow* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRasterWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_eventFilter(VirtualQRasterWindow* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRasterWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_timerEvent(VirtualQRasterWindow* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRasterWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_childEvent(VirtualQRasterWindow* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRasterWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_customEvent(VirtualQRasterWindow* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRasterWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_connectNotify(VirtualQRasterWindow* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRasterWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_disconnectNotify(VirtualQRasterWindow* self, QMetaMethod* signal);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRasterWindow::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_devType(const VirtualQRasterWindow* self);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRasterWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QRasterWindow_virtualbase_initPainter(const VirtualQRasterWindow* self, QPainter* painter);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRasterWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QRasterWindow_virtualbase_sharedPainter(const VirtualQRasterWindow* self);

	// Wrappers to allow calling protected methods:
	friend void* QRasterWindow_protectedbase_resolveInterface(const VirtualQRasterWindow* self, const char* name, int revision);
	friend QObject* QRasterWindow_protectedbase_sender(const VirtualQRasterWindow* self);
	friend int QRasterWindow_protectedbase_senderSignalIndex(const VirtualQRasterWindow* self);
	friend int QRasterWindow_protectedbase_receivers(const VirtualQRasterWindow* self, const char* signal);
	friend bool QRasterWindow_protectedbase_isSignalConnected(const VirtualQRasterWindow* self, QMetaMethod* signal);
};

VirtualQRasterWindow* QRasterWindow_new(const QRasterWindow_VTable* vtbl, void* vdata) {
	return new VirtualQRasterWindow(vtbl, vdata);
}

VirtualQRasterWindow* QRasterWindow_new2(const QRasterWindow_VTable* vtbl, void* vdata, QWindow* parent) {
	return new VirtualQRasterWindow(vtbl, vdata, parent);
}

void QRasterWindow_virtbase(QRasterWindow* src, QPaintDeviceWindow** outptr_QPaintDeviceWindow) {
	*outptr_QPaintDeviceWindow = static_cast<QPaintDeviceWindow*>(src);
}

QMetaObject* QRasterWindow_metaObject(const QRasterWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRasterWindow_metacast(QRasterWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRasterWindow_metacall(QRasterWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRasterWindow_tr(const char* s) {
	QString _ret = QRasterWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRasterWindow_tr2(const char* s, const char* c) {
	QString _ret = QRasterWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRasterWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QRasterWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRasterWindow_virtualbase_metaObject(const VirtualQRasterWindow* self) {

	return (QMetaObject*) self->QRasterWindow::metaObject();
}

void* QRasterWindow_virtualbase_metacast(VirtualQRasterWindow* self, const char* param1) {

	return self->QRasterWindow::qt_metacast(param1);
}

int QRasterWindow_virtualbase_metacall(VirtualQRasterWindow* self, int param1, int param2, void** param3) {

	return self->QRasterWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QRasterWindow_virtualbase_metric(const VirtualQRasterWindow* self, int metric) {

	return self->QRasterWindow::metric(static_cast<VirtualQRasterWindow::PaintDeviceMetric>(metric));
}

QPaintDevice* QRasterWindow_virtualbase_redirected(const VirtualQRasterWindow* self, QPoint* param1) {

	return self->QRasterWindow::redirected(param1);
}

void QRasterWindow_virtualbase_exposeEvent(VirtualQRasterWindow* self, QExposeEvent* param1) {

	self->QRasterWindow::exposeEvent(param1);
}

void QRasterWindow_virtualbase_paintEvent(VirtualQRasterWindow* self, QPaintEvent* event) {

	self->QRasterWindow::paintEvent(event);
}

bool QRasterWindow_virtualbase_event(VirtualQRasterWindow* self, QEvent* event) {

	return self->QRasterWindow::event(event);
}

int QRasterWindow_virtualbase_surfaceType(const VirtualQRasterWindow* self) {

	VirtualQRasterWindow::SurfaceType _ret = self->QRasterWindow::surfaceType();
	return static_cast<int>(_ret);
}

QSurfaceFormat* QRasterWindow_virtualbase_format(const VirtualQRasterWindow* self) {

	return new QSurfaceFormat(self->QRasterWindow::format());
}

QSize* QRasterWindow_virtualbase_size(const VirtualQRasterWindow* self) {

	return new QSize(self->QRasterWindow::size());
}

QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const VirtualQRasterWindow* self) {

	return self->QRasterWindow::accessibleRoot();
}

QObject* QRasterWindow_virtualbase_focusObject(const VirtualQRasterWindow* self) {

	return self->QRasterWindow::focusObject();
}

void QRasterWindow_virtualbase_resizeEvent(VirtualQRasterWindow* self, QResizeEvent* param1) {

	self->QRasterWindow::resizeEvent(param1);
}

void QRasterWindow_virtualbase_moveEvent(VirtualQRasterWindow* self, QMoveEvent* param1) {

	self->QRasterWindow::moveEvent(param1);
}

void QRasterWindow_virtualbase_focusInEvent(VirtualQRasterWindow* self, QFocusEvent* param1) {

	self->QRasterWindow::focusInEvent(param1);
}

void QRasterWindow_virtualbase_focusOutEvent(VirtualQRasterWindow* self, QFocusEvent* param1) {

	self->QRasterWindow::focusOutEvent(param1);
}

void QRasterWindow_virtualbase_showEvent(VirtualQRasterWindow* self, QShowEvent* param1) {

	self->QRasterWindow::showEvent(param1);
}

void QRasterWindow_virtualbase_hideEvent(VirtualQRasterWindow* self, QHideEvent* param1) {

	self->QRasterWindow::hideEvent(param1);
}

void QRasterWindow_virtualbase_closeEvent(VirtualQRasterWindow* self, QCloseEvent* param1) {

	self->QRasterWindow::closeEvent(param1);
}

void QRasterWindow_virtualbase_keyPressEvent(VirtualQRasterWindow* self, QKeyEvent* param1) {

	self->QRasterWindow::keyPressEvent(param1);
}

void QRasterWindow_virtualbase_keyReleaseEvent(VirtualQRasterWindow* self, QKeyEvent* param1) {

	self->QRasterWindow::keyReleaseEvent(param1);
}

void QRasterWindow_virtualbase_mousePressEvent(VirtualQRasterWindow* self, QMouseEvent* param1) {

	self->QRasterWindow::mousePressEvent(param1);
}

void QRasterWindow_virtualbase_mouseReleaseEvent(VirtualQRasterWindow* self, QMouseEvent* param1) {

	self->QRasterWindow::mouseReleaseEvent(param1);
}

void QRasterWindow_virtualbase_mouseDoubleClickEvent(VirtualQRasterWindow* self, QMouseEvent* param1) {

	self->QRasterWindow::mouseDoubleClickEvent(param1);
}

void QRasterWindow_virtualbase_mouseMoveEvent(VirtualQRasterWindow* self, QMouseEvent* param1) {

	self->QRasterWindow::mouseMoveEvent(param1);
}

void QRasterWindow_virtualbase_wheelEvent(VirtualQRasterWindow* self, QWheelEvent* param1) {

	self->QRasterWindow::wheelEvent(param1);
}

void QRasterWindow_virtualbase_touchEvent(VirtualQRasterWindow* self, QTouchEvent* param1) {

	self->QRasterWindow::touchEvent(param1);
}

void QRasterWindow_virtualbase_tabletEvent(VirtualQRasterWindow* self, QTabletEvent* param1) {

	self->QRasterWindow::tabletEvent(param1);
}

bool QRasterWindow_virtualbase_nativeEvent(VirtualQRasterWindow* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QRasterWindow::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

bool QRasterWindow_virtualbase_eventFilter(VirtualQRasterWindow* self, QObject* watched, QEvent* event) {

	return self->QRasterWindow::eventFilter(watched, event);
}

void QRasterWindow_virtualbase_timerEvent(VirtualQRasterWindow* self, QTimerEvent* event) {

	self->QRasterWindow::timerEvent(event);
}

void QRasterWindow_virtualbase_childEvent(VirtualQRasterWindow* self, QChildEvent* event) {

	self->QRasterWindow::childEvent(event);
}

void QRasterWindow_virtualbase_customEvent(VirtualQRasterWindow* self, QEvent* event) {

	self->QRasterWindow::customEvent(event);
}

void QRasterWindow_virtualbase_connectNotify(VirtualQRasterWindow* self, QMetaMethod* signal) {

	self->QRasterWindow::connectNotify(*signal);
}

void QRasterWindow_virtualbase_disconnectNotify(VirtualQRasterWindow* self, QMetaMethod* signal) {

	self->QRasterWindow::disconnectNotify(*signal);
}

int QRasterWindow_virtualbase_devType(const VirtualQRasterWindow* self) {

	return self->QRasterWindow::devType();
}

void QRasterWindow_virtualbase_initPainter(const VirtualQRasterWindow* self, QPainter* painter) {

	self->QRasterWindow::initPainter(painter);
}

QPainter* QRasterWindow_virtualbase_sharedPainter(const VirtualQRasterWindow* self) {

	return self->QRasterWindow::sharedPainter();
}

const QMetaObject* QRasterWindow_staticMetaObject() { return &QRasterWindow::staticMetaObject; }

const QRasterWindow_VTable* QRasterWindow_vtbl(const VirtualQRasterWindow* self) { return self->vtbl; }
void* QRasterWindow_vdata(const VirtualQRasterWindow* self) { return self->vdata; }
void QRasterWindow_setVdata(VirtualQRasterWindow* self, void* vdata) { self->vdata = vdata; }

void* QRasterWindow_protectedbase_resolveInterface(const VirtualQRasterWindow* self, const char* name, int revision) {
	return self->resolveInterface(name, static_cast<int>(revision));
}

QObject* QRasterWindow_protectedbase_sender(const VirtualQRasterWindow* self) {
	return self->sender();
}

int QRasterWindow_protectedbase_senderSignalIndex(const VirtualQRasterWindow* self) {
	return self->senderSignalIndex();
}

int QRasterWindow_protectedbase_receivers(const VirtualQRasterWindow* self, const char* signal) {
	return self->receivers(signal);
}

bool QRasterWindow_protectedbase_isSignalConnected(const VirtualQRasterWindow* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QRasterWindow_delete(QRasterWindow* self) {
	delete self;
}

