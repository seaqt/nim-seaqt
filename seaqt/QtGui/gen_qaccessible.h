#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBLE_H
#define SEAQT_QTGUI_GEN_QACCESSIBLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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
struct miqt_array /* of struct miqt_map  tuple of QAccessibleInterface* and int   */  QAccessibleInterface_relations(const QAccessibleInterface* self, int match);
QAccessibleInterface* QAccessibleInterface_focusChild(const QAccessibleInterface* self);
QAccessibleInterface* QAccessibleInterface_childAt(const QAccessibleInterface* self, int x, int y);
QAccessibleInterface* QAccessibleInterface_parent(const QAccessibleInterface* self);
QAccessibleInterface* QAccessibleInterface_child(const QAccessibleInterface* self, int index);
int QAccessibleInterface_childCount(const QAccessibleInterface* self);
int QAccessibleInterface_indexOfChild(const QAccessibleInterface* self, QAccessibleInterface* param1);
struct miqt_string QAccessibleInterface_text(const QAccessibleInterface* self, int t);
void QAccessibleInterface_setText(QAccessibleInterface* self, int t, struct miqt_string text);
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
void QAccessibleInterface_virtualHook(QAccessibleInterface* self, int id, void* data);
void* QAccessibleInterface_interfaceCast(QAccessibleInterface* self, int param1);

void QAccessibleTextInterface_selection(const QAccessibleTextInterface* self, int selectionIndex, int* startOffset, int* endOffset);
int QAccessibleTextInterface_selectionCount(const QAccessibleTextInterface* self);
void QAccessibleTextInterface_addSelection(QAccessibleTextInterface* self, int startOffset, int endOffset);
void QAccessibleTextInterface_removeSelection(QAccessibleTextInterface* self, int selectionIndex);
void QAccessibleTextInterface_setSelection(QAccessibleTextInterface* self, int selectionIndex, int startOffset, int endOffset);
int QAccessibleTextInterface_cursorPosition(const QAccessibleTextInterface* self);
void QAccessibleTextInterface_setCursorPosition(QAccessibleTextInterface* self, int position);
struct miqt_string QAccessibleTextInterface_text(const QAccessibleTextInterface* self, int startOffset, int endOffset);
struct miqt_string QAccessibleTextInterface_textBeforeOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
struct miqt_string QAccessibleTextInterface_textAfterOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
struct miqt_string QAccessibleTextInterface_textAtOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
int QAccessibleTextInterface_characterCount(const QAccessibleTextInterface* self);
QRect* QAccessibleTextInterface_characterRect(const QAccessibleTextInterface* self, int offset);
int QAccessibleTextInterface_offsetAtPoint(const QAccessibleTextInterface* self, QPoint* point);
void QAccessibleTextInterface_scrollToSubstring(QAccessibleTextInterface* self, int startIndex, int endIndex);
struct miqt_string QAccessibleTextInterface_attributes(const QAccessibleTextInterface* self, int offset, int* startOffset, int* endOffset);
void QAccessibleTextInterface_operatorAssign(QAccessibleTextInterface* self, QAccessibleTextInterface* param1);
void QAccessibleTextInterface_delete(QAccessibleTextInterface* self);

void QAccessibleEditableTextInterface_deleteText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset);
void QAccessibleEditableTextInterface_insertText(QAccessibleEditableTextInterface* self, int offset, struct miqt_string text);
void QAccessibleEditableTextInterface_replaceText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset, struct miqt_string text);
void QAccessibleEditableTextInterface_operatorAssign(QAccessibleEditableTextInterface* self, QAccessibleEditableTextInterface* param1);
void QAccessibleEditableTextInterface_delete(QAccessibleEditableTextInterface* self);

QVariant* QAccessibleValueInterface_currentValue(const QAccessibleValueInterface* self);
void QAccessibleValueInterface_setCurrentValue(QAccessibleValueInterface* self, QVariant* value);
QVariant* QAccessibleValueInterface_maximumValue(const QAccessibleValueInterface* self);
QVariant* QAccessibleValueInterface_minimumValue(const QAccessibleValueInterface* self);
QVariant* QAccessibleValueInterface_minimumStepSize(const QAccessibleValueInterface* self);
void QAccessibleValueInterface_operatorAssign(QAccessibleValueInterface* self, QAccessibleValueInterface* param1);
void QAccessibleValueInterface_delete(QAccessibleValueInterface* self);

bool QAccessibleTableCellInterface_isSelected(const QAccessibleTableCellInterface* self);
struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_columnHeaderCells(const QAccessibleTableCellInterface* self);
struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_rowHeaderCells(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_columnIndex(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_rowIndex(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_columnExtent(const QAccessibleTableCellInterface* self);
int QAccessibleTableCellInterface_rowExtent(const QAccessibleTableCellInterface* self);
QAccessibleInterface* QAccessibleTableCellInterface_table(const QAccessibleTableCellInterface* self);
void QAccessibleTableCellInterface_operatorAssign(QAccessibleTableCellInterface* self, QAccessibleTableCellInterface* param1);
void QAccessibleTableCellInterface_delete(QAccessibleTableCellInterface* self);

QAccessibleInterface* QAccessibleTableInterface_caption(const QAccessibleTableInterface* self);
QAccessibleInterface* QAccessibleTableInterface_summary(const QAccessibleTableInterface* self);
QAccessibleInterface* QAccessibleTableInterface_cellAt(const QAccessibleTableInterface* self, int row, int column);
int QAccessibleTableInterface_selectedCellCount(const QAccessibleTableInterface* self);
struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableInterface_selectedCells(const QAccessibleTableInterface* self);
struct miqt_string QAccessibleTableInterface_columnDescription(const QAccessibleTableInterface* self, int column);
struct miqt_string QAccessibleTableInterface_rowDescription(const QAccessibleTableInterface* self, int row);
int QAccessibleTableInterface_selectedColumnCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_selectedRowCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_columnCount(const QAccessibleTableInterface* self);
int QAccessibleTableInterface_rowCount(const QAccessibleTableInterface* self);
struct miqt_array /* of int */  QAccessibleTableInterface_selectedColumns(const QAccessibleTableInterface* self);
struct miqt_array /* of int */  QAccessibleTableInterface_selectedRows(const QAccessibleTableInterface* self);
bool QAccessibleTableInterface_isColumnSelected(const QAccessibleTableInterface* self, int column);
bool QAccessibleTableInterface_isRowSelected(const QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_selectRow(QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_selectColumn(QAccessibleTableInterface* self, int column);
bool QAccessibleTableInterface_unselectRow(QAccessibleTableInterface* self, int row);
bool QAccessibleTableInterface_unselectColumn(QAccessibleTableInterface* self, int column);
void QAccessibleTableInterface_modelChange(QAccessibleTableInterface* self, QAccessibleTableModelChangeEvent* event);
void QAccessibleTableInterface_delete(QAccessibleTableInterface* self);

struct miqt_string QAccessibleActionInterface_tr(const char* sourceText);
struct miqt_array /* of struct miqt_string */  QAccessibleActionInterface_actionNames(const QAccessibleActionInterface* self);
struct miqt_string QAccessibleActionInterface_localizedActionName(const QAccessibleActionInterface* self, struct miqt_string name);
struct miqt_string QAccessibleActionInterface_localizedActionDescription(const QAccessibleActionInterface* self, struct miqt_string name);
void QAccessibleActionInterface_doAction(QAccessibleActionInterface* self, struct miqt_string actionName);
struct miqt_array /* of struct miqt_string */  QAccessibleActionInterface_keyBindingsForAction(const QAccessibleActionInterface* self, struct miqt_string actionName);
struct miqt_string QAccessibleActionInterface_pressAction();
struct miqt_string QAccessibleActionInterface_increaseAction();
struct miqt_string QAccessibleActionInterface_decreaseAction();
struct miqt_string QAccessibleActionInterface_showMenuAction();
struct miqt_string QAccessibleActionInterface_setFocusAction();
struct miqt_string QAccessibleActionInterface_toggleAction();
struct miqt_string QAccessibleActionInterface_scrollLeftAction();
struct miqt_string QAccessibleActionInterface_scrollRightAction();
struct miqt_string QAccessibleActionInterface_scrollUpAction();
struct miqt_string QAccessibleActionInterface_scrollDownAction();
struct miqt_string QAccessibleActionInterface_nextPageAction();
struct miqt_string QAccessibleActionInterface_previousPageAction();
void QAccessibleActionInterface_operatorAssign(QAccessibleActionInterface* self, QAccessibleActionInterface* param1);
struct miqt_string QAccessibleActionInterface_tr2(const char* sourceText, const char* disambiguation);
struct miqt_string QAccessibleActionInterface_tr3(const char* sourceText, const char* disambiguation, int n);
void QAccessibleActionInterface_delete(QAccessibleActionInterface* self);

struct miqt_string QAccessibleImageInterface_imageDescription(const QAccessibleImageInterface* self);
QSize* QAccessibleImageInterface_imageSize(const QAccessibleImageInterface* self);
QPoint* QAccessibleImageInterface_imagePosition(const QAccessibleImageInterface* self);
void QAccessibleImageInterface_operatorAssign(QAccessibleImageInterface* self, QAccessibleImageInterface* param1);
void QAccessibleImageInterface_delete(QAccessibleImageInterface* self);

struct miqt_string QAccessibleHyperlinkInterface_anchor(const QAccessibleHyperlinkInterface* self);
struct miqt_string QAccessibleHyperlinkInterface_anchorTarget(const QAccessibleHyperlinkInterface* self);
int QAccessibleHyperlinkInterface_startIndex(const QAccessibleHyperlinkInterface* self);
int QAccessibleHyperlinkInterface_endIndex(const QAccessibleHyperlinkInterface* self);
bool QAccessibleHyperlinkInterface_isValid(const QAccessibleHyperlinkInterface* self);
void QAccessibleHyperlinkInterface_operatorAssign(QAccessibleHyperlinkInterface* self, QAccessibleHyperlinkInterface* param1);
void QAccessibleHyperlinkInterface_delete(QAccessibleHyperlinkInterface* self);

struct QAccessibleEvent_VTable {
	void (*destructor)(struct QAccessibleEvent_VTable* vtbl, QAccessibleEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleEvent_VTable* vtbl, const QAccessibleEvent* self);
};
QAccessibleEvent* QAccessibleEvent_new(struct QAccessibleEvent_VTable* vtbl, QObject* obj, int typ);
QAccessibleEvent* QAccessibleEvent_new2(struct QAccessibleEvent_VTable* vtbl, QAccessibleInterface* iface, int typ);
int QAccessibleEvent_type(const QAccessibleEvent* self);
QObject* QAccessibleEvent_object(const QAccessibleEvent* self);
unsigned int QAccessibleEvent_uniqueId(const QAccessibleEvent* self);
void QAccessibleEvent_setChild(QAccessibleEvent* self, int chld);
int QAccessibleEvent_child(const QAccessibleEvent* self);
QAccessibleInterface* QAccessibleEvent_accessibleInterface(const QAccessibleEvent* self);
QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleEvent_delete(QAccessibleEvent* self);

struct QAccessibleStateChangeEvent_VTable {
	void (*destructor)(struct QAccessibleStateChangeEvent_VTable* vtbl, QAccessibleStateChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleStateChangeEvent_VTable* vtbl, const QAccessibleStateChangeEvent* self);
};
QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new(struct QAccessibleStateChangeEvent_VTable* vtbl, QObject* obj, QAccessible__State* state);
QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new2(struct QAccessibleStateChangeEvent_VTable* vtbl, QAccessibleInterface* iface, QAccessible__State* state);
void QAccessibleStateChangeEvent_virtbase(QAccessibleStateChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
QAccessible__State* QAccessibleStateChangeEvent_changedStates(const QAccessibleStateChangeEvent* self);
QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleStateChangeEvent_delete(QAccessibleStateChangeEvent* self);

struct QAccessibleTextCursorEvent_VTable {
	void (*destructor)(struct QAccessibleTextCursorEvent_VTable* vtbl, QAccessibleTextCursorEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTextCursorEvent_VTable* vtbl, const QAccessibleTextCursorEvent* self);
};
QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new(struct QAccessibleTextCursorEvent_VTable* vtbl, QObject* obj, int cursorPos);
QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new2(struct QAccessibleTextCursorEvent_VTable* vtbl, QAccessibleInterface* iface, int cursorPos);
void QAccessibleTextCursorEvent_virtbase(QAccessibleTextCursorEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
void QAccessibleTextCursorEvent_setCursorPosition(QAccessibleTextCursorEvent* self, int position);
int QAccessibleTextCursorEvent_cursorPosition(const QAccessibleTextCursorEvent* self);
QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTextCursorEvent_delete(QAccessibleTextCursorEvent* self);

struct QAccessibleTextSelectionEvent_VTable {
	void (*destructor)(struct QAccessibleTextSelectionEvent_VTable* vtbl, QAccessibleTextSelectionEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTextSelectionEvent_VTable* vtbl, const QAccessibleTextSelectionEvent* self);
};
QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new(struct QAccessibleTextSelectionEvent_VTable* vtbl, QObject* obj, int start, int end);
QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new2(struct QAccessibleTextSelectionEvent_VTable* vtbl, QAccessibleInterface* iface, int start, int end);
void QAccessibleTextSelectionEvent_virtbase(QAccessibleTextSelectionEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
void QAccessibleTextSelectionEvent_setSelection(QAccessibleTextSelectionEvent* self, int start, int end);
int QAccessibleTextSelectionEvent_selectionStart(const QAccessibleTextSelectionEvent* self);
int QAccessibleTextSelectionEvent_selectionEnd(const QAccessibleTextSelectionEvent* self);
QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTextSelectionEvent_delete(QAccessibleTextSelectionEvent* self);

struct QAccessibleTextInsertEvent_VTable {
	void (*destructor)(struct QAccessibleTextInsertEvent_VTable* vtbl, QAccessibleTextInsertEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTextInsertEvent_VTable* vtbl, const QAccessibleTextInsertEvent* self);
};
QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new(struct QAccessibleTextInsertEvent_VTable* vtbl, QObject* obj, int position, struct miqt_string text);
QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new2(struct QAccessibleTextInsertEvent_VTable* vtbl, QAccessibleInterface* iface, int position, struct miqt_string text);
void QAccessibleTextInsertEvent_virtbase(QAccessibleTextInsertEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct miqt_string QAccessibleTextInsertEvent_textInserted(const QAccessibleTextInsertEvent* self);
int QAccessibleTextInsertEvent_changePosition(const QAccessibleTextInsertEvent* self);
QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTextInsertEvent_delete(QAccessibleTextInsertEvent* self);

struct QAccessibleTextRemoveEvent_VTable {
	void (*destructor)(struct QAccessibleTextRemoveEvent_VTable* vtbl, QAccessibleTextRemoveEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTextRemoveEvent_VTable* vtbl, const QAccessibleTextRemoveEvent* self);
};
QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new(struct QAccessibleTextRemoveEvent_VTable* vtbl, QObject* obj, int position, struct miqt_string text);
QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new2(struct QAccessibleTextRemoveEvent_VTable* vtbl, QAccessibleInterface* iface, int position, struct miqt_string text);
void QAccessibleTextRemoveEvent_virtbase(QAccessibleTextRemoveEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct miqt_string QAccessibleTextRemoveEvent_textRemoved(const QAccessibleTextRemoveEvent* self);
int QAccessibleTextRemoveEvent_changePosition(const QAccessibleTextRemoveEvent* self);
QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTextRemoveEvent_delete(QAccessibleTextRemoveEvent* self);

struct QAccessibleTextUpdateEvent_VTable {
	void (*destructor)(struct QAccessibleTextUpdateEvent_VTable* vtbl, QAccessibleTextUpdateEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTextUpdateEvent_VTable* vtbl, const QAccessibleTextUpdateEvent* self);
};
QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new(struct QAccessibleTextUpdateEvent_VTable* vtbl, QObject* obj, int position, struct miqt_string oldText, struct miqt_string text);
QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new2(struct QAccessibleTextUpdateEvent_VTable* vtbl, QAccessibleInterface* iface, int position, struct miqt_string oldText, struct miqt_string text);
void QAccessibleTextUpdateEvent_virtbase(QAccessibleTextUpdateEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent);
struct miqt_string QAccessibleTextUpdateEvent_textRemoved(const QAccessibleTextUpdateEvent* self);
struct miqt_string QAccessibleTextUpdateEvent_textInserted(const QAccessibleTextUpdateEvent* self);
int QAccessibleTextUpdateEvent_changePosition(const QAccessibleTextUpdateEvent* self);
QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTextUpdateEvent_delete(QAccessibleTextUpdateEvent* self);

struct QAccessibleValueChangeEvent_VTable {
	void (*destructor)(struct QAccessibleValueChangeEvent_VTable* vtbl, QAccessibleValueChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleValueChangeEvent_VTable* vtbl, const QAccessibleValueChangeEvent* self);
};
QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new(struct QAccessibleValueChangeEvent_VTable* vtbl, QObject* obj, QVariant* val);
QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new2(struct QAccessibleValueChangeEvent_VTable* vtbl, QAccessibleInterface* iface, QVariant* val);
void QAccessibleValueChangeEvent_virtbase(QAccessibleValueChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent);
void QAccessibleValueChangeEvent_setValue(QAccessibleValueChangeEvent* self, QVariant* val);
QVariant* QAccessibleValueChangeEvent_value(const QAccessibleValueChangeEvent* self);
QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleValueChangeEvent_delete(QAccessibleValueChangeEvent* self);

struct QAccessibleTableModelChangeEvent_VTable {
	void (*destructor)(struct QAccessibleTableModelChangeEvent_VTable* vtbl, QAccessibleTableModelChangeEvent* self);
	QAccessibleInterface* (*accessibleInterface)(struct QAccessibleTableModelChangeEvent_VTable* vtbl, const QAccessibleTableModelChangeEvent* self);
};
QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new(struct QAccessibleTableModelChangeEvent_VTable* vtbl, QObject* obj, int changeType);
QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new2(struct QAccessibleTableModelChangeEvent_VTable* vtbl, QAccessibleInterface* iface, int changeType);
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
QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const void* self);
void QAccessibleTableModelChangeEvent_delete(QAccessibleTableModelChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
