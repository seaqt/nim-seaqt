#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFrame>
#include <QVideoSink>
#include <qvideosink.h>
#include "gen_qvideosink.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQVideoSink final : public QVideoSink {
	const QVideoSink_VTable* vtbl;
public:
	friend void* QVideoSink_vdata(VirtualQVideoSink* self);
	friend VirtualQVideoSink* vdata_QVideoSink(void* vdata);

	VirtualQVideoSink(const QVideoSink_VTable* vtbl): QVideoSink(), vtbl(vtbl) {}
	VirtualQVideoSink(const QVideoSink_VTable* vtbl, QObject* parent): QVideoSink(parent), vtbl(vtbl) {}

	virtual ~VirtualQVideoSink() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoSink::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QVideoSink_virtualbase_metaObject(const VirtualQVideoSink* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoSink::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QVideoSink_virtualbase_metacast(VirtualQVideoSink* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoSink::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QVideoSink_virtualbase_metacall(VirtualQVideoSink* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoSink::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QVideoSink_virtualbase_event(VirtualQVideoSink* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoSink::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QVideoSink_virtualbase_eventFilter(VirtualQVideoSink* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoSink::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QVideoSink_virtualbase_timerEvent(VirtualQVideoSink* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoSink::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QVideoSink_virtualbase_childEvent(VirtualQVideoSink* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoSink::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QVideoSink_virtualbase_customEvent(VirtualQVideoSink* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoSink::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QVideoSink_virtualbase_connectNotify(VirtualQVideoSink* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoSink::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QVideoSink_virtualbase_disconnectNotify(VirtualQVideoSink* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVideoSink_protectedbase_sender(const VirtualQVideoSink* self);
	friend int QVideoSink_protectedbase_senderSignalIndex(const VirtualQVideoSink* self);
	friend int QVideoSink_protectedbase_receivers(const VirtualQVideoSink* self, const char* signal);
	friend bool QVideoSink_protectedbase_isSignalConnected(const VirtualQVideoSink* self, QMetaMethod* signal);
};

VirtualQVideoSink* QVideoSink_new(const QVideoSink_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoSink(vtbl) : nullptr;
}

VirtualQVideoSink* QVideoSink_new_parent(const QVideoSink_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoSink(vtbl, parent) : nullptr;
}

void QVideoSink_virtbase(QVideoSink* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QVideoSink_metaObject(const QVideoSink* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoSink_metacast(QVideoSink* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoSink_metacall(QVideoSink* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QVideoSink_tr_s(const char* s) {
	QString _ret = QVideoSink::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QVideoSink_videoSize(const QVideoSink* self) {
	return new QSize(self->videoSize());
}

struct seaqt_string QVideoSink_subtitleText(const QVideoSink* self) {
	QString _ret = self->subtitleText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QVideoSink_setSubtitleText(QVideoSink* self, struct seaqt_string subtitle) {
	QString subtitle_QString = QString::fromUtf8(subtitle.data, subtitle.len);
	self->setSubtitleText(subtitle_QString);
}

void QVideoSink_setVideoFrame(QVideoSink* self, QVideoFrame* frame) {
	self->setVideoFrame(*frame);
}

QVideoFrame* QVideoSink_videoFrame(const QVideoSink* self) {
	return new QVideoFrame(self->videoFrame());
}

void QVideoSink_videoFrameChanged(const QVideoSink* self, QVideoFrame* frame) {
	self->videoFrameChanged(*frame);
}

void QVideoSink_connect_videoFrameChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QVideoFrame*);
		void operator()(const QVideoFrame& frame) {
			const QVideoFrame& frame_ret = frame;
			// Cast returned reference into pointer
			QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
			callback(slot, sigval1);
		}
	};
	QVideoSink::connect(self, static_cast<void (QVideoSink::*)(const QVideoFrame&) const>(&QVideoSink::videoFrameChanged), self, local_caller{slot, callback, release});
}

void QVideoSink_subtitleTextChanged(const QVideoSink* self, struct seaqt_string subtitleText) {
	QString subtitleText_QString = QString::fromUtf8(subtitleText.data, subtitleText.len);
	self->subtitleTextChanged(subtitleText_QString);
}

void QVideoSink_connect_subtitleTextChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string);
		void operator()(const QString& subtitleText) {
			const QString subtitleText_ret = subtitleText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray subtitleText_b = subtitleText_ret.toUtf8();
			struct seaqt_string subtitleText_ms;
			subtitleText_ms.len = subtitleText_b.length();
			subtitleText_ms.data = static_cast<char*>(malloc(subtitleText_ms.len));
			memcpy(subtitleText_ms.data, subtitleText_b.data(), subtitleText_ms.len);
			struct seaqt_string sigval1 = subtitleText_ms;
			callback(slot, sigval1);
		}
	};
	QVideoSink::connect(self, static_cast<void (QVideoSink::*)(const QString&) const>(&QVideoSink::subtitleTextChanged), self, local_caller{slot, callback, release});
}

void QVideoSink_videoSizeChanged(QVideoSink* self) {
	self->videoSizeChanged();
}

void QVideoSink_connect_videoSizeChanged(QVideoSink* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QVideoSink::connect(self, static_cast<void (QVideoSink::*)()>(&QVideoSink::videoSizeChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QVideoSink_tr_s_c(const char* s, const char* c) {
	QString _ret = QVideoSink::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoSink_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoSink::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoSink_staticMetaObject() { return &QVideoSink::staticMetaObject; }
void* QVideoSink_vdata(VirtualQVideoSink* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQVideoSink>()); }
VirtualQVideoSink* vdata_QVideoSink(void* vdata) { return reinterpret_cast<VirtualQVideoSink*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQVideoSink>()); }

QMetaObject* QVideoSink_virtualbase_metaObject(const VirtualQVideoSink* self) {

	return (QMetaObject*) self->QVideoSink::metaObject();
}

void* QVideoSink_virtualbase_metacast(VirtualQVideoSink* self, const char* param1) {

	return self->QVideoSink::qt_metacast(param1);
}

int QVideoSink_virtualbase_metacall(VirtualQVideoSink* self, int param1, int param2, void** param3) {

	return self->QVideoSink::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QVideoSink_virtualbase_event(VirtualQVideoSink* self, QEvent* event) {

	return self->QVideoSink::event(event);
}

bool QVideoSink_virtualbase_eventFilter(VirtualQVideoSink* self, QObject* watched, QEvent* event) {

	return self->QVideoSink::eventFilter(watched, event);
}

void QVideoSink_virtualbase_timerEvent(VirtualQVideoSink* self, QTimerEvent* event) {

	self->QVideoSink::timerEvent(event);
}

void QVideoSink_virtualbase_childEvent(VirtualQVideoSink* self, QChildEvent* event) {

	self->QVideoSink::childEvent(event);
}

void QVideoSink_virtualbase_customEvent(VirtualQVideoSink* self, QEvent* event) {

	self->QVideoSink::customEvent(event);
}

void QVideoSink_virtualbase_connectNotify(VirtualQVideoSink* self, QMetaMethod* signal) {

	self->QVideoSink::connectNotify(*signal);
}

void QVideoSink_virtualbase_disconnectNotify(VirtualQVideoSink* self, QMetaMethod* signal) {

	self->QVideoSink::disconnectNotify(*signal);
}

QObject* QVideoSink_protectedbase_sender(const VirtualQVideoSink* self) {
	return self->sender();
}

int QVideoSink_protectedbase_senderSignalIndex(const VirtualQVideoSink* self) {
	return self->senderSignalIndex();
}

int QVideoSink_protectedbase_receivers(const VirtualQVideoSink* self, const char* signal) {
	return self->receivers(signal);
}

bool QVideoSink_protectedbase_isSignalConnected(const VirtualQVideoSink* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QVideoSink_delete(QVideoSink* self) {
	delete self;
}

