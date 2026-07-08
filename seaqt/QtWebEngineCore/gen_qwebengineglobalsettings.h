#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEGLOBALSETTINGS_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEGLOBALSETTINGS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebEngineGlobalSettings__DnsMode)
typedef QWebEngineGlobalSettings::DnsMode QWebEngineGlobalSettings__DnsMode;
#else
class QWebEngineGlobalSettings__DnsMode;
#endif
#else
typedef struct QWebEngineGlobalSettings__DnsMode QWebEngineGlobalSettings__DnsMode;
#endif

uint8_t QWebEngineGlobalSettings__DnsMode_secureMode(const QWebEngineGlobalSettings__DnsMode* self);
void QWebEngineGlobalSettings__DnsMode_setSecureMode(QWebEngineGlobalSettings__DnsMode* self, uint8_t secureMode);
struct seaqt_array /* of struct seaqt_string */  QWebEngineGlobalSettings__DnsMode_serverTemplates(const QWebEngineGlobalSettings__DnsMode* self);
void QWebEngineGlobalSettings__DnsMode_setServerTemplates(QWebEngineGlobalSettings__DnsMode* self, struct seaqt_array /* of struct seaqt_string */  serverTemplates);

void QWebEngineGlobalSettings__DnsMode_delete(QWebEngineGlobalSettings__DnsMode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
