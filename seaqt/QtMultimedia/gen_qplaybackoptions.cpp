#include <QMetaObject>
#include <QPlaybackOptions>
#include <qplaybackoptions.h>
#include "gen_qplaybackoptions.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPlaybackOptions* QPlaybackOptions_new() {
	return new (std::nothrow) QPlaybackOptions();
}

QPlaybackOptions* QPlaybackOptions_new_from(QPlaybackOptions* from) {
	return new (std::nothrow) QPlaybackOptions(*from);
}

void QPlaybackOptions_operatorAssign(QPlaybackOptions* self, QPlaybackOptions* from) {
	self->operator=(*from);
}

void QPlaybackOptions_swap(QPlaybackOptions* self, QPlaybackOptions* other) {
	self->swap(*other);
}

void QPlaybackOptions_resetNetworkTimeout(QPlaybackOptions* self) {
	self->resetNetworkTimeout();
}

int QPlaybackOptions_playbackIntent(const QPlaybackOptions* self) {
	QPlaybackOptions::PlaybackIntent _ret = self->playbackIntent();
	return static_cast<int>(_ret);
}

void QPlaybackOptions_setPlaybackIntent(QPlaybackOptions* self, int intent) {
	self->setPlaybackIntent(static_cast<QPlaybackOptions::PlaybackIntent>(intent));
}

void QPlaybackOptions_resetPlaybackIntent(QPlaybackOptions* self) {
	self->resetPlaybackIntent();
}

ptrdiff_t QPlaybackOptions_probeSize(const QPlaybackOptions* self) {
	qsizetype _ret = self->probeSize();
	return static_cast<ptrdiff_t>(_ret);
}

void QPlaybackOptions_setProbeSize(QPlaybackOptions* self, ptrdiff_t probeSizeBytes) {
	self->setProbeSize((qsizetype)(probeSizeBytes));
}

void QPlaybackOptions_resetProbeSize(QPlaybackOptions* self) {
	self->resetProbeSize();
}

const QMetaObject* QPlaybackOptions_staticMetaObject() { return &QPlaybackOptions::staticMetaObject; }
void QPlaybackOptions_delete(QPlaybackOptions* self) {
	delete self;
}

