#include <QAudioBuffer>
#include <QAudioProbe>
#include <QChildEvent>
#include <QEvent>
#include <QMediaObject>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudioprobe.h>
#include "gen_qaudioprobe.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioProbe final : public QAudioProbe {
	struct QAudioProbe_VTable* vtbl;
public:

	VirtualQAudioProbe(struct QAudioProbe_VTable* vtbl): QAudioProbe(), vtbl(vtbl) {};
	VirtualQAudioProbe(struct QAudioProbe_VTable* vtbl, QObject* parent): QAudioProbe(parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioProbe() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioProbe::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioProbe_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioProbe::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioProbe_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioProbe::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioProbe::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioProbe_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioProbe::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioProbe::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioProbe_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioProbe::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioProbe_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioProbe::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioProbe_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioProbe::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioProbe::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioProbe_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioProbe_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioProbe_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioProbe_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioProbe* QAudioProbe_new(struct QAudioProbe_VTable* vtbl) {
	return new VirtualQAudioProbe(vtbl);
}

QAudioProbe* QAudioProbe_new2(struct QAudioProbe_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioProbe(vtbl, parent);
}

void QAudioProbe_virtbase(QAudioProbe* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioProbe_metaObject(const QAudioProbe* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioProbe_metacast(QAudioProbe* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioProbe_metacall(QAudioProbe* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioProbe_tr(const char* s) {
	QString _ret = QAudioProbe::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf8(const char* s) {
	QString _ret = QAudioProbe::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioProbe_setSource(QAudioProbe* self, QMediaObject* source) {
	return self->setSource(source);
}

bool QAudioProbe_setSourceWithSource(QAudioProbe* self, QMediaRecorder* source) {
	return self->setSource(source);
}

bool QAudioProbe_isActive(const QAudioProbe* self) {
	return self->isActive();
}

void QAudioProbe_audioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer) {
	self->audioBufferProbed(*buffer);
}

void QAudioProbe_connect_audioBufferProbed(QAudioProbe* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAudioBuffer*);
		void operator()(const QAudioBuffer& buffer) {
			const QAudioBuffer& buffer_ret = buffer;
			// Cast returned reference into pointer
			QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioProbe::connect(self, static_cast<void (QAudioProbe::*)(const QAudioBuffer&)>(&QAudioProbe::audioBufferProbed), self, local_caller{slot, callback, release});
}

void QAudioProbe_flush(QAudioProbe* self) {
	self->flush();
}

void QAudioProbe_connect_flush(QAudioProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioProbe::connect(self, static_cast<void (QAudioProbe::*)()>(&QAudioProbe::flush), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioProbe_tr2(const char* s, const char* c) {
	QString _ret = QAudioProbe::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioProbe::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioProbe::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioProbe_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioProbe::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioProbe_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioProbe*)(self) )->QAudioProbe::metaObject();

}

void* QAudioProbe_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioProbe*)(self) )->QAudioProbe::qt_metacast(param1);

}

int QAudioProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioProbe*)(self) )->QAudioProbe::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioProbe_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioProbe*)(self) )->QAudioProbe::event(event);

}

bool QAudioProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioProbe*)(self) )->QAudioProbe::eventFilter(watched, event);

}

void QAudioProbe_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioProbe*)(self) )->QAudioProbe::timerEvent(event);

}

void QAudioProbe_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioProbe*)(self) )->QAudioProbe::childEvent(event);

}

void QAudioProbe_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioProbe*)(self) )->QAudioProbe::customEvent(event);

}

void QAudioProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioProbe*)(self) )->QAudioProbe::connectNotify(*signal);

}

void QAudioProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioProbe*)(self) )->QAudioProbe::disconnectNotify(*signal);

}

const QMetaObject* QAudioProbe_staticMetaObject() { return &QAudioProbe::staticMetaObject; }
QObject* QAudioProbe_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioProbe* self_cast = dynamic_cast<VirtualQAudioProbe*>( (QAudioProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioProbe_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioProbe* self_cast = dynamic_cast<VirtualQAudioProbe*>( (QAudioProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioProbe_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAudioProbe* self_cast = dynamic_cast<VirtualQAudioProbe*>( (QAudioProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioProbe_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAudioProbe* self_cast = dynamic_cast<VirtualQAudioProbe*>( (QAudioProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioProbe_delete(QAudioProbe* self) {
	delete self;
}

