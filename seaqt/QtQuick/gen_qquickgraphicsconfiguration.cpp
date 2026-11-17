#include <QByteArray>
#include <QList>
#include <QQuickGraphicsConfiguration>
#include <qquickgraphicsconfiguration.h>
#include "gen_qquickgraphicsconfiguration.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new() {
	return new (std::nothrow) QQuickGraphicsConfiguration();
}

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new2(QQuickGraphicsConfiguration* other) {
	return new (std::nothrow) QQuickGraphicsConfiguration(*other);
}

void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* other) {
	self->operator=(*other);
}

struct seaqt_array /* of struct seaqt_string */  QQuickGraphicsConfiguration_preferredInstanceExtensions() {
	QByteArrayList _ret = QQuickGraphicsConfiguration::preferredInstanceExtensions();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QQuickGraphicsConfiguration_setDeviceExtensions(QQuickGraphicsConfiguration* self, struct seaqt_array /* of struct seaqt_string */  extensions) {
	QByteArrayList extensions_QList;
	extensions_QList.reserve(extensions.len);
	struct seaqt_string* extensions_arr = static_cast<struct seaqt_string*>(extensions.data);
	for(size_t i = 0; i < extensions.len; ++i) {
		QByteArray extensions_arr_i_QByteArray(extensions_arr[i].data, extensions_arr[i].len);
		extensions_QList.push_back(extensions_arr_i_QByteArray);
	}
	self->setDeviceExtensions(extensions_QList);
}

struct seaqt_array /* of struct seaqt_string */  QQuickGraphicsConfiguration_deviceExtensions(const QQuickGraphicsConfiguration* self) {
	QByteArrayList _ret = self->deviceExtensions();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QQuickGraphicsConfiguration_setDepthBufferFor2D(QQuickGraphicsConfiguration* self, bool enable) {
	self->setDepthBufferFor2D(enable);
}

bool QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(const QQuickGraphicsConfiguration* self) {
	return self->isDepthBufferEnabledFor2D();
}

void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self) {
	delete self;
}

