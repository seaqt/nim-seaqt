#include <QByteArray>
#include <QList>
#include <QQuickGraphicsConfiguration>
#include <QString>
#include <QByteArray>
#include <cstring>
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

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new_from(QQuickGraphicsConfiguration* from) {
	return new (std::nothrow) QQuickGraphicsConfiguration(*from);
}

void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* from) {
	self->operator=(*from);
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

void QQuickGraphicsConfiguration_setDebugLayer(QQuickGraphicsConfiguration* self, bool enable) {
	self->setDebugLayer(enable);
}

bool QQuickGraphicsConfiguration_isDebugLayerEnabled(const QQuickGraphicsConfiguration* self) {
	return self->isDebugLayerEnabled();
}

void QQuickGraphicsConfiguration_setDebugMarkers(QQuickGraphicsConfiguration* self, bool enable) {
	self->setDebugMarkers(enable);
}

bool QQuickGraphicsConfiguration_isDebugMarkersEnabled(const QQuickGraphicsConfiguration* self) {
	return self->isDebugMarkersEnabled();
}

void QQuickGraphicsConfiguration_setPreferSoftwareDevice(QQuickGraphicsConfiguration* self, bool enable) {
	self->setPreferSoftwareDevice(enable);
}

bool QQuickGraphicsConfiguration_prefersSoftwareDevice(const QQuickGraphicsConfiguration* self) {
	return self->prefersSoftwareDevice();
}

void QQuickGraphicsConfiguration_setAutomaticPipelineCache(QQuickGraphicsConfiguration* self, bool enable) {
	self->setAutomaticPipelineCache(enable);
}

bool QQuickGraphicsConfiguration_isAutomaticPipelineCacheEnabled(const QQuickGraphicsConfiguration* self) {
	return self->isAutomaticPipelineCacheEnabled();
}

void QQuickGraphicsConfiguration_setPipelineCacheSaveFile(QQuickGraphicsConfiguration* self, struct seaqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	self->setPipelineCacheSaveFile(filename_QString);
}

struct seaqt_string QQuickGraphicsConfiguration_pipelineCacheSaveFile(const QQuickGraphicsConfiguration* self) {
	QString _ret = self->pipelineCacheSaveFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickGraphicsConfiguration_setPipelineCacheLoadFile(QQuickGraphicsConfiguration* self, struct seaqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	self->setPipelineCacheLoadFile(filename_QString);
}

struct seaqt_string QQuickGraphicsConfiguration_pipelineCacheLoadFile(const QQuickGraphicsConfiguration* self) {
	QString _ret = self->pipelineCacheLoadFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self) {
	delete self;
}

