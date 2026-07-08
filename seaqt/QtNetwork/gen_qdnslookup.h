#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QDNSLOOKUP_H
#define SEAQT_QTNETWORK_GEN_QDNSLOOKUP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QDnsDomainNameRecord;
class QDnsHostAddressRecord;
class QDnsLookup;
class QDnsMailExchangeRecord;
class QDnsServiceRecord;
class QDnsTextRecord;
class QEvent;
class QHostAddress;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDnsDomainNameRecord QDnsDomainNameRecord;
typedef struct QDnsHostAddressRecord QDnsHostAddressRecord;
typedef struct QDnsLookup QDnsLookup;
typedef struct QDnsMailExchangeRecord QDnsMailExchangeRecord;
typedef struct QDnsServiceRecord QDnsServiceRecord;
typedef struct QDnsTextRecord QDnsTextRecord;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

QDnsDomainNameRecord* QDnsDomainNameRecord_new();
QDnsDomainNameRecord* QDnsDomainNameRecord_new_from(QDnsDomainNameRecord* from);

void QDnsDomainNameRecord_operatorAssign(QDnsDomainNameRecord* self, QDnsDomainNameRecord* from);
void QDnsDomainNameRecord_swap(QDnsDomainNameRecord* self, QDnsDomainNameRecord* other);
struct seaqt_string QDnsDomainNameRecord_name(const QDnsDomainNameRecord* self);
unsigned int QDnsDomainNameRecord_timeToLive(const QDnsDomainNameRecord* self);
struct seaqt_string QDnsDomainNameRecord_value(const QDnsDomainNameRecord* self);

void QDnsDomainNameRecord_delete(QDnsDomainNameRecord* self);

QDnsHostAddressRecord* QDnsHostAddressRecord_new();
QDnsHostAddressRecord* QDnsHostAddressRecord_new_from(QDnsHostAddressRecord* from);

void QDnsHostAddressRecord_operatorAssign(QDnsHostAddressRecord* self, QDnsHostAddressRecord* from);
void QDnsHostAddressRecord_swap(QDnsHostAddressRecord* self, QDnsHostAddressRecord* other);
struct seaqt_string QDnsHostAddressRecord_name(const QDnsHostAddressRecord* self);
unsigned int QDnsHostAddressRecord_timeToLive(const QDnsHostAddressRecord* self);
QHostAddress* QDnsHostAddressRecord_value(const QDnsHostAddressRecord* self);

void QDnsHostAddressRecord_delete(QDnsHostAddressRecord* self);

QDnsMailExchangeRecord* QDnsMailExchangeRecord_new();
QDnsMailExchangeRecord* QDnsMailExchangeRecord_new_from(QDnsMailExchangeRecord* from);

void QDnsMailExchangeRecord_operatorAssign(QDnsMailExchangeRecord* self, QDnsMailExchangeRecord* from);
void QDnsMailExchangeRecord_swap(QDnsMailExchangeRecord* self, QDnsMailExchangeRecord* other);
struct seaqt_string QDnsMailExchangeRecord_exchange(const QDnsMailExchangeRecord* self);
struct seaqt_string QDnsMailExchangeRecord_name(const QDnsMailExchangeRecord* self);
unsigned short QDnsMailExchangeRecord_preference(const QDnsMailExchangeRecord* self);
unsigned int QDnsMailExchangeRecord_timeToLive(const QDnsMailExchangeRecord* self);

void QDnsMailExchangeRecord_delete(QDnsMailExchangeRecord* self);

QDnsServiceRecord* QDnsServiceRecord_new();
QDnsServiceRecord* QDnsServiceRecord_new_from(QDnsServiceRecord* from);

void QDnsServiceRecord_operatorAssign(QDnsServiceRecord* self, QDnsServiceRecord* from);
void QDnsServiceRecord_swap(QDnsServiceRecord* self, QDnsServiceRecord* other);
struct seaqt_string QDnsServiceRecord_name(const QDnsServiceRecord* self);
unsigned short QDnsServiceRecord_port(const QDnsServiceRecord* self);
unsigned short QDnsServiceRecord_priority(const QDnsServiceRecord* self);
struct seaqt_string QDnsServiceRecord_target(const QDnsServiceRecord* self);
unsigned int QDnsServiceRecord_timeToLive(const QDnsServiceRecord* self);
unsigned short QDnsServiceRecord_weight(const QDnsServiceRecord* self);

void QDnsServiceRecord_delete(QDnsServiceRecord* self);

QDnsTextRecord* QDnsTextRecord_new();
QDnsTextRecord* QDnsTextRecord_new_from(QDnsTextRecord* from);

void QDnsTextRecord_operatorAssign(QDnsTextRecord* self, QDnsTextRecord* from);
void QDnsTextRecord_swap(QDnsTextRecord* self, QDnsTextRecord* other);
struct seaqt_string QDnsTextRecord_name(const QDnsTextRecord* self);
unsigned int QDnsTextRecord_timeToLive(const QDnsTextRecord* self);
struct seaqt_array /* of struct seaqt_string */  QDnsTextRecord_values(const QDnsTextRecord* self);

void QDnsTextRecord_delete(QDnsTextRecord* self);

typedef struct VirtualQDnsLookup VirtualQDnsLookup;
typedef struct QDnsLookup_VTable{
	void (*destructor)(VirtualQDnsLookup* self);
	QMetaObject* (*metaObject)(const VirtualQDnsLookup* self);
	void* (*metacast)(VirtualQDnsLookup* self, const char* param1);
	int (*metacall)(VirtualQDnsLookup* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQDnsLookup* self, QEvent* event);
	bool (*eventFilter)(VirtualQDnsLookup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDnsLookup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDnsLookup* self, QChildEvent* event);
	void (*customEvent)(VirtualQDnsLookup* self, QEvent* event);
	void (*connectNotify)(VirtualQDnsLookup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDnsLookup* self, QMetaMethod* signal);
}QDnsLookup_VTable;

void* QDnsLookup_vdata(VirtualQDnsLookup* self);
VirtualQDnsLookup* vdata_QDnsLookup(void* vdata);

VirtualQDnsLookup* QDnsLookup_new(const QDnsLookup_VTable* vtbl, size_t vdata);
VirtualQDnsLookup* QDnsLookup_new_type_name(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name);
VirtualQDnsLookup* QDnsLookup_new_type_name_nameserver(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QHostAddress* nameserver);
VirtualQDnsLookup* QDnsLookup_new_parent(const QDnsLookup_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQDnsLookup* QDnsLookup_new_type_name_parent(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QObject* parent);
VirtualQDnsLookup* QDnsLookup_new_type_name_nameserver_parent(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QHostAddress* nameserver, QObject* parent);

void QDnsLookup_virtbase(QDnsLookup* src, QObject** outptr_QObject);
QMetaObject* QDnsLookup_metaObject(const QDnsLookup* self);
void* QDnsLookup_metacast(QDnsLookup* self, const char* param1);
int QDnsLookup_metacall(QDnsLookup* self, int param1, int param2, void** param3);
struct seaqt_string QDnsLookup_tr_s(const char* s);
struct seaqt_string QDnsLookup_trUtf8_s(const char* s);
int QDnsLookup_error(const QDnsLookup* self);
struct seaqt_string QDnsLookup_errorString(const QDnsLookup* self);
bool QDnsLookup_isFinished(const QDnsLookup* self);
struct seaqt_string QDnsLookup_name(const QDnsLookup* self);
void QDnsLookup_setName(QDnsLookup* self, struct seaqt_string name);
int QDnsLookup_type(const QDnsLookup* self);
void QDnsLookup_setType(QDnsLookup* self, int type);
QHostAddress* QDnsLookup_nameserver(const QDnsLookup* self);
void QDnsLookup_setNameserver(QDnsLookup* self, QHostAddress* nameserver);
struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_canonicalNameRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsHostAddressRecord* */  QDnsLookup_hostAddressRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsMailExchangeRecord* */  QDnsLookup_mailExchangeRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_nameServerRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_pointerRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsServiceRecord* */  QDnsLookup_serviceRecords(const QDnsLookup* self);
struct seaqt_array /* of QDnsTextRecord* */  QDnsLookup_textRecords(const QDnsLookup* self);
void QDnsLookup_abort(QDnsLookup* self);
void QDnsLookup_lookup(QDnsLookup* self);
void QDnsLookup_finished(QDnsLookup* self);
void QDnsLookup_connect_finished(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDnsLookup_nameChanged(QDnsLookup* self, struct seaqt_string name);
void QDnsLookup_connect_nameChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QDnsLookup_typeChanged(QDnsLookup* self, int type);
void QDnsLookup_connect_typeChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDnsLookup_nameserverChanged(QDnsLookup* self, QHostAddress* nameserver);
void QDnsLookup_connect_nameserverChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, QHostAddress*), void (*release)(intptr_t));
struct seaqt_string QDnsLookup_tr_s_c(const char* s, const char* c);
struct seaqt_string QDnsLookup_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QDnsLookup_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QDnsLookup_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QDnsLookup_virtualbase_metaObject(const VirtualQDnsLookup* self);
void* QDnsLookup_virtualbase_metacast(VirtualQDnsLookup* self, const char* param1);
int QDnsLookup_virtualbase_metacall(VirtualQDnsLookup* self, int param1, int param2, void** param3);
bool QDnsLookup_virtualbase_event(VirtualQDnsLookup* self, QEvent* event);
bool QDnsLookup_virtualbase_eventFilter(VirtualQDnsLookup* self, QObject* watched, QEvent* event);
void QDnsLookup_virtualbase_timerEvent(VirtualQDnsLookup* self, QTimerEvent* event);
void QDnsLookup_virtualbase_childEvent(VirtualQDnsLookup* self, QChildEvent* event);
void QDnsLookup_virtualbase_customEvent(VirtualQDnsLookup* self, QEvent* event);
void QDnsLookup_virtualbase_connectNotify(VirtualQDnsLookup* self, QMetaMethod* signal);
void QDnsLookup_virtualbase_disconnectNotify(VirtualQDnsLookup* self, QMetaMethod* signal);

QObject* QDnsLookup_protectedbase_sender(const VirtualQDnsLookup* self);
int QDnsLookup_protectedbase_senderSignalIndex(const VirtualQDnsLookup* self);
int QDnsLookup_protectedbase_receivers(const VirtualQDnsLookup* self, const char* signal);
bool QDnsLookup_protectedbase_isSignalConnected(const VirtualQDnsLookup* self, QMetaMethod* signal);

void QDnsLookup_delete(QDnsLookup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
