#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QFORMDATABUILDER_H
#define SEAQT_QTNETWORK_GEN_QFORMDATABUILDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QFormDataBuilder;
class QFormDataPartBuilder;
class QHttpHeaders;
class QIODevice;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QFormDataBuilder QFormDataBuilder;
typedef struct QFormDataPartBuilder QFormDataPartBuilder;
typedef struct QHttpHeaders QHttpHeaders;
typedef struct QIODevice QIODevice;
#endif

QFormDataPartBuilder* QFormDataPartBuilder_new();
QFormDataPartBuilder* QFormDataPartBuilder_new_from(QFormDataPartBuilder* from);

void QFormDataPartBuilder_swap(QFormDataPartBuilder* self, QFormDataPartBuilder* other);
QFormDataPartBuilder* QFormDataPartBuilder_setBody_data(QFormDataPartBuilder* self, struct seaqt_string data);
QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body(QFormDataPartBuilder* self, QIODevice* body);
QFormDataPartBuilder* QFormDataPartBuilder_setHeaders(QFormDataPartBuilder* self, QHttpHeaders* headers);
QFormDataPartBuilder* QFormDataPartBuilder_setBody_data_fileName(QFormDataPartBuilder* self, struct seaqt_string data, struct seaqt_string fileName);
QFormDataPartBuilder* QFormDataPartBuilder_setBody_data_fileName_mimeType(QFormDataPartBuilder* self, struct seaqt_string data, struct seaqt_string fileName, struct seaqt_string mimeType);
QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body_fileName(QFormDataPartBuilder* self, QIODevice* body, struct seaqt_string fileName);
QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body_fileName_mimeType(QFormDataPartBuilder* self, QIODevice* body, struct seaqt_string fileName, struct seaqt_string mimeType);

void QFormDataPartBuilder_delete(QFormDataPartBuilder* self);

QFormDataBuilder* QFormDataBuilder_new();

void QFormDataBuilder_swap(QFormDataBuilder* self, QFormDataBuilder* other);
QFormDataPartBuilder* QFormDataBuilder_part(QFormDataBuilder* self, struct seaqt_string name);

void QFormDataBuilder_delete(QFormDataBuilder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
