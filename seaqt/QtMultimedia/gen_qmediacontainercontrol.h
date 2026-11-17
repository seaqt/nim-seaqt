#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTAINERCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTAINERCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaContainerControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QMediaContainerControl QMediaContainerControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QMediaContainerControl_virtbase(QMediaContainerControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaContainerControl_metaObject(const QMediaContainerControl* self);
void* QMediaContainerControl_metacast(QMediaContainerControl* self, const char* param1);
int QMediaContainerControl_metacall(QMediaContainerControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaContainerControl_tr_s(const char* s);
struct seaqt_string QMediaContainerControl_trUtf8_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QMediaContainerControl_supportedContainers(const QMediaContainerControl* self);
struct seaqt_string QMediaContainerControl_containerFormat(const QMediaContainerControl* self);
void QMediaContainerControl_setContainerFormat(QMediaContainerControl* self, struct seaqt_string format);
struct seaqt_string QMediaContainerControl_containerDescription(const QMediaContainerControl* self, struct seaqt_string formatMimeType);
struct seaqt_string QMediaContainerControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaContainerControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaContainerControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaContainerControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMediaContainerControl_delete(QMediaContainerControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
