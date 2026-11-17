#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QHSTSPOLICY_H
#define SEAQT_QTNETWORK_GEN_QHSTSPOLICY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QHstsPolicy;
#else
typedef struct QDateTime QDateTime;
typedef struct QHstsPolicy QHstsPolicy;
#endif

QHstsPolicy* QHstsPolicy_new();
QHstsPolicy* QHstsPolicy_new_expiry_flags_host(QDateTime* expiry, int flags, struct seaqt_string host);
QHstsPolicy* QHstsPolicy_new_from(QHstsPolicy* from);
QHstsPolicy* QHstsPolicy_new_expiry_flags_host_mode(QDateTime* expiry, int flags, struct seaqt_string host, int mode);

void QHstsPolicy_operatorAssign(QHstsPolicy* self, QHstsPolicy* from);
void QHstsPolicy_swap(QHstsPolicy* self, QHstsPolicy* other);
void QHstsPolicy_setHost_host(QHstsPolicy* self, struct seaqt_string host);
struct seaqt_string QHstsPolicy_host(const QHstsPolicy* self);
void QHstsPolicy_setExpiry(QHstsPolicy* self, QDateTime* expiry);
QDateTime* QHstsPolicy_expiry(const QHstsPolicy* self);
void QHstsPolicy_setIncludesSubDomains(QHstsPolicy* self, bool include);
bool QHstsPolicy_includesSubDomains(const QHstsPolicy* self);
bool QHstsPolicy_isExpired(const QHstsPolicy* self);
void QHstsPolicy_setHost_host_mode(QHstsPolicy* self, struct seaqt_string host, int mode);
struct seaqt_string QHstsPolicy_host_options(const QHstsPolicy* self, unsigned int options);

void QHstsPolicy_delete(QHstsPolicy* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
