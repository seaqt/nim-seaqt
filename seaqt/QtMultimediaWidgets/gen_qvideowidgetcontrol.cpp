#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVideoWidgetControl>
#include <QWidget>
#include <qvideowidgetcontrol.h>
#include "gen_qvideowidgetcontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QVideoWidgetControl_virtbase(QVideoWidgetControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QVideoWidgetControl_metaObject(const QVideoWidgetControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoWidgetControl_metacast(QVideoWidgetControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoWidgetControl_metacall(QVideoWidgetControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QVideoWidgetControl_tr_s(const char* s) {
	QString _ret = QVideoWidgetControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWidgetControl_trUtf8_s(const char* s) {
	QString _ret = QVideoWidgetControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QVideoWidgetControl_videoWidget(QVideoWidgetControl* self) {
	return self->videoWidget();
}

int QVideoWidgetControl_aspectRatioMode(const QVideoWidgetControl* self) {
	Qt::AspectRatioMode _ret = self->aspectRatioMode();
	return static_cast<int>(_ret);
}

void QVideoWidgetControl_setAspectRatioMode(QVideoWidgetControl* self, int mode) {
	self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

bool QVideoWidgetControl_isFullScreen(const QVideoWidgetControl* self) {
	return self->isFullScreen();
}

void QVideoWidgetControl_setFullScreen(QVideoWidgetControl* self, bool fullScreen) {
	self->setFullScreen(fullScreen);
}

int QVideoWidgetControl_brightness(const QVideoWidgetControl* self) {
	return self->brightness();
}

void QVideoWidgetControl_setBrightness(QVideoWidgetControl* self, int brightness) {
	self->setBrightness(static_cast<int>(brightness));
}

int QVideoWidgetControl_contrast(const QVideoWidgetControl* self) {
	return self->contrast();
}

void QVideoWidgetControl_setContrast(QVideoWidgetControl* self, int contrast) {
	self->setContrast(static_cast<int>(contrast));
}

int QVideoWidgetControl_hue(const QVideoWidgetControl* self) {
	return self->hue();
}

void QVideoWidgetControl_setHue(QVideoWidgetControl* self, int hue) {
	self->setHue(static_cast<int>(hue));
}

int QVideoWidgetControl_saturation(const QVideoWidgetControl* self) {
	return self->saturation();
}

void QVideoWidgetControl_setSaturation(QVideoWidgetControl* self, int saturation) {
	self->setSaturation(static_cast<int>(saturation));
}

void QVideoWidgetControl_fullScreenChanged(QVideoWidgetControl* self, bool fullScreen) {
	self->fullScreenChanged(fullScreen);
}

void QVideoWidgetControl_connect_fullScreenChanged(QVideoWidgetControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QVideoWidgetControl::connect(self, static_cast<void (QVideoWidgetControl::*)(bool)>(&QVideoWidgetControl::fullScreenChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool fullScreen) {
			bool sigval1 = fullScreen;
			callback(release.slot, sigval1);
	});
}

void QVideoWidgetControl_brightnessChanged(QVideoWidgetControl* self, int brightness) {
	self->brightnessChanged(static_cast<int>(brightness));
}

void QVideoWidgetControl_connect_brightnessChanged(QVideoWidgetControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWidgetControl::connect(self, static_cast<void (QVideoWidgetControl::*)(int)>(&QVideoWidgetControl::brightnessChanged), self, [callback, release = seaqt::release_callback{slot,release}](int brightness) {
			int sigval1 = brightness;
			callback(release.slot, sigval1);
	});
}

void QVideoWidgetControl_contrastChanged(QVideoWidgetControl* self, int contrast) {
	self->contrastChanged(static_cast<int>(contrast));
}

void QVideoWidgetControl_connect_contrastChanged(QVideoWidgetControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWidgetControl::connect(self, static_cast<void (QVideoWidgetControl::*)(int)>(&QVideoWidgetControl::contrastChanged), self, [callback, release = seaqt::release_callback{slot,release}](int contrast) {
			int sigval1 = contrast;
			callback(release.slot, sigval1);
	});
}

void QVideoWidgetControl_hueChanged(QVideoWidgetControl* self, int hue) {
	self->hueChanged(static_cast<int>(hue));
}

void QVideoWidgetControl_connect_hueChanged(QVideoWidgetControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWidgetControl::connect(self, static_cast<void (QVideoWidgetControl::*)(int)>(&QVideoWidgetControl::hueChanged), self, [callback, release = seaqt::release_callback{slot,release}](int hue) {
			int sigval1 = hue;
			callback(release.slot, sigval1);
	});
}

void QVideoWidgetControl_saturationChanged(QVideoWidgetControl* self, int saturation) {
	self->saturationChanged(static_cast<int>(saturation));
}

void QVideoWidgetControl_connect_saturationChanged(QVideoWidgetControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QVideoWidgetControl::connect(self, static_cast<void (QVideoWidgetControl::*)(int)>(&QVideoWidgetControl::saturationChanged), self, [callback, release = seaqt::release_callback{slot,release}](int saturation) {
			int sigval1 = saturation;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QVideoWidgetControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QVideoWidgetControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWidgetControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoWidgetControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWidgetControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QVideoWidgetControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoWidgetControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoWidgetControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoWidgetControl_staticMetaObject() { return &QVideoWidgetControl::staticMetaObject; }
void QVideoWidgetControl_delete(QVideoWidgetControl* self) {
	delete self;
}

