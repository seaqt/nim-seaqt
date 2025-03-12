#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QKeyEvent>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlError>
#include <QQuickItem>
#include <QQuickRenderControl>
#include <QQuickView>
#include <QQuickWindow>
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
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWindow>
#include <qquickview.h>
#include "gen_qquickview.h"
class VirtualQQuickView final : public QQuickView {
	const QQuickView_VTable* vtbl;
	void* vdata;
public:
	friend const QQuickView_VTable* QQuickView_vtbl(const VirtualQQuickView* self);
	friend void* QQuickView_vdata(const VirtualQQuickView* self);
	friend void QQuickView_setVdata(VirtualQQuickView* self, void* vdata);

	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata): QQuickView(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata, QQmlEngine* engine, QWindow* parent): QQuickView(engine, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata, const QUrl& source): QQuickView(source), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata, const QUrl& source, QQuickRenderControl* renderControl): QQuickView(source, renderControl), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata, QWindow* parent): QQuickView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickView(const QQuickView_VTable* vtbl, void* vdata, const QUrl& source, QWindow* parent): QQuickView(source, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQuickView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickView_virtualbase_metaObject(const VirtualQQuickView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickView_virtualbase_metacast(VirtualQQuickView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickView_virtualbase_metacall(VirtualQQuickView* self, int param1, int param2, void** param3);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QQuickView::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_resizeEvent(VirtualQQuickView* self, QResizeEvent* param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QQuickView::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_timerEvent(VirtualQQuickView* self, QTimerEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_keyPressEvent(VirtualQQuickView* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickView::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_keyReleaseEvent(VirtualQQuickView* self, QKeyEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickView::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_mousePressEvent(VirtualQQuickView* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickView::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_mouseReleaseEvent(VirtualQQuickView* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickView::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_mouseMoveEvent(VirtualQQuickView* self, QMouseEvent* param1);

	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QQuickView::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(this);

		return callback_return_value;
	}

	friend QObject* QQuickView_virtualbase_focusObject(const VirtualQQuickView* self);

	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QQuickView::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const VirtualQQuickView* self);

	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QQuickView::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_exposeEvent(VirtualQQuickView* self, QExposeEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QQuickView::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_showEvent(VirtualQQuickView* self, QShowEvent* param1);

	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QQuickView::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_hideEvent(VirtualQQuickView* self, QHideEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickView::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_focusInEvent(VirtualQQuickView* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickView::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_focusOutEvent(VirtualQQuickView* self, QFocusEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickView_virtualbase_event(VirtualQQuickView* self, QEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickView::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_mouseDoubleClickEvent(VirtualQQuickView* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QQuickView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_wheelEvent(VirtualQQuickView* self, QWheelEvent* param1);

	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QQuickView::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_tabletEvent(VirtualQQuickView* self, QTabletEvent* param1);

	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QQuickView::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QQuickView_virtualbase_surfaceType(const VirtualQQuickView* self);

	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QQuickView::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSurfaceFormat* QQuickView_virtualbase_format(const VirtualQQuickView* self);

	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QQuickView::size();
		}


		QSize* callback_return_value = vtbl->size(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QQuickView_virtualbase_size(const VirtualQQuickView* self);

	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QQuickView::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_moveEvent(VirtualQQuickView* self, QMoveEvent* param1);

	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QQuickView::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_touchEvent(VirtualQQuickView* self, QTouchEvent* param1);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QQuickView::nativeEvent(eventType, message, result);
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

	friend bool QQuickView_virtualbase_nativeEvent(VirtualQQuickView* self, struct miqt_string eventType, void* message, long* result);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickView_virtualbase_eventFilter(VirtualQQuickView* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_childEvent(VirtualQQuickView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQuickView_virtualbase_customEvent(VirtualQQuickView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQuickView_virtualbase_connectNotify(VirtualQQuickView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQuickView_virtualbase_disconnectNotify(VirtualQQuickView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickView_protectedbase_sender(const VirtualQQuickView* self);
	friend int QQuickView_protectedbase_senderSignalIndex(const VirtualQQuickView* self);
	friend int QQuickView_protectedbase_receivers(const VirtualQQuickView* self, const char* signal);
	friend bool QQuickView_protectedbase_isSignalConnected(const VirtualQQuickView* self, QMetaMethod* signal);
};

VirtualQQuickView* QQuickView_new(const QQuickView_VTable* vtbl, void* vdata) {
	return new VirtualQQuickView(vtbl, vdata);
}

VirtualQQuickView* QQuickView_new2(const QQuickView_VTable* vtbl, void* vdata, QQmlEngine* engine, QWindow* parent) {
	return new VirtualQQuickView(vtbl, vdata, engine, parent);
}

VirtualQQuickView* QQuickView_new3(const QQuickView_VTable* vtbl, void* vdata, QUrl* source) {
	return new VirtualQQuickView(vtbl, vdata, *source);
}

VirtualQQuickView* QQuickView_new4(const QQuickView_VTable* vtbl, void* vdata, QUrl* source, QQuickRenderControl* renderControl) {
	return new VirtualQQuickView(vtbl, vdata, *source, renderControl);
}

VirtualQQuickView* QQuickView_new5(const QQuickView_VTable* vtbl, void* vdata, QWindow* parent) {
	return new VirtualQQuickView(vtbl, vdata, parent);
}

VirtualQQuickView* QQuickView_new6(const QQuickView_VTable* vtbl, void* vdata, QUrl* source, QWindow* parent) {
	return new VirtualQQuickView(vtbl, vdata, *source, parent);
}

void QQuickView_virtbase(QQuickView* src, QQuickWindow** outptr_QQuickWindow) {
	*outptr_QQuickWindow = static_cast<QQuickWindow*>(src);
}

QMetaObject* QQuickView_metaObject(const QQuickView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickView_metacast(QQuickView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickView_metacall(QQuickView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickView_tr(const char* s) {
	QString _ret = QQuickView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf8(const char* s) {
	QString _ret = QQuickView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQuickView_source(const QQuickView* self) {
	return new QUrl(self->source());
}

QQmlEngine* QQuickView_engine(const QQuickView* self) {
	return self->engine();
}

QQmlContext* QQuickView_rootContext(const QQuickView* self) {
	return self->rootContext();
}

QQuickItem* QQuickView_rootObject(const QQuickView* self) {
	return self->rootObject();
}

int QQuickView_resizeMode(const QQuickView* self) {
	QQuickView::ResizeMode _ret = self->resizeMode();
	return static_cast<int>(_ret);
}

void QQuickView_setResizeMode(QQuickView* self, int resizeMode) {
	self->setResizeMode(static_cast<QQuickView::ResizeMode>(resizeMode));
}

int QQuickView_status(const QQuickView* self) {
	QQuickView::Status _ret = self->status();
	return static_cast<int>(_ret);
}

struct miqt_array /* of QQmlError* */  QQuickView_errors(const QQuickView* self) {
	QList<QQmlError> _ret = self->errors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQmlError** _arr = static_cast<QQmlError**>(malloc(sizeof(QQmlError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QQmlError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QSize* QQuickView_sizeHint(const QQuickView* self) {
	return new QSize(self->sizeHint());
}

QSize* QQuickView_initialSize(const QQuickView* self) {
	return new QSize(self->initialSize());
}

void QQuickView_setSource(QQuickView* self, QUrl* source) {
	self->setSource(*source);
}

void QQuickView_setInitialProperties(QQuickView* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQuickView_setContent(QQuickView* self, QUrl* url, QQmlComponent* component, QObject* item) {
	self->setContent(*url, component, item);
}

void QQuickView_statusChanged(QQuickView* self, int param1) {
	self->statusChanged(static_cast<QQuickView::Status>(param1));
}

void QQuickView_connect_statusChanged(VirtualQQuickView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QQuickView::Status param1) {
			QQuickView::Status param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQuickView::connect(self, static_cast<void (QQuickView::*)(QQuickView::Status)>(&QQuickView::statusChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickView_tr2(const char* s, const char* c) {
	QString _ret = QQuickView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickView_virtualbase_metaObject(const VirtualQQuickView* self) {

	return (QMetaObject*) self->QQuickView::metaObject();
}

void* QQuickView_virtualbase_metacast(VirtualQQuickView* self, const char* param1) {

	return self->QQuickView::qt_metacast(param1);
}

int QQuickView_virtualbase_metacall(VirtualQQuickView* self, int param1, int param2, void** param3) {

	return self->QQuickView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QQuickView_virtualbase_resizeEvent(VirtualQQuickView* self, QResizeEvent* param1) {

	self->QQuickView::resizeEvent(param1);
}

void QQuickView_virtualbase_timerEvent(VirtualQQuickView* self, QTimerEvent* param1) {

	self->QQuickView::timerEvent(param1);
}

void QQuickView_virtualbase_keyPressEvent(VirtualQQuickView* self, QKeyEvent* param1) {

	self->QQuickView::keyPressEvent(param1);
}

void QQuickView_virtualbase_keyReleaseEvent(VirtualQQuickView* self, QKeyEvent* param1) {

	self->QQuickView::keyReleaseEvent(param1);
}

void QQuickView_virtualbase_mousePressEvent(VirtualQQuickView* self, QMouseEvent* param1) {

	self->QQuickView::mousePressEvent(param1);
}

void QQuickView_virtualbase_mouseReleaseEvent(VirtualQQuickView* self, QMouseEvent* param1) {

	self->QQuickView::mouseReleaseEvent(param1);
}

void QQuickView_virtualbase_mouseMoveEvent(VirtualQQuickView* self, QMouseEvent* param1) {

	self->QQuickView::mouseMoveEvent(param1);
}

QObject* QQuickView_virtualbase_focusObject(const VirtualQQuickView* self) {

	return self->QQuickView::focusObject();
}

QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const VirtualQQuickView* self) {

	return self->QQuickView::accessibleRoot();
}

void QQuickView_virtualbase_exposeEvent(VirtualQQuickView* self, QExposeEvent* param1) {

	self->QQuickView::exposeEvent(param1);
}

void QQuickView_virtualbase_showEvent(VirtualQQuickView* self, QShowEvent* param1) {

	self->QQuickView::showEvent(param1);
}

void QQuickView_virtualbase_hideEvent(VirtualQQuickView* self, QHideEvent* param1) {

	self->QQuickView::hideEvent(param1);
}

void QQuickView_virtualbase_focusInEvent(VirtualQQuickView* self, QFocusEvent* param1) {

	self->QQuickView::focusInEvent(param1);
}

void QQuickView_virtualbase_focusOutEvent(VirtualQQuickView* self, QFocusEvent* param1) {

	self->QQuickView::focusOutEvent(param1);
}

bool QQuickView_virtualbase_event(VirtualQQuickView* self, QEvent* param1) {

	return self->QQuickView::event(param1);
}

void QQuickView_virtualbase_mouseDoubleClickEvent(VirtualQQuickView* self, QMouseEvent* param1) {

	self->QQuickView::mouseDoubleClickEvent(param1);
}

void QQuickView_virtualbase_wheelEvent(VirtualQQuickView* self, QWheelEvent* param1) {

	self->QQuickView::wheelEvent(param1);
}

void QQuickView_virtualbase_tabletEvent(VirtualQQuickView* self, QTabletEvent* param1) {

	self->QQuickView::tabletEvent(param1);
}

int QQuickView_virtualbase_surfaceType(const VirtualQQuickView* self) {

	VirtualQQuickView::SurfaceType _ret = self->QQuickView::surfaceType();
	return static_cast<int>(_ret);
}

QSurfaceFormat* QQuickView_virtualbase_format(const VirtualQQuickView* self) {

	return new QSurfaceFormat(self->QQuickView::format());
}

QSize* QQuickView_virtualbase_size(const VirtualQQuickView* self) {

	return new QSize(self->QQuickView::size());
}

void QQuickView_virtualbase_moveEvent(VirtualQQuickView* self, QMoveEvent* param1) {

	self->QQuickView::moveEvent(param1);
}

void QQuickView_virtualbase_touchEvent(VirtualQQuickView* self, QTouchEvent* param1) {

	self->QQuickView::touchEvent(param1);
}

bool QQuickView_virtualbase_nativeEvent(VirtualQQuickView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QQuickView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

bool QQuickView_virtualbase_eventFilter(VirtualQQuickView* self, QObject* watched, QEvent* event) {

	return self->QQuickView::eventFilter(watched, event);
}

void QQuickView_virtualbase_childEvent(VirtualQQuickView* self, QChildEvent* event) {

	self->QQuickView::childEvent(event);
}

void QQuickView_virtualbase_customEvent(VirtualQQuickView* self, QEvent* event) {

	self->QQuickView::customEvent(event);
}

void QQuickView_virtualbase_connectNotify(VirtualQQuickView* self, QMetaMethod* signal) {

	self->QQuickView::connectNotify(*signal);
}

void QQuickView_virtualbase_disconnectNotify(VirtualQQuickView* self, QMetaMethod* signal) {

	self->QQuickView::disconnectNotify(*signal);
}

const QMetaObject* QQuickView_staticMetaObject() { return &QQuickView::staticMetaObject; }

const QQuickView_VTable* QQuickView_vtbl(const VirtualQQuickView* self) { return self->vtbl; }
void* QQuickView_vdata(const VirtualQQuickView* self) { return self->vdata; }
void QQuickView_setVdata(VirtualQQuickView* self, void* vdata) { self->vdata = vdata; }

QObject* QQuickView_protectedbase_sender(const VirtualQQuickView* self) {
	return self->sender();
}

int QQuickView_protectedbase_senderSignalIndex(const VirtualQQuickView* self) {
	return self->senderSignalIndex();
}

int QQuickView_protectedbase_receivers(const VirtualQQuickView* self, const char* signal) {
	return self->receivers(signal);
}

bool QQuickView_protectedbase_isSignalConnected(const VirtualQQuickView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQuickView_delete(QQuickView* self) {
	delete self;
}

