#include <QAmbientSound>
#include <QAudioEngine>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qambientsound.h>
#include "gen_qambientsound.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAmbientSound final : public QAmbientSound {
	const QAmbientSound_VTable* vtbl;
public:
	friend void* QAmbientSound_vdata(VirtualQAmbientSound* self);
	friend VirtualQAmbientSound* vdata_QAmbientSound(void* vdata);

	VirtualQAmbientSound(const QAmbientSound_VTable* vtbl, QAudioEngine* engine): QAmbientSound(engine), vtbl(vtbl) {}

	virtual ~VirtualQAmbientSound() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAmbientSound::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAmbientSound_virtualbase_metaObject(const VirtualQAmbientSound* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAmbientSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAmbientSound_virtualbase_metacast(VirtualQAmbientSound* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAmbientSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAmbientSound_virtualbase_metacall(VirtualQAmbientSound* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAmbientSound::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAmbientSound_virtualbase_event(VirtualQAmbientSound* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAmbientSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAmbientSound_virtualbase_eventFilter(VirtualQAmbientSound* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAmbientSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAmbientSound_virtualbase_timerEvent(VirtualQAmbientSound* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAmbientSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAmbientSound_virtualbase_childEvent(VirtualQAmbientSound* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAmbientSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAmbientSound_virtualbase_customEvent(VirtualQAmbientSound* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAmbientSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAmbientSound_virtualbase_connectNotify(VirtualQAmbientSound* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAmbientSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAmbientSound_virtualbase_disconnectNotify(VirtualQAmbientSound* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAmbientSound_protectedbase_sender(const VirtualQAmbientSound* self);
	friend int QAmbientSound_protectedbase_senderSignalIndex(const VirtualQAmbientSound* self);
	friend int QAmbientSound_protectedbase_receivers(const VirtualQAmbientSound* self, const char* signal);
	friend bool QAmbientSound_protectedbase_isSignalConnected(const VirtualQAmbientSound* self, QMetaMethod* signal);
};

VirtualQAmbientSound* QAmbientSound_new(const QAmbientSound_VTable* vtbl, size_t vdata, QAudioEngine* engine) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAmbientSound>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAmbientSound(vtbl, engine) : nullptr;
}

void QAmbientSound_virtbase(QAmbientSound* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAmbientSound_metaObject(const QAmbientSound* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAmbientSound_metacast(QAmbientSound* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAmbientSound_metacall(QAmbientSound* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAmbientSound_tr_s(const char* s) {
	QString _ret = QAmbientSound::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAmbientSound_setSource(QAmbientSound* self, QUrl* url) {
	self->setSource(*url);
}

QUrl* QAmbientSound_source(const QAmbientSound* self) {
	return new QUrl(self->source());
}

int QAmbientSound_loops(const QAmbientSound* self) {
	return self->loops();
}

void QAmbientSound_setLoops(QAmbientSound* self, int loops) {
	self->setLoops(static_cast<int>(loops));
}

bool QAmbientSound_autoPlay(const QAmbientSound* self) {
	return self->autoPlay();
}

void QAmbientSound_setAutoPlay(QAmbientSound* self, bool autoPlay) {
	self->setAutoPlay(autoPlay);
}

void QAmbientSound_setVolume(QAmbientSound* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

float QAmbientSound_volume(const QAmbientSound* self) {
	return self->volume();
}

QAudioEngine* QAmbientSound_engine(const QAmbientSound* self) {
	return self->engine();
}

void QAmbientSound_sourceChanged(QAmbientSound* self) {
	self->sourceChanged();
}

void QAmbientSound_connect_sourceChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::sourceChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAmbientSound_loopsChanged(QAmbientSound* self) {
	self->loopsChanged();
}

void QAmbientSound_connect_loopsChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::loopsChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAmbientSound_autoPlayChanged(QAmbientSound* self) {
	self->autoPlayChanged();
}

void QAmbientSound_connect_autoPlayChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::autoPlayChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAmbientSound_volumeChanged(QAmbientSound* self) {
	self->volumeChanged();
}

void QAmbientSound_connect_volumeChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::volumeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAmbientSound_play(QAmbientSound* self) {
	self->play();
}

void QAmbientSound_pause(QAmbientSound* self) {
	self->pause();
}

void QAmbientSound_stop(QAmbientSound* self) {
	self->stop();
}

struct seaqt_string QAmbientSound_tr_s_c(const char* s, const char* c) {
	QString _ret = QAmbientSound::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAmbientSound_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAmbientSound::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAmbientSound_staticMetaObject() { return &QAmbientSound::staticMetaObject; }
void* QAmbientSound_vdata(VirtualQAmbientSound* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAmbientSound>()); }
VirtualQAmbientSound* vdata_QAmbientSound(void* vdata) { return reinterpret_cast<VirtualQAmbientSound*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAmbientSound>()); }

QMetaObject* QAmbientSound_virtualbase_metaObject(const VirtualQAmbientSound* self) {

	return (QMetaObject*) self->QAmbientSound::metaObject();
}

void* QAmbientSound_virtualbase_metacast(VirtualQAmbientSound* self, const char* param1) {

	return self->QAmbientSound::qt_metacast(param1);
}

int QAmbientSound_virtualbase_metacall(VirtualQAmbientSound* self, int param1, int param2, void** param3) {

	return self->QAmbientSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAmbientSound_virtualbase_event(VirtualQAmbientSound* self, QEvent* event) {

	return self->QAmbientSound::event(event);
}

bool QAmbientSound_virtualbase_eventFilter(VirtualQAmbientSound* self, QObject* watched, QEvent* event) {

	return self->QAmbientSound::eventFilter(watched, event);
}

void QAmbientSound_virtualbase_timerEvent(VirtualQAmbientSound* self, QTimerEvent* event) {

	self->QAmbientSound::timerEvent(event);
}

void QAmbientSound_virtualbase_childEvent(VirtualQAmbientSound* self, QChildEvent* event) {

	self->QAmbientSound::childEvent(event);
}

void QAmbientSound_virtualbase_customEvent(VirtualQAmbientSound* self, QEvent* event) {

	self->QAmbientSound::customEvent(event);
}

void QAmbientSound_virtualbase_connectNotify(VirtualQAmbientSound* self, QMetaMethod* signal) {

	self->QAmbientSound::connectNotify(*signal);
}

void QAmbientSound_virtualbase_disconnectNotify(VirtualQAmbientSound* self, QMetaMethod* signal) {

	self->QAmbientSound::disconnectNotify(*signal);
}

QObject* QAmbientSound_protectedbase_sender(const VirtualQAmbientSound* self) {
	return self->sender();
}

int QAmbientSound_protectedbase_senderSignalIndex(const VirtualQAmbientSound* self) {
	return self->senderSignalIndex();
}

int QAmbientSound_protectedbase_receivers(const VirtualQAmbientSound* self, const char* signal) {
	return self->receivers(signal);
}

bool QAmbientSound_protectedbase_isSignalConnected(const VirtualQAmbientSound* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAmbientSound_delete(QAmbientSound* self) {
	delete self;
}

