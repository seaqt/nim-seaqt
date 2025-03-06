#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRasterWindow final : public QRasterWindow {
	struct QRasterWindow_VTable* vtbl;
public:

	VirtualQRasterWindow(struct QRasterWindow_VTable* vtbl): QRasterWindow(), vtbl(vtbl) {};
	VirtualQRasterWindow(struct QRasterWindow_VTable* vtbl, QWindow* parent): QRasterWindow(parent), vtbl(vtbl) {};

	virtual ~VirtualQRasterWindow() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRasterWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QRasterWindow_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRasterWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QRasterWindow_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRasterWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QRasterWindow::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_metric(const void* self, int metric);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* param1) const override {
		if (vtbl->redirected == 0) {
			return QRasterWindow::redirected(param1);
		}

		QPoint* sigval1 = param1;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRasterWindow_virtualbase_redirected(const void* self, QPoint* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QRasterWindow::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QRasterWindow::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRasterWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QRasterWindow::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(vtbl, this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_surfaceType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QRasterWindow::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSurfaceFormat* QRasterWindow_virtualbase_format(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QRasterWindow::size();
		}


		QSize* callback_return_value = vtbl->size(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRasterWindow_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QRasterWindow::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(vtbl, this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QRasterWindow::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(vtbl, this);

		return callback_return_value;
	}

	friend QObject* QRasterWindow_virtualbase_focusObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QRasterWindow::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QRasterWindow::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QRasterWindow::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QRasterWindow::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QRasterWindow::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QRasterWindow::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QRasterWindow::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRasterWindow::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QRasterWindow::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRasterWindow::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRasterWindow::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRasterWindow::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QRasterWindow::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QRasterWindow::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QRasterWindow::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
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
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRasterWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRasterWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRasterWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRasterWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRasterWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRasterWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRasterWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRasterWindow::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRasterWindow_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRasterWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QRasterWindow_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRasterWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QRasterWindow_virtualbase_sharedPainter(const void* self);

	// Wrappers to allow calling protected methods:
	friend QObject* QRasterWindow_protectedbase_sender(const void* self);
	friend int QRasterWindow_protectedbase_senderSignalIndex(const void* self);
	friend int QRasterWindow_protectedbase_receivers(const void* self, const char* signal);
	friend bool QRasterWindow_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QRasterWindow* QRasterWindow_new(struct QRasterWindow_VTable* vtbl) {
	return new VirtualQRasterWindow(vtbl);
}

QRasterWindow* QRasterWindow_new2(struct QRasterWindow_VTable* vtbl, QWindow* parent) {
	return new VirtualQRasterWindow(vtbl, parent);
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

struct miqt_string QRasterWindow_trUtf8(const char* s) {
	QString _ret = QRasterWindow::trUtf8(s);
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

struct miqt_string QRasterWindow_trUtf82(const char* s, const char* c) {
	QString _ret = QRasterWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRasterWindow_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRasterWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRasterWindow_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::metaObject();

}

void* QRasterWindow_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRasterWindow*)(self) )->QRasterWindow::qt_metacast(param1);

}

int QRasterWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRasterWindow*)(self) )->QRasterWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QRasterWindow_virtualbase_metric(const void* self, int metric) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::metric(static_cast<VirtualQRasterWindow::PaintDeviceMetric>(metric));

}

QPaintDevice* QRasterWindow_virtualbase_redirected(const void* self, QPoint* param1) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::redirected(param1);

}

void QRasterWindow_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::paintEvent(event);

}

void QRasterWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::exposeEvent(param1);

}

bool QRasterWindow_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQRasterWindow*)(self) )->QRasterWindow::event(event);

}

int QRasterWindow_virtualbase_surfaceType(const void* self) {

	VirtualQRasterWindow::SurfaceType _ret = ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::surfaceType();
	return static_cast<int>(_ret);

}

QSurfaceFormat* QRasterWindow_virtualbase_format(const void* self) {

	return new QSurfaceFormat(( (const VirtualQRasterWindow*)(self) )->QRasterWindow::format());

}

QSize* QRasterWindow_virtualbase_size(const void* self) {

	return new QSize(( (const VirtualQRasterWindow*)(self) )->QRasterWindow::size());

}

QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const void* self) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::accessibleRoot();

}

QObject* QRasterWindow_virtualbase_focusObject(const void* self) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::focusObject();

}

void QRasterWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::resizeEvent(param1);

}

void QRasterWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::moveEvent(param1);

}

void QRasterWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::focusInEvent(param1);

}

void QRasterWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::focusOutEvent(param1);

}

void QRasterWindow_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::showEvent(param1);

}

void QRasterWindow_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::hideEvent(param1);

}

void QRasterWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::keyPressEvent(param1);

}

void QRasterWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::keyReleaseEvent(param1);

}

void QRasterWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::mousePressEvent(param1);

}

void QRasterWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::mouseReleaseEvent(param1);

}

void QRasterWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::mouseDoubleClickEvent(param1);

}

void QRasterWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::mouseMoveEvent(param1);

}

void QRasterWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::wheelEvent(param1);

}

void QRasterWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::touchEvent(param1);

}

void QRasterWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::tabletEvent(param1);

}

bool QRasterWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQRasterWindow*)(self) )->QRasterWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

bool QRasterWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRasterWindow*)(self) )->QRasterWindow::eventFilter(watched, event);

}

void QRasterWindow_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::timerEvent(event);

}

void QRasterWindow_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::childEvent(event);

}

void QRasterWindow_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::customEvent(event);

}

void QRasterWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::connectNotify(*signal);

}

void QRasterWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRasterWindow*)(self) )->QRasterWindow::disconnectNotify(*signal);

}

int QRasterWindow_virtualbase_devType(const void* self) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::devType();

}

void QRasterWindow_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQRasterWindow*)(self) )->QRasterWindow::initPainter(painter);

}

QPainter* QRasterWindow_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQRasterWindow*)(self) )->QRasterWindow::sharedPainter();

}

const QMetaObject* QRasterWindow_staticMetaObject() { return &QRasterWindow::staticMetaObject; }
QObject* QRasterWindow_protectedbase_sender(const void* self) {
	VirtualQRasterWindow* self_cast = static_cast<VirtualQRasterWindow*>( (QRasterWindow*)(self) );
	
	return self_cast->sender();

}

int QRasterWindow_protectedbase_senderSignalIndex(const void* self) {
	VirtualQRasterWindow* self_cast = static_cast<VirtualQRasterWindow*>( (QRasterWindow*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QRasterWindow_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQRasterWindow* self_cast = static_cast<VirtualQRasterWindow*>( (QRasterWindow*)(self) );
	
	return self_cast->receivers(signal);

}

bool QRasterWindow_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQRasterWindow* self_cast = static_cast<VirtualQRasterWindow*>( (QRasterWindow*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QRasterWindow_delete(QRasterWindow* self) {
	delete self;
}

