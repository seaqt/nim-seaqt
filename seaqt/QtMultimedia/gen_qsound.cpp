#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSound>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsound.h>
#include "gen_qsound.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSound final : public QSound {
	struct QSound_VTable* vtbl;
public:

	VirtualQSound(struct QSound_VTable* vtbl, const QString& filename): QSound(filename), vtbl(vtbl) {};
	VirtualQSound(struct QSound_VTable* vtbl, const QString& filename, QObject* parent): QSound(filename, parent), vtbl(vtbl) {};

	virtual ~VirtualQSound() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSound::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSound_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSound_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSound_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSound::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSound_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSound_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSound_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSound_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSound_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSound_protectedbase_sender(const void* self);
	friend int QSound_protectedbase_senderSignalIndex(const void* self);
	friend int QSound_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSound_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSound* QSound_new(struct QSound_VTable* vtbl, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSound(vtbl, filename_QString);
}

QSound* QSound_new2(struct QSound_VTable* vtbl, struct miqt_string filename, QObject* parent) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSound(vtbl, filename_QString, parent);
}

void QSound_virtbase(QSound* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSound_metaObject(const QSound* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSound_metacast(QSound* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSound_metacall(QSound* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSound_tr(const char* s) {
	QString _ret = QSound::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSound_trUtf8(const char* s) {
	QString _ret = QSound::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSound_play(struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QSound::play(filename_QString);
}

int QSound_loops(const QSound* self) {
	return self->loops();
}

int QSound_loopsRemaining(const QSound* self) {
	return self->loopsRemaining();
}

void QSound_setLoops(QSound* self, int loops) {
	self->setLoops(static_cast<int>(loops));
}

struct miqt_string QSound_fileName(const QSound* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSound_isFinished(const QSound* self) {
	return self->isFinished();
}

void QSound_play2(QSound* self) {
	self->play();
}

void QSound_stop(QSound* self) {
	self->stop();
}

struct miqt_string QSound_tr2(const char* s, const char* c) {
	QString _ret = QSound::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSound_tr3(const char* s, const char* c, int n) {
	QString _ret = QSound::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSound_trUtf82(const char* s, const char* c) {
	QString _ret = QSound::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSound_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSound::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSound_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSound*)(self) )->QSound::metaObject();

}

void* QSound_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSound*)(self) )->QSound::qt_metacast(param1);

}

int QSound_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSound*)(self) )->QSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSound_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSound*)(self) )->QSound::event(event);

}

bool QSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSound*)(self) )->QSound::eventFilter(watched, event);

}

void QSound_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSound*)(self) )->QSound::timerEvent(event);

}

void QSound_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSound*)(self) )->QSound::childEvent(event);

}

void QSound_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSound*)(self) )->QSound::customEvent(event);

}

void QSound_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSound*)(self) )->QSound::connectNotify(*signal);

}

void QSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSound*)(self) )->QSound::disconnectNotify(*signal);

}

const QMetaObject* QSound_staticMetaObject() { return &QSound::staticMetaObject; }
QObject* QSound_protectedbase_sender(const void* self) {
	VirtualQSound* self_cast = static_cast<VirtualQSound*>( (QSound*)(self) );
	
	return self_cast->sender();

}

int QSound_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSound* self_cast = static_cast<VirtualQSound*>( (QSound*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSound_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSound* self_cast = static_cast<VirtualQSound*>( (QSound*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSound_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSound* self_cast = static_cast<VirtualQSound*>( (QSound*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSound_delete(QSound* self) {
	delete self;
}

