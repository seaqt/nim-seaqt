#include <QList>
#include <QMarginsF>
#include <QPageLayout>
#include <QPageRanges>
#include <QPageSize>
#include <QPagedPaintDevice>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QPrintEngine>
#include <QPrinter>
#include <QPrinterInfo>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qprinter.h>
#include "gen_qprinter.h"
class VirtualQPrinter final : public QPrinter {
	const QPrinter_VTable* vtbl;
	void* vdata;
public:
	friend const QPrinter_VTable* QPrinter_vtbl(const VirtualQPrinter* self);
	friend void* QPrinter_vdata(const VirtualQPrinter* self);
	friend void QPrinter_setVdata(VirtualQPrinter* self, void* vdata);

	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata): QPrinter(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, const QPrinterInfo& printer): QPrinter(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, QPrinter::PrinterMode mode): QPrinter(mode), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, const QPrinterInfo& printer, QPrinter::PrinterMode mode): QPrinter(printer, mode), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPrinter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrinter::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrinter_virtualbase_devType(const VirtualQPrinter* self);

	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return QPrinter::newPage();
		}


		bool callback_return_value = vtbl->newPage(this);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_newPage(VirtualQPrinter* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrinter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrinter::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1);

	virtual bool setPageLayout(const QPageLayout& pageLayout) override {
		if (vtbl->setPageLayout == 0) {
			return QPrinter::setPageLayout(pageLayout);
		}

		const QPageLayout& pageLayout_ret = pageLayout;
		// Cast returned reference into pointer
		QPageLayout* sigval1 = const_cast<QPageLayout*>(&pageLayout_ret);

		bool callback_return_value = vtbl->setPageLayout(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_setPageLayout(VirtualQPrinter* self, QPageLayout* pageLayout);

	virtual bool setPageSize(const QPageSize& pageSize) override {
		if (vtbl->setPageSize == 0) {
			return QPrinter::setPageSize(pageSize);
		}

		const QPageSize& pageSize_ret = pageSize;
		// Cast returned reference into pointer
		QPageSize* sigval1 = const_cast<QPageSize*>(&pageSize_ret);

		bool callback_return_value = vtbl->setPageSize(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, QPageSize* pageSize);

	virtual bool setPageOrientation(QPageLayout::Orientation orientation) override {
		if (vtbl->setPageOrientation == 0) {
			return QPrinter::setPageOrientation(orientation);
		}

		QPageLayout::Orientation orientation_ret = orientation;
		int sigval1 = static_cast<int>(orientation_ret);

		bool callback_return_value = vtbl->setPageOrientation(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_setPageOrientation(VirtualQPrinter* self, int orientation);

	virtual bool setPageMargins(const QMarginsF& margins, QPageLayout::Unit units) override {
		if (vtbl->setPageMargins == 0) {
			return QPrinter::setPageMargins(margins, units);
		}

		const QMarginsF& margins_ret = margins;
		// Cast returned reference into pointer
		QMarginsF* sigval1 = const_cast<QMarginsF*>(&margins_ret);
		QPageLayout::Unit units_ret = units;
		int sigval2 = static_cast<int>(units_ret);

		bool callback_return_value = vtbl->setPageMargins(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_setPageMargins(VirtualQPrinter* self, QMarginsF* margins, int units);

	virtual void setPageRanges(const QPageRanges& ranges) override {
		if (vtbl->setPageRanges == 0) {
			QPrinter::setPageRanges(ranges);
			return;
		}

		const QPageRanges& ranges_ret = ranges;
		// Cast returned reference into pointer
		QPageRanges* sigval1 = const_cast<QPageRanges*>(&ranges_ret);

		vtbl->setPageRanges(this, sigval1);

	}

	friend void QPrinter_virtualbase_setPageRanges(VirtualQPrinter* self, QPageRanges* ranges);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrinter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrinter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrinter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self);

	// Wrappers to allow calling protected methods:
	friend void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
};

VirtualQPrinter* QPrinter_new(const QPrinter_VTable* vtbl, void* vdata) {
	return new VirtualQPrinter(vtbl, vdata);
}

VirtualQPrinter* QPrinter_new2(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer) {
	return new VirtualQPrinter(vtbl, vdata, *printer);
}

VirtualQPrinter* QPrinter_new3(const QPrinter_VTable* vtbl, void* vdata, int mode) {
	return new VirtualQPrinter(vtbl, vdata, static_cast<QPrinter::PrinterMode>(mode));
}

VirtualQPrinter* QPrinter_new4(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer, int mode) {
	return new VirtualQPrinter(vtbl, vdata, *printer, static_cast<QPrinter::PrinterMode>(mode));
}

void QPrinter_virtbase(QPrinter* src, QPagedPaintDevice** outptr_QPagedPaintDevice) {
	*outptr_QPagedPaintDevice = static_cast<QPagedPaintDevice*>(src);
}

int QPrinter_devType(const QPrinter* self) {
	return self->devType();
}

void QPrinter_setOutputFormat(QPrinter* self, int format) {
	self->setOutputFormat(static_cast<QPrinter::OutputFormat>(format));
}

int QPrinter_outputFormat(const QPrinter* self) {
	QPrinter::OutputFormat _ret = self->outputFormat();
	return static_cast<int>(_ret);
}

void QPrinter_setPdfVersion(QPrinter* self, int version) {
	self->setPdfVersion(static_cast<QPagedPaintDevice::PdfVersion>(version));
}

int QPrinter_pdfVersion(const QPrinter* self) {
	QPagedPaintDevice::PdfVersion _ret = self->pdfVersion();
	return static_cast<int>(_ret);
}

void QPrinter_setPrinterName(QPrinter* self, struct miqt_string printerName) {
	QString printerName_QString = QString::fromUtf8(printerName.data, printerName.len);
	self->setPrinterName(printerName_QString);
}

struct miqt_string QPrinter_printerName(const QPrinter* self) {
	QString _ret = self->printerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPrinter_isValid(const QPrinter* self) {
	return self->isValid();
}

void QPrinter_setOutputFileName(QPrinter* self, struct miqt_string outputFileName) {
	QString outputFileName_QString = QString::fromUtf8(outputFileName.data, outputFileName.len);
	self->setOutputFileName(outputFileName_QString);
}

struct miqt_string QPrinter_outputFileName(const QPrinter* self) {
	QString _ret = self->outputFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPrintProgram(QPrinter* self, struct miqt_string printProgram) {
	QString printProgram_QString = QString::fromUtf8(printProgram.data, printProgram.len);
	self->setPrintProgram(printProgram_QString);
}

struct miqt_string QPrinter_printProgram(const QPrinter* self) {
	QString _ret = self->printProgram();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setDocName(QPrinter* self, struct miqt_string docName) {
	QString docName_QString = QString::fromUtf8(docName.data, docName.len);
	self->setDocName(docName_QString);
}

struct miqt_string QPrinter_docName(const QPrinter* self) {
	QString _ret = self->docName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setCreator(QPrinter* self, struct miqt_string creator) {
	QString creator_QString = QString::fromUtf8(creator.data, creator.len);
	self->setCreator(creator_QString);
}

struct miqt_string QPrinter_creator(const QPrinter* self) {
	QString _ret = self->creator();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPageOrder(QPrinter* self, int pageOrder) {
	self->setPageOrder(static_cast<QPrinter::PageOrder>(pageOrder));
}

int QPrinter_pageOrder(const QPrinter* self) {
	QPrinter::PageOrder _ret = self->pageOrder();
	return static_cast<int>(_ret);
}

void QPrinter_setResolution(QPrinter* self, int resolution) {
	self->setResolution(static_cast<int>(resolution));
}

int QPrinter_resolution(const QPrinter* self) {
	return self->resolution();
}

void QPrinter_setColorMode(QPrinter* self, int colorMode) {
	self->setColorMode(static_cast<QPrinter::ColorMode>(colorMode));
}

int QPrinter_colorMode(const QPrinter* self) {
	QPrinter::ColorMode _ret = self->colorMode();
	return static_cast<int>(_ret);
}

void QPrinter_setCollateCopies(QPrinter* self, bool collate) {
	self->setCollateCopies(collate);
}

bool QPrinter_collateCopies(const QPrinter* self) {
	return self->collateCopies();
}

void QPrinter_setFullPage(QPrinter* self, bool fullPage) {
	self->setFullPage(fullPage);
}

bool QPrinter_fullPage(const QPrinter* self) {
	return self->fullPage();
}

void QPrinter_setCopyCount(QPrinter* self, int copyCount) {
	self->setCopyCount(static_cast<int>(copyCount));
}

int QPrinter_copyCount(const QPrinter* self) {
	return self->copyCount();
}

bool QPrinter_supportsMultipleCopies(const QPrinter* self) {
	return self->supportsMultipleCopies();
}

void QPrinter_setPaperSource(QPrinter* self, int paperSource) {
	self->setPaperSource(static_cast<QPrinter::PaperSource>(paperSource));
}

int QPrinter_paperSource(const QPrinter* self) {
	QPrinter::PaperSource _ret = self->paperSource();
	return static_cast<int>(_ret);
}

void QPrinter_setDuplex(QPrinter* self, int duplex) {
	self->setDuplex(static_cast<QPrinter::DuplexMode>(duplex));
}

int QPrinter_duplex(const QPrinter* self) {
	QPrinter::DuplexMode _ret = self->duplex();
	return static_cast<int>(_ret);
}

struct miqt_array /* of int */  QPrinter_supportedResolutions(const QPrinter* self) {
	QList<int> _ret = self->supportedResolutions();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QPrinter_setFontEmbeddingEnabled(QPrinter* self, bool enable) {
	self->setFontEmbeddingEnabled(enable);
}

bool QPrinter_fontEmbeddingEnabled(const QPrinter* self) {
	return self->fontEmbeddingEnabled();
}

QRectF* QPrinter_paperRect(const QPrinter* self, int param1) {
	return new QRectF(self->paperRect(static_cast<QPrinter::Unit>(param1)));
}

QRectF* QPrinter_pageRect(const QPrinter* self, int param1) {
	return new QRectF(self->pageRect(static_cast<QPrinter::Unit>(param1)));
}

struct miqt_string QPrinter_printerSelectionOption(const QPrinter* self) {
	QString _ret = self->printerSelectionOption();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPrinterSelectionOption(QPrinter* self, struct miqt_string printerSelectionOption) {
	QString printerSelectionOption_QString = QString::fromUtf8(printerSelectionOption.data, printerSelectionOption.len);
	self->setPrinterSelectionOption(printerSelectionOption_QString);
}

bool QPrinter_newPage(QPrinter* self) {
	return self->newPage();
}

bool QPrinter_abort(QPrinter* self) {
	return self->abort();
}

int QPrinter_printerState(const QPrinter* self) {
	QPrinter::PrinterState _ret = self->printerState();
	return static_cast<int>(_ret);
}

QPaintEngine* QPrinter_paintEngine(const QPrinter* self) {
	return self->paintEngine();
}

QPrintEngine* QPrinter_printEngine(const QPrinter* self) {
	return self->printEngine();
}

void QPrinter_setFromTo(QPrinter* self, int fromPage, int toPage) {
	self->setFromTo(static_cast<int>(fromPage), static_cast<int>(toPage));
}

int QPrinter_fromPage(const QPrinter* self) {
	return self->fromPage();
}

int QPrinter_toPage(const QPrinter* self) {
	return self->toPage();
}

void QPrinter_setPrintRange(QPrinter* self, int range) {
	self->setPrintRange(static_cast<QPrinter::PrintRange>(range));
}

int QPrinter_printRange(const QPrinter* self) {
	QPrinter::PrintRange _ret = self->printRange();
	return static_cast<int>(_ret);
}

int QPrinter_virtualbase_devType(const VirtualQPrinter* self) {

	return self->QPrinter::devType();
}

bool QPrinter_virtualbase_newPage(VirtualQPrinter* self) {

	return self->QPrinter::newPage();
}

QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self) {

	return self->QPrinter::paintEngine();
}

int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1) {

	return self->QPrinter::metric(static_cast<VirtualQPrinter::PaintDeviceMetric>(param1));
}

bool QPrinter_virtualbase_setPageLayout(VirtualQPrinter* self, QPageLayout* pageLayout) {

	return self->QPrinter::setPageLayout(*pageLayout);
}

bool QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, QPageSize* pageSize) {

	return self->QPrinter::setPageSize(*pageSize);
}

bool QPrinter_virtualbase_setPageOrientation(VirtualQPrinter* self, int orientation) {

	return self->QPrinter::setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

bool QPrinter_virtualbase_setPageMargins(VirtualQPrinter* self, QMarginsF* margins, int units) {

	return self->QPrinter::setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));
}

void QPrinter_virtualbase_setPageRanges(VirtualQPrinter* self, QPageRanges* ranges) {

	self->QPrinter::setPageRanges(*ranges);
}

void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter) {

	self->QPrinter::initPainter(painter);
}

QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset) {

	return self->QPrinter::redirected(offset);
}

QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self) {

	return self->QPrinter::sharedPainter();
}

const QPrinter_VTable* QPrinter_vtbl(const VirtualQPrinter* self) { return self->vtbl; }
void* QPrinter_vdata(const VirtualQPrinter* self) { return self->vdata; }
void QPrinter_setVdata(VirtualQPrinter* self, void* vdata) { self->vdata = vdata; }

void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine) {
	self->setEngines(printEngine, paintEngine);
}

void QPrinter_delete(QPrinter* self) {
	delete self;
}

