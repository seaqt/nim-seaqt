#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSGAbstractRenderer>
#include <QSGEngine>
#include <QSGImageNode>
#include <QSGNinePatchNode>
#include <QSGRectangleNode>
#include <QSGRendererInterface>
#include <QSGTexture>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsgengine.h>
#include "gen_qsgengine.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGEngine final : public QSGEngine {
	struct QSGEngine_VTable* vtbl;
public:

	VirtualQSGEngine(struct QSGEngine_VTable* vtbl): QSGEngine(), vtbl(vtbl) {};
	VirtualQSGEngine(struct QSGEngine_VTable* vtbl, QObject* parent): QSGEngine(parent), vtbl(vtbl) {};

	virtual ~VirtualQSGEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSGEngine_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSGEngine_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGEngine::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSGEngine_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSGEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSGEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSGEngine_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSGEngine_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSGEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSGEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGEngine_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSGEngine_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSGEngine_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSGEngine_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSGEngine* QSGEngine_new(struct QSGEngine_VTable* vtbl) {
	return new VirtualQSGEngine(vtbl);
}

QSGEngine* QSGEngine_new2(struct QSGEngine_VTable* vtbl, QObject* parent) {
	return new VirtualQSGEngine(vtbl, parent);
}

void QSGEngine_virtbase(QSGEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGEngine_metaObject(const QSGEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGEngine_metacast(QSGEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGEngine_metacall(QSGEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGEngine_tr(const char* s) {
	QString _ret = QSGEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGEngine_trUtf8(const char* s) {
	QString _ret = QSGEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSGEngine_invalidate(QSGEngine* self) {
	self->invalidate();
}

QSGAbstractRenderer* QSGEngine_createRenderer(const QSGEngine* self) {
	return self->createRenderer();
}

QSGTexture* QSGEngine_createTextureFromImage(const QSGEngine* self, QImage* image) {
	return self->createTextureFromImage(*image);
}

QSGTexture* QSGEngine_createTextureFromId(const QSGEngine* self, unsigned int id, QSize* size) {
	return self->createTextureFromId(static_cast<uint>(id), *size);
}

QSGRendererInterface* QSGEngine_rendererInterface(const QSGEngine* self) {
	return self->rendererInterface();
}

QSGRectangleNode* QSGEngine_createRectangleNode(const QSGEngine* self) {
	return self->createRectangleNode();
}

QSGImageNode* QSGEngine_createImageNode(const QSGEngine* self) {
	return self->createImageNode();
}

QSGNinePatchNode* QSGEngine_createNinePatchNode(const QSGEngine* self) {
	return self->createNinePatchNode();
}

struct miqt_string QSGEngine_tr2(const char* s, const char* c) {
	QString _ret = QSGEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGEngine_trUtf82(const char* s, const char* c) {
	QString _ret = QSGEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGEngine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSGEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QSGEngine_createTextureFromImage2(const QSGEngine* self, QImage* image, int options) {
	return self->createTextureFromImage(*image, static_cast<QSGEngine::CreateTextureOptions>(options));
}

QSGTexture* QSGEngine_createTextureFromId3(const QSGEngine* self, unsigned int id, QSize* size, int options) {
	return self->createTextureFromId(static_cast<uint>(id), *size, static_cast<QSGEngine::CreateTextureOptions>(options));
}

QMetaObject* QSGEngine_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSGEngine*)(self) )->QSGEngine::metaObject();

}

void* QSGEngine_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSGEngine*)(self) )->QSGEngine::qt_metacast(param1);

}

int QSGEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSGEngine*)(self) )->QSGEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSGEngine_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSGEngine*)(self) )->QSGEngine::event(event);

}

bool QSGEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSGEngine*)(self) )->QSGEngine::eventFilter(watched, event);

}

void QSGEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSGEngine*)(self) )->QSGEngine::timerEvent(event);

}

void QSGEngine_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSGEngine*)(self) )->QSGEngine::childEvent(event);

}

void QSGEngine_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSGEngine*)(self) )->QSGEngine::customEvent(event);

}

void QSGEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGEngine*)(self) )->QSGEngine::connectNotify(*signal);

}

void QSGEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGEngine*)(self) )->QSGEngine::disconnectNotify(*signal);

}

const QMetaObject* QSGEngine_staticMetaObject() { return &QSGEngine::staticMetaObject; }
QObject* QSGEngine_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGEngine* self_cast = dynamic_cast<VirtualQSGEngine*>( (QSGEngine*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSGEngine_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGEngine* self_cast = dynamic_cast<VirtualQSGEngine*>( (QSGEngine*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSGEngine_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSGEngine* self_cast = dynamic_cast<VirtualQSGEngine*>( (QSGEngine*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSGEngine_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSGEngine* self_cast = dynamic_cast<VirtualQSGEngine*>( (QSGEngine*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSGEngine_delete(QSGEngine* self) {
	delete self;
}

