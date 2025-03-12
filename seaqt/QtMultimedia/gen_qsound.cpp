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
class VirtualQSound final : public QSound {
	const QSound_VTable* vtbl;
	void* vdata;
public:
	friend const QSound_VTable* QSound_vtbl(const VirtualQSound* self);
	friend void* QSound_vdata(const VirtualQSound* self);
	friend void QSound_setVdata(VirtualQSound* self, void* vdata);

	VirtualQSound(const QSound_VTable* vtbl, void* vdata, const QString& filename): QSound(filename), vtbl(vtbl), vdata(vdata) {}
	VirtualQSound(const QSound_VTable* vtbl, void* vdata, const QString& filename, QObject* parent): QSound(filename, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSound() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSound::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSound_virtualbase_metaObject(const VirtualQSound* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSound_virtualbase_metacast(VirtualQSound* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSound_virtualbase_metacall(VirtualQSound* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSound::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSound_virtualbase_event(VirtualQSound* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSound_virtualbase_eventFilter(VirtualQSound* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSound_virtualbase_timerEvent(VirtualQSound* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSound_virtualbase_childEvent(VirtualQSound* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSound_virtualbase_customEvent(VirtualQSound* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSound_virtualbase_connectNotify(VirtualQSound* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSound_virtualbase_disconnectNotify(VirtualQSound* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSound_protectedbase_sender(const VirtualQSound* self);
	friend int QSound_protectedbase_senderSignalIndex(const VirtualQSound* self);
	friend int QSound_protectedbase_receivers(const VirtualQSound* self, const char* signal);
	friend bool QSound_protectedbase_isSignalConnected(const VirtualQSound* self, QMetaMethod* signal);
};

VirtualQSound* QSound_new(const QSound_VTable* vtbl, void* vdata, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSound(vtbl, vdata, filename_QString);
}

VirtualQSound* QSound_new2(const QSound_VTable* vtbl, void* vdata, struct miqt_string filename, QObject* parent) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSound(vtbl, vdata, filename_QString, parent);
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

QMetaObject* QSound_virtualbase_metaObject(const VirtualQSound* self) {

	return (QMetaObject*) self->QSound::metaObject();
}

void* QSound_virtualbase_metacast(VirtualQSound* self, const char* param1) {

	return self->QSound::qt_metacast(param1);
}

int QSound_virtualbase_metacall(VirtualQSound* self, int param1, int param2, void** param3) {

	return self->QSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSound_virtualbase_event(VirtualQSound* self, QEvent* event) {

	return self->QSound::event(event);
}

bool QSound_virtualbase_eventFilter(VirtualQSound* self, QObject* watched, QEvent* event) {

	return self->QSound::eventFilter(watched, event);
}

void QSound_virtualbase_timerEvent(VirtualQSound* self, QTimerEvent* event) {

	self->QSound::timerEvent(event);
}

void QSound_virtualbase_childEvent(VirtualQSound* self, QChildEvent* event) {

	self->QSound::childEvent(event);
}

void QSound_virtualbase_customEvent(VirtualQSound* self, QEvent* event) {

	self->QSound::customEvent(event);
}

void QSound_virtualbase_connectNotify(VirtualQSound* self, QMetaMethod* signal) {

	self->QSound::connectNotify(*signal);
}

void QSound_virtualbase_disconnectNotify(VirtualQSound* self, QMetaMethod* signal) {

	self->QSound::disconnectNotify(*signal);
}

const QMetaObject* QSound_staticMetaObject() { return &QSound::staticMetaObject; }

const QSound_VTable* QSound_vtbl(const VirtualQSound* self) { return self->vtbl; }
void* QSound_vdata(const VirtualQSound* self) { return self->vdata; }
void QSound_setVdata(VirtualQSound* self, void* vdata) { self->vdata = vdata; }

QObject* QSound_protectedbase_sender(const VirtualQSound* self) {
	return self->sender();
}

int QSound_protectedbase_senderSignalIndex(const VirtualQSound* self) {
	return self->senderSignalIndex();
}

int QSound_protectedbase_receivers(const VirtualQSound* self, const char* signal) {
	return self->receivers(signal);
}

bool QSound_protectedbase_isSignalConnected(const VirtualQSound* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSound_delete(QSound* self) {
	delete self;
}

