#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebHistoryInterface>
#include <qwebhistoryinterface.h>
#include "gen_qwebhistoryinterface.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebHistoryInterface final : public QWebHistoryInterface {
	struct QWebHistoryInterface_VTable* vtbl;
public:

	VirtualQWebHistoryInterface(struct QWebHistoryInterface_VTable* vtbl): QWebHistoryInterface(), vtbl(vtbl) {};
	VirtualQWebHistoryInterface(struct QWebHistoryInterface_VTable* vtbl, QObject* parent): QWebHistoryInterface(parent), vtbl(vtbl) {};

	virtual ~VirtualQWebHistoryInterface() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebHistoryInterface::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebHistoryInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWebHistoryInterface_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebHistoryInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebHistoryInterface_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool historyContains(const QString& url) const override {
		if (vtbl->historyContains == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct miqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct miqt_string sigval1 = url_ms;

		bool callback_return_value = vtbl->historyContains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void addHistoryEntry(const QString& url) override {
		if (vtbl->addHistoryEntry == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct miqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct miqt_string sigval1 = url_ms;

		vtbl->addHistoryEntry(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebHistoryInterface::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebHistoryInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebHistoryInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWebHistoryInterface_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebHistoryInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWebHistoryInterface_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebHistoryInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWebHistoryInterface_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebHistoryInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWebHistoryInterface_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebHistoryInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWebHistoryInterface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebHistoryInterface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWebHistoryInterface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWebHistoryInterface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWebHistoryInterface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWebHistoryInterface* QWebHistoryInterface_new(struct QWebHistoryInterface_VTable* vtbl) {
	return new VirtualQWebHistoryInterface(vtbl);
}

QWebHistoryInterface* QWebHistoryInterface_new2(struct QWebHistoryInterface_VTable* vtbl, QObject* parent) {
	return new VirtualQWebHistoryInterface(vtbl, parent);
}

void QWebHistoryInterface_virtbase(QWebHistoryInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebHistoryInterface_metaObject(const QWebHistoryInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebHistoryInterface_metacast(QWebHistoryInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebHistoryInterface_metacall(QWebHistoryInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebHistoryInterface_tr(const char* s) {
	QString _ret = QWebHistoryInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf8(const char* s) {
	QString _ret = QWebHistoryInterface::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebHistoryInterface_setDefaultInterface(QWebHistoryInterface* defaultInterface) {
	QWebHistoryInterface::setDefaultInterface(defaultInterface);
}

QWebHistoryInterface* QWebHistoryInterface_defaultInterface() {
	return QWebHistoryInterface::defaultInterface();
}

bool QWebHistoryInterface_historyContains(const QWebHistoryInterface* self, struct miqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	return self->historyContains(url_QString);
}

void QWebHistoryInterface_addHistoryEntry(QWebHistoryInterface* self, struct miqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->addHistoryEntry(url_QString);
}

struct miqt_string QWebHistoryInterface_tr2(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf82(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::metaObject();

}

void* QWebHistoryInterface_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::qt_metacast(param1);

}

int QWebHistoryInterface_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWebHistoryInterface_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::event(event);

}

bool QWebHistoryInterface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::eventFilter(watched, event);

}

void QWebHistoryInterface_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::timerEvent(event);

}

void QWebHistoryInterface_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::childEvent(event);

}

void QWebHistoryInterface_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::customEvent(event);

}

void QWebHistoryInterface_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::connectNotify(*signal);

}

void QWebHistoryInterface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::disconnectNotify(*signal);

}

const QMetaObject* QWebHistoryInterface_staticMetaObject() { return &QWebHistoryInterface::staticMetaObject; }
QObject* QWebHistoryInterface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QWebHistoryInterface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QWebHistoryInterface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QWebHistoryInterface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QWebHistoryInterface_delete(QWebHistoryInterface* self) {
	delete self;
}

