#pragma once
#ifndef SEAQT_QTCORE_GEN_QSCOPEDPOINTER_H
#define SEAQT_QTCORE_GEN_QSCOPEDPOINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QScopedPointerPodDeleter;
#else
typedef struct QScopedPointerPodDeleter QScopedPointerPodDeleter;
#endif

void QScopedPointerPodDeleter_cleanup(void* pointer);
void QScopedPointerPodDeleter_delete(QScopedPointerPodDeleter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
