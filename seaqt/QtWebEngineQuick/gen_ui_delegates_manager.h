#pragma once
#ifndef SEAQT_QTWEBENGINEQUICK_GEN_UI_DELEGATES_MANAGER_H
#define SEAQT_QTWEBENGINEQUICK_GEN_UI_DELEGATES_MANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPoint;
class QQmlComponent;
class QQmlContext;
class QQmlEngine;
class QQuickItem;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__AutofillPopupEventFilter)
typedef QtWebEngineCore::AutofillPopupEventFilter QtWebEngineCore__AutofillPopupEventFilter;
#else
class QtWebEngineCore__AutofillPopupEventFilter;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QtWebEngineCore__UIDelegatesManager)
typedef QtWebEngineCore::UIDelegatesManager QtWebEngineCore__UIDelegatesManager;
#else
class QtWebEngineCore__UIDelegatesManager;
#endif
#else
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QQmlComponent QQmlComponent;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQuickItem QQuickItem;
typedef struct QtWebEngineCore__AutofillPopupEventFilter QtWebEngineCore__AutofillPopupEventFilter;
typedef struct QtWebEngineCore__UIDelegatesManager QtWebEngineCore__UIDelegatesManager;
#endif

struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText(const char* sourceText);
bool QtWebEngineCore__UIDelegatesManager_initializeImportDirs(QtWebEngineCore__UIDelegatesManager* self, struct seaqt_array /* of struct seaqt_string */  dirs, QQmlEngine* engine);
void QtWebEngineCore__UIDelegatesManager_addMenuSeparator(QtWebEngineCore__UIDelegatesManager* self, QObject* menu);
QObject* QtWebEngineCore__UIDelegatesManager_addMenu(QtWebEngineCore__UIDelegatesManager* self, QObject* parentMenu, struct seaqt_string title, QPoint* pos);
QQmlContext* QtWebEngineCore__UIDelegatesManager_creationContextForComponent(QtWebEngineCore__UIDelegatesManager* self, QQmlComponent* param1);
void QtWebEngineCore__UIDelegatesManager_showMenu(QtWebEngineCore__UIDelegatesManager* self, QObject* menu);
void QtWebEngineCore__UIDelegatesManager_showToolTip(QtWebEngineCore__UIDelegatesManager* self, struct seaqt_string text);
QQuickItem* QtWebEngineCore__UIDelegatesManager_createTouchHandle(QtWebEngineCore__UIDelegatesManager* self);
void QtWebEngineCore__UIDelegatesManager_hideTouchSelectionMenu(QtWebEngineCore__UIDelegatesManager* self);
void QtWebEngineCore__UIDelegatesManager_hideAutofillPopup(QtWebEngineCore__UIDelegatesManager* self);
struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation);
struct seaqt_string QtWebEngineCore__UIDelegatesManager_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n);

void QtWebEngineCore__UIDelegatesManager_delete(QtWebEngineCore__UIDelegatesManager* self);

void QtWebEngineCore__AutofillPopupEventFilter_virtbase(QtWebEngineCore__AutofillPopupEventFilter* src, QObject** outptr_QObject);
QMetaObject* QtWebEngineCore__AutofillPopupEventFilter_metaObject(const QtWebEngineCore__AutofillPopupEventFilter* self);
void* QtWebEngineCore__AutofillPopupEventFilter_metacast(QtWebEngineCore__AutofillPopupEventFilter* self, const char* param1);
int QtWebEngineCore__AutofillPopupEventFilter_metacall(QtWebEngineCore__AutofillPopupEventFilter* self, int param1, int param2, void** param3);
struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s(const char* s);
bool QtWebEngineCore__AutofillPopupEventFilter_eventFilter(QtWebEngineCore__AutofillPopupEventFilter* self, QObject* object, QEvent* event);
struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s_c(const char* s, const char* c);
struct seaqt_string QtWebEngineCore__AutofillPopupEventFilter_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QtWebEngineCore__AutofillPopupEventFilter_staticMetaObject();
void QtWebEngineCore__AutofillPopupEventFilter_delete(QtWebEngineCore__AutofillPopupEventFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
