#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSocketDescriptor>
#include <QSocketNotifier>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsocketnotifier.h>
#include "gen_qsocketnotifier.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSocketNotifier final : public QSocketNotifier {
	struct QSocketNotifier_VTable* vtbl;
public:

	VirtualQSocketNotifier(struct QSocketNotifier_VTable* vtbl, qintptr socket, QSocketNotifier::Type param2): QSocketNotifier(socket, param2), vtbl(vtbl) {};
	VirtualQSocketNotifier(struct QSocketNotifier_VTable* vtbl, qintptr socket, QSocketNotifier::Type param2, QObject* parent): QSocketNotifier(socket, param2, parent), vtbl(vtbl) {};

	virtual ~VirtualQSocketNotifier() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSocketNotifier::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSocketNotifier_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSocketNotifier::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSocketNotifier_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSocketNotifier::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSocketNotifier_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSocketNotifier::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSocketNotifier_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSocketNotifier::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSocketNotifier_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSocketNotifier::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSocketNotifier_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSocketNotifier::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSocketNotifier_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSocketNotifier::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSocketNotifier_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSocketNotifier::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSocketNotifier_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSocketNotifier::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSocketNotifier_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSocketNotifier_protectedbase_sender(const void* self);
	friend int QSocketNotifier_protectedbase_senderSignalIndex(const void* self);
	friend int QSocketNotifier_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSocketNotifier_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSocketNotifier* QSocketNotifier_new(struct QSocketNotifier_VTable* vtbl, intptr_t socket, int param2) {
	return new VirtualQSocketNotifier(vtbl, (qintptr)(socket), static_cast<QSocketNotifier::Type>(param2));
}

QSocketNotifier* QSocketNotifier_new2(struct QSocketNotifier_VTable* vtbl, intptr_t socket, int param2, QObject* parent) {
	return new VirtualQSocketNotifier(vtbl, (qintptr)(socket), static_cast<QSocketNotifier::Type>(param2), parent);
}

void QSocketNotifier_virtbase(QSocketNotifier* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSocketNotifier_metaObject(const QSocketNotifier* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSocketNotifier_metacast(QSocketNotifier* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSocketNotifier_metacall(QSocketNotifier* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSocketNotifier_tr(const char* s) {
	QString _ret = QSocketNotifier::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSocketNotifier_trUtf8(const char* s) {
	QString _ret = QSocketNotifier::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

intptr_t QSocketNotifier_socket(const QSocketNotifier* self) {
	qintptr _ret = self->socket();
	return (intptr_t)(_ret);
}

int QSocketNotifier_type(const QSocketNotifier* self) {
	QSocketNotifier::Type _ret = self->type();
	return static_cast<int>(_ret);
}

bool QSocketNotifier_isEnabled(const QSocketNotifier* self) {
	return self->isEnabled();
}

void QSocketNotifier_setEnabled(QSocketNotifier* self, bool enabled) {
	self->setEnabled(enabled);
}

struct miqt_string QSocketNotifier_tr2(const char* s, const char* c) {
	QString _ret = QSocketNotifier::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSocketNotifier_tr3(const char* s, const char* c, int n) {
	QString _ret = QSocketNotifier::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSocketNotifier_trUtf82(const char* s, const char* c) {
	QString _ret = QSocketNotifier::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSocketNotifier_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSocketNotifier::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSocketNotifier_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSocketNotifier*)(self) )->QSocketNotifier::metaObject();

}

void* QSocketNotifier_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::qt_metacast(param1);

}

int QSocketNotifier_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSocketNotifier_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::event(param1);

}

bool QSocketNotifier_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::eventFilter(watched, event);

}

void QSocketNotifier_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::timerEvent(event);

}

void QSocketNotifier_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::childEvent(event);

}

void QSocketNotifier_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::customEvent(event);

}

void QSocketNotifier_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::connectNotify(*signal);

}

void QSocketNotifier_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSocketNotifier*)(self) )->QSocketNotifier::disconnectNotify(*signal);

}

const QMetaObject* QSocketNotifier_staticMetaObject() { return &QSocketNotifier::staticMetaObject; }
QObject* QSocketNotifier_protectedbase_sender(const void* self) {
	VirtualQSocketNotifier* self_cast = static_cast<VirtualQSocketNotifier*>( (QSocketNotifier*)(self) );
	
	return self_cast->sender();

}

int QSocketNotifier_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSocketNotifier* self_cast = static_cast<VirtualQSocketNotifier*>( (QSocketNotifier*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSocketNotifier_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSocketNotifier* self_cast = static_cast<VirtualQSocketNotifier*>( (QSocketNotifier*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSocketNotifier_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSocketNotifier* self_cast = static_cast<VirtualQSocketNotifier*>( (QSocketNotifier*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSocketNotifier_delete(QSocketNotifier* self) {
	delete self;
}

QSocketDescriptor* QSocketDescriptor_new() {
	return new QSocketDescriptor();
}

QSocketDescriptor* QSocketDescriptor_new2(QSocketDescriptor* param1) {
	return new QSocketDescriptor(*param1);
}

QSocketDescriptor* QSocketDescriptor_new3(int descriptor) {
#ifndef Q_OS_LINUX
	return nullptr;
#else
	return new QSocketDescriptor(static_cast<QSocketDescriptor::DescriptorType>(descriptor));
#endif
}

int QSocketDescriptor_ToInt(const QSocketDescriptor* self) {
#ifdef Q_OS_LINUX
	QSocketDescriptor::DescriptorType _ret = self->operator int();
	return static_cast<int>(_ret);
#else
	int _ret_invalidOS;
	return _ret_invalidOS;
#endif
}

bool QSocketDescriptor_isValid(const QSocketDescriptor* self) {
	return self->isValid();
}

void QSocketDescriptor_delete(QSocketDescriptor* self) {
	delete self;
}

