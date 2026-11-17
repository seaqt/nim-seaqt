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

QGeoPositionInfoSource* QGeoPositionInfoSourceFactory_positionInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->positionInfoSource(parent, parameters_QMap);
}

QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactory_satelliteInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->satelliteInfoSource(parent, parameters_QMap);
}

QGeoAreaMonitorSource* QGeoPositionInfoSourceFactory_areaMonitor(QGeoPositionInfoSourceFactory* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return self->areaMonitor(parent, parameters_QMap);
}

void QGeoPositionInfoSourceFactory_operatorAssign(QGeoPositionInfoSourceFactory* self, QGeoPositionInfoSourceFactory* param1) {
	self->operator=(*param1);
}

void QGeoPositionInfoSourceFactory_delete(QGeoPositionInfoSourceFactory* self) {
	delete self;
}

