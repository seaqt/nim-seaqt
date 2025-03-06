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
#include <QVideoFrame>
#include <QVideoProbe>
#include <qvideoprobe.h>
#include "gen_qvideoprobe.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QVideoProbe_videoFrameProbed(intptr_t, QVideoFrame*);
void miqt_exec_callback_QVideoProbe_flush(intptr_t);
QMetaObject* miqt_exec_callback_QVideoProbe_metaObject(const QVideoProbe*, intptr_t);
void* miqt_exec_callback_QVideoProbe_metacast(QVideoProbe*, intptr_t, const char*);
int miqt_exec_callback_QVideoProbe_metacall(QVideoProbe*, intptr_t, int, int, void**);
bool miqt_exec_callback_QVideoProbe_event(QVideoProbe*, intptr_t, QEvent*);
bool miqt_exec_callback_QVideoProbe_eventFilter(QVideoProbe*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QVideoProbe_timerEvent(QVideoProbe*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QVideoProbe_childEvent(QVideoProbe*, intptr_t, QChildEvent*);
void miqt_exec_callback_QVideoProbe_customEvent(QVideoProbe*, intptr_t, QEvent*);
void miqt_exec_callback_QVideoProbe_connectNotify(QVideoProbe*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QVideoProbe_disconnectNotify(QVideoProbe*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQVideoProbe final : public QVideoProbe {
public:

	VirtualQVideoProbe(): QVideoProbe() {};
	VirtualQVideoProbe(QObject* parent): QVideoProbe(parent) {};

	virtual ~VirtualQVideoProbe() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QVideoProbe::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QVideoProbe_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QVideoProbe_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QVideoProbe::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QVideoProbe_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QVideoProbe_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QVideoProbe::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QVideoProbe_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QVideoProbe::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QVideoProbe_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QVideoProbe_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QVideoProbe::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QVideoProbe_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVideoProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QVideoProbe::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QVideoProbe_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QVideoProbe_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QVideoProbe::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QVideoProbe_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QVideoProbe_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QVideoProbe::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QVideoProbe_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QVideoProbe_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QVideoProbe::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QVideoProbe_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QVideoProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QVideoProbe::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QVideoProbe_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QVideoProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVideoProbe_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QVideoProbe_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QVideoProbe_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QVideoProbe_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QVideoProbe* QVideoProbe_new() {
	return new VirtualQVideoProbe();
}

QVideoProbe* QVideoProbe_new2(QObject* parent) {
	return new VirtualQVideoProbe(parent);
}

void QVideoProbe_virtbase(QVideoProbe* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QVideoProbe_metaObject(const QVideoProbe* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoProbe_metacast(QVideoProbe* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoProbe_metacall(QVideoProbe* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVideoProbe_tr(const char* s) {
	QString _ret = QVideoProbe::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf8(const char* s) {
	QString _ret = QVideoProbe::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QVideoProbe_setSource(QVideoProbe* self, QMediaObject* source) {
	return self->setSource(source);
}

bool QVideoProbe_setSourceWithSource(QVideoProbe* self, QMediaRecorder* source) {
	return self->setSource(source);
}

bool QVideoProbe_isActive(const QVideoProbe* self) {
	return self->isActive();
}

void QVideoProbe_videoFrameProbed(QVideoProbe* self, QVideoFrame* frame) {
	self->videoFrameProbed(*frame);
}

void QVideoProbe_connect_videoFrameProbed(QVideoProbe* self, intptr_t slot) {
	VirtualQVideoProbe::connect(self, static_cast<void (QVideoProbe::*)(const QVideoFrame&)>(&QVideoProbe::videoFrameProbed), self, [=](const QVideoFrame& frame) {
		const QVideoFrame& frame_ret = frame;
		// Cast returned reference into pointer
		QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
		miqt_exec_callback_QVideoProbe_videoFrameProbed(slot, sigval1);
	});
}

void QVideoProbe_flush(QVideoProbe* self) {
	self->flush();
}

void QVideoProbe_connect_flush(QVideoProbe* self, intptr_t slot) {
	VirtualQVideoProbe::connect(self, static_cast<void (QVideoProbe::*)()>(&QVideoProbe::flush), self, [=]() {
		miqt_exec_callback_QVideoProbe_flush(slot);
	});
}

struct miqt_string QVideoProbe_tr2(const char* s, const char* c) {
	QString _ret = QVideoProbe::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoProbe::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf82(const char* s, const char* c) {
	QString _ret = QVideoProbe::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoProbe_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVideoProbe::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QVideoProbe_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QVideoProbe_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQVideoProbe*)(self) )->QVideoProbe::metaObject();

}

bool QVideoProbe_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QVideoProbe_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQVideoProbe*)(self) )->QVideoProbe::qt_metacast(param1);

}

bool QVideoProbe_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QVideoProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQVideoProbe*)(self) )->QVideoProbe::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QVideoProbe_override_virtual_event(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QVideoProbe_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQVideoProbe*)(self) )->QVideoProbe::event(event);

}

bool QVideoProbe_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QVideoProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQVideoProbe*)(self) )->QVideoProbe::eventFilter(watched, event);

}

bool QVideoProbe_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QVideoProbe_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQVideoProbe*)(self) )->QVideoProbe::timerEvent(event);

}

bool QVideoProbe_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QVideoProbe_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQVideoProbe*)(self) )->QVideoProbe::childEvent(event);

}

bool QVideoProbe_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QVideoProbe_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQVideoProbe*)(self) )->QVideoProbe::customEvent(event);

}

bool QVideoProbe_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QVideoProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVideoProbe*)(self) )->QVideoProbe::connectNotify(*signal);

}

bool QVideoProbe_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QVideoProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVideoProbe*)(self) )->QVideoProbe::disconnectNotify(*signal);

}

const QMetaObject* QVideoProbe_staticMetaObject() { return &QVideoProbe::staticMetaObject; }
QObject* QVideoProbe_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QVideoProbe_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QVideoProbe_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QVideoProbe_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQVideoProbe* self_cast = dynamic_cast<VirtualQVideoProbe*>( (QVideoProbe*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QVideoProbe_delete(QVideoProbe* self) {
	delete self;
}

