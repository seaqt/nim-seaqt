#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWTOOL_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWTOOL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QDesignerFormWindowInterface;
class QDesignerFormWindowToolInterface;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerFormWindowToolInterface QDesignerFormWindowToolInterface;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QWidget QWidget;
#endif

void QDesignerFormWindowToolInterface_virtbase(QDesignerFormWindowToolInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerFormWindowToolInterface_metaObject(const QDesignerFormWindowToolInterface* self);
void* QDesignerFormWindowToolInterface_metacast(QDesignerFormWindowToolInterface* self, const char* param1);
int QDesignerFormWindowToolInterface_metacall(QDesignerFormWindowToolInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerFormWindowToolInterface_tr(const char* s);
QDesignerFormWindowInterface* QDesignerFormWindowToolInterface_formWindow(const QDesignerFormWindowToolInterface* self);
QWidget* QDesignerFormWindowToolInterface_editor(const QDesignerFormWindowToolInterface* self);
QAction* QDesignerFormWindowToolInterface_action(const QDesignerFormWindowToolInterface* self);
void QDesignerFormWindowToolInterface_activated(QDesignerFormWindowToolInterface* self);
void QDesignerFormWindowToolInterface_deactivated(QDesignerFormWindowToolInterface* self);
bool QDesignerFormWindowToolInterface_handleEvent(QDesignerFormWindowToolInterface* self, QWidget* widget, QWidget* managedWidget, QEvent* event);
struct seaqt_string QDesignerFormWindowToolInterface_tr2(const char* s, const char* c);
struct seaqt_string QDesignerFormWindowToolInterface_tr3(const char* s, const char* c, int n);

const QMetaObject* QDesignerFormWindowToolInterface_staticMetaObject();
void QDesignerFormWindowToolInterface_delete(QDesignerFormWindowToolInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
