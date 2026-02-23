#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKINTERFACE_H
#define SEAQT_QTNETWORK_GEN_QNETWORKINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDeadlineTimer;
class QHostAddress;
class QMetaObject;
class QNetworkAddressEntry;
class QNetworkInterface;
#else
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QHostAddress QHostAddress;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkAddressEntry QNetworkAddressEntry;
typedef struct QNetworkInterface QNetworkInterface;
#endif

QNetworkAddressEntry* QNetworkAddressEntry_new();
QNetworkAddressEntry* QNetworkAddressEntry_new_from(QNetworkAddressEntry* from);

void QNetworkAddressEntry_operatorAssign(QNetworkAddressEntry* self, QNetworkAddressEntry* from);
void QNetworkAddressEntry_swap(QNetworkAddressEntry* self, QNetworkAddressEntry* other);
bool QNetworkAddressEntry_operatorEqual(const QNetworkAddressEntry* self, QNetworkAddressEntry* other);
bool QNetworkAddressEntry_operatorNotEqual(const QNetworkAddressEntry* self, QNetworkAddressEntry* other);
int8_t QNetworkAddressEntry_dnsEligibility(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setDnsEligibility(QNetworkAddressEntry* self, int8_t status);
QHostAddress* QNetworkAddressEntry_ip(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setIp(QNetworkAddressEntry* self, QHostAddress* newIp);
QHostAddress* QNetworkAddressEntry_netmask(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setNetmask(QNetworkAddressEntry* self, QHostAddress* newNetmask);
int QNetworkAddressEntry_prefixLength(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setPrefixLength(QNetworkAddressEntry* self, int length);
QHostAddress* QNetworkAddressEntry_broadcast(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setBroadcast(QNetworkAddressEntry* self, QHostAddress* newBroadcast);
bool QNetworkAddressEntry_isLifetimeKnown(const QNetworkAddressEntry* self);
QDeadlineTimer* QNetworkAddressEntry_preferredLifetime(const QNetworkAddressEntry* self);
QDeadlineTimer* QNetworkAddressEntry_validityLifetime(const QNetworkAddressEntry* self);
void QNetworkAddressEntry_setAddressLifetime(QNetworkAddressEntry* self, QDeadlineTimer* preferred, QDeadlineTimer* validity);
void QNetworkAddressEntry_clearAddressLifetime(QNetworkAddressEntry* self);
bool QNetworkAddressEntry_isPermanent(const QNetworkAddressEntry* self);
bool QNetworkAddressEntry_isTemporary(const QNetworkAddressEntry* self);

void QNetworkAddressEntry_delete(QNetworkAddressEntry* self);

QNetworkInterface* QNetworkInterface_new();
QNetworkInterface* QNetworkInterface_new_from(QNetworkInterface* from);

void QNetworkInterface_operatorAssign(QNetworkInterface* self, QNetworkInterface* from);
void QNetworkInterface_swap(QNetworkInterface* self, QNetworkInterface* other);
bool QNetworkInterface_isValid(const QNetworkInterface* self);
int QNetworkInterface_index(const QNetworkInterface* self);
int QNetworkInterface_maximumTransmissionUnit(const QNetworkInterface* self);
struct seaqt_string QNetworkInterface_name(const QNetworkInterface* self);
struct seaqt_string QNetworkInterface_humanReadableName(const QNetworkInterface* self);
int QNetworkInterface_flags(const QNetworkInterface* self);
int QNetworkInterface_type(const QNetworkInterface* self);
struct seaqt_string QNetworkInterface_hardwareAddress(const QNetworkInterface* self);
struct seaqt_array /* of QNetworkAddressEntry* */  QNetworkInterface_addressEntries(const QNetworkInterface* self);
int QNetworkInterface_interfaceIndexFromName(struct seaqt_string name);
QNetworkInterface* QNetworkInterface_interfaceFromName(struct seaqt_string name);
QNetworkInterface* QNetworkInterface_interfaceFromIndex(int index);
struct seaqt_string QNetworkInterface_interfaceNameFromIndex(int index);
struct seaqt_array /* of QNetworkInterface* */  QNetworkInterface_allInterfaces();
struct seaqt_array /* of QHostAddress* */  QNetworkInterface_allAddresses();

void QNetworkInterface_delete(QNetworkInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
