#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOMPARE_H
#define SEAQT_QTCORE_GEN_QCOMPARE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPartialOrdering;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_partial_ordering)
typedef Qt::partial_ordering partial_ordering;
#else
class partial_ordering;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_strong_ordering)
typedef Qt::strong_ordering strong_ordering;
#else
class strong_ordering;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_weak_ordering)
typedef Qt::weak_ordering weak_ordering;
#else
class weak_ordering;
#endif
#else
typedef struct QPartialOrdering QPartialOrdering;
typedef struct partial_ordering partial_ordering;
typedef struct strong_ordering strong_ordering;
typedef struct weak_ordering weak_ordering;
#endif

partial_ordering* partial_ordering_new(partial_ordering* from);

void partial_ordering_delete(partial_ordering* self);

weak_ordering* weak_ordering_new(weak_ordering* from);

partial_ordering* weak_ordering_ToPartial_ordering(const weak_ordering* self);

void weak_ordering_delete(weak_ordering* self);

strong_ordering* strong_ordering_new(strong_ordering* from);

partial_ordering* strong_ordering_ToPartial_ordering(const strong_ordering* self);
weak_ordering* strong_ordering_ToWeak_ordering(const strong_ordering* self);

void strong_ordering_delete(strong_ordering* self);

QPartialOrdering* QPartialOrdering_new_Qt_partial_ordering(partial_ordering* order);
QPartialOrdering* QPartialOrdering_new_Qt_weak_ordering(weak_ordering* stdorder);
QPartialOrdering* QPartialOrdering_new_Qt_strong_ordering(strong_ordering* stdorder);
QPartialOrdering* QPartialOrdering_new_QPartialOrdering(QPartialOrdering* from);

partial_ordering* QPartialOrdering_ToPartial_ordering(const QPartialOrdering* self);

void QPartialOrdering_delete(QPartialOrdering* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
