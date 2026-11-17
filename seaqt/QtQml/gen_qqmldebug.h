#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLDEBUG_H
#define SEAQT_QTQML_GEN_QQMLDEBUG_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlDebuggingEnabler;
class QVariant;
#else
typedef struct QQmlDebuggingEnabler QQmlDebuggingEnabler;
typedef struct QVariant QVariant;
#endif

QQmlDebuggingEnabler* QQmlDebuggingEnabler_new();
QQmlDebuggingEnabler* QQmlDebuggingEnabler_new_printWarning(bool printWarning);

void QQmlDebuggingEnabler_enableDebugging(bool printWarning);
struct seaqt_array /* of struct seaqt_string */  QQmlDebuggingEnabler_debuggerServices();
struct seaqt_array /* of struct seaqt_string */  QQmlDebuggingEnabler_inspectorServices();
struct seaqt_array /* of struct seaqt_string */  QQmlDebuggingEnabler_profilerServices();
struct seaqt_array /* of struct seaqt_string */  QQmlDebuggingEnabler_nativeDebuggerServices();
void QQmlDebuggingEnabler_setServices(struct seaqt_array /* of struct seaqt_string */  services);
bool QQmlDebuggingEnabler_startTcpDebugServer_port(int port);
bool QQmlDebuggingEnabler_connectToLocalDebugger_socketFileName(struct seaqt_string socketFileName);
bool QQmlDebuggingEnabler_startDebugConnector_pluginName(struct seaqt_string pluginName);
bool QQmlDebuggingEnabler_startTcpDebugServer_port_mode(int port, int mode);
bool QQmlDebuggingEnabler_startTcpDebugServer_port_mode_hostName(int port, int mode, struct seaqt_string hostName);
bool QQmlDebuggingEnabler_connectToLocalDebugger_socketFileName_mode(struct seaqt_string socketFileName, int mode);
bool QQmlDebuggingEnabler_startDebugConnector_pluginName_configuration(struct seaqt_string pluginName, struct seaqt_map /* of struct seaqt_string to QVariant* */  configuration);

void QQmlDebuggingEnabler_delete(QQmlDebuggingEnabler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
