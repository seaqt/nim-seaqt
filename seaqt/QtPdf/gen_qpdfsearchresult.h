#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFSEARCHRESULT_H
#define SEAQT_QTPDF_GEN_QPDFSEARCHRESULT_H

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
class QPdfDestination;
class QPdfSearchResult;
class QRectF;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QPdfDestination QPdfDestination;
typedef struct QPdfSearchResult QPdfSearchResult;
typedef struct QRectF QRectF;
#endif

QPdfSearchResult* QPdfSearchResult_new();
QPdfSearchResult* QPdfSearchResult_new_from(QPdfSearchResult* from);

void QPdfSearchResult_virtbase(QPdfSearchResult* src, QPdfDestination** outptr_QPdfDestination);
struct seaqt_string QPdfSearchResult_contextBefore(const QPdfSearchResult* self);
struct seaqt_string QPdfSearchResult_contextAfter(const QPdfSearchResult* self);
struct seaqt_array /* of QRectF* */  QPdfSearchResult_rectangles(const QPdfSearchResult* self);
void QPdfSearchResult_operatorAssign(QPdfSearchResult* self, QPdfSearchResult* from);

void QPdfSearchResult_delete(QPdfSearchResult* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
