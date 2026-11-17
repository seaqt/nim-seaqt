#include <QIODevice>
#include <QMediaContent>
#include <QMediaControl>
#include <QMediaPlayerControl>
#include <QMediaTimeRange>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qmediaplayercontrol.h>
#include "gen_qmediaplayercontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMediaPlayerControl_virtbase(QMediaPlayerControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaPlayerControl_metaObject(const QMediaPlayerControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaPlayerControl_metacast(QMediaPlayerControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaPlayerControl_metacall(QMediaPlayerControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaPlayerControl_tr_s(const char* s) {
	QString _ret = QMediaPlayerControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayerControl_trUtf8_s(const char* s) {
	QString _ret = QMediaPlayerControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlayerControl_state(const QMediaPlayerControl* self) {
	QMediaPlayer::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QMediaPlayerControl_mediaStatus(const QMediaPlayerControl* self) {
	QMediaPlayer::MediaStatus _ret = self->mediaStatus();
	return static_cast<int>(_ret);
}

long long QMediaPlayerControl_duration(const QMediaPlayerControl* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

long long QMediaPlayerControl_position(const QMediaPlayerControl* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

void QMediaPlayerControl_setPosition(QMediaPlayerControl* self, long long position) {
	self->setPosition(static_cast<qint64>(position));
}

int QMediaPlayerControl_volume(const QMediaPlayerControl* self) {
	return self->volume();
}

void QMediaPlayerControl_setVolume(QMediaPlayerControl* self, int volume) {
	self->setVolume(static_cast<int>(volume));
}

bool QMediaPlayerControl_isMuted(const QMediaPlayerControl* self) {
	return self->isMuted();
}

void QMediaPlayerControl_setMuted(QMediaPlayerControl* self, bool mute) {
	self->setMuted(mute);
}

int QMediaPlayerControl_bufferStatus(const QMediaPlayerControl* self) {
	return self->bufferStatus();
}

bool QMediaPlayerControl_isAudioAvailable(const QMediaPlayerControl* self) {
	return self->isAudioAvailable();
}

bool QMediaPlayerControl_isVideoAvailable(const QMediaPlayerControl* self) {
	return self->isVideoAvailable();
}

bool QMediaPlayerControl_isSeekable(const QMediaPlayerControl* self) {
	return self->isSeekable();
}

QMediaTimeRange* QMediaPlayerControl_availablePlaybackRanges(const QMediaPlayerControl* self) {
	return new QMediaTimeRange(self->availablePlaybackRanges());
}

double QMediaPlayerControl_playbackRate(const QMediaPlayerControl* self) {
	qreal _ret = self->playbackRate();
	return static_cast<double>(_ret);
}

void QMediaPlayerControl_setPlaybackRate(QMediaPlayerControl* self, double rate) {
	self->setPlaybackRate(static_cast<qreal>(rate));
}

QMediaContent* QMediaPlayerControl_media(const QMediaPlayerControl* self) {
	return new QMediaContent(self->media());
}

QIODevice* QMediaPlayerControl_mediaStream(const QMediaPlayerControl* self) {
	return (QIODevice*) self->mediaStream();
}

void QMediaPlayerControl_setMedia(QMediaPlayerControl* self, QMediaContent* media, QIODevice* stream) {
	self->setMedia(*media, stream);
}

void QMediaPlayerControl_play(QMediaPlayerControl* self) {
	self->play();
}

void QMediaPlayerControl_pause(QMediaPlayerControl* self) {
	self->pause();
}

void QMediaPlayerControl_stop(QMediaPlayerControl* self) {
	self->stop();
}

void QMediaPlayerControl_mediaChanged(QMediaPlayerControl* self, QMediaContent* content) {
	self->mediaChanged(*content);
}

void QMediaPlayerControl_connect_mediaChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(const QMediaContent&)>(&QMediaPlayerControl::mediaChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QMediaContent& content) {
			const QMediaContent& content_ret = content;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&content_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_durationChanged(QMediaPlayerControl* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QMediaPlayerControl_connect_durationChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(qint64)>(&QMediaPlayerControl::durationChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_positionChanged(QMediaPlayerControl* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QMediaPlayerControl_connect_positionChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(qint64)>(&QMediaPlayerControl::positionChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_stateChanged(QMediaPlayerControl* self, int newState) {
	self->stateChanged(static_cast<QMediaPlayer::State>(newState));
}

void QMediaPlayerControl_connect_stateChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(QMediaPlayer::State)>(&QMediaPlayerControl::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QMediaPlayer::State newState) {
			QMediaPlayer::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_mediaStatusChanged(QMediaPlayerControl* self, int status) {
	self->mediaStatusChanged(static_cast<QMediaPlayer::MediaStatus>(status));
}

void QMediaPlayerControl_connect_mediaStatusChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(QMediaPlayer::MediaStatus)>(&QMediaPlayerControl::mediaStatusChanged), self, [callback, release = seaqt::release_callback{slot,release}](QMediaPlayer::MediaStatus status) {
			QMediaPlayer::MediaStatus status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_volumeChanged(QMediaPlayerControl* self, int volume) {
	self->volumeChanged(static_cast<int>(volume));
}

void QMediaPlayerControl_connect_volumeChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(int)>(&QMediaPlayerControl::volumeChanged), self, [callback, release = seaqt::release_callback{slot,release}](int volume) {
			int sigval1 = volume;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_mutedChanged(QMediaPlayerControl* self, bool mute) {
	self->mutedChanged(mute);
}

void QMediaPlayerControl_connect_mutedChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(bool)>(&QMediaPlayerControl::mutedChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool mute) {
			bool sigval1 = mute;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_audioAvailableChanged(QMediaPlayerControl* self, bool audioAvailable) {
	self->audioAvailableChanged(audioAvailable);
}

void QMediaPlayerControl_connect_audioAvailableChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(bool)>(&QMediaPlayerControl::audioAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool audioAvailable) {
			bool sigval1 = audioAvailable;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_videoAvailableChanged(QMediaPlayerControl* self, bool videoAvailable) {
	self->videoAvailableChanged(videoAvailable);
}

void QMediaPlayerControl_connect_videoAvailableChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(bool)>(&QMediaPlayerControl::videoAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool videoAvailable) {
			bool sigval1 = videoAvailable;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_bufferStatusChanged(QMediaPlayerControl* self, int percentFilled) {
	self->bufferStatusChanged(static_cast<int>(percentFilled));
}

void QMediaPlayerControl_connect_bufferStatusChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(int)>(&QMediaPlayerControl::bufferStatusChanged), self, [callback, release = seaqt::release_callback{slot,release}](int percentFilled) {
			int sigval1 = percentFilled;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_seekableChanged(QMediaPlayerControl* self, bool seekable) {
	self->seekableChanged(seekable);
}

void QMediaPlayerControl_connect_seekableChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(bool)>(&QMediaPlayerControl::seekableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool seekable) {
			bool sigval1 = seekable;
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_availablePlaybackRangesChanged(QMediaPlayerControl* self, QMediaTimeRange* ranges) {
	self->availablePlaybackRangesChanged(*ranges);
}

void QMediaPlayerControl_connect_availablePlaybackRangesChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, QMediaTimeRange*), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(const QMediaTimeRange&)>(&QMediaPlayerControl::availablePlaybackRangesChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QMediaTimeRange& ranges) {
			const QMediaTimeRange& ranges_ret = ranges;
			// Cast returned reference into pointer
			QMediaTimeRange* sigval1 = const_cast<QMediaTimeRange*>(&ranges_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_playbackRateChanged(QMediaPlayerControl* self, double rate) {
	self->playbackRateChanged(static_cast<qreal>(rate));
}

void QMediaPlayerControl_connect_playbackRateChanged(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(qreal)>(&QMediaPlayerControl::playbackRateChanged), self, [callback, release = seaqt::release_callback{slot,release}](qreal rate) {
			qreal rate_ret = rate;
			double sigval1 = static_cast<double>(rate_ret);
			callback(release.slot, sigval1);
	});
}

void QMediaPlayerControl_error(QMediaPlayerControl* self, int error, struct seaqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->error(static_cast<int>(error), errorString_QString);
}

void QMediaPlayerControl_connect_error(QMediaPlayerControl* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t)) {
	QMediaPlayerControl::connect(self, static_cast<void (QMediaPlayerControl::*)(int, const QString&)>(&QMediaPlayerControl::error), self, [callback, release = seaqt::release_callback{slot,release}](int error, const QString& errorString) {
			int sigval1 = error;
			const QString errorString_ret = errorString;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray errorString_b = errorString_ret.toUtf8();
			struct seaqt_string errorString_ms;
			errorString_ms.len = errorString_b.length();
			errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
			memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
			struct seaqt_string sigval2 = errorString_ms;
			callback(release.slot, sigval1, sigval2);
	});
}

struct seaqt_string QMediaPlayerControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaPlayerControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayerControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayerControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayerControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMediaPlayerControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaPlayerControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayerControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaPlayerControl_staticMetaObject() { return &QMediaPlayerControl::staticMetaObject; }
void QMediaPlayerControl_delete(QMediaPlayerControl* self) {
	delete self;
}

