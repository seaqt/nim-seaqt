#include <QDesignerExtraInfoExtension>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <extrainfo.h>
#include "gen_extrainfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWidget* QDesignerExtraInfoExtension_widget(const QDesignerExtraInfoExtension* self) {
	return self->widget();
}

struct seaqt_string QDesignerExtraInfoExtension_workingDirectory(const QDesignerExtraInfoExtension* self) {
	QString _ret = self->workingDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerExtraInfoExtension_setWorkingDirectory(QDesignerExtraInfoExtension* self, struct seaqt_string workingDirectory) {
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	self->setWorkingDirectory(workingDirectory_QString);
}

void QDesignerExtraInfoExtension_delete(QDesignerExtraInfoExtension* self) {
	delete self;
}

