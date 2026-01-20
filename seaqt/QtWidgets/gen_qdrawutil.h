#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDRAWUTIL_H
#define SEAQT_QTWIDGETS_GEN_QDRAWUTIL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QTileRules;
#else
typedef struct QTileRules QTileRules;
#endif

QTileRules* QTileRules_new_horizontalRule_verticalRule(int horizontalRule, int verticalRule);
QTileRules* QTileRules_new();
QTileRules* QTileRules_new_from(QTileRules* from);
QTileRules* QTileRules_new_rule(int rule);

int QTileRules_horizontal(const QTileRules* self);
void QTileRules_setHorizontal(QTileRules* self, int horizontal);
int QTileRules_vertical(const QTileRules* self);
void QTileRules_setVertical(QTileRules* self, int vertical);

void QTileRules_delete(QTileRules* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
