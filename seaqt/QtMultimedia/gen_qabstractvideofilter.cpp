#include <QAbstractVideoFilter>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFilterRunnable>
#include <QVideoFrame>
#include <QVideoSurfaceFormat>
#include <qabstractvideofilter.h>
#include "gen_qabstractvideofilter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QVideoFrame* QVideoFilterRunnable_run(QVideoFilterRunnable* self, QVideoFrame* input, QVideoSurfaceFormat* surfaceFormat, int flags) {
	return new QVideoFrame(self->run(input, *surfaceFormat, static_cast<QVideoFilterRunnable::RunFlags>(flags)));
}

void QVideoFilterRunnable_operatorAssign(QVideoFilterRunnable* self, QVideoFilterRunnable* param1) {
	self->operator=(*param1);
}

void QVideoFilterRunnable_delete(QVideoFilterRunnable* self) {
	delete self;
}

class VirtualQAbstractVideoFilter final : public QAbstractVideoFilter {
	struct QAbstractVideoFilter_VTable* vtbl;
public:

	VirtualQAbstractVideoFilter(struct QAbstractVideoFilter_VTable* vtbl): QAbstractVideoFilter(), vtbl(vtbl) {};
	VirtualQAbstractVideoFilter(struct QAbstractVideoFilter_VTable* vtbl, QObject* parent): QAbstractVideoFilter(parent), vtbl(vtbl) {};

	virtual ~VirtualQAbstractVideoFilter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractVideoFilter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractVideoFilter_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractVideoFilter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractVideoFilter_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractVideoFilter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractVideoFilter_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QVideoFilterRunnable* createFilterRunnable() override {
		if (vtbl->createFilterRunnable == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QVideoFilterRunnable* callback_return_value = vtbl->createFilterRunnable(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractVideoFilter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractVideoFilter_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractVideoFilter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractVideoFilter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractVideoFilter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractVideoFilter_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractVideoFilter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractVideoFilter_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractVideoFilter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractVideoFilter_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractVideoFilter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractVideoFilter_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractVideoFilter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractVideoFilter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractVideoFilter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractVideoFilter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractVideoFilter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAbstractVideoFilter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAbstractVideoFilter* QAbstractVideoFilter_new(struct QAbstractVideoFilter_VTable* vtbl) {
	return new VirtualQAbstractVideoFilter(vtbl);
}

QAbstractVideoFilter* QAbstractVideoFilter_new2(struct QAbstractVideoFilter_VTable* vtbl, QObject* parent) {
	return new VirtualQAbstractVideoFilter(vtbl, parent);
}

void QAbstractVideoFilter_virtbase(QAbstractVideoFilter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractVideoFilter_metaObject(const QAbstractVideoFilter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractVideoFilter_metacast(QAbstractVideoFilter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractVideoFilter_metacall(QAbstractVideoFilter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractVideoFilter_tr(const char* s) {
	QString _ret = QAbstractVideoFilter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoFilter_trUtf8(const char* s) {
	QString _ret = QAbstractVideoFilter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractVideoFilter_isActive(const QAbstractVideoFilter* self) {
	return self->isActive();
}

void QAbstractVideoFilter_setActive(QAbstractVideoFilter* self, bool v) {
	self->setActive(v);
}

QVideoFilterRunnable* QAbstractVideoFilter_createFilterRunnable(QAbstractVideoFilter* self) {
	return self->createFilterRunnable();
}

void QAbstractVideoFilter_activeChanged(QAbstractVideoFilter* self) {
	self->activeChanged();
}

void QAbstractVideoFilter_connect_activeChanged(QAbstractVideoFilter* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractVideoFilter::connect(self, static_cast<void (QAbstractVideoFilter::*)()>(&QAbstractVideoFilter::activeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractVideoFilter_tr2(const char* s, const char* c) {
	QString _ret = QAbstractVideoFilter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoFilter_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoFilter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoFilter_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractVideoFilter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoFilter_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoFilter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractVideoFilter_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::metaObject();

}

void* QAbstractVideoFilter_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::qt_metacast(param1);

}

int QAbstractVideoFilter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAbstractVideoFilter_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::event(event);

}

bool QAbstractVideoFilter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::eventFilter(watched, event);

}

void QAbstractVideoFilter_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::timerEvent(event);

}

void QAbstractVideoFilter_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::childEvent(event);

}

void QAbstractVideoFilter_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::customEvent(event);

}

void QAbstractVideoFilter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::connectNotify(*signal);

}

void QAbstractVideoFilter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractVideoFilter*)(self) )->QAbstractVideoFilter::disconnectNotify(*signal);

}

const QMetaObject* QAbstractVideoFilter_staticMetaObject() { return &QAbstractVideoFilter::staticMetaObject; }
QObject* QAbstractVideoFilter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractVideoFilter* self_cast = dynamic_cast<VirtualQAbstractVideoFilter*>( (QAbstractVideoFilter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAbstractVideoFilter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractVideoFilter* self_cast = dynamic_cast<VirtualQAbstractVideoFilter*>( (QAbstractVideoFilter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAbstractVideoFilter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAbstractVideoFilter* self_cast = dynamic_cast<VirtualQAbstractVideoFilter*>( (QAbstractVideoFilter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAbstractVideoFilter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAbstractVideoFilter* self_cast = dynamic_cast<VirtualQAbstractVideoFilter*>( (QAbstractVideoFilter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractVideoFilter_delete(QAbstractVideoFilter* self) {
	delete self;
}

