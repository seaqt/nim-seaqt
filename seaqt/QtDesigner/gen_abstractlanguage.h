#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTLANGUAGE_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTLANGUAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerFormWindowInterface;
class QDesignerLanguageExtension;
class QDesignerResourceBrowserInterface;
class QDialog;
class QObject;
class QWidget;
#else
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerLanguageExtension QDesignerLanguageExtension;
typedef struct QDesignerResourceBrowserInterface QDesignerResourceBrowserInterface;
typedef struct QDialog QDialog;
typedef struct QObject QObject;
typedef struct QWidget QWidget;
#endif

struct seaqt_string QDesignerLanguageExtension_name(const QDesignerLanguageExtension* self);
QDialog* QDesignerLanguageExtension_createFormWindowSettingsDialog(QDesignerLanguageExtension* self, QDesignerFormWindowInterface* formWindow, QWidget* parentWidget);
QDesignerResourceBrowserInterface* QDesignerLanguageExtension_createResourceBrowser(QDesignerLanguageExtension* self, QWidget* parentWidget);
bool QDesignerLanguageExtension_isLanguageResource(const QDesignerLanguageExtension* self, struct seaqt_string path);
struct seaqt_string QDesignerLanguageExtension_classNameOf(const QDesignerLanguageExtension* self, QObject* object);
bool QDesignerLanguageExtension_signalMatchesSlot(const QDesignerLanguageExtension* self, struct seaqt_string signal, struct seaqt_string slot);
struct seaqt_string QDesignerLanguageExtension_widgetBoxContents(const QDesignerLanguageExtension* self);
struct seaqt_string QDesignerLanguageExtension_uiExtension(const QDesignerLanguageExtension* self);

void QDesignerLanguageExtension_delete(QDesignerLanguageExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
