#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBLE_H
#define SEAQT_QTGUI_GEN_QACCESSIBLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State)
typedef QAccessible::State QAccessible__State;
#else
class QAccessible__State;
#endif
class QAccessibleActionInterface;
class QAccessibleEditableTextInterface;
class QAccessibleEvent;
class QAccessibleHyperlinkInterface;
class QAccessibleImageInterface;
class QAccessibleInterface;
class QAccessibleStateChangeEvent;
class QAccessibleTableCellInterface;
class QAccessibleTableInterface;
class QAccessibleTableModelChangeEvent;
class QAccessibleTextCursorEvent;
class QAccessibleTextInsertEvent;
class QAccessibleTextInterface;
class QAccessibleTextRemoveEvent;
class QAccessibleTextSelectionEvent;
class QAccessibleTextUpdateEvent;
class QAccessibleValueChangeEvent;
class QAccessibleValueInterface;
class QColor;
class QObject;
class QPoint;
class QRect;
class QSize;
class QVariant;
class QWindow;
#else
typedef struct QAccessible__State QAccessible__State;
typedef struct QAccessibleActionInterface QAccessibleActionInterface;
typedef struct QAccessibleEditableTextInterface QAccessibleEditableTextInterface;
typedef struct QAccessibleEvent QAccessibleEvent;
typedef struct QAccessibleHyperlinkInterface QAccessibleHyperlinkInterface;
typedef struct QAccessibleImageInterface QAccessibleImageInterface;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessibleStateChangeEvent QAccessibleStateChangeEvent;
typedef struct QAccessibleTableCellInterface QAccessibleTableCellInterface;
typedef struct QAccessibleTableInterface QAccessibleTableInterface;
typedef struct QAccessibleTableModelChangeEvent QAccessibleTableModelChangeEvent;
typedef struct QAccessibleTextCursorEvent QAccessibleTextCursorEvent;
typedef struct QAccessibleTextInsertEvent QAccessibleTextInsertEvent;
typedef struct QAccessibleTextInterface QAccessibleTextInterface;
typedef struct QAccessibleTextRemoveEvent QAccessibleTextRemoveEvent;
typedef struct QAccessibleTextSelectionEvent QAccessibleTextSelectionEvent;
typedef struct QAccessibleTextUpdateEvent QAccessibleTextUpdateEvent;
typedef struct QAccessibleValueChangeEvent QAccessibleValueChangeEvent;
typedef struct QAccessibleValueInterface QAccessibleValueInterface;
typedef struct QColor QColor;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

bool QAccessibleInterface_isValid(const QAccessibleInterface* self);
QObject* QAccessibleInterface_object(const QAccessibleInterface* self);
QWindow* QAccessibleInterface_window(const QAccessibleInterface* self);
struct seaqt_array /* of struct seaqt_map  tuple of QAccessibleInterface* and int   */  QAccessibleInterface_relations(const QAccessibleInterface* self, int match);
QAccessibleInterface* QAccessibleInterface_focusChild(const QAccessibleInterface* self);
QAccessibleInterface* QAccessibleInterface_childAt(const QAccessibleInterface* self, int x, int y);
QAccessibleInterface* QAccessibleInterface_parent(const QAccessibleInterface* self);
QAccessibleInterface* QAccessibleInterface_child(const QAccessibleInterface* self, int index);
int QAccessibleInterface_childCount(const QAccessibleInterface* self);
int QAccessibleInterface_indexOfChild(const QAccessibleInterface* self, QAccessibleInterface* param1);
struct seaqt_string QAccessibleInterface_text(const QAccessibleInterface* self, int t);
void QAccessibleInterface_setText(QAccessibleInterface* self, int t, struct seaqt_string text);
QRect* QAccessibleInterface_rect(const QAccessibleInterface* self);
int QAccessibleInterface_role(const QAccessibleInterface* self);
QAccessible__State* QAccessibleInterface_state(const QAccessibleInterface* self);
QColor* QAccessibleInterface_foregroundColor(const QAccessibleInterface* self);
QColor* QAccessibleInterface_backgroundColor(const QAccessibleInterface* self);
QAccessibleTextInterface* QAccessibleInterface_textInterface(QAccessibleInterface* self);
QAccessibleEditableTextInterface* QAccessibleInterface_editableTextInterface(QAccessibleInterface* self);
QAccessibleValueInterface* QAccessibleInterface_valueInterface(QAccessibleInterface* self);
QAccessibleActionInterface* QAccessibleInterface_actionInterface(QAccessibleInterface* self);
QAccessibleImageInterface* QAccessibleInterface_imageInterface(QAccessibleInterface* self);
QAccessibleTableInterface* QAccessibleInterface_tableInterface(QAccessibleInterface* self);
QAccessibleTableCellInterface* QAccessibleInterface_tableCellInterface(QAccessibleInterface* self);
QAccessibleHyperlinkInterface* QAccessibleInterface_hyperlinkInterface(QAccessibleInterface* self);
void QAccessibleInterface_virtual_hook(QAccessibleInterface* self, int id, void* data);
void* QAccessibleInterface_interface_cast(QAccessibleInterface* self, int param1);
void QAccessibleInterface_operatorAssign(QAccessibleInterface* self, QAccessibleInterface* from);


void QAccessibleTextInterface_selection(const QAccessibleTextInterface* self, int selectionIndex, int* startOffset, int* endOffset);
int QAccessibleTextInterface_selectionCount(const QAccessibleTextInterface* self);
void QAccessibleTextInterface_addSelection(QAccessibleTextInterface* self, int startOffset, int endOffset);
void QAccessibleTextInterface_removeSelection(QAccessibleTextInterface* self, int selectionIndex);
void QAccessibleTextInterface_setSelection(QAccessibleTextInterface* self, int selectionIndex, int startOffset, int endOffset);
int QAccessibleTextInterface_cursorPosition(const QAccessibleTextInterface* self);
void QAccessibleTextInterface_setCursorPosition(QAccessibleTextInterface* self, int position);
struct seaqt_string QAccessibleTextInterface_text(const QAccessibleTextInterface* self, int startOffset, int endOffset);
struct seaqt_string QAccessibleTextInterface_textBeforeOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
struct seaqt_string QAccessibleTextInterface_textAfterOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
struct seaqt_string QAccessibleTextInterface_textAtOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
int QAccessibleTextInterface_characterCount(const QAccessibleTextInterface* self);
QRect* QAccessibleTextInterface_characterRect(const QAccessibleTextInterface* self, int offset);
int QAccessibleTextInterface_offsetAtPoint(const QAccessibleTextInterface* self, QPoint* point);
void QAccessibleTextInterface_scrollToSubstring(QAccessibleTextInterface* self, int startIndex, int endIndex);
struct seaqt_string QAccessibleTextInterface_attributes(const QAccessibleTextInterface* self, int offset, int* startOffset, int* endOffset);
void QAccessibleTextInterface_operatorAssign(QAccessibleTextInterface* self, QAccessibleTextInterface* from);

void QAccessibleTextInterface_delete(QAccessibleTextInterface* self);

void QAccessibleEditableTextInterface_deleteText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset);
void QAccessibleEditableTextInterface_insertText(QAccessibleEditableTextInterface* self, int offset, struct seaqt_string text);
void QAccessibleEditableTextInterface_replaceText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset, struct seaqt_string text);
void QAccessibleEditableTextInterface_operatorAssign(QAccessibleEditableTextInterface* self, QAccessibleEditableTextInterface* from);

void QAccessibleEditableTextInterface_delete(QAccessibleEditableTextInterface* self);

QVariant* QAccessibleValueInterface_currentValue(const QAccessibleValueInterface* self);
void QAccessibleValueInterface_setCurrentValue(QAccessibleValueInterface* self, QVariant* value);
QVariant* QAccessibleValueInterface_maximumValue(const QAccessibleValueInterface* self);
QVariant* QAccessibleValueInterface_minimumValue(const QAccessibleValueInterface* self);
QVariant* QAccessibleValueInterface_minimumStepSize(const QAccessibleValueInterface* self);
void QAccessibleValueInterface_operatorAssign(QAccessibleValueInterface* self, QAccessibleValueInterface* from);

void QAccessibleValueInterface_delete(QAccessibleValueInterface* self);

bool QAccessibleTableCellInterface_isSelected(const QAccessibleTableCellInterface* self);
struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_columnHeaderCells(const QAccessibleTableCellInterface* self);
struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_rowHeaderCells(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_columnIndex(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_rowIndex(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_columnExtent(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_rowExtent(const QAccessibleTableCellInterface* self);
QAccessibleInterface* QAccessibleTableCellInterface_table(const QAccessibleTableCellInterface* self);
void QAccessibleTableCellInterface_operatorAssign(QAccessibleTableCellInterface* self, QAccessibleTableCellInterface* from);

void QAccessibleTableCellInterface_delete(QAccessibleTableCellInterface* self);

QAccessibleInterface* QAccessibleTableInterface_caption(const QAccessibleTableInterface* self);
QAccessibleInterface* QAccessibleTableInterface_summary(const QAccessibleTableInterface* self);
QAccessibleInterface* QAccessibleTableInterface_cellAt(const QAccessibleTableInterface* self, int row, int column);
int QAccessibleTableInterface_selectedCellCount(const QAccessibleTableInterface* self);
struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableInterface_selectedCells(const QAccessibleTableInterface* self);
struct seaqt_string QAccessibleTableInterface_columnDescription(const QAccessibleTableInterface* self, int column);
struct seaqt_string QAccessibleTableInterface_rowDescription(const QAccessibleTableInterface* self, int row);
int QAccessibleTableInterface_selectedColumnCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_selectedRowCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_columnCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_rowCount(const QAccessibleTableInterface* self);
struct seaqt_array /* of int */  QAccessibleTableInterface_selectedColumns(const QAccessibleTableInterface* self);
struct seaqt_array /* of int */  QAccessibleTableInterface_selectedRows(const QAccessibleTableInterface* self);
bool QAccessibleTableInterface_isColumnSelected(const QAccessibleTableInterface* self, int column);
bool QAccessibleTableInterface_isRowSelected(const QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_selectRow(QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_selectColumn(QAccessibleTableInterface* self, int column);
bool QAccessibleTableInterface_unselectRow(QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_unselectColumn(QAccessibleTableInterface* self, int column);
void QAccessibleTableInterface_modelChange(QAccessibleTableInterface* self, QAccessibleTableModelChangeEvent* event);
void QAccessibleTableInterface_operatorAssign(QAccessibleTableInterface* self, QAccessibleTableInterface* from);

void QAccessibleTableInterface_delete(QAccessibleTableInterface* self);

struct seaqt_string QAccessibleActionInterface_tr_sourceText(const char* sourceText);
struct seaqt_array /* of struct seaqt_string */  QAccessibleActionInterface_actionNames(const QAccessibleActionInterface* self);
struct seaqt_string QAccessibleActionInterface_localizedActionName(const QAccessibleActionInterface* self, struct seaqt_string name);
struct seaqt_string QAccessibleActionInterface_localizedActionDescription(const QAccessibleActionInterface* self, struct seaqt_string name);
void QAccessibleActionInterface_doAction(QAccessibleActionInterface* self, struct seaqt_string actionName);
struct seaqt_array /* of struct seaqt_string */  QAccessibleActionInterface_keyBindingsForAction(const QAccessibleActionInterface* self, struct seaqt_string actionName);
struct seaqt_string QAccessibleActionInterface_pressAction();
struct seaqt_string QAccessibleActionInterface_increaseAction();
struct seaqt_string QAccessibleActionInterface_decreaseAction();
struct seaqt_string QAccessibleActionInterface_showMenuAction();
struct seaqt_string QAccessibleActionInterface_setFocusAction();
struct seaqt_string QAccessibleActionInterface_toggleAction();
struct seaqt_string QAccessibleActionInterface_scrollLeftAction();
struct seaqt_string QAccessibleActionInterface_scrollRightAction();
struct seaqt_string QAccessibleActionInterface_scrollUpAction();
struct seaqt_string QAccessibleActionInterface_scrollDownAction();
struct seaqt_string QAccessibleActionInterface_nextPageAction();
struct seaqt_string QAccessibleActionInterface_previousPageAction();
void QAccessibleActionInterface_operatorAssign(QAccessibleActionInterface* self, QAccessibleActionInterface* from);
struct seaqt_string QAccessibleActionInterface_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation);
struct seaqt_string QAccessibleActionInterface_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n);

void QAccessibleActionInterface_delete(QAccessibleActionInterface* self);

struct seaqt_string QAccessibleImageInterface_imageDescription(const QAccessibleImageInterface* self);
QSize* QAccessibleImageInterface_imageSize(const QAccessibleImageInterface* self);
QPoint* QAccessibleImageInterface_imagePosition(const QAccessibleImageInterface* self);
void QAccessibleImageInterface_operatorAssign(QAccessibleImageInterface* self, QAccessibleImageInterface* from);

void QAccessibleImageInterface_delete(QAccessibleImageInterface* self);

struct seaqt_string QAccessibleHyperlinkInterface_anchor(const QAccessibleHyperlinkInterface* self);
struct seaqt_string QAccessibleHyperlinkInterface_anchorTarget(const QAccessibleHyperlinkInterface* self);
int QAccessibleHyperlinkInterface_startIndex(const QAccessibleHyperlinkInterface* self);
int QAccessibleHyperlinkInterface_endIndex(const QAccessibleHyperlinkInterface* self);
bool QAccessibleHyperlinkInterface_isValid(const QAccessibleHyperlinkInterface* self);
void QAccessibleHyperlinkInterface_operatorAssign(QAccessibleHyperlinkInterface* self, QAccessibleHyperlinkInterface* from);

void QAccessibleHyperlinkInterface_delete(QAccessibleHyperlinkInterface* self);

typedef struct VirtualQAccessibleEvent VirtualQAccessibleEvent;
typedef struct QAccessibleEvent_VTable{
	void (*destructor)(VirtualQAccessibleEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleEvent* self);
}QAccessibleEvent_VTable;

void* QAccessibleEvent_vdata(VirtualQAccessibleEvent* self);
VirtualQAccessibleEvent* vdata_QAccessibleEvent(void* vdata);

VirtualQAccessibleEvent* QAccessibleEvent_new_obj_typ(const QAccessibleEvent_VTable* vtbl, size_t vdata, QObject* obj, int typ);
VirtualQAccessibleEvent* QAccessibleEvent_new_iface_typ(const QAccessibleEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int typ);

int QAccessibleEvent_type(const QAccessibleEvent* self);
QObject* QAccessibleEvent_object(const QAccessibleEvent* self);
unsigned int QAccessibleEvent_uniqueId(const QAccessibleEvent* self);
void QAccessibleEvent_setChild(QAccessibleEvent* self, int chld);
int QAccessibleEvent_child(const QAccessibleEvent* self);
QAccessibleInterface* QAccessibleEvent_accessibleInterface(const QAccessibleEvent* self);

QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const VirtualQAccessibleEvent* self);

void QAccessibleEvent_delete(QAccessibleEvent* self);

typedef struct VirtualQAccessibleStateChangeEvent VirtualQAccessibleStateChangeEvent;
typedef struct QAccessibleStateChangeEvent_VTable{
	void (*destructor)(VirtualQAccessibleStateChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleStateChangeEvent* self);
}QAccessibleStateChangeEvent_VTable;

void* QAccessibleStateChangeEvent_vdata(VirtualQAccessibleStateChangeEvent* self);
VirtualQAccessibleStateChangeEvent* vdata_QAccessibleStateChangeEvent(void* vdata);

VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new_obj_state(const QAccessibleStateChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, QAccessible__State* state);
VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new_iface_state(const QAccessibleStateChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, QAccessible__State* state);

void QAccessibleStateChangeEvent_virtbase(QAccessibleStateChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
QAccessible__State* QAccessibleStateChangeEvent_changedStates(const QAccessibleStateChangeEvent* self);

QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleStateChangeEvent* self);

void QAccessibleStateChangeEvent_delete(QAccessibleStateChangeEvent* self);

typedef struct VirtualQAccessibleTextCursorEvent VirtualQAccessibleTextCursorEvent;
typedef struct QAccessibleTextCursorEvent_VTable{
	void (*destructor)(VirtualQAccessibleTextCursorEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTextCursorEvent* self);
}QAccessibleTextCursorEvent_VTable;

void* QAccessibleTextCursorEvent_vdata(VirtualQAccessibleTextCursorEvent* self);
VirtualQAccessibleTextCursorEvent* vdata_QAccessibleTextCursorEvent(void* vdata);

VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new_obj_cursorPos(const QAccessibleTextCursorEvent_VTable* vtbl, size_t vdata, QObject* obj, int cursorPos);
VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new_iface_cursorPos(const QAccessibleTextCursorEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int cursorPos);

void QAccessibleTextCursorEvent_virtbase(QAccessibleTextCursorEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
void QAccessibleTextCursorEvent_setCursorPosition(QAccessibleTextCursorEvent* self, int position);
int QAccessibleTextCursorEvent_cursorPosition(const QAccessibleTextCursorEvent* self);

QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextCursorEvent* self);

void QAccessibleTextCursorEvent_delete(QAccessibleTextCursorEvent* self);

typedef struct VirtualQAccessibleTextSelectionEvent VirtualQAccessibleTextSelectionEvent;
typedef struct QAccessibleTextSelectionEvent_VTable{
	void (*destructor)(VirtualQAccessibleTextSelectionEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTextSelectionEvent* self);
}QAccessibleTextSelectionEvent_VTable;

void* QAccessibleTextSelectionEvent_vdata(VirtualQAccessibleTextSelectionEvent* self);
VirtualQAccessibleTextSelectionEvent* vdata_QAccessibleTextSelectionEvent(void* vdata);

VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new_obj_start_end(const QAccessibleTextSelectionEvent_VTable* vtbl, size_t vdata, QObject* obj, int start, int end);
VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new_iface_start_end(const QAccessibleTextSelectionEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int start, int end);

void QAccessibleTextSelectionEvent_virtbase(QAccessibleTextSelectionEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
void QAccessibleTextSelectionEvent_setSelection(QAccessibleTextSelectionEvent* self, int start, int end);
int QAccessibleTextSelectionEvent_selectionStart(const QAccessibleTextSelectionEvent* self);
int QAccessibleTextSelectionEvent_selectionEnd(const QAccessibleTextSelectionEvent* self);

QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextSelectionEvent* self);

void QAccessibleTextSelectionEvent_delete(QAccessibleTextSelectionEvent* self);

typedef struct VirtualQAccessibleTextInsertEvent VirtualQAccessibleTextInsertEvent;
typedef struct QAccessibleTextInsertEvent_VTable{
	void (*destructor)(VirtualQAccessibleTextInsertEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTextInsertEvent* self);
}QAccessibleTextInsertEvent_VTable;

void* QAccessibleTextInsertEvent_vdata(VirtualQAccessibleTextInsertEvent* self);
VirtualQAccessibleTextInsertEvent* vdata_QAccessibleTextInsertEvent(void* vdata);

VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new_obj_position_text(const QAccessibleTextInsertEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string text);
VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new_iface_position_text(const QAccessibleTextInsertEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string text);

void QAccessibleTextInsertEvent_virtbase(QAccessibleTextInsertEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct seaqt_string QAccessibleTextInsertEvent_textInserted(const QAccessibleTextInsertEvent* self);
int QAccessibleTextInsertEvent_changePosition(const QAccessibleTextInsertEvent* self);

QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextInsertEvent* self);

void QAccessibleTextInsertEvent_delete(QAccessibleTextInsertEvent* self);

typedef struct VirtualQAccessibleTextRemoveEvent VirtualQAccessibleTextRemoveEvent;
typedef struct QAccessibleTextRemoveEvent_VTable{
	void (*destructor)(VirtualQAccessibleTextRemoveEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTextRemoveEvent* self);
}QAccessibleTextRemoveEvent_VTable;

void* QAccessibleTextRemoveEvent_vdata(VirtualQAccessibleTextRemoveEvent* self);
VirtualQAccessibleTextRemoveEvent* vdata_QAccessibleTextRemoveEvent(void* vdata);

VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new_obj_position_text(const QAccessibleTextRemoveEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string text);
VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new_iface_position_text(const QAccessibleTextRemoveEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string text);

void QAccessibleTextRemoveEvent_virtbase(QAccessibleTextRemoveEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct seaqt_string QAccessibleTextRemoveEvent_textRemoved(const QAccessibleTextRemoveEvent* self);
int QAccessibleTextRemoveEvent_changePosition(const QAccessibleTextRemoveEvent* self);

QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextRemoveEvent* self);

void QAccessibleTextRemoveEvent_delete(QAccessibleTextRemoveEvent* self);

typedef struct VirtualQAccessibleTextUpdateEvent VirtualQAccessibleTextUpdateEvent;
typedef struct QAccessibleTextUpdateEvent_VTable{
	void (*destructor)(VirtualQAccessibleTextUpdateEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTextUpdateEvent* self);
}QAccessibleTextUpdateEvent_VTable;

void* QAccessibleTextUpdateEvent_vdata(VirtualQAccessibleTextUpdateEvent* self);
VirtualQAccessibleTextUpdateEvent* vdata_QAccessibleTextUpdateEvent(void* vdata);

VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new_obj_position_oldText_text(const QAccessibleTextUpdateEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string oldText, struct seaqt_string text);
VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new_iface_position_oldText_text(const QAccessibleTextUpdateEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string oldText, struct seaqt_string text);

void QAccessibleTextUpdateEvent_virtbase(QAccessibleTextUpdateEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct seaqt_string QAccessibleTextUpdateEvent_textRemoved(const QAccessibleTextUpdateEvent* self);
struct seaqt_string QAccessibleTextUpdateEvent_textInserted(const QAccessibleTextUpdateEvent* self);
int QAccessibleTextUpdateEvent_changePosition(const QAccessibleTextUpdateEvent* self);

QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextUpdateEvent* self);

void QAccessibleTextUpdateEvent_delete(QAccessibleTextUpdateEvent* self);

typedef struct VirtualQAccessibleValueChangeEvent VirtualQAccessibleValueChangeEvent;
typedef struct QAccessibleValueChangeEvent_VTable{
	void (*destructor)(VirtualQAccessibleValueChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleValueChangeEvent* self);
}QAccessibleValueChangeEvent_VTable;

void* QAccessibleValueChangeEvent_vdata(VirtualQAccessibleValueChangeEvent* self);
VirtualQAccessibleValueChangeEvent* vdata_QAccessibleValueChangeEvent(void* vdata);

VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new_obj_val(const QAccessibleValueChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, QVariant* val);
VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new_iface_val(const QAccessibleValueChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, QVariant* val);

void QAccessibleValueChangeEvent_virtbase(QAccessibleValueChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
void QAccessibleValueChangeEvent_setValue(QAccessibleValueChangeEvent* self, QVariant* val);
QVariant* QAccessibleValueChangeEvent_value(const QAccessibleValueChangeEvent* self);

QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleValueChangeEvent* self);

void QAccessibleValueChangeEvent_delete(QAccessibleValueChangeEvent* self);

typedef struct VirtualQAccessibleTableModelChangeEvent VirtualQAccessibleTableModelChangeEvent;
typedef struct QAccessibleTableModelChangeEvent_VTable{
	void (*destructor)(VirtualQAccessibleTableModelChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(const VirtualQAccessibleTableModelChangeEvent* self);
}QAccessibleTableModelChangeEvent_VTable;

void* QAccessibleTableModelChangeEvent_vdata(VirtualQAccessibleTableModelChangeEvent* self);
VirtualQAccessibleTableModelChangeEvent* vdata_QAccessibleTableModelChangeEvent(void* vdata);

VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new_obj_changeType(const QAccessibleTableModelChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, int changeType);
VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new_iface_changeType(const QAccessibleTableModelChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int changeType);

void QAccessibleTableModelChangeEvent_virtbase(QAccessibleTableModelChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
void QAccessibleTableModelChangeEvent_setModelChangeType(QAccessibleTableModelChangeEvent* self, int changeType);
int QAccessibleTableModelChangeEvent_modelChangeType(const QAccessibleTableModelChangeEvent* self);
void QAccessibleTableModelChangeEvent_setFirstRow(QAccessibleTableModelChangeEvent* self, int row);
void QAccessibleTableModelChangeEvent_setFirstColumn(QAccessibleTableModelChangeEvent* self, int col);
void QAccessibleTableModelChangeEvent_setLastRow(QAccessibleTableModelChangeEvent* self, int row);
void QAccessibleTableModelChangeEvent_setLastColumn(QAccessibleTableModelChangeEvent* self, int col);
int QAccessibleTableModelChangeEvent_firstRow(const QAccessibleTableModelChangeEvent* self);
int QAccessibleTableModelChangeEvent_firstColumn(const QAccessibleTableModelChangeEvent* self);
int QAccessibleTableModelChangeEvent_lastRow(const QAccessibleTableModelChangeEvent* self);
int QAccessibleTableModelChangeEvent_lastColumn(const QAccessibleTableModelChangeEvent* self);

QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTableModelChangeEvent* self);

void QAccessibleTableModelChangeEvent_delete(QAccessibleTableModelChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
