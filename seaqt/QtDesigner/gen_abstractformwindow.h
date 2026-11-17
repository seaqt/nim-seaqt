#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOW_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerFormWindowCursorInterface;
class QDesignerFormWindowInterface;
class QDesignerFormWindowToolInterface;
class QDir;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPaintDevice;
class QPoint;
class QUndoStack;
class QWidget;
#else
typedef struct QDesignerFormWindowCursorInterface QDesignerFormWindowCursorInterface;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerFormWindowToolInterface QDesignerFormWindowToolInterface;
typedef struct QDir QDir;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPoint QPoint;
typedef struct QUndoStack QUndoStack;
typedef struct QWidget QWidget;
#endif

void QDesignerFormWindowInterface_virtbase(QDesignerFormWindowInterface* src, QWidget** outptr_QWidget);
QMetaObject* QDesignerFormWindowInterface_metaObject(const QDesignerFormWindowInterface* self);
void* QDesignerFormWindowInterface_metacast(QDesignerFormWindowInterface* self, const char* param1);
int QDesignerFormWindowInterface_metacall(QDesignerFormWindowInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerFormWindowInterface_tr_s(const char* s);
struct seaqt_string QDesignerFormWindowInterface_fileName(const QDesignerFormWindowInterface* self);
QDir* QDesignerFormWindowInterface_absoluteDir(const QDesignerFormWindowInterface* self);
struct seaqt_string QDesignerFormWindowInterface_contents(const QDesignerFormWindowInterface* self);
struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_checkContents(const QDesignerFormWindowInterface* self);
int QDesignerFormWindowInterface_features(const QDesignerFormWindowInterface* self);
bool QDesignerFormWindowInterface_hasFeature(const QDesignerFormWindowInterface* self, int f);
struct seaqt_string QDesignerFormWindowInterface_author(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setAuthor(QDesignerFormWindowInterface* self, struct seaqt_string author);
struct seaqt_string QDesignerFormWindowInterface_comment(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setComment(QDesignerFormWindowInterface* self, struct seaqt_string comment);
void QDesignerFormWindowInterface_layoutDefault(QDesignerFormWindowInterface* self, int* margin, int* spacing);
void QDesignerFormWindowInterface_setLayoutDefault(QDesignerFormWindowInterface* self, int margin, int spacing);
void QDesignerFormWindowInterface_setLayoutFunction(QDesignerFormWindowInterface* self, struct seaqt_string margin, struct seaqt_string spacing);
struct seaqt_string QDesignerFormWindowInterface_pixmapFunction(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setPixmapFunction(QDesignerFormWindowInterface* self, struct seaqt_string pixmapFunction);
struct seaqt_string QDesignerFormWindowInterface_exportMacro(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setExportMacro(QDesignerFormWindowInterface* self, struct seaqt_string exportMacro);
struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_includeHints(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setIncludeHints(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  includeHints);
int QDesignerFormWindowInterface_resourceFileSaveMode(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setResourceFileSaveMode(QDesignerFormWindowInterface* self, int behaviour);
struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_activeResourceFilePaths(const QDesignerFormWindowInterface* self);
QDesignerFormWindowCursorInterface* QDesignerFormWindowInterface_cursor(const QDesignerFormWindowInterface* self);
int QDesignerFormWindowInterface_toolCount(const QDesignerFormWindowInterface* self);
int QDesignerFormWindowInterface_currentTool(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setCurrentTool(QDesignerFormWindowInterface* self, int index);
QDesignerFormWindowToolInterface* QDesignerFormWindowInterface_tool(const QDesignerFormWindowInterface* self, int index);
void QDesignerFormWindowInterface_registerTool(QDesignerFormWindowInterface* self, QDesignerFormWindowToolInterface* tool);
QPoint* QDesignerFormWindowInterface_grid(const QDesignerFormWindowInterface* self);
QWidget* QDesignerFormWindowInterface_mainContainer(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_setMainContainer(QDesignerFormWindowInterface* self, QWidget* mainContainer);
QWidget* QDesignerFormWindowInterface_formContainer(const QDesignerFormWindowInterface* self);
bool QDesignerFormWindowInterface_isManaged(const QDesignerFormWindowInterface* self, QWidget* widget);
bool QDesignerFormWindowInterface_isDirty(const QDesignerFormWindowInterface* self);
QDesignerFormWindowInterface* QDesignerFormWindowInterface_findFormWindow_w(QWidget* w);
QDesignerFormWindowInterface* QDesignerFormWindowInterface_findFormWindow_obj(QObject* obj);
QUndoStack* QDesignerFormWindowInterface_commandHistory(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_beginCommand(QDesignerFormWindowInterface* self, struct seaqt_string description);
void QDesignerFormWindowInterface_endCommand(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_simplifySelection(const QDesignerFormWindowInterface* self, struct seaqt_array /* of QWidget* */  widgets);
void QDesignerFormWindowInterface_emitSelectionChanged(QDesignerFormWindowInterface* self);
struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_resourceFiles(const QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_addResourceFile(QDesignerFormWindowInterface* self, struct seaqt_string path);
void QDesignerFormWindowInterface_removeResourceFile(QDesignerFormWindowInterface* self, struct seaqt_string path);
void QDesignerFormWindowInterface_ensureUniqueObjectName(QDesignerFormWindowInterface* self, QObject* object);
void QDesignerFormWindowInterface_manageWidget(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_unmanageWidget(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_setFeatures(QDesignerFormWindowInterface* self, int f);
void QDesignerFormWindowInterface_setDirty(QDesignerFormWindowInterface* self, bool dirty);
void QDesignerFormWindowInterface_clearSelection(QDesignerFormWindowInterface* self, bool changePropertyDisplay);
void QDesignerFormWindowInterface_selectWidget(QDesignerFormWindowInterface* self, QWidget* w, bool select);
void QDesignerFormWindowInterface_setGrid(QDesignerFormWindowInterface* self, QPoint* grid);
void QDesignerFormWindowInterface_setFileName(QDesignerFormWindowInterface* self, struct seaqt_string fileName);
bool QDesignerFormWindowInterface_setContents_contents(QDesignerFormWindowInterface* self, struct seaqt_string contents);
void QDesignerFormWindowInterface_editWidgets(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_activateResourceFilePaths_paths(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  paths);
void QDesignerFormWindowInterface_mainContainerChanged(QDesignerFormWindowInterface* self, QWidget* mainContainer);
void QDesignerFormWindowInterface_connect_mainContainerChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_toolChanged(QDesignerFormWindowInterface* self, int toolIndex);
void QDesignerFormWindowInterface_connect_toolChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesignerFormWindowInterface_fileNameChanged(QDesignerFormWindowInterface* self, struct seaqt_string fileName);
void QDesignerFormWindowInterface_connect_fileNameChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QDesignerFormWindowInterface_featureChanged(QDesignerFormWindowInterface* self, int f);
void QDesignerFormWindowInterface_connect_featureChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesignerFormWindowInterface_selectionChanged(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_connect_selectionChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesignerFormWindowInterface_geometryChanged(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_connect_geometryChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesignerFormWindowInterface_resourceFilesChanged(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_connect_resourceFilesChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesignerFormWindowInterface_widgetManaged(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_connect_widgetManaged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_widgetUnmanaged(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_connect_widgetUnmanaged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_aboutToUnmanageWidget(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_connect_aboutToUnmanageWidget(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_activated(QDesignerFormWindowInterface* self, QWidget* widget);
void QDesignerFormWindowInterface_connect_activated(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_changed(QDesignerFormWindowInterface* self);
void QDesignerFormWindowInterface_connect_changed(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesignerFormWindowInterface_widgetRemoved(QDesignerFormWindowInterface* self, QWidget* w);
void QDesignerFormWindowInterface_connect_widgetRemoved(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QDesignerFormWindowInterface_objectRemoved(QDesignerFormWindowInterface* self, QObject* o);
void QDesignerFormWindowInterface_connect_objectRemoved(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t));
struct seaqt_string QDesignerFormWindowInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerFormWindowInterface_tr_s_c_n(const char* s, const char* c, int n);
void QDesignerFormWindowInterface_activateResourceFilePaths_paths_errorCount(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  paths, int* errorCount);

void QDesignerFormWindowInterface_delete(QDesignerFormWindowInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
