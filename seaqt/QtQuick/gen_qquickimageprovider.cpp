#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPixmap>
#include <QQmlImageProviderBase>
#include <QQuickAsyncImageProvider>
#include <QQuickImageProvider>
#include <QQuickImageResponse>
#include <QQuickTextureFactory>
#include <QQuickWindow>
#include <QSGTexture>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qquickimageprovider.h>
#include "gen_qquickimageprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickTextureFactory final : public QQuickTextureFactory {
	struct QQuickTextureFactory_VTable* vtbl;
public:

	VirtualQQuickTextureFactory(struct QQuickTextureFactory_VTable* vtbl): QQuickTextureFactory(), vtbl(vtbl) {};

	virtual ~VirtualQQuickTextureFactory() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTextureFactory::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickTextureFactory_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTextureFactory::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickTextureFactory_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTextureFactory::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickTextureFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSGTexture* createTexture(QQuickWindow* window) const override {
		if (vtbl->createTexture == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QQuickWindow* sigval1 = window;

		QSGTexture* callback_return_value = vtbl->createTexture(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (vtbl->textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->textureSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int textureByteCount() const override {
		if (vtbl->textureByteCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->textureByteCount(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QImage image() const override {
		if (vtbl->image == 0) {
			return QQuickTextureFactory::image();
		}


		QImage* callback_return_value = vtbl->image(vtbl, this);

		return *callback_return_value;
	}

	friend QImage* QQuickTextureFactory_virtualbase_image(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTextureFactory::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTextureFactory_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTextureFactory::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTextureFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTextureFactory::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextureFactory_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTextureFactory::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextureFactory_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTextureFactory::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextureFactory_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTextureFactory::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQuickTextureFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTextureFactory::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQuickTextureFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickTextureFactory_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextureFactory_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextureFactory_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickTextureFactory_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickTextureFactory* QQuickTextureFactory_new(struct QQuickTextureFactory_VTable* vtbl) {
	return new VirtualQQuickTextureFactory(vtbl);
}

void QQuickTextureFactory_virtbase(QQuickTextureFactory* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTextureFactory_metaObject(const QQuickTextureFactory* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTextureFactory_metacast(QQuickTextureFactory* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTextureFactory_metacall(QQuickTextureFactory* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTextureFactory_tr(const char* s) {
	QString _ret = QQuickTextureFactory::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf8(const char* s) {
	QString _ret = QQuickTextureFactory::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QQuickTextureFactory_createTexture(const QQuickTextureFactory* self, QQuickWindow* window) {
	return self->createTexture(window);
}

QSize* QQuickTextureFactory_textureSize(const QQuickTextureFactory* self) {
	return new QSize(self->textureSize());
}

int QQuickTextureFactory_textureByteCount(const QQuickTextureFactory* self) {
	return self->textureByteCount();
}

QImage* QQuickTextureFactory_image(const QQuickTextureFactory* self) {
	return new QImage(self->image());
}

QQuickTextureFactory* QQuickTextureFactory_textureFactoryForImage(QImage* image) {
	return QQuickTextureFactory::textureFactoryForImage(*image);
}

struct miqt_string QQuickTextureFactory_tr2(const char* s, const char* c) {
	QString _ret = QQuickTextureFactory::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTextureFactory::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTextureFactory::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTextureFactory::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickTextureFactory_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::metaObject();

}

void* QQuickTextureFactory_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::qt_metacast(param1);

}

int QQuickTextureFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QImage* QQuickTextureFactory_virtualbase_image(const void* self) {

	return new QImage(( (const VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::image());

}

bool QQuickTextureFactory_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::event(event);

}

bool QQuickTextureFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::eventFilter(watched, event);

}

void QQuickTextureFactory_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::timerEvent(event);

}

void QQuickTextureFactory_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::childEvent(event);

}

void QQuickTextureFactory_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::customEvent(event);

}

void QQuickTextureFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::connectNotify(*signal);

}

void QQuickTextureFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextureFactory*)(self) )->QQuickTextureFactory::disconnectNotify(*signal);

}

const QMetaObject* QQuickTextureFactory_staticMetaObject() { return &QQuickTextureFactory::staticMetaObject; }
QObject* QQuickTextureFactory_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTextureFactory* self_cast = dynamic_cast<VirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickTextureFactory_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTextureFactory* self_cast = dynamic_cast<VirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickTextureFactory_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickTextureFactory* self_cast = dynamic_cast<VirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickTextureFactory_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickTextureFactory* self_cast = dynamic_cast<VirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickTextureFactory_delete(QQuickTextureFactory* self) {
	delete self;
}

class VirtualQQuickImageResponse final : public QQuickImageResponse {
	struct QQuickImageResponse_VTable* vtbl;
public:

	VirtualQQuickImageResponse(struct QQuickImageResponse_VTable* vtbl): QQuickImageResponse(), vtbl(vtbl) {};

	virtual ~VirtualQQuickImageResponse() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickImageResponse::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickImageResponse_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickImageResponse::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickImageResponse_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickImageResponse::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickImageResponse_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* textureFactory() const override {
		if (vtbl->textureFactory == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QQuickTextureFactory* callback_return_value = vtbl->textureFactory(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QString errorString() const override {
		if (vtbl->errorString == 0) {
			return QQuickImageResponse::errorString();
		}


		struct miqt_string callback_return_value = vtbl->errorString(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QQuickImageResponse_virtualbase_errorString(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void cancel() override {
		if (vtbl->cancel == 0) {
			QQuickImageResponse::cancel();
			return;
		}


		vtbl->cancel(vtbl, this);

	}

	friend void QQuickImageResponse_virtualbase_cancel(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickImageResponse::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickImageResponse_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickImageResponse::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickImageResponse_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickImageResponse::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQuickImageResponse_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickImageResponse::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQuickImageResponse_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickImageResponse::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQuickImageResponse_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickImageResponse::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQuickImageResponse_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickImageResponse::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQuickImageResponse_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickImageResponse_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickImageResponse_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickImageResponse_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickImageResponse_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickImageResponse* QQuickImageResponse_new(struct QQuickImageResponse_VTable* vtbl) {
	return new VirtualQQuickImageResponse(vtbl);
}

void QQuickImageResponse_virtbase(QQuickImageResponse* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickImageResponse_metaObject(const QQuickImageResponse* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickImageResponse_metacast(QQuickImageResponse* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickImageResponse_metacall(QQuickImageResponse* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickImageResponse_tr(const char* s) {
	QString _ret = QQuickImageResponse::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf8(const char* s) {
	QString _ret = QQuickImageResponse::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickTextureFactory* QQuickImageResponse_textureFactory(const QQuickImageResponse* self) {
	return self->textureFactory();
}

struct miqt_string QQuickImageResponse_errorString(const QQuickImageResponse* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickImageResponse_cancel(QQuickImageResponse* self) {
	self->cancel();
}

void QQuickImageResponse_finished(QQuickImageResponse* self) {
	self->finished();
}

void QQuickImageResponse_connect_finished(QQuickImageResponse* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickImageResponse::connect(self, static_cast<void (QQuickImageResponse::*)()>(&QQuickImageResponse::finished), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickImageResponse_tr2(const char* s, const char* c) {
	QString _ret = QQuickImageResponse::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickImageResponse::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickImageResponse::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickImageResponse::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickImageResponse_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::metaObject();

}

void* QQuickImageResponse_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::qt_metacast(param1);

}

int QQuickImageResponse_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

struct miqt_string QQuickImageResponse_virtualbase_errorString(const void* self) {

	QString _ret = ( (const VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

void QQuickImageResponse_virtualbase_cancel(void* self) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::cancel();

}

bool QQuickImageResponse_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::event(event);

}

bool QQuickImageResponse_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::eventFilter(watched, event);

}

void QQuickImageResponse_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::timerEvent(event);

}

void QQuickImageResponse_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::childEvent(event);

}

void QQuickImageResponse_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::customEvent(event);

}

void QQuickImageResponse_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::connectNotify(*signal);

}

void QQuickImageResponse_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickImageResponse*)(self) )->QQuickImageResponse::disconnectNotify(*signal);

}

const QMetaObject* QQuickImageResponse_staticMetaObject() { return &QQuickImageResponse::staticMetaObject; }
QObject* QQuickImageResponse_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickImageResponse* self_cast = dynamic_cast<VirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickImageResponse_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickImageResponse* self_cast = dynamic_cast<VirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickImageResponse_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickImageResponse* self_cast = dynamic_cast<VirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickImageResponse_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickImageResponse* self_cast = dynamic_cast<VirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickImageResponse_delete(QQuickImageResponse* self) {
	delete self;
}

class VirtualQQuickImageProvider final : public QQuickImageProvider {
	struct QQuickImageProvider_VTable* vtbl;
public:

	VirtualQQuickImageProvider(struct QQuickImageProvider_VTable* vtbl, QQmlImageProviderBase::ImageType type): QQuickImageProvider(type), vtbl(vtbl) {};
	VirtualQQuickImageProvider(struct QQuickImageProvider_VTable* vtbl, const QQuickImageProvider& param1): QQuickImageProvider(param1), vtbl(vtbl) {};
	VirtualQQuickImageProvider(struct QQuickImageProvider_VTable* vtbl, QQmlImageProviderBase::ImageType type, QQmlImageProviderBase::Flags flags): QQuickImageProvider(type, flags), vtbl(vtbl) {};

	virtual ~VirtualQQuickImageProvider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::ImageType imageType() const override {
		if (vtbl->imageType == 0) {
			return QQuickImageProvider::imageType();
		}


		int callback_return_value = vtbl->imageType(vtbl, this);

		return static_cast<QQmlImageProviderBase::ImageType>(callback_return_value);
	}

	friend int QQuickImageProvider_virtualbase_imageType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::Flags flags() const override {
		if (vtbl->flags == 0) {
			return QQuickImageProvider::flags();
		}


		int callback_return_value = vtbl->flags(vtbl, this);

		return static_cast<QQmlImageProviderBase::Flags>(callback_return_value);
	}

	friend int QQuickImageProvider_virtualbase_flags(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QImage requestImage(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestImage == 0) {
			return QQuickImageProvider::requestImage(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QImage* callback_return_value = vtbl->requestImage(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QImage* QQuickImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

	// Subclass to allow providing a Go implementation
	virtual QPixmap requestPixmap(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestPixmap == 0) {
			return QQuickImageProvider::requestPixmap(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QPixmap* callback_return_value = vtbl->requestPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QPixmap* QQuickImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* requestTexture(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestTexture == 0) {
			return QQuickImageProvider::requestTexture(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QQuickTextureFactory* callback_return_value = vtbl->requestTexture(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

};

QQuickImageProvider* QQuickImageProvider_new(struct QQuickImageProvider_VTable* vtbl, int type) {
	return new VirtualQQuickImageProvider(vtbl, static_cast<QQmlImageProviderBase::ImageType>(type));
}

QQuickImageProvider* QQuickImageProvider_new2(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* param1) {
	return new VirtualQQuickImageProvider(vtbl, *param1);
}

QQuickImageProvider* QQuickImageProvider_new3(struct QQuickImageProvider_VTable* vtbl, int type, int flags) {
	return new VirtualQQuickImageProvider(vtbl, static_cast<QQmlImageProviderBase::ImageType>(type), static_cast<QQmlImageProviderBase::Flags>(flags));
}

void QQuickImageProvider_virtbase(QQuickImageProvider* src, QQmlImageProviderBase** outptr_QQmlImageProviderBase) {
	*outptr_QQmlImageProviderBase = static_cast<QQmlImageProviderBase*>(src);
}

int QQuickImageProvider_imageType(const QQuickImageProvider* self) {
	QQmlImageProviderBase::ImageType _ret = self->imageType();
	return static_cast<int>(_ret);
}

int QQuickImageProvider_flags(const QQuickImageProvider* self) {
	QQmlImageProviderBase::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

QImage* QQuickImageProvider_requestImage(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QImage(self->requestImage(id_QString, size, *requestedSize));
}

QPixmap* QQuickImageProvider_requestPixmap(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QPixmap(self->requestPixmap(id_QString, size, *requestedSize));
}

QQuickTextureFactory* QQuickImageProvider_requestTexture(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->requestTexture(id_QString, size, *requestedSize);
}

int QQuickImageProvider_virtualbase_imageType(const void* self) {

	VirtualQQuickImageProvider::ImageType _ret = ( (const VirtualQQuickImageProvider*)(self) )->QQuickImageProvider::imageType();
	return static_cast<int>(_ret);

}

int QQuickImageProvider_virtualbase_flags(const void* self) {

	VirtualQQuickImageProvider::Flags _ret = ( (const VirtualQQuickImageProvider*)(self) )->QQuickImageProvider::flags();
	return static_cast<int>(_ret);

}

QImage* QQuickImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return new QImage(( (VirtualQQuickImageProvider*)(self) )->QQuickImageProvider::requestImage(id_QString, size, *requestedSize));

}

QPixmap* QQuickImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return new QPixmap(( (VirtualQQuickImageProvider*)(self) )->QQuickImageProvider::requestPixmap(id_QString, size, *requestedSize));

}

QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return ( (VirtualQQuickImageProvider*)(self) )->QQuickImageProvider::requestTexture(id_QString, size, *requestedSize);

}

void QQuickImageProvider_delete(QQuickImageProvider* self) {
	delete self;
}

class VirtualQQuickAsyncImageProvider final : public QQuickAsyncImageProvider {
	struct QQuickAsyncImageProvider_VTable* vtbl;
public:

	VirtualQQuickAsyncImageProvider(struct QQuickAsyncImageProvider_VTable* vtbl): QQuickAsyncImageProvider(), vtbl(vtbl) {};
	VirtualQQuickAsyncImageProvider(struct QQuickAsyncImageProvider_VTable* vtbl, const QQuickAsyncImageProvider& param1): QQuickAsyncImageProvider(param1), vtbl(vtbl) {};

	virtual ~VirtualQQuickAsyncImageProvider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QQuickImageResponse* requestImageResponse(const QString& id, const QSize& requestedSize) override {
		if (vtbl->requestImageResponse == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval2 = const_cast<QSize*>(&requestedSize_ret);

		QQuickImageResponse* callback_return_value = vtbl->requestImageResponse(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::ImageType imageType() const override {
		if (vtbl->imageType == 0) {
			return QQuickAsyncImageProvider::imageType();
		}


		int callback_return_value = vtbl->imageType(vtbl, this);

		return static_cast<QQmlImageProviderBase::ImageType>(callback_return_value);
	}

	friend int QQuickAsyncImageProvider_virtualbase_imageType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::Flags flags() const override {
		if (vtbl->flags == 0) {
			return QQuickAsyncImageProvider::flags();
		}


		int callback_return_value = vtbl->flags(vtbl, this);

		return static_cast<QQmlImageProviderBase::Flags>(callback_return_value);
	}

	friend int QQuickAsyncImageProvider_virtualbase_flags(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QImage requestImage(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestImage == 0) {
			return QQuickAsyncImageProvider::requestImage(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QImage* callback_return_value = vtbl->requestImage(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QImage* QQuickAsyncImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

	// Subclass to allow providing a Go implementation
	virtual QPixmap requestPixmap(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestPixmap == 0) {
			return QQuickAsyncImageProvider::requestPixmap(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QPixmap* callback_return_value = vtbl->requestPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* requestTexture(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (vtbl->requestTexture == 0) {
			return QQuickAsyncImageProvider::requestTexture(id, size, requestedSize);
		}

		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QQuickTextureFactory* callback_return_value = vtbl->requestTexture(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);

};

QQuickAsyncImageProvider* QQuickAsyncImageProvider_new(struct QQuickAsyncImageProvider_VTable* vtbl) {
	return new VirtualQQuickAsyncImageProvider(vtbl);
}

QQuickAsyncImageProvider* QQuickAsyncImageProvider_new2(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* param1) {
	return new VirtualQQuickAsyncImageProvider(vtbl, *param1);
}

void QQuickAsyncImageProvider_virtbase(QQuickAsyncImageProvider* src, QQuickImageProvider** outptr_QQuickImageProvider) {
	*outptr_QQuickImageProvider = static_cast<QQuickImageProvider*>(src);
}

QQuickImageResponse* QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->requestImageResponse(id_QString, *requestedSize);
}

int QQuickAsyncImageProvider_virtualbase_imageType(const void* self) {

	VirtualQQuickAsyncImageProvider::ImageType _ret = ( (const VirtualQQuickAsyncImageProvider*)(self) )->QQuickAsyncImageProvider::imageType();
	return static_cast<int>(_ret);

}

int QQuickAsyncImageProvider_virtualbase_flags(const void* self) {

	VirtualQQuickAsyncImageProvider::Flags _ret = ( (const VirtualQQuickAsyncImageProvider*)(self) )->QQuickAsyncImageProvider::flags();
	return static_cast<int>(_ret);

}

QImage* QQuickAsyncImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return new QImage(( (VirtualQQuickAsyncImageProvider*)(self) )->QQuickAsyncImageProvider::requestImage(id_QString, size, *requestedSize));

}

QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return new QPixmap(( (VirtualQQuickAsyncImageProvider*)(self) )->QQuickAsyncImageProvider::requestPixmap(id_QString, size, *requestedSize));

}

QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);

	return ( (VirtualQQuickAsyncImageProvider*)(self) )->QQuickAsyncImageProvider::requestTexture(id_QString, size, *requestedSize);

}

void QQuickAsyncImageProvider_delete(QQuickAsyncImageProvider* self) {
	delete self;
}

