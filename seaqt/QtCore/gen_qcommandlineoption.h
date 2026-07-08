#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOMMANDLINEOPTION_H
#define SEAQT_QTCORE_GEN_QCOMMANDLINEOPTION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCommandLineOption;
#else
typedef struct QCommandLineOption QCommandLineOption;
#endif

QCommandLineOption* QCommandLineOption_new_name(struct seaqt_string name);
QCommandLineOption* QCommandLineOption_new_names(struct seaqt_array /* of struct seaqt_string */  names);
QCommandLineOption* QCommandLineOption_new_name_description(struct seaqt_string name, struct seaqt_string description);
QCommandLineOption* QCommandLineOption_new_names_description(struct seaqt_array /* of struct seaqt_string */  names, struct seaqt_string description);
QCommandLineOption* QCommandLineOption_new_from(QCommandLineOption* from);
QCommandLineOption* QCommandLineOption_new_name_description_valueName(struct seaqt_string name, struct seaqt_string description, struct seaqt_string valueName);
QCommandLineOption* QCommandLineOption_new_name_description_valueName_defaultValue(struct seaqt_string name, struct seaqt_string description, struct seaqt_string valueName, struct seaqt_string defaultValue);
QCommandLineOption* QCommandLineOption_new_names_description_valueName(struct seaqt_array /* of struct seaqt_string */  names, struct seaqt_string description, struct seaqt_string valueName);
QCommandLineOption* QCommandLineOption_new_names_description_valueName_defaultValue(struct seaqt_array /* of struct seaqt_string */  names, struct seaqt_string description, struct seaqt_string valueName, struct seaqt_string defaultValue);

void QCommandLineOption_operatorAssign(QCommandLineOption* self, QCommandLineOption* from);
void QCommandLineOption_swap(QCommandLineOption* self, QCommandLineOption* other);
struct seaqt_array /* of struct seaqt_string */  QCommandLineOption_names(const QCommandLineOption* self);
void QCommandLineOption_setValueName(QCommandLineOption* self, struct seaqt_string name);
struct seaqt_string QCommandLineOption_valueName(const QCommandLineOption* self);
void QCommandLineOption_setDescription(QCommandLineOption* self, struct seaqt_string description);
struct seaqt_string QCommandLineOption_description(const QCommandLineOption* self);
void QCommandLineOption_setDefaultValue(QCommandLineOption* self, struct seaqt_string defaultValue);
void QCommandLineOption_setDefaultValues(QCommandLineOption* self, struct seaqt_array /* of struct seaqt_string */  defaultValues);
struct seaqt_array /* of struct seaqt_string */  QCommandLineOption_defaultValues(const QCommandLineOption* self);
int QCommandLineOption_flags(const QCommandLineOption* self);
void QCommandLineOption_setFlags(QCommandLineOption* self, int aflags);

void QCommandLineOption_delete(QCommandLineOption* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
