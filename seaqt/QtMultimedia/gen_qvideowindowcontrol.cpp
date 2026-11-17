#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVideoWindowControl>
#include <qvideowindowcontrol.h>
#include "gen_qvideowindowcontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QVideoWindowControl_virtbase(QVideoWindowControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QVideoWindowControl_metaObject(const QVideoWindowControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoWindowControl_metacast(QVideoWindowControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoWindowControl_metacall(QVideoWindowControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QVideoWindowControl_tr_s(const char* s) {
	QString _ret = QVideoWindowControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWindowControl_trUtf8_s(const char* s) {
	QString _ret = QVideoWindowControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

uintptr_t QVideoWindowControl_winId(const QVideoWindowControl* self) {
	WId _ret = self->winId();
	return static_cast<uintptr_t>(_ret);
}

void QVideoWindowControl_setWinId(QVideoWindowControl* self, uintptr_t id) {
	self->setWinId(static_cast<WId>(id));
}

QRect* QVideoWindowControl_displayRect(const QVideoWindowControl* self) {
	return new QRect(self->displayRect());
}

void QVideoWindowControl_setDisplayRect(QVideoWindowControl* self, QRect* rect) {
	self->setDisplayRect(*rect);
}

bool QVideoWindowControl_isFullScreen(const QVideoWindowControl* self) {
	return self->isFullScreen();
}

void QVideoWindowControl_setFullScreen(QVideoWindowControl* self, bool fullScreen) {
	self->setFullScreen(fullScreen);
}

void QVideoWindowControl_repaint(QVideoWindowControl* self) {
	self->repaint();
}

QSize* QVideoWindowControl_nativeSize(const QVideoWindowControl* self) {
	return new QSize(self->nativeSize());
}

int QVideoWindowControl_aspectRatioMode(const QVideoWindowControl* self) {
	Qt::AspectRatioMode _ret = self->aspectRatioMode();
	return static_cast<int>(_ret);
}

void QVideoWindowControl_setAspectRatioMode(QVideoWindowControl* self, int mode) {
	self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

int QVideoWindowControl_brightness(const QVideoWindowControl* self) {
	return self->brightness();
}

void QVideoWindowControl_setBrightness(QVideoWindowControl* self, int brightness) {
	self->setBrightness(static_cast<int>(brightness));
}

int QVideoWindowControl_contrast(const QVideoWindowControl* self) {
	return self->contrast();
}

void QVideoWindowControl_setContrast(QVideoWindowControl* self, int contrast) {
	self->setContrast(static_cast<int>(contrast));
}

int QVideoWindowControl_hue(const QVideoWindowControl* self) {
	return self->hue();
}

void QVideoWindowControl_setHue(QVideoWindowControl* self, int hue) {
	self->setHue(static_cast<int>(hue));
}

int QVideoWindowControl_saturation(const QVideoWindowControl* self) {
	return self->saturation();
}

void QVideoWindowControl_setSaturation(QVideoWindowControl* self, int saturation) {
	self->setSaturation(static_cast<int>(saturation));
}

void QVideoWindowControl_fullScreenChanged(QVideoWindowControl* self, bool fullScreen) {
	self->fullScreenChanged(fullScreen);
}

void QVideoWindowControl_connect_fullScreenChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(bool)>(&QVideoWindowControl::fullScreenChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool fullScreen) {
			bool sigval1 = fullScreen;
			callback(release.slot, sigval1);
	});
}

void QVideoWindowControl_brightnessChanged(QVideoWindowControl* self, int brightness) {
	self->brightnessChanged(static_cast<int>(brightness));
}

void QVideoWindowControl_connect_brightnessChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::brightnessChanged), self, [callback, release = seaqt::release_callback{slot,release}](int brightness) {
			int sigval1 = brightness;
			callback(release.slot, sigval1);
	});
}

void QVideoWindowControl_contrastChanged(QVideoWindowControl* self, int contrast) {
	self->contrastChanged(static_cast<int>(contrast));
}

void QVideoWindowControl_connect_contrastChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::contrastChanged), self, [callback, release = seaqt::release_callback{slot,release}](int contrast) {
			int sigval1 = contrast;
			callback(release.slot, sigval1);
	});
}

void QVideoWindowControl_hueChanged(QVideoWindowControl* self, int hue) {
	self->hueChanged(static_cast<int>(hue));
}

void QVideoWindowControl_connect_hueChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::hueChanged), self, [callback, release = seaqt::release_callback{slot,release}](int hue) {
			int sigval1 = hue;
			callback(release.slot, sigval1);
	});
}

void QVideoWindowControl_saturationChanged(QVideoWindowControl* self, int saturation) {
	self->saturationChanged(static_cast<int>(saturation));
}

void QVideoWindowControl_connect_saturationChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::saturationChanged), self, [callback, release = seaqt::release_callback{slot,release}](int saturation) {
			int sigval1 = saturation;
			callback(release.slot, sigval1);
	});
}

void QVideoWindowControl_nativeSizeChanged(QVideoWindowControl* self) {
	self->nativeSizeChanged();
}

void QVideoWindowControl_connect_nativeSizeChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)()>(&QVideoWindowControl::nativeSizeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QVideoWindowControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QVideoWindowControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWindowControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoWindowControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWindowControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QVideoWindowControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWindowControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoWindowControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoWindowControl_staticMetaObject() { return &QVideoWindowControl::staticMetaObject; }
void QVideoWindowControl_delete(QVideoWindowControl* self) {
	delete self;
}

