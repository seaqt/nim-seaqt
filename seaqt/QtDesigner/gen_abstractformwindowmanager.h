#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWMANAGER_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWMANAGER_H

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
class QActionGroup;
class QDesignerDnDItemInterface;
class QDesignerFormWindowInterface;
class QDesignerFormWindowManagerInterface;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPixmap;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QDesignerDnDItemInterface QDesignerDnDItemInterface;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerFormWindowManagerInterface QDesignerFormWindowManagerInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QWidget QWidget;
#endif

void QDesignerFormWindowManagerInterface_virtbase(QDesignerFormWindowManagerInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerFormWindowManagerInterface_metaObject(const QDesignerFormWindowManagerInterface* self);
void* QDesignerFormWindowManagerInterface_metacast(QDesignerFormWindowManagerInterface* self, const char* param1);
int QDesignerFormWindowManagerInterface_metacall(QDesignerFormWindowManagerInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerFormWindowManagerInterface_tr_s(const char* s);
QAction* QDesignerFormWindowManagerInterface_action(const QDesignerFormWindowManagerInterface* self, int action);
QActionGroup* QDesignerFormWindowManagerInterface_actionGroup(const QDesignerFormWindowManagerInterface* self, int actionGroup);
QAction* QDesignerFormWindowManagerInterface_actionCut(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionCopy(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionPaste(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionDelete(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionSelectAll(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionLower(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionRaise(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionUndo(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionRedo(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionHorizontalLayout(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionVerticalLayout(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionSplitHorizontal(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionSplitVertical(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionGridLayout(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionFormLayout(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionBreakLayout(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionAdjustSize(const QDesignerFormWindowManagerInterface* self);
QAction* QDesignerFormWindowManagerInterface_actionSimplifyLayout(const QDesignerFormWindowManagerInterface* self);
QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_activeFormWindow(const QDesignerFormWindowManagerInterface* self);
int QDesignerFormWindowManagerInterface_formWindowCount(const QDesignerFormWindowManagerInterface* self);
QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_formWindow(const QDesignerFormWindowManagerInterface* self, int index);
QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_createFormWindow(QDesignerFormWindowManagerInterface* self, QWidget* parentWidget, int flags);
void QDesignerFormWindowManagerInterface_dragItems(QDesignerFormWindowManagerInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list);
QPixmap* QDesignerFormWindowManagerInterface_createPreviewPixmap(const QDesignerFormWindowManagerInterface* self);
void QDesignerFormWindowManagerInterface_formWindowAdded(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_connect_formWindowAdded(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t));
void QDesignerFormWindowManagerInterface_formWindowRemoved(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_connect_formWindowRemoved(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t));
void QDesignerFormWindowManagerInterface_activeFormWindowChanged(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_connect_activeFormWindowChanged(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t));
void QDesignerFormWindowManagerInterface_formWindowSettingsChanged(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* fw);
void QDesignerFormWindowManagerInterface_connect_formWindowSettingsChanged(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t));
void QDesignerFormWindowManagerInterface_addFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_removeFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_setActiveFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerFormWindowManagerInterface_showPreview(QDesignerFormWindowManagerInterface* self);
void QDesignerFormWindowManagerInterface_closeAllPreviews(QDesignerFormWindowManagerInterface* self);
void QDesignerFormWindowManagerInterface_showPluginDialog(QDesignerFormWindowManagerInterface* self);
struct seaqt_string QDesignerFormWindowManagerInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerFormWindowManagerInterface_tr_s_c_n(const char* s, const char* c, int n);

void QDesignerFormWindowManagerInterface_delete(QDesignerFormWindowManagerInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
