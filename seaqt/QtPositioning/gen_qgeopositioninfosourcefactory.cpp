#include <QGeoAreaMonitorSource>
#include <QGeoPositionInfoSource>
#include <QGeoPositionInfoSourceFactory>
#include <QGeoSatelliteInfoSource>
#include <QMap>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qgeopositioninfosourcefactory.h>
#include "gen_qgeopositioninfosourcefactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQGeoPositionInfoSourceFactory final : public QGeoPositionInfoSourceFactory {
	const QGeoPositionInfoSourceFactory_VTable* vtbl;
public:
	friend void* QGeoPositionInfoSourceFactory_vdata(VirtualQGeoPositionInfoSourceFactory* self);
	friend VirtualQGeoPositionInfoSourceFactory* vdata_QGeoPositionInfoSourceFactory(void* vdata);

	VirtualQGeoPositionInfoSourceFactory(const QGeoPositionInfoSourceFactory_VTable* vtbl, const QGeoPositionInfoSourceFactory& from): QGeoPositionInfoSourceFactory(from), vtbl(vtbl) {}

	virtual ~VirtualQGeoPositionInfoSourceFactory() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QGeoPositionInfoSource* positionInfoSource(QObject* parent) override {
		if (vtbl->positionInfoSource == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoPositionInfoSource* callback_return_value = vtbl->positionInfoSource(this, sigval1);
		return callback_return_value;
	}

	virtual QGeoSatelliteInfoSource* satelliteInfoSource(QObject* parent) override {
		if (vtbl->satelliteInfoSource == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoSatelliteInfoSource* callback_return_value = vtbl->satelliteInfoSource(this, sigval1);
		return callback_return_value;
	}

	virtual QGeoAreaMonitorSource* areaMonitor(QObject* parent) override {
		if (vtbl->areaMonitor == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoAreaMonitorSource* callback_return_value = vtbl->areaMonitor(this, sigval1);
		return callback_return_value;
	}

};

VirtualQGeoPositionInfoSourceFactory* QGeoPositionInfoSourceFactory_new(const QGeoPositionInfoSourceFactory_VTable* vtbl, size_t vdata, QGeoPositionInfoSourceFactory* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactory>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGeoPositionInfoSourceFactory(vtbl, *from) : nullptr;
}

QGeoPositionInfoSource* QGeoPositionInfoSourceFactory_positionInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent) {
	return self->positionInfoSource(parent);
}

QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactory_satelliteInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent) {
	return self->satelliteInfoSource(parent);
}

QGeoAreaMonitorSource* QGeoPositionInfoSourceFactory_areaMonitor(QGeoPositionInfoSourceFactory* self, QObject* parent) {
	return self->areaMonitor(parent);
}

void QGeoPositionInfoSourceFactory_operatorAssign(QGeoPositionInfoSourceFactory* self, QGeoPositionInfoSourceFactory* from) {
	self->operator=(*from);
}

void* QGeoPositionInfoSourceFactory_vdata(VirtualQGeoPositionInfoSourceFactory* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactory>()); }
VirtualQGeoPositionInfoSourceFactory* vdata_QGeoPositionInfoSourceFactory(void* vdata) { return reinterpret_cast<VirtualQGeoPositionInfoSourceFactory*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactory>()); }

void QGeoPositionInfoSourceFactory_delete(QGeoPositionInfoSourceFactory* self) {
	delete self;
}

class VirtualQGeoPositionInfoSourceFactoryV2 final : public QGeoPositionInfoSourceFactoryV2 {
	const QGeoPositionInfoSourceFactoryV2_VTable* vtbl;
public:
	friend void* QGeoPositionInfoSourceFactoryV2_vdata(VirtualQGeoPositionInfoSourceFactoryV2* self);
	friend VirtualQGeoPositionInfoSourceFactoryV2* vdata_QGeoPositionInfoSourceFactoryV2(void* vdata);

	VirtualQGeoPositionInfoSourceFactoryV2(const QGeoPositionInfoSourceFactoryV2_VTable* vtbl, const QGeoPositionInfoSourceFactoryV2& from): QGeoPositionInfoSourceFactoryV2(from), vtbl(vtbl) {}

	virtual ~VirtualQGeoPositionInfoSourceFactoryV2() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QGeoPositionInfoSource* positionInfoSourceWithParameters(QObject* parent, const QVariantMap& parameters) override {
		if (vtbl->positionInfoSourceWithParameters == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		const QVariantMap& parameters_ret = parameters;
		// Convert QMap<> from C++ memory to manually-managed C memory
		struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * parameters_ret.size()));
		QVariant** parameters_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * parameters_ret.size()));
		int parameters_ctr = 0;
		for (auto parameters_itr = parameters_ret.keyValueBegin(); parameters_itr != parameters_ret.keyValueEnd(); ++parameters_itr) {
			QString parameters_mapkey_ret = parameters_itr->first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray parameters_mapkey_b = parameters_mapkey_ret.toUtf8();
			struct seaqt_string parameters_mapkey_ms;
			parameters_mapkey_ms.len = parameters_mapkey_b.length();
			parameters_mapkey_ms.data = static_cast<char*>(malloc(parameters_mapkey_ms.len));
			memcpy(parameters_mapkey_ms.data, parameters_mapkey_b.data(), parameters_mapkey_ms.len);
			parameters_karr[parameters_ctr] = parameters_mapkey_ms;
			parameters_varr[parameters_ctr] = new QVariant(parameters_itr->second);
			parameters_ctr++;
		}
		struct seaqt_map parameters_out;
		parameters_out.len = parameters_ret.size();
		parameters_out.keys = static_cast<void*>(parameters_karr);
		parameters_out.values = static_cast<void*>(parameters_varr);
		struct seaqt_map /* of struct seaqt_string to QVariant* */  sigval2 = parameters_out;
		QGeoPositionInfoSource* callback_return_value = vtbl->positionInfoSourceWithParameters(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual QGeoSatelliteInfoSource* satelliteInfoSourceWithParameters(QObject* parent, const QVariantMap& parameters) override {
		if (vtbl->satelliteInfoSourceWithParameters == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		const QVariantMap& parameters_ret = parameters;
		// Convert QMap<> from C++ memory to manually-managed C memory
		struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * parameters_ret.size()));
		QVariant** parameters_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * parameters_ret.size()));
		int parameters_ctr = 0;
		for (auto parameters_itr = parameters_ret.keyValueBegin(); parameters_itr != parameters_ret.keyValueEnd(); ++parameters_itr) {
			QString parameters_mapkey_ret = parameters_itr->first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray parameters_mapkey_b = parameters_mapkey_ret.toUtf8();
			struct seaqt_string parameters_mapkey_ms;
			parameters_mapkey_ms.len = parameters_mapkey_b.length();
			parameters_mapkey_ms.data = static_cast<char*>(malloc(parameters_mapkey_ms.len));
			memcpy(parameters_mapkey_ms.data, parameters_mapkey_b.data(), parameters_mapkey_ms.len);
			parameters_karr[parameters_ctr] = parameters_mapkey_ms;
			parameters_varr[parameters_ctr] = new QVariant(parameters_itr->second);
			parameters_ctr++;
		}
		struct seaqt_map parameters_out;
		parameters_out.len = parameters_ret.size();
		parameters_out.keys = static_cast<void*>(parameters_karr);
		parameters_out.values = static_cast<void*>(parameters_varr);
		struct seaqt_map /* of struct seaqt_string to QVariant* */  sigval2 = parameters_out;
		QGeoSatelliteInfoSource* callback_return_value = vtbl->satelliteInfoSourceWithParameters(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual QGeoAreaMonitorSource* areaMonitorWithParameters(QObject* parent, const QVariantMap& parameters) override {
		if (vtbl->areaMonitorWithParameters == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		const QVariantMap& parameters_ret = parameters;
		// Convert QMap<> from C++ memory to manually-managed C memory
		struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * parameters_ret.size()));
		QVariant** parameters_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * parameters_ret.size()));
		int parameters_ctr = 0;
		for (auto parameters_itr = parameters_ret.keyValueBegin(); parameters_itr != parameters_ret.keyValueEnd(); ++parameters_itr) {
			QString parameters_mapkey_ret = parameters_itr->first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray parameters_mapkey_b = parameters_mapkey_ret.toUtf8();
			struct seaqt_string parameters_mapkey_ms;
			parameters_mapkey_ms.len = parameters_mapkey_b.length();
			parameters_mapkey_ms.data = static_cast<char*>(malloc(parameters_mapkey_ms.len));
			memcpy(parameters_mapkey_ms.data, parameters_mapkey_b.data(), parameters_mapkey_ms.len);
			parameters_karr[parameters_ctr] = parameters_mapkey_ms;
			parameters_varr[parameters_ctr] = new QVariant(parameters_itr->second);
			parameters_ctr++;
		}
		struct seaqt_map parameters_out;
		parameters_out.len = parameters_ret.size();
		parameters_out.keys = static_cast<void*>(parameters_karr);
		parameters_out.values = static_cast<void*>(parameters_varr);
		struct seaqt_map /* of struct seaqt_string to QVariant* */  sigval2 = parameters_out;
		QGeoAreaMonitorSource* callback_return_value = vtbl->areaMonitorWithParameters(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual QGeoPositionInfoSource* positionInfoSource(QObject* parent) override {
		if (vtbl->positionInfoSource == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoPositionInfoSource* callback_return_value = vtbl->positionInfoSource(this, sigval1);
		return callback_return_value;
	}

	virtual QGeoSatelliteInfoSource* satelliteInfoSource(QObject* parent) override {
		if (vtbl->satelliteInfoSource == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoSatelliteInfoSource* callback_return_value = vtbl->satelliteInfoSource(this, sigval1);
		return callback_return_value;
	}

	virtual QGeoAreaMonitorSource* areaMonitor(QObject* parent) override {
		if (vtbl->areaMonitor == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = parent;
		QGeoAreaMonitorSource* callback_return_value = vtbl->areaMonitor(this, sigval1);
		return callback_return_value;
	}

};

VirtualQGeoPositionInfoSourceFactoryV2* QGeoPositionInfoSourceFactoryV2_new(const QGeoPositionInfoSourceFactoryV2_VTable* vtbl, size_t vdata, QGeoPositionInfoSourceFactoryV2* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactoryV2>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGeoPositionInfoSourceFactoryV2(vtbl, *from) : nullptr;
}

void QGeoPositionInfoSourceFactoryV2_virtbase(QGeoPositionInfoSourceFactoryV2* src, QGeoPositionInfoSourceFactory** outptr_QGeoPositionInfoSourceFactory) {
	*outptr_QGeoPositionInfoSourceFactory = static_cast<QGeoPositionInfoSourceFactory*>(src);
}

QGeoPositionInfoSource* QGeoPositionInfoSourceFactoryV2_positionInfoSourceWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->positionInfoSourceWithParameters(parent, parameters_QMap);
}

QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactoryV2_satelliteInfoSourceWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->satelliteInfoSourceWithParameters(parent, parameters_QMap);
}

QGeoAreaMonitorSource* QGeoPositionInfoSourceFactoryV2_areaMonitorWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->areaMonitorWithParameters(parent, parameters_QMap);
}

void QGeoPositionInfoSourceFactoryV2_operatorAssign(QGeoPositionInfoSourceFactoryV2* self, QGeoPositionInfoSourceFactoryV2* from) {
	self->operator=(*from);
}

void* QGeoPositionInfoSourceFactoryV2_vdata(VirtualQGeoPositionInfoSourceFactoryV2* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactoryV2>()); }
VirtualQGeoPositionInfoSourceFactoryV2* vdata_QGeoPositionInfoSourceFactoryV2(void* vdata) { return reinterpret_cast<VirtualQGeoPositionInfoSourceFactoryV2*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGeoPositionInfoSourceFactoryV2>()); }

void QGeoPositionInfoSourceFactoryV2_delete(QGeoPositionInfoSourceFactoryV2* self) {
	delete self;
}

