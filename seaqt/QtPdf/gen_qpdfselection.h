#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFSELECTION_H
#define SEAQT_QTPDF_GEN_QPDFSELECTION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QPdfSelection;
class QRectF;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QPdfSelection QPdfSelection;
typedef struct QRectF QRectF;
#endif

QPdfSelection* QPdfSelection_new(QPdfSelection* other);

void QPdfSelection_operatorAssign(QPdfSelection* self, QPdfSelection* other);
void QPdfSelection_swap(QPdfSelection* self, QPdfSelection* other);
bool QPdfSelection_isValid(const QPdfSelection* self);
struct seaqt_string QPdfSelection_text(const QPdfSelection* self);
QRectF* QPdfSelection_boundingRectangle(const QPdfSelection* self);
int QPdfSelection_startIndex(const QPdfSelection* self);
int QPdfSelection_endIndex(const QPdfSelection* self);
void QPdfSelection_copyToClipboard(const QPdfSelection* self);
void QPdfSelection_copyToClipboardWithMode(const QPdfSelection* self, int mode);

const QMetaObject* QPdfSelection_staticMetaObject();
void QPdfSelection_delete(QPdfSelection* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
