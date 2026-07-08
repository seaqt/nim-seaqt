#include <QDesignerFormWindowCursorInterface>
#include <QDesignerFormWindowInterface>
#include <QDesignerFormWindowToolInterface>
#include <QDir>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPaintDevice>
#include <QPoint>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUndoStack>
#include <QWidget>
#include <abstractformwindow.h>
#include "gen_abstractformwindow.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerFormWindowInterface_virtbase(QDesignerFormWindowInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerFormWindowInterface_metaObject(const QDesignerFormWindowInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerFormWindowInterface_metacast(QDesignerFormWindowInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerFormWindowInterface_metacall(QDesignerFormWindowInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerFormWindowInterface_tr_s(const char* s) {
	QString _ret = QDesignerFormWindowInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerFormWindowInterface_fileName(const QDesignerFormWindowInterface* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDir* QDesignerFormWindowInterface_absoluteDir(const QDesignerFormWindowInterface* self) {
	return new QDir(self->absoluteDir());
}

struct seaqt_string QDesignerFormWindowInterface_contents(const QDesignerFormWindowInterface* self) {
	QString _ret = self->contents();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_checkContents(const QDesignerFormWindowInterface* self) {
	QStringList _ret = self->checkContents();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QDesignerFormWindowInterface_features(const QDesignerFormWindowInterface* self) {
	QDesignerFormWindowInterface::Feature _ret = self->features();
	return static_cast<int>(_ret);
}

bool QDesignerFormWindowInterface_hasFeature(const QDesignerFormWindowInterface* self, int f) {
	return self->hasFeature(static_cast<QDesignerFormWindowInterface::Feature>(f));
}

struct seaqt_string QDesignerFormWindowInterface_author(const QDesignerFormWindowInterface* self) {
	QString _ret = self->author();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerFormWindowInterface_setAuthor(QDesignerFormWindowInterface* self, struct seaqt_string author) {
	QString author_QString = QString::fromUtf8(author.data, author.len);
	self->setAuthor(author_QString);
}

struct seaqt_string QDesignerFormWindowInterface_comment(const QDesignerFormWindowInterface* self) {
	QString _ret = self->comment();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerFormWindowInterface_setComment(QDesignerFormWindowInterface* self, struct seaqt_string comment) {
	QString comment_QString = QString::fromUtf8(comment.data, comment.len);
	self->setComment(comment_QString);
}

void QDesignerFormWindowInterface_layoutDefault(QDesignerFormWindowInterface* self, int* margin, int* spacing) {
	self->layoutDefault(static_cast<int*>(margin), static_cast<int*>(spacing));
}

void QDesignerFormWindowInterface_setLayoutDefault(QDesignerFormWindowInterface* self, int margin, int spacing) {
	self->setLayoutDefault(static_cast<int>(margin), static_cast<int>(spacing));
}

void QDesignerFormWindowInterface_setLayoutFunction(QDesignerFormWindowInterface* self, struct seaqt_string margin, struct seaqt_string spacing) {
	QString margin_QString = QString::fromUtf8(margin.data, margin.len);
	QString spacing_QString = QString::fromUtf8(spacing.data, spacing.len);
	self->setLayoutFunction(margin_QString, spacing_QString);
}

struct seaqt_string QDesignerFormWindowInterface_pixmapFunction(const QDesignerFormWindowInterface* self) {
	QString _ret = self->pixmapFunction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerFormWindowInterface_setPixmapFunction(QDesignerFormWindowInterface* self, struct seaqt_string pixmapFunction) {
	QString pixmapFunction_QString = QString::fromUtf8(pixmapFunction.data, pixmapFunction.len);
	self->setPixmapFunction(pixmapFunction_QString);
}

struct seaqt_string QDesignerFormWindowInterface_exportMacro(const QDesignerFormWindowInterface* self) {
	QString _ret = self->exportMacro();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerFormWindowInterface_setExportMacro(QDesignerFormWindowInterface* self, struct seaqt_string exportMacro) {
	QString exportMacro_QString = QString::fromUtf8(exportMacro.data, exportMacro.len);
	self->setExportMacro(exportMacro_QString);
}

struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_includeHints(const QDesignerFormWindowInterface* self) {
	QStringList _ret = self->includeHints();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDesignerFormWindowInterface_setIncludeHints(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  includeHints) {
	QStringList includeHints_QList;
	includeHints_QList.reserve(includeHints.len);
	struct seaqt_string* includeHints_arr = static_cast<struct seaqt_string*>(includeHints.data);
	for(size_t i = 0; i < includeHints.len; ++i) {
		QString includeHints_arr_i_QString = QString::fromUtf8(includeHints_arr[i].data, includeHints_arr[i].len);
		includeHints_QList.push_back(includeHints_arr_i_QString);
	}
	self->setIncludeHints(includeHints_QList);
}

int QDesignerFormWindowInterface_resourceFileSaveMode(const QDesignerFormWindowInterface* self) {
	QDesignerFormWindowInterface::ResourceFileSaveMode _ret = self->resourceFileSaveMode();
	return static_cast<int>(_ret);
}

void QDesignerFormWindowInterface_setResourceFileSaveMode(QDesignerFormWindowInterface* self, int behaviour) {
	self->setResourceFileSaveMode(static_cast<QDesignerFormWindowInterface::ResourceFileSaveMode>(behaviour));
}

struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_activeResourceFilePaths(const QDesignerFormWindowInterface* self) {
	QStringList _ret = self->activeResourceFilePaths();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QDesignerFormWindowCursorInterface* QDesignerFormWindowInterface_cursor(const QDesignerFormWindowInterface* self) {
	return self->cursor();
}

int QDesignerFormWindowInterface_toolCount(const QDesignerFormWindowInterface* self) {
	return self->toolCount();
}

int QDesignerFormWindowInterface_currentTool(const QDesignerFormWindowInterface* self) {
	return self->currentTool();
}

void QDesignerFormWindowInterface_setCurrentTool(QDesignerFormWindowInterface* self, int index) {
	self->setCurrentTool(static_cast<int>(index));
}

QDesignerFormWindowToolInterface* QDesignerFormWindowInterface_tool(const QDesignerFormWindowInterface* self, int index) {
	return self->tool(static_cast<int>(index));
}

void QDesignerFormWindowInterface_registerTool(QDesignerFormWindowInterface* self, QDesignerFormWindowToolInterface* tool) {
	self->registerTool(tool);
}

QPoint* QDesignerFormWindowInterface_grid(const QDesignerFormWindowInterface* self) {
	return new QPoint(self->grid());
}

QWidget* QDesignerFormWindowInterface_mainContainer(const QDesignerFormWindowInterface* self) {
	return self->mainContainer();
}

void QDesignerFormWindowInterface_setMainContainer(QDesignerFormWindowInterface* self, QWidget* mainContainer) {
	self->setMainContainer(mainContainer);
}

QWidget* QDesignerFormWindowInterface_formContainer(const QDesignerFormWindowInterface* self) {
	return self->formContainer();
}

bool QDesignerFormWindowInterface_isManaged(const QDesignerFormWindowInterface* self, QWidget* widget) {
	return self->isManaged(widget);
}

bool QDesignerFormWindowInterface_isDirty(const QDesignerFormWindowInterface* self) {
	return self->isDirty();
}

QDesignerFormWindowInterface* QDesignerFormWindowInterface_findFormWindow_w(QWidget* w) {
	return QDesignerFormWindowInterface::findFormWindow(w);
}

QDesignerFormWindowInterface* QDesignerFormWindowInterface_findFormWindow_obj(QObject* obj) {
	return QDesignerFormWindowInterface::findFormWindow(obj);
}

QUndoStack* QDesignerFormWindowInterface_commandHistory(const QDesignerFormWindowInterface* self) {
	return self->commandHistory();
}

void QDesignerFormWindowInterface_beginCommand(QDesignerFormWindowInterface* self, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->beginCommand(description_QString);
}

void QDesignerFormWindowInterface_endCommand(QDesignerFormWindowInterface* self) {
	self->endCommand();
}

void QDesignerFormWindowInterface_simplifySelection(const QDesignerFormWindowInterface* self, struct seaqt_array /* of QWidget* */  widgets) {
	QList<QWidget *> widgets_QList;
	widgets_QList.reserve(widgets.len);
	QWidget** widgets_arr = static_cast<QWidget**>(widgets.data);
	for(size_t i = 0; i < widgets.len; ++i) {
		widgets_QList.push_back(widgets_arr[i]);
	}
	self->simplifySelection(&widgets_QList);
}

void QDesignerFormWindowInterface_emitSelectionChanged(QDesignerFormWindowInterface* self) {
	self->emitSelectionChanged();
}

struct seaqt_array /* of struct seaqt_string */  QDesignerFormWindowInterface_resourceFiles(const QDesignerFormWindowInterface* self) {
	QStringList _ret = self->resourceFiles();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDesignerFormWindowInterface_addResourceFile(QDesignerFormWindowInterface* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->addResourceFile(path_QString);
}

void QDesignerFormWindowInterface_removeResourceFile(QDesignerFormWindowInterface* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->removeResourceFile(path_QString);
}

void QDesignerFormWindowInterface_ensureUniqueObjectName(QDesignerFormWindowInterface* self, QObject* object) {
	self->ensureUniqueObjectName(object);
}

void QDesignerFormWindowInterface_manageWidget(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->manageWidget(widget);
}

void QDesignerFormWindowInterface_unmanageWidget(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->unmanageWidget(widget);
}

void QDesignerFormWindowInterface_setFeatures(QDesignerFormWindowInterface* self, int f) {
	self->setFeatures(static_cast<QDesignerFormWindowInterface::Feature>(f));
}

void QDesignerFormWindowInterface_setDirty(QDesignerFormWindowInterface* self, bool dirty) {
	self->setDirty(dirty);
}

void QDesignerFormWindowInterface_clearSelection(QDesignerFormWindowInterface* self, bool changePropertyDisplay) {
	self->clearSelection(changePropertyDisplay);
}

void QDesignerFormWindowInterface_selectWidget(QDesignerFormWindowInterface* self, QWidget* w, bool select) {
	self->selectWidget(w, select);
}

void QDesignerFormWindowInterface_setGrid(QDesignerFormWindowInterface* self, QPoint* grid) {
	self->setGrid(*grid);
}

void QDesignerFormWindowInterface_setFileName(QDesignerFormWindowInterface* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

bool QDesignerFormWindowInterface_setContents_contents(QDesignerFormWindowInterface* self, struct seaqt_string contents) {
	QString contents_QString = QString::fromUtf8(contents.data, contents.len);
	return self->setContents(contents_QString);
}

void QDesignerFormWindowInterface_editWidgets(QDesignerFormWindowInterface* self) {
	self->editWidgets();
}

void QDesignerFormWindowInterface_activateResourceFilePaths_paths(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct seaqt_string* paths_arr = static_cast<struct seaqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->activateResourceFilePaths(paths_QList);
}

void QDesignerFormWindowInterface_mainContainerChanged(QDesignerFormWindowInterface* self, QWidget* mainContainer) {
	self->mainContainerChanged(mainContainer);
}

void QDesignerFormWindowInterface_connect_mainContainerChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::mainContainerChanged), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* mainContainer) {
			QWidget* sigval1 = mainContainer;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_toolChanged(QDesignerFormWindowInterface* self, int toolIndex) {
	self->toolChanged(static_cast<int>(toolIndex));
}

void QDesignerFormWindowInterface_connect_toolChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(int)>(&QDesignerFormWindowInterface::toolChanged), self, [callback, release = seaqt::release_callback{slot,release}](int toolIndex) {
			int sigval1 = toolIndex;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_fileNameChanged(QDesignerFormWindowInterface* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->fileNameChanged(fileName_QString);
}

void QDesignerFormWindowInterface_connect_fileNameChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(const QString&)>(&QDesignerFormWindowInterface::fileNameChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& fileName) {
			const QString fileName_ret = fileName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray fileName_b = fileName_ret.toUtf8();
			struct seaqt_string fileName_ms;
			fileName_ms.len = fileName_b.length();
			fileName_ms.data = static_cast<char*>(malloc(fileName_ms.len));
			memcpy(fileName_ms.data, fileName_b.data(), fileName_ms.len);
			struct seaqt_string sigval1 = fileName_ms;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_featureChanged(QDesignerFormWindowInterface* self, int f) {
	self->featureChanged(static_cast<QDesignerFormWindowInterface::Feature>(f));
}

void QDesignerFormWindowInterface_connect_featureChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QDesignerFormWindowInterface::Feature)>(&QDesignerFormWindowInterface::featureChanged), self, [callback, release = seaqt::release_callback{slot,release}](QDesignerFormWindowInterface::Feature f) {
			QDesignerFormWindowInterface::Feature f_ret = f;
			int sigval1 = static_cast<int>(f_ret);
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_selectionChanged(QDesignerFormWindowInterface* self) {
	self->selectionChanged();
}

void QDesignerFormWindowInterface_connect_selectionChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)()>(&QDesignerFormWindowInterface::selectionChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QDesignerFormWindowInterface_geometryChanged(QDesignerFormWindowInterface* self) {
	self->geometryChanged();
}

void QDesignerFormWindowInterface_connect_geometryChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)()>(&QDesignerFormWindowInterface::geometryChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QDesignerFormWindowInterface_resourceFilesChanged(QDesignerFormWindowInterface* self) {
	self->resourceFilesChanged();
}

void QDesignerFormWindowInterface_connect_resourceFilesChanged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)()>(&QDesignerFormWindowInterface::resourceFilesChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QDesignerFormWindowInterface_widgetManaged(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->widgetManaged(widget);
}

void QDesignerFormWindowInterface_connect_widgetManaged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::widgetManaged), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* widget) {
			QWidget* sigval1 = widget;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_widgetUnmanaged(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->widgetUnmanaged(widget);
}

void QDesignerFormWindowInterface_connect_widgetUnmanaged(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::widgetUnmanaged), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* widget) {
			QWidget* sigval1 = widget;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_aboutToUnmanageWidget(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->aboutToUnmanageWidget(widget);
}

void QDesignerFormWindowInterface_connect_aboutToUnmanageWidget(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::aboutToUnmanageWidget), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* widget) {
			QWidget* sigval1 = widget;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_activated(QDesignerFormWindowInterface* self, QWidget* widget) {
	self->activated(widget);
}

void QDesignerFormWindowInterface_connect_activated(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::activated), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* widget) {
			QWidget* sigval1 = widget;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_changed(QDesignerFormWindowInterface* self) {
	self->changed();
}

void QDesignerFormWindowInterface_connect_changed(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)()>(&QDesignerFormWindowInterface::changed), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QDesignerFormWindowInterface_widgetRemoved(QDesignerFormWindowInterface* self, QWidget* w) {
	self->widgetRemoved(w);
}

void QDesignerFormWindowInterface_connect_widgetRemoved(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QWidget*)>(&QDesignerFormWindowInterface::widgetRemoved), self, [callback, release = seaqt::release_callback{slot,release}](QWidget* w) {
			QWidget* sigval1 = w;
			callback(release.slot, sigval1);
	});
}

void QDesignerFormWindowInterface_objectRemoved(QDesignerFormWindowInterface* self, QObject* o) {
	self->objectRemoved(o);
}

void QDesignerFormWindowInterface_connect_objectRemoved(QDesignerFormWindowInterface* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	QDesignerFormWindowInterface::connect(self, static_cast<void (QDesignerFormWindowInterface::*)(QObject*)>(&QDesignerFormWindowInterface::objectRemoved), self, [callback, release = seaqt::release_callback{slot,release}](QObject* o) {
			QObject* sigval1 = o;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QDesignerFormWindowInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerFormWindowInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerFormWindowInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerFormWindowInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerFormWindowInterface_activateResourceFilePaths_paths_errorCount(QDesignerFormWindowInterface* self, struct seaqt_array /* of struct seaqt_string */  paths, int* errorCount) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct seaqt_string* paths_arr = static_cast<struct seaqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->activateResourceFilePaths(paths_QList, static_cast<int*>(errorCount));
}

const QMetaObject* QDesignerFormWindowInterface_staticMetaObject() { return &QDesignerFormWindowInterface::staticMetaObject; }
void QDesignerFormWindowInterface_delete(QDesignerFormWindowInterface* self) {
	delete self;
}

