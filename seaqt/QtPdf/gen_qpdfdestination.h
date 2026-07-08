#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFDESTINATION_H
#define SEAQT_QTPDF_GEN_QPDFDESTINATION_H

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
class QPointF;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QPdfDestination QPdfDestination;
typedef struct QPointF QPointF;
#endif

QPdfDestination* QPdfDestination_new(QPdfDestination* from);

void QPdfDestination_operatorAssign(QPdfDestination* self, QPdfDestination* from);
void QPdfDestination_swap(QPdfDestination* self, QPdfDestination* other);
bool QPdfDestination_isValid(const QPdfDestination* self);
int QPdfDestination_page(const QPdfDestination* self);
QPointF* QPdfDestination_location(const QPdfDestination* self);
double QPdfDestination_zoom(const QPdfDestination* self);

const QMetaObject* QPdfDestination_staticMetaObject();
void QPdfDestination_delete(QPdfDestination* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
