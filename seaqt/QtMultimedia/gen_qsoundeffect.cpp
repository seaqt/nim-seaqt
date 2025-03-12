#include <QAudioDeviceInfo>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSoundEffect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qsoundeffect.h>
#include "gen_qsoundeffect.h"
class VirtualQSoundEffect final : public QSoundEffect {
	const QSoundEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QSoundEffect_VTable* QSoundEffect_vtbl(const VirtualQSoundEffect* self);
	friend void* QSoundEffect_vdata(const VirtualQSoundEffect* self);
	friend void QSoundEffect_setVdata(VirtualQSoundEffect* self, void* vdata);

	VirtualQSoundEffect(const QSoundEffect_VTable* vtbl, void* vdata): QSoundEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSoundEffect(const QSoundEffect_VTable* vtbl, void* vdata, const QAudioDeviceInfo& audioDevice): QSoundEffect(audioDevice), vtbl(vtbl), vdata(vdata) {}
	VirtualQSoundEffect(const QSoundEffect_VTable* vtbl, void* vdata, QObject* parent): QSoundEffect(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSoundEffect(const QSoundEffect_VTable* vtbl, void* vdata, const QAudioDeviceInfo& audioDevice, QObject* parent): QSoundEffect(audioDevice, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSoundEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSoundEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSoundEffect_virtualbase_metaObject(const VirtualQSoundEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSoundEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSoundEffect_virtualbase_metacast(VirtualQSoundEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSoundEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSoundEffect_virtualbase_metacall(VirtualQSoundEffect* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSoundEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSoundEffect_virtualbase_event(VirtualQSoundEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSoundEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSoundEffect_virtualbase_eventFilter(VirtualQSoundEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSoundEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSoundEffect_virtualbase_timerEvent(VirtualQSoundEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSoundEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSoundEffect_virtualbase_childEvent(VirtualQSoundEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSoundEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSoundEffect_virtualbase_customEvent(VirtualQSoundEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSoundEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSoundEffect_virtualbase_connectNotify(VirtualQSoundEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSoundEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSoundEffect_virtualbase_disconnectNotify(VirtualQSoundEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSoundEffect_protectedbase_sender(const VirtualQSoundEffect* self);
	friend int QSoundEffect_protectedbase_senderSignalIndex(const VirtualQSoundEffect* self);
	friend int QSoundEffect_protectedbase_receivers(const VirtualQSoundEffect* self, const char* signal);
	friend bool QSoundEffect_protectedbase_isSignalConnected(const VirtualQSoundEffect* self, QMetaMethod* signal);
};

VirtualQSoundEffect* QSoundEffect_new(const QSoundEffect_VTable* vtbl, void* vdata) {
	return new VirtualQSoundEffect(vtbl, vdata);
}

VirtualQSoundEffect* QSoundEffect_new2(const QSoundEffect_VTable* vtbl, void* vdata, QAudioDeviceInfo* audioDevice) {
	return new VirtualQSoundEffect(vtbl, vdata, *audioDevice);
}

VirtualQSoundEffect* QSoundEffect_new3(const QSoundEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSoundEffect(vtbl, vdata, parent);
}

VirtualQSoundEffect* QSoundEffect_new4(const QSoundEffect_VTable* vtbl, void* vdata, QAudioDeviceInfo* audioDevice, QObject* parent) {
	return new VirtualQSoundEffect(vtbl, vdata, *audioDevice, parent);
}

void QSoundEffect_virtbase(QSoundEffect* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSoundEffect_metaObject(const QSoundEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSoundEffect_metacast(QSoundEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSoundEffect_metacall(QSoundEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSoundEffect_tr(const char* s) {
	QString _ret = QSoundEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf8(const char* s) {
	QString _ret = QSoundEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QSoundEffect_supportedMimeTypes() {
	QStringList _ret = QSoundEffect::supportedMimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QUrl* QSoundEffect_source(const QSoundEffect* self) {
	return new QUrl(self->source());
}

void QSoundEffect_setSource(QSoundEffect* self, QUrl* url) {
	self->setSource(*url);
}

int QSoundEffect_loopCount(const QSoundEffect* self) {
	return self->loopCount();
}

int QSoundEffect_loopsRemaining(const QSoundEffect* self) {
	return self->loopsRemaining();
}

void QSoundEffect_setLoopCount(QSoundEffect* self, int loopCount) {
	self->setLoopCount(static_cast<int>(loopCount));
}

double QSoundEffect_volume(const QSoundEffect* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

void QSoundEffect_setVolume(QSoundEffect* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

bool QSoundEffect_isMuted(const QSoundEffect* self) {
	return self->isMuted();
}

void QSoundEffect_setMuted(QSoundEffect* self, bool muted) {
	self->setMuted(muted);
}

bool QSoundEffect_isLoaded(const QSoundEffect* self) {
	return self->isLoaded();
}

bool QSoundEffect_isPlaying(const QSoundEffect* self) {
	return self->isPlaying();
}

int QSoundEffect_status(const QSoundEffect* self) {
	QSoundEffect::Status _ret = self->status();
	return static_cast<int>(_ret);
}

struct miqt_string QSoundEffect_category(const QSoundEffect* self) {
	QString _ret = self->category();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSoundEffect_setCategory(QSoundEffect* self, struct miqt_string category) {
	QString category_QString = QString::fromUtf8(category.data, category.len);
	self->setCategory(category_QString);
}

void QSoundEffect_sourceChanged(QSoundEffect* self) {
	self->sourceChanged();
}

void QSoundEffect_connect_sourceChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::sourceChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loopCountChanged(QSoundEffect* self) {
	self->loopCountChanged();
}

void QSoundEffect_connect_loopCountChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopCountChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loopsRemainingChanged(QSoundEffect* self) {
	self->loopsRemainingChanged();
}

void QSoundEffect_connect_loopsRemainingChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopsRemainingChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_volumeChanged(QSoundEffect* self) {
	self->volumeChanged();
}

void QSoundEffect_connect_volumeChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::volumeChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_mutedChanged(QSoundEffect* self) {
	self->mutedChanged();
}

void QSoundEffect_connect_mutedChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::mutedChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loadedChanged(QSoundEffect* self) {
	self->loadedChanged();
}

void QSoundEffect_connect_loadedChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loadedChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_playingChanged(QSoundEffect* self) {
	self->playingChanged();
}

void QSoundEffect_connect_playingChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::playingChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_statusChanged(QSoundEffect* self) {
	self->statusChanged();
}

void QSoundEffect_connect_statusChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::statusChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_categoryChanged(QSoundEffect* self) {
	self->categoryChanged();
}

void QSoundEffect_connect_categoryChanged(VirtualQSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::categoryChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_play(QSoundEffect* self) {
	self->play();
}

void QSoundEffect_stop(QSoundEffect* self) {
	self->stop();
}

struct miqt_string QSoundEffect_tr2(const char* s, const char* c) {
	QString _ret = QSoundEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QSoundEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QSoundEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSoundEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSoundEffect_virtualbase_metaObject(const VirtualQSoundEffect* self) {

	return (QMetaObject*) self->QSoundEffect::metaObject();
}

void* QSoundEffect_virtualbase_metacast(VirtualQSoundEffect* self, const char* param1) {

	return self->QSoundEffect::qt_metacast(param1);
}

int QSoundEffect_virtualbase_metacall(VirtualQSoundEffect* self, int param1, int param2, void** param3) {

	return self->QSoundEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSoundEffect_virtualbase_event(VirtualQSoundEffect* self, QEvent* event) {

	return self->QSoundEffect::event(event);
}

bool QSoundEffect_virtualbase_eventFilter(VirtualQSoundEffect* self, QObject* watched, QEvent* event) {

	return self->QSoundEffect::eventFilter(watched, event);
}

void QSoundEffect_virtualbase_timerEvent(VirtualQSoundEffect* self, QTimerEvent* event) {

	self->QSoundEffect::timerEvent(event);
}

void QSoundEffect_virtualbase_childEvent(VirtualQSoundEffect* self, QChildEvent* event) {

	self->QSoundEffect::childEvent(event);
}

void QSoundEffect_virtualbase_customEvent(VirtualQSoundEffect* self, QEvent* event) {

	self->QSoundEffect::customEvent(event);
}

void QSoundEffect_virtualbase_connectNotify(VirtualQSoundEffect* self, QMetaMethod* signal) {

	self->QSoundEffect::connectNotify(*signal);
}

void QSoundEffect_virtualbase_disconnectNotify(VirtualQSoundEffect* self, QMetaMethod* signal) {

	self->QSoundEffect::disconnectNotify(*signal);
}

const QMetaObject* QSoundEffect_staticMetaObject() { return &QSoundEffect::staticMetaObject; }

const QSoundEffect_VTable* QSoundEffect_vtbl(const VirtualQSoundEffect* self) { return self->vtbl; }
void* QSoundEffect_vdata(const VirtualQSoundEffect* self) { return self->vdata; }
void QSoundEffect_setVdata(VirtualQSoundEffect* self, void* vdata) { self->vdata = vdata; }

QObject* QSoundEffect_protectedbase_sender(const VirtualQSoundEffect* self) {
	return self->sender();
}

int QSoundEffect_protectedbase_senderSignalIndex(const VirtualQSoundEffect* self) {
	return self->senderSignalIndex();
}

int QSoundEffect_protectedbase_receivers(const VirtualQSoundEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QSoundEffect_protectedbase_isSignalConnected(const VirtualQSoundEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSoundEffect_delete(QSoundEffect* self) {
	delete self;
}

