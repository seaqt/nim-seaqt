#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QHOSTINFO_H
#define SEAQT_QTNETWORK_GEN_QHOSTINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QHostAddress;
class QHostInfo;
#else
typedef struct QHostAddress QHostAddress;
typedef struct QHostInfo QHostInfo;
#endif

QHostInfo* QHostInfo_new();
QHostInfo* QHostInfo_new_from(QHostInfo* from);
QHostInfo* QHostInfo_new_lookupId(int lookupId);

void QHostInfo_operatorAssign(QHostInfo* self, QHostInfo* from);
void QHostInfo_swap(QHostInfo* self, QHostInfo* other);
struct seaqt_string QHostInfo_hostName(const QHostInfo* self);
void QHostInfo_setHostName(QHostInfo* self, struct seaqt_string name);
struct seaqt_array /* of QHostAddress* */  QHostInfo_addresses(const QHostInfo* self);
void QHostInfo_setAddresses(QHostInfo* self, struct seaqt_array /* of QHostAddress* */  addresses);
int QHostInfo_error(const QHostInfo* self);
void QHostInfo_setError(QHostInfo* self, int error);
struct seaqt_string QHostInfo_errorString(const QHostInfo* self);
void QHostInfo_setErrorString(QHostInfo* self, struct seaqt_string errorString);
void QHostInfo_setLookupId(QHostInfo* self, int id);
int QHostInfo_lookupId(const QHostInfo* self);
void QHostInfo_abortHostLookup(int lookupId);
QHostInfo* QHostInfo_fromName(struct seaqt_string name);
struct seaqt_string QHostInfo_localHostName();
struct seaqt_string QHostInfo_localDomainName();

void QHostInfo_delete(QHostInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
