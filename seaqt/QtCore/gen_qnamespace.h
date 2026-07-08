#pragma once
#ifndef SEAQT_QTCORE_GEN_QNAMESPACE_H
#define SEAQT_QTCORE_GEN_QNAMESPACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QKeyCombination;
#else
typedef struct QKeyCombination QKeyCombination;
#endif

QKeyCombination* QKeyCombination_new();
QKeyCombination* QKeyCombination_new_Qt_Modifiers(int modifiers);
QKeyCombination* QKeyCombination_new_Qt_KeyboardModifiers(int modifiers);
QKeyCombination* QKeyCombination_new_QKeyCombination(QKeyCombination* from);
QKeyCombination* QKeyCombination_new_Qt_Key(int key);
QKeyCombination* QKeyCombination_new_Qt_Modifiers_Qt_Key(int modifiers, int key);
QKeyCombination* QKeyCombination_new_Qt_KeyboardModifiers_Qt_Key(int modifiers, int key);

int QKeyCombination_keyboardModifiers(const QKeyCombination* self);
int QKeyCombination_key(const QKeyCombination* self);
QKeyCombination* QKeyCombination_fromCombined(int combined);
int QKeyCombination_toCombined(const QKeyCombination* self);
int QKeyCombination_ToInt(const QKeyCombination* self);

void QKeyCombination_delete(QKeyCombination* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
