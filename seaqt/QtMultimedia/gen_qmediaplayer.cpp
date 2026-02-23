#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaContent>
#include <QMediaObject>
#include <QMediaPlayer>
#include <QMediaPlaylist>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkConfiguration>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVector>
#include <qmediaplayer.h>
#include "gen_qmediaplayer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQMediaPlayer final : public QMediaPlayer {
	const QMediaPlayer_VTable* vtbl;
public:
	friend void* QMediaPlayer_vdata(VirtualQMediaPlayer* self);
	friend VirtualQMediaPlayer* vdata_QMediaPlayer(void* vdata);

	VirtualQMediaPlayer(const QMediaPlayer_VTable* vtbl): QMediaPlayer(), vtbl(vtbl) {}
	VirtualQMediaPlayer(const QMediaPlayer_VTable* vtbl, QObject* parent): QMediaPlayer(parent), vtbl(vtbl) {}
	VirtualQMediaPlayer(const QMediaPlayer_VTable* vtbl, QObject* parent, QMediaPlayer::Flags flags): QMediaPlayer(parent, flags), vtbl(vtbl) {}

	virtual ~VirtualQMediaPlayer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaPlayer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QMediaPlayer_virtualbase_metaObject(const VirtualQMediaPlayer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaPlayer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QMediaPlayer_virtualbase_metacast(VirtualQMediaPlayer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaPlayer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QMediaPlayer_virtualbase_metacall(VirtualQMediaPlayer* self, int param1, int param2, void** param3);

	virtual QMultimedia::AvailabilityStatus availability() const override {
		if (vtbl->availability == 0) {
			return QMediaPlayer::availability();
		}

		int callback_return_value = vtbl->availability(this);
		return static_cast<QMultimedia::AvailabilityStatus>(callback_return_value);
	}

	friend int QMediaPlayer_virtualbase_availability(const VirtualQMediaPlayer* self);

	virtual bool bind(QObject* param1) override {
		if (vtbl->bind == 0) {
			return QMediaPlayer::bind(param1);
		}

		QObject* sigval1 = param1;
		bool callback_return_value = vtbl->bind(this, sigval1);
		return callback_return_value;
	}

	friend bool QMediaPlayer_virtualbase_bind(VirtualQMediaPlayer* self, QObject* param1);

	virtual void unbind(QObject* param1) override {
		if (vtbl->unbind == 0) {
			QMediaPlayer::unbind(param1);
			return;
		}

		QObject* sigval1 = param1;
		vtbl->unbind(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_unbind(VirtualQMediaPlayer* self, QObject* param1);

	virtual bool isAvailable() const override {
		if (vtbl->isAvailable == 0) {
			return QMediaPlayer::isAvailable();
		}

		bool callback_return_value = vtbl->isAvailable(this);
		return callback_return_value;
	}

	friend bool QMediaPlayer_virtualbase_isAvailable(const VirtualQMediaPlayer* self);

	virtual QMediaService* service() const override {
		if (vtbl->service == 0) {
			return QMediaPlayer::service();
		}

		QMediaService* callback_return_value = vtbl->service(this);
		return callback_return_value;
	}

	friend QMediaService* QMediaPlayer_virtualbase_service(const VirtualQMediaPlayer* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaPlayer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QMediaPlayer_virtualbase_event(VirtualQMediaPlayer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaPlayer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QMediaPlayer_virtualbase_eventFilter(VirtualQMediaPlayer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaPlayer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_timerEvent(VirtualQMediaPlayer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaPlayer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_childEvent(VirtualQMediaPlayer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaPlayer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_customEvent(VirtualQMediaPlayer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaPlayer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_connectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaPlayer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QMediaPlayer_virtualbase_disconnectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMediaPlayer_protectedbase_addPropertyWatch(VirtualQMediaPlayer* self, struct seaqt_string name);
	friend void QMediaPlayer_protectedbase_removePropertyWatch(VirtualQMediaPlayer* self, struct seaqt_string name);
	friend QObject* QMediaPlayer_protectedbase_sender(const VirtualQMediaPlayer* self);
	friend int QMediaPlayer_protectedbase_senderSignalIndex(const VirtualQMediaPlayer* self);
	friend int QMediaPlayer_protectedbase_receivers(const VirtualQMediaPlayer* self, const char* signal);
	friend bool QMediaPlayer_protectedbase_isSignalConnected(const VirtualQMediaPlayer* self, QMetaMethod* signal);
};

VirtualQMediaPlayer* QMediaPlayer_new(const QMediaPlayer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaPlayer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaPlayer(vtbl) : nullptr;
}

VirtualQMediaPlayer* QMediaPlayer_new_parent(const QMediaPlayer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaPlayer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaPlayer(vtbl, parent) : nullptr;
}

VirtualQMediaPlayer* QMediaPlayer_new_parent_flags(const QMediaPlayer_VTable* vtbl, size_t vdata, QObject* parent, int flags) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaPlayer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaPlayer(vtbl, parent, static_cast<QMediaPlayer::Flags>(flags)) : nullptr;
}

void QMediaPlayer_virtbase(QMediaPlayer* src, QMediaObject** outptr_QMediaObject) {
	*outptr_QMediaObject = static_cast<QMediaObject*>(src);
}

QMetaObject* QMediaPlayer_metaObject(const QMediaPlayer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaPlayer_metacast(QMediaPlayer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaPlayer_metacall(QMediaPlayer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaPlayer_tr_s(const char* s) {
	QString _ret = QMediaPlayer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayer_trUtf8_s(const char* s) {
	QString _ret = QMediaPlayer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlayer_hasSupport_mimeType(struct seaqt_string mimeType) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString);
	return static_cast<int>(_ret);
}

struct seaqt_array /* of struct seaqt_string */  QMediaPlayer_supportedMimeTypes() {
	QStringList _ret = QMediaPlayer::supportedMimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_setVideoOutput_surface(QMediaPlayer* self, QAbstractVideoSurface* surface) {
	self->setVideoOutput(surface);
}

void QMediaPlayer_setVideoOutput_surfaces(QMediaPlayer* self, struct seaqt_array /* of QAbstractVideoSurface* */  surfaces) {
	QVector<QAbstractVideoSurface *> surfaces_QList;
	surfaces_QList.reserve(surfaces.len);
	QAbstractVideoSurface** surfaces_arr = static_cast<QAbstractVideoSurface**>(surfaces.data);
	for(size_t i = 0; i < surfaces.len; ++i) {
		surfaces_QList.push_back(surfaces_arr[i]);
	}
	self->setVideoOutput(surfaces_QList);
}

QMediaContent* QMediaPlayer_media(const QMediaPlayer* self) {
	return new QMediaContent(self->media());
}

QIODevice* QMediaPlayer_mediaStream(const QMediaPlayer* self) {
	return (QIODevice*) self->mediaStream();
}

QMediaPlaylist* QMediaPlayer_playlist(const QMediaPlayer* self) {
	return self->playlist();
}

QMediaContent* QMediaPlayer_currentMedia(const QMediaPlayer* self) {
	return new QMediaContent(self->currentMedia());
}

int QMediaPlayer_state(const QMediaPlayer* self) {
	QMediaPlayer::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QMediaPlayer_mediaStatus(const QMediaPlayer* self) {
	QMediaPlayer::MediaStatus _ret = self->mediaStatus();
	return static_cast<int>(_ret);
}

long long QMediaPlayer_duration(const QMediaPlayer* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

long long QMediaPlayer_position(const QMediaPlayer* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

int QMediaPlayer_volume(const QMediaPlayer* self) {
	return self->volume();
}

bool QMediaPlayer_isMuted(const QMediaPlayer* self) {
	return self->isMuted();
}

bool QMediaPlayer_isAudioAvailable(const QMediaPlayer* self) {
	return self->isAudioAvailable();
}

bool QMediaPlayer_isVideoAvailable(const QMediaPlayer* self) {
	return self->isVideoAvailable();
}

int QMediaPlayer_bufferStatus(const QMediaPlayer* self) {
	return self->bufferStatus();
}

bool QMediaPlayer_isSeekable(const QMediaPlayer* self) {
	return self->isSeekable();
}

double QMediaPlayer_playbackRate(const QMediaPlayer* self) {
	qreal _ret = self->playbackRate();
	return static_cast<double>(_ret);
}

int QMediaPlayer_error(const QMediaPlayer* self) {
	QMediaPlayer::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QMediaPlayer_errorString(const QMediaPlayer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QNetworkConfiguration* QMediaPlayer_currentNetworkConfiguration(const QMediaPlayer* self) {
	return new QNetworkConfiguration(self->currentNetworkConfiguration());
}

int QMediaPlayer_availability(const QMediaPlayer* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

int QMediaPlayer_audioRole(const QMediaPlayer* self) {
	QAudio::Role _ret = self->audioRole();
	return static_cast<int>(_ret);
}

void QMediaPlayer_setAudioRole(QMediaPlayer* self, int audioRole) {
	self->setAudioRole(static_cast<QAudio::Role>(audioRole));
}

struct seaqt_array /* of int */  QMediaPlayer_supportedAudioRoles(const QMediaPlayer* self) {
	QList<QAudio::Role> _ret = self->supportedAudioRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QAudio::Role _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QMediaPlayer_customAudioRole(const QMediaPlayer* self) {
	QString _ret = self->customAudioRole();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaPlayer_setCustomAudioRole(QMediaPlayer* self, struct seaqt_string audioRole) {
	QString audioRole_QString = QString::fromUtf8(audioRole.data, audioRole.len);
	self->setCustomAudioRole(audioRole_QString);
}

struct seaqt_array /* of struct seaqt_string */  QMediaPlayer_supportedCustomAudioRoles(const QMediaPlayer* self) {
	QStringList _ret = self->supportedCustomAudioRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_play(QMediaPlayer* self) {
	self->play();
}

void QMediaPlayer_pause(QMediaPlayer* self) {
	self->pause();
}

void QMediaPlayer_stop(QMediaPlayer* self) {
	self->stop();
}

void QMediaPlayer_setPosition(QMediaPlayer* self, long long position) {
	self->setPosition(static_cast<qint64>(position));
}

void QMediaPlayer_setVolume(QMediaPlayer* self, int volume) {
	self->setVolume(static_cast<int>(volume));
}

void QMediaPlayer_setMuted(QMediaPlayer* self, bool muted) {
	self->setMuted(muted);
}

void QMediaPlayer_setPlaybackRate(QMediaPlayer* self, double rate) {
	self->setPlaybackRate(static_cast<qreal>(rate));
}

void QMediaPlayer_setMedia_media(QMediaPlayer* self, QMediaContent* media) {
	self->setMedia(*media);
}

void QMediaPlayer_setPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist) {
	self->setPlaylist(playlist);
}

void QMediaPlayer_setNetworkConfigurations(QMediaPlayer* self, struct seaqt_array /* of QNetworkConfiguration* */  configurations) {
	QList<QNetworkConfiguration> configurations_QList;
	configurations_QList.reserve(configurations.len);
	QNetworkConfiguration** configurations_arr = static_cast<QNetworkConfiguration**>(configurations.data);
	for(size_t i = 0; i < configurations.len; ++i) {
		configurations_QList.push_back(*(configurations_arr[i]));
	}
	self->setNetworkConfigurations(configurations_QList);
}

void QMediaPlayer_mediaChanged(QMediaPlayer* self, QMediaContent* media) {
	self->mediaChanged(*media);
}

void QMediaPlayer_connect_mediaChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QMediaContent&)>(&QMediaPlayer::mediaChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QMediaContent& media) {
			const QMediaContent& media_ret = media;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_currentMediaChanged(QMediaPlayer* self, QMediaContent* media) {
	self->currentMediaChanged(*media);
}

void QMediaPlayer_connect_currentMediaChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QMediaContent&)>(&QMediaPlayer::currentMediaChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QMediaContent& media) {
			const QMediaContent& media_ret = media;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_stateChanged(QMediaPlayer* self, int newState) {
	self->stateChanged(static_cast<QMediaPlayer::State>(newState));
}

void QMediaPlayer_connect_stateChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::State)>(&QMediaPlayer::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QMediaPlayer::State newState) {
			QMediaPlayer::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_mediaStatusChanged(QMediaPlayer* self, int status) {
	self->mediaStatusChanged(static_cast<QMediaPlayer::MediaStatus>(status));
}

void QMediaPlayer_connect_mediaStatusChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::MediaStatus)>(&QMediaPlayer::mediaStatusChanged), self, [callback, release = seaqt::release_callback{slot,release}](QMediaPlayer::MediaStatus status) {
			QMediaPlayer::MediaStatus status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_durationChanged(QMediaPlayer* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QMediaPlayer_connect_durationChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qint64)>(&QMediaPlayer::durationChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_positionChanged(QMediaPlayer* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QMediaPlayer_connect_positionChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qint64)>(&QMediaPlayer::positionChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_volumeChanged(QMediaPlayer* self, int volume) {
	self->volumeChanged(static_cast<int>(volume));
}

void QMediaPlayer_connect_volumeChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(int)>(&QMediaPlayer::volumeChanged), self, [callback, release = seaqt::release_callback{slot,release}](int volume) {
			int sigval1 = volume;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_mutedChanged(QMediaPlayer* self, bool muted) {
	self->mutedChanged(muted);
}

void QMediaPlayer_connect_mutedChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::mutedChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool muted) {
			bool sigval1 = muted;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_audioAvailableChanged(QMediaPlayer* self, bool available) {
	self->audioAvailableChanged(available);
}

void QMediaPlayer_connect_audioAvailableChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::audioAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool available) {
			bool sigval1 = available;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_videoAvailableChanged(QMediaPlayer* self, bool videoAvailable) {
	self->videoAvailableChanged(videoAvailable);
}

void QMediaPlayer_connect_videoAvailableChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::videoAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool videoAvailable) {
			bool sigval1 = videoAvailable;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_bufferStatusChanged(QMediaPlayer* self, int percentFilled) {
	self->bufferStatusChanged(static_cast<int>(percentFilled));
}

void QMediaPlayer_connect_bufferStatusChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(int)>(&QMediaPlayer::bufferStatusChanged), self, [callback, release = seaqt::release_callback{slot,release}](int percentFilled) {
			int sigval1 = percentFilled;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_seekableChanged(QMediaPlayer* self, bool seekable) {
	self->seekableChanged(seekable);
}

void QMediaPlayer_connect_seekableChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::seekableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool seekable) {
			bool sigval1 = seekable;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_playbackRateChanged(QMediaPlayer* self, double rate) {
	self->playbackRateChanged(static_cast<qreal>(rate));
}

void QMediaPlayer_connect_playbackRateChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qreal)>(&QMediaPlayer::playbackRateChanged), self, [callback, release = seaqt::release_callback{slot,release}](qreal rate) {
			qreal rate_ret = rate;
			double sigval1 = static_cast<double>(rate_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_audioRoleChanged(QMediaPlayer* self, int role) {
	self->audioRoleChanged(static_cast<QAudio::Role>(role));
}

void QMediaPlayer_connect_audioRoleChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QAudio::Role)>(&QMediaPlayer::audioRoleChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAudio::Role role) {
			QAudio::Role role_ret = role;
			int sigval1 = static_cast<int>(role_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_customAudioRoleChanged(QMediaPlayer* self, struct seaqt_string role) {
	QString role_QString = QString::fromUtf8(role.data, role.len);
	self->customAudioRoleChanged(role_QString);
}

void QMediaPlayer_connect_customAudioRoleChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QString&)>(&QMediaPlayer::customAudioRoleChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& role) {
			const QString role_ret = role;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray role_b = role_ret.toUtf8();
			struct seaqt_string role_ms;
			role_ms.len = role_b.length();
			role_ms.data = static_cast<char*>(malloc(role_ms.len));
			memcpy(role_ms.data, role_b.data(), role_ms.len);
			struct seaqt_string sigval1 = role_ms;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_error_error(QMediaPlayer* self, int error) {
	self->error(static_cast<QMediaPlayer::Error>(error));
}

void QMediaPlayer_connect_error_error(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::Error)>(&QMediaPlayer::error), self, [callback, release = seaqt::release_callback{slot,release}](QMediaPlayer::Error error) {
			QMediaPlayer::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayer_networkConfigurationChanged(QMediaPlayer* self, QNetworkConfiguration* configuration) {
	self->networkConfigurationChanged(*configuration);
}

void QMediaPlayer_connect_networkConfigurationChanged(QMediaPlayer* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t)) {
	QMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QNetworkConfiguration&)>(&QMediaPlayer::networkConfigurationChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QNetworkConfiguration& configuration) {
			const QNetworkConfiguration& configuration_ret = configuration;
			// Cast returned reference into pointer
			QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&configuration_ret);
			callback(release.slot, sigval1);
	});
}

bool QMediaPlayer_bind(QMediaPlayer* self, QObject* param1) {
	return self->bind(param1);
}

void QMediaPlayer_unbind(QMediaPlayer* self, QObject* param1) {
	self->unbind(param1);
}

struct seaqt_string QMediaPlayer_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaPlayer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayer_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMediaPlayer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayer_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlayer_hasSupport_mimeType_codecs(struct seaqt_string mimeType, struct seaqt_array /* of struct seaqt_string */  codecs) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList codecs_QList;
	codecs_QList.reserve(codecs.len);
	struct seaqt_string* codecs_arr = static_cast<struct seaqt_string*>(codecs.data);
	for(size_t i = 0; i < codecs.len; ++i) {
		QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
		codecs_QList.push_back(codecs_arr_i_QString);
	}
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString, codecs_QList);
	return static_cast<int>(_ret);
}

int QMediaPlayer_hasSupport_mimeType_codecs_flags(struct seaqt_string mimeType, struct seaqt_array /* of struct seaqt_string */  codecs, int flags) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList codecs_QList;
	codecs_QList.reserve(codecs.len);
	struct seaqt_string* codecs_arr = static_cast<struct seaqt_string*>(codecs.data);
	for(size_t i = 0; i < codecs.len; ++i) {
		QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
		codecs_QList.push_back(codecs_arr_i_QString);
	}
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString, codecs_QList, static_cast<QMediaPlayer::Flags>(flags));
	return static_cast<int>(_ret);
}

struct seaqt_array /* of struct seaqt_string */  QMediaPlayer_supportedMimeTypes_flags(int flags) {
	QStringList _ret = QMediaPlayer::supportedMimeTypes(static_cast<QMediaPlayer::Flags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_setMedia_media_stream(QMediaPlayer* self, QMediaContent* media, QIODevice* stream) {
	self->setMedia(*media, stream);
}

const QMetaObject* QMediaPlayer_staticMetaObject() { return &QMediaPlayer::staticMetaObject; }
void* QMediaPlayer_vdata(VirtualQMediaPlayer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQMediaPlayer>()); }
VirtualQMediaPlayer* vdata_QMediaPlayer(void* vdata) { return reinterpret_cast<VirtualQMediaPlayer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQMediaPlayer>()); }

QMetaObject* QMediaPlayer_virtualbase_metaObject(const VirtualQMediaPlayer* self) {

	return (QMetaObject*) self->QMediaPlayer::metaObject();
}

void* QMediaPlayer_virtualbase_metacast(VirtualQMediaPlayer* self, const char* param1) {

	return self->QMediaPlayer::qt_metacast(param1);
}

int QMediaPlayer_virtualbase_metacall(VirtualQMediaPlayer* self, int param1, int param2, void** param3) {

	return self->QMediaPlayer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QMediaPlayer_virtualbase_availability(const VirtualQMediaPlayer* self) {

	QMultimedia::AvailabilityStatus _ret = self->QMediaPlayer::availability();
	return static_cast<int>(_ret);
}

bool QMediaPlayer_virtualbase_bind(VirtualQMediaPlayer* self, QObject* param1) {

	return self->QMediaPlayer::bind(param1);
}

void QMediaPlayer_virtualbase_unbind(VirtualQMediaPlayer* self, QObject* param1) {

	self->QMediaPlayer::unbind(param1);
}

bool QMediaPlayer_virtualbase_isAvailable(const VirtualQMediaPlayer* self) {

	return self->QMediaPlayer::isAvailable();
}

QMediaService* QMediaPlayer_virtualbase_service(const VirtualQMediaPlayer* self) {

	return self->QMediaPlayer::service();
}

bool QMediaPlayer_virtualbase_event(VirtualQMediaPlayer* self, QEvent* event) {

	return self->QMediaPlayer::event(event);
}

bool QMediaPlayer_virtualbase_eventFilter(VirtualQMediaPlayer* self, QObject* watched, QEvent* event) {

	return self->QMediaPlayer::eventFilter(watched, event);
}

void QMediaPlayer_virtualbase_timerEvent(VirtualQMediaPlayer* self, QTimerEvent* event) {

	self->QMediaPlayer::timerEvent(event);
}

void QMediaPlayer_virtualbase_childEvent(VirtualQMediaPlayer* self, QChildEvent* event) {

	self->QMediaPlayer::childEvent(event);
}

void QMediaPlayer_virtualbase_customEvent(VirtualQMediaPlayer* self, QEvent* event) {

	self->QMediaPlayer::customEvent(event);
}

void QMediaPlayer_virtualbase_connectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal) {

	self->QMediaPlayer::connectNotify(*signal);
}

void QMediaPlayer_virtualbase_disconnectNotify(VirtualQMediaPlayer* self, QMetaMethod* signal) {

	self->QMediaPlayer::disconnectNotify(*signal);
}

void QMediaPlayer_protectedbase_addPropertyWatch(VirtualQMediaPlayer* self, struct seaqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->addPropertyWatch(name_QByteArray);
}

void QMediaPlayer_protectedbase_removePropertyWatch(VirtualQMediaPlayer* self, struct seaqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->removePropertyWatch(name_QByteArray);
}

QObject* QMediaPlayer_protectedbase_sender(const VirtualQMediaPlayer* self) {
	return self->sender();
}

int QMediaPlayer_protectedbase_senderSignalIndex(const VirtualQMediaPlayer* self) {
	return self->senderSignalIndex();
}

int QMediaPlayer_protectedbase_receivers(const VirtualQMediaPlayer* self, const char* signal) {
	return self->receivers(signal);
}

bool QMediaPlayer_protectedbase_isSignalConnected(const VirtualQMediaPlayer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMediaPlayer_delete(QMediaPlayer* self) {
	delete self;
}

