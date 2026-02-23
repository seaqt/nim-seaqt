#include <QAudioOutputSelectorControl>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qaudiooutputselectorcontrol.h>
#include "gen_qaudiooutputselectorcontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QAudioOutputSelectorControl_virtbase(QAudioOutputSelectorControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QAudioOutputSelectorControl_metaObject(const QAudioOutputSelectorControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioOutputSelectorControl_metacast(QAudioOutputSelectorControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioOutputSelectorControl_metacall(QAudioOutputSelectorControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAudioOutputSelectorControl_tr_s(const char* s) {
	QString _ret = QAudioOutputSelectorControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_trUtf8_s(const char* s) {
	QString _ret = QAudioOutputSelectorControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QAudioOutputSelectorControl_availableOutputs(const QAudioOutputSelectorControl* self) {
	QList<QString> _ret = self->availableOutputs();
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

struct seaqt_string QAudioOutputSelectorControl_outputDescription(const QAudioOutputSelectorControl* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->outputDescription(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_defaultOutput(const QAudioOutputSelectorControl* self) {
	QString _ret = self->defaultOutput();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_activeOutput(const QAudioOutputSelectorControl* self) {
	QString _ret = self->activeOutput();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioOutputSelectorControl_setActiveOutput(QAudioOutputSelectorControl* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setActiveOutput(name_QString);
}

void QAudioOutputSelectorControl_activeOutputChanged(QAudioOutputSelectorControl* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->activeOutputChanged(name_QString);
}

void QAudioOutputSelectorControl_connect_activeOutputChanged(QAudioOutputSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QAudioOutputSelectorControl::connect(self, static_cast<void (QAudioOutputSelectorControl::*)(const QString&)>(&QAudioOutputSelectorControl::activeOutputChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& name) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct seaqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct seaqt_string sigval1 = name_ms;
			callback(release.slot, sigval1);
	});
}

void QAudioOutputSelectorControl_availableOutputsChanged(QAudioOutputSelectorControl* self) {
	self->availableOutputsChanged();
}

void QAudioOutputSelectorControl_connect_availableOutputsChanged(QAudioOutputSelectorControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAudioOutputSelectorControl::connect(self, static_cast<void (QAudioOutputSelectorControl::*)()>(&QAudioOutputSelectorControl::availableOutputsChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAudioOutputSelectorControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioOutputSelectorControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioOutputSelectorControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QAudioOutputSelectorControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioOutputSelectorControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioOutputSelectorControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioOutputSelectorControl_staticMetaObject() { return &QAudioOutputSelectorControl::staticMetaObject; }
void QAudioOutputSelectorControl_delete(QAudioOutputSelectorControl* self) {
	delete self;
}

