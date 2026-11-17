#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIASERVICEPROVIDERPLUGIN_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIASERVICEPROVIDERPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaService;
class QMediaServiceCameraInfoInterface;
class QMediaServiceDefaultDeviceInterface;
class QMediaServiceFeaturesInterface;
class QMediaServiceProviderFactoryInterface;
class QMediaServiceProviderHint;
class QMediaServiceProviderPlugin;
class QMediaServiceSupportedDevicesInterface;
class QMediaServiceSupportedFormatsInterface;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QMediaService QMediaService;
typedef struct QMediaServiceCameraInfoInterface QMediaServiceCameraInfoInterface;
typedef struct QMediaServiceDefaultDeviceInterface QMediaServiceDefaultDeviceInterface;
typedef struct QMediaServiceFeaturesInterface QMediaServiceFeaturesInterface;
typedef struct QMediaServiceProviderFactoryInterface QMediaServiceProviderFactoryInterface;
typedef struct QMediaServiceProviderHint QMediaServiceProviderHint;
typedef struct QMediaServiceProviderPlugin QMediaServiceProviderPlugin;
typedef struct QMediaServiceSupportedDevicesInterface QMediaServiceSupportedDevicesInterface;
typedef struct QMediaServiceSupportedFormatsInterface QMediaServiceSupportedFormatsInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

QMediaServiceProviderHint* QMediaServiceProviderHint_new();
QMediaServiceProviderHint* QMediaServiceProviderHint_new_mimeType_codecs(struct seaqt_string mimeType, struct seaqt_array /* of struct seaqt_string */  codecs);
QMediaServiceProviderHint* QMediaServiceProviderHint_new_device(struct seaqt_string device);
QMediaServiceProviderHint* QMediaServiceProviderHint_new_position(int position);
QMediaServiceProviderHint* QMediaServiceProviderHint_new_features(int features);
QMediaServiceProviderHint* QMediaServiceProviderHint_new_from(QMediaServiceProviderHint* from);

void QMediaServiceProviderHint_operatorAssign(QMediaServiceProviderHint* self, QMediaServiceProviderHint* from);
bool QMediaServiceProviderHint_operatorEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other);
bool QMediaServiceProviderHint_operatorNotEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other);
bool QMediaServiceProviderHint_isNull(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_type(const QMediaServiceProviderHint* self);
struct seaqt_string QMediaServiceProviderHint_mimeType(const QMediaServiceProviderHint* self);
struct seaqt_array /* of struct seaqt_string */  QMediaServiceProviderHint_codecs(const QMediaServiceProviderHint* self);
struct seaqt_string QMediaServiceProviderHint_device(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_cameraPosition(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_features(const QMediaServiceProviderHint* self);

void QMediaServiceProviderHint_delete(QMediaServiceProviderHint* self);

QMediaService* QMediaServiceProviderFactoryInterface_create(QMediaServiceProviderFactoryInterface* self, struct seaqt_string key);
void QMediaServiceProviderFactoryInterface_release(QMediaServiceProviderFactoryInterface* self, QMediaService* service);
void QMediaServiceProviderFactoryInterface_operatorAssign(QMediaServiceProviderFactoryInterface* self, QMediaServiceProviderFactoryInterface* from);

void QMediaServiceProviderFactoryInterface_delete(QMediaServiceProviderFactoryInterface* self);

int QMediaServiceSupportedFormatsInterface_hasSupport(const QMediaServiceSupportedFormatsInterface* self, struct seaqt_string mimeType, struct seaqt_array /* of struct seaqt_string */  codecs);
struct seaqt_array /* of struct seaqt_string */  QMediaServiceSupportedFormatsInterface_supportedMimeTypes(const QMediaServiceSupportedFormatsInterface* self);
void QMediaServiceSupportedFormatsInterface_operatorAssign(QMediaServiceSupportedFormatsInterface* self, QMediaServiceSupportedFormatsInterface* from);

void QMediaServiceSupportedFormatsInterface_delete(QMediaServiceSupportedFormatsInterface* self);

struct seaqt_array /* of struct seaqt_string */  QMediaServiceSupportedDevicesInterface_devices(const QMediaServiceSupportedDevicesInterface* self, struct seaqt_string service);
struct seaqt_string QMediaServiceSupportedDevicesInterface_deviceDescription(QMediaServiceSupportedDevicesInterface* self, struct seaqt_string service, struct seaqt_string device);
void QMediaServiceSupportedDevicesInterface_operatorAssign(QMediaServiceSupportedDevicesInterface* self, QMediaServiceSupportedDevicesInterface* from);

void QMediaServiceSupportedDevicesInterface_delete(QMediaServiceSupportedDevicesInterface* self);

struct seaqt_string QMediaServiceDefaultDeviceInterface_defaultDevice(const QMediaServiceDefaultDeviceInterface* self, struct seaqt_string service);
void QMediaServiceDefaultDeviceInterface_operatorAssign(QMediaServiceDefaultDeviceInterface* self, QMediaServiceDefaultDeviceInterface* from);

void QMediaServiceDefaultDeviceInterface_delete(QMediaServiceDefaultDeviceInterface* self);

int QMediaServiceCameraInfoInterface_cameraPosition(const QMediaServiceCameraInfoInterface* self, struct seaqt_string device);
int QMediaServiceCameraInfoInterface_cameraOrientation(const QMediaServiceCameraInfoInterface* self, struct seaqt_string device);
void QMediaServiceCameraInfoInterface_operatorAssign(QMediaServiceCameraInfoInterface* self, QMediaServiceCameraInfoInterface* from);

void QMediaServiceCameraInfoInterface_delete(QMediaServiceCameraInfoInterface* self);

int QMediaServiceFeaturesInterface_supportedFeatures(const QMediaServiceFeaturesInterface* self, struct seaqt_string service);
void QMediaServiceFeaturesInterface_operatorAssign(QMediaServiceFeaturesInterface* self, QMediaServiceFeaturesInterface* from);

void QMediaServiceFeaturesInterface_delete(QMediaServiceFeaturesInterface* self);

void QMediaServiceProviderPlugin_virtbase(QMediaServiceProviderPlugin* src, QObject** outptr_QObject, QMediaServiceProviderFactoryInterface** outptr_QMediaServiceProviderFactoryInterface);
QMetaObject* QMediaServiceProviderPlugin_metaObject(const QMediaServiceProviderPlugin* self);
void* QMediaServiceProviderPlugin_metacast(QMediaServiceProviderPlugin* self, const char* param1);
int QMediaServiceProviderPlugin_metacall(QMediaServiceProviderPlugin* self, int param1, int param2, void** param3);
struct seaqt_string QMediaServiceProviderPlugin_tr_s(const char* s);
struct seaqt_string QMediaServiceProviderPlugin_trUtf8_s(const char* s);
QMediaService* QMediaServiceProviderPlugin_create(QMediaServiceProviderPlugin* self, struct seaqt_string key);
void QMediaServiceProviderPlugin_release(QMediaServiceProviderPlugin* self, QMediaService* service);
struct seaqt_string QMediaServiceProviderPlugin_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaServiceProviderPlugin_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaServiceProviderPlugin_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaServiceProviderPlugin_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QMediaServiceProviderPlugin_staticMetaObject();
void QMediaServiceProviderPlugin_delete(QMediaServiceProviderPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
