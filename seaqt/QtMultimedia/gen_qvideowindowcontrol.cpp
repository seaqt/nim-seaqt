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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
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

struct miqt_string QVideoWindowControl_tr(const char* s) {
	QString _ret = QVideoWindowControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoWindowControl_trUtf8(const char* s) {
	QString _ret = QVideoWindowControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool fullScreen) {
			bool sigval1 = fullScreen;
			callback(slot, sigval1);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(bool)>(&QVideoWindowControl::fullScreenChanged), self, local_caller{slot, callback, release});
}

void QVideoWindowControl_brightnessChanged(QVideoWindowControl* self, int brightness) {
	self->brightnessChanged(static_cast<int>(brightness));
}

void QVideoWindowControl_connect_brightnessChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int brightness) {
			int sigval1 = brightness;
			callback(slot, sigval1);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::brightnessChanged), self, local_caller{slot, callback, release});
}

void QVideoWindowControl_contrastChanged(QVideoWindowControl* self, int contrast) {
	self->contrastChanged(static_cast<int>(contrast));
}

void QVideoWindowControl_connect_contrastChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int contrast) {
			int sigval1 = contrast;
			callback(slot, sigval1);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::contrastChanged), self, local_caller{slot, callback, release});
}

void QVideoWindowControl_hueChanged(QVideoWindowControl* self, int hue) {
	self->hueChanged(static_cast<int>(hue));
}

void QVideoWindowControl_connect_hueChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int hue) {
			int sigval1 = hue;
			callback(slot, sigval1);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::hueChanged), self, local_caller{slot, callback, release});
}

void QVideoWindowControl_saturationChanged(QVideoWindowControl* self, int saturation) {
	self->saturationChanged(static_cast<int>(saturation));
}

void QVideoWindowControl_connect_saturationChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int saturation) {
			int sigval1 = saturation;
			callback(slot, sigval1);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)(int)>(&QVideoWindowControl::saturationChanged), self, local_caller{slot, callback, release});
}

void QVideoWindowControl_nativeSizeChanged(QVideoWindowControl* self) {
	self->nativeSizeChanged();
}

void QVideoWindowControl_connect_nativeSizeChanged(QVideoWindowControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QVideoWindowControl::connect(self, static_cast<void (QVideoWindowControl::*)()>(&QVideoWindowControl::nativeSizeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QVideoWindowControl_tr2(const char* s, const char* c) {
	QString _ret = QVideoWindowControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoWindowControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoWindowControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoWindowControl_trUtf82(const char* s, const char* c) {
	QString _ret = QVideoWindowControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoWindowControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVideoWindowControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoWindowControl_staticMetaObject() { return &QVideoWindowControl::staticMetaObject; }
void QVideoWindowControl_delete(QVideoWindowControl* self) {
	delete self;
}

