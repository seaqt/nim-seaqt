#include <QAction>
#include <QDesignerFormEditorPluginInterface>
#include <abstractformeditorplugin.h>
#include "gen_abstractformeditorplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

bool QDesignerFormEditorPluginInterface_isInitialized(const QDesignerFormEditorPluginInterface* self) {
	return self->isInitialized();
}

QAction* QDesignerFormEditorPluginInterface_action(const QDesignerFormEditorPluginInterface* self) {
	return self->action();
}

void QDesignerFormEditorPluginInterface_delete(QDesignerFormEditorPluginInterface* self) {
	delete self;
}

