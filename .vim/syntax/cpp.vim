" Vim syntax file
" Language:	C++ with Qt4 classes, types and macros
" Maintainer:	Vladimir V. Paskov <vlado.paskov@gmail.com>
" Based on the work of Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2011 Jun 28
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" C++ extentions
syn keyword cppStatement	new delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType		inline virtual explicit export bool wchar_t
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false

syn keyword qtRepeat		foreach forever
syn keyword qtAccess		signals slots
syn keyword qtStatement		emit

syn keyword qtType		qint8 qint16 qint32 qint64 qlonglong qptrdiff qreal quint8
syn keyword qtType		quint16 quint32 quint64 quintptr qulonglong uchar uint ulong
syn keyword qtType		ushort

syn keyword qtMacros		QT_POINTER_SIZE QT_REQUIRE_VERSION QT_TRANSLATE_NOOP3 QT_TRANSLATE_NOOP
syn keyword qtMacros		QT_TRAP_THROWING QT_TRID_NOOP QT_TRYCATCH_ERROR QT_TRYCATCH_LEAVING
syn keyword qtMacros		QT_TR_NOOP QT_VERSION QT_VERSION_CHECK QT_VERSION_STR Q_ASSERT Q_ASSERT_X
syn keyword qtMacros		Q_BIG_ENDIAN Q_BYTE_ORDER Q_CC_BOR Q_CC_CDS Q_CC_COMEAU Q_CC_DEC Q_CC_EDG
syn keyword qtMacros		Q_CC_GHS Q_CC_GNU Q_CC_HIGHC Q_CC_HPACC Q_CC_INTEL Q_CC_KAI Q_CC_MIPS
syn keyword qtMacros		Q_CC_MSVC Q_CC_MWERKS Q_CC_OC Q_CC_PGI Q_CC_SUN Q_CC_SYM Q_CC_USLC
syn keyword qtMacros		Q_CC_WAT Q_CHECK_PTR Q_DECLARE_TYPEINFO Q_DECL_EXPORT Q_DECL_IMPORT
syn keyword qtMacros		Q_FOREACH Q_FOREVER Q_FUNC_INFO Q_INT64_C Q_LITTLE_ENDIAN
syn keyword qtMacros		Q_OS_AIX Q_OS_BSD4 Q_OS_BSDI Q_OS_CYGWIN Q_OS_DARWIN Q_OS_DGUX Q_OS_DYNIX
syn keyword qtMacros		Q_OS_FREEBSD Q_OS_HPUX Q_OS_HURD Q_OS_IRIX Q_OS_LINUX Q_OS_LYNX Q_OS_MAC
syn keyword qtMacros		Q_OS_MSDOS Q_OS_NETBSD Q_OS_OS2 Q_OS_OPENBSD Q_OS_OS2EMX Q_OS_OSF Q_OS_QNX
syn keyword qtMacros		Q_OS_RELIANT Q_OS_SCO Q_OS_SOLARIS Q_OS_SYMBIAN Q_OS_ULTRIX Q_OS_UNIX
syn keyword qtMacros		Q_OS_UNIXWARE Q_OS_WIN32 Q_OS_WINCE
syn keyword qtMacros		Q_UINT64_C Q_UNUSED Q_WS_S60 Q_WS_X11 Q_WS_MAC Q_WS_QWS Q_WS_WIN

syn keyword qtClass		QAbstractAnimation
syn keyword qtClass		QAbstractButton
syn keyword qtClass		QAbstractEventDispatcher
syn keyword qtClass		QAbstractExtensionFactory
syn keyword qtClass		QAbstractExtensionManager
syn keyword qtClass		QAbstractFileEngine
syn keyword qtClass		QAbstractFileEngineHandler
syn keyword qtClass		QAbstractFileEngineIterator
syn keyword qtClass		QAbstractFontEngine
syn keyword qtClass		QAbstractFormBuilder
syn keyword qtClass		QAbstractGraphicsShapeItem
syn keyword qtClass		QAbstractItemDelegate
syn keyword qtClass		QAbstractItemModel
syn keyword qtClass		QAbstractItemView
syn keyword qtClass		QAbstractListModel
syn keyword qtClass		QAbstractMessageHandler
syn keyword qtClass		QAbstractNetworkCache
syn keyword qtClass		QAbstractPrintDialog
syn keyword qtClass		QAbstractProxyModel
syn keyword qtClass		QAbstractScrollArea
syn keyword qtClass		QBasicTimer QBitArray
syn keyword qtClass		QCache QCalendarWidget QCDEStyle QChar QCheckBox QChildEvent QCleanlooksStyle
syn keyword qtClass		QDataStream QDataWidgetMapper QDate QDateEdit QDateTime QDateTimeEdit QDBusAbstractAdaptor
syn keyword qtClass		QDBusAbstractInterface QDBusArgument QDBusConnection QDBusConnectionInterface QDBusContext
syn keyword qtClass		QDBusError QDBusInterface QDBusMessage QDBusObjectPath QDBusPendingCall QDBusPendingCallWatcher
syn keyword qtClass		QDBusPendingReply QDBusReply QDBusServiceWatcher QDBusSignature QDBusVariant QDebug
syn keyword qtClass		QDeclarativeComponent QDeclarativeContext QDeclarativeEngine QDeclarativeError QDeclarativeExpression
syn keyword qtClass		QDeclarativeExtensionPlugin QDeclarativeImageProvider
syn keyword qtClass		QEasingCurve
syn keyword qtClass		QFile QFileDialog QFileIconProvider QFileInfo QFileOpenEvent QFileSystemModel QFileSystemWatcher
syn keyword qtClass		QFinalState QFlag
syn keyword qtClass		QGenericArgument QGenericMatrix QGenericReturnArgument QGesture QGestureEvent QGestureRecognizer
syn keyword qtClass		QGLBuffer QGLColormap QGLContext QGLFormat QGLFramebufferObject QGLFramebufferObjectFormat
syn keyword qtClass		QGLPixelBuffer QGLShader QGLShaderProgram QGLWidget QGradient QGraphicsAnchor QGraphicsAnchorLayout	
syn keyword qtClass		QHash QHashIterator QHBoxLayout QHeaderView QHelpContentItem QHelpContentModel 
syn keyword qtClass		QIcon QIconDragEvent QIconEngine QIconEnginePlugin QIconEnginePluginV2 QIconEngineV2 QImage QImageIOHandler
syn keyword qtClass		QKbdDriverFactory
syn keyword qtClass		QLabel QLatin1Char QLatin1String QLayout QLayoutItem QLCDNumber
syn keyword qtClass		QMacCocoaViewContainer QMacNativeWidget QMacPasteboardMime QMacStyle QMainWindow QMap QMapIterator
syn keyword qtClass		QMargins QMatrix4x4 QMdiArea QMdiSubWindow MediaController MediaNode Effect EffectParameter
syn keyword qtClass		QNetworkAccessManager QNetworkAddressEntry QNetworkCacheMetaData QNetworkConfiguration
syn keyword qtClass		QPageSetupDialog QPaintDevice QPaintEngine QPaintEngineState QPainter QPainterPath QPainterPathStroker
syn keyword qtClass		QPaintEvent QPair QPalette QPanGesture QParallelAnimationGroup Path QPauseAnimation
syn keyword qtClass		QRadialGradient QRadioButton QRasterPaintEngine QReadLocker
syn keyword qtClass		QS60MainApplication QS60MainAppUi QS60MainDocument QS60Style QScopedArrayPointer QScopedPointer
syn keyword qtClass		QScreen QScreenCursor QScreenDriverFactory QScreenDriverPlugin QScriptable QScriptClass
syn keyword qtClass		QScriptClassPropertyIterator QScriptContext QScriptContextInfo QScriptEngine QScriptEngineAgent
syn keyword qtClass		QScriptEngineDebugger QScriptExtensionPlugin QScriptProgram QScriptString QScriptSyntaxCheckResult
syn keyword qtClass		QScriptValue QScriptValueIterator QScrollArea QScrollBar SeekSlider QSemaphore QSequentialAnimationGroup
syn keyword qtClass		QSessionManager QSet QSetIterator QSettings QSharedData QSharedDataPointer QSharedMemory QSharedPointer
syn keyword qtClass		QShortcut QShortcutEvent QShowEvent QSignalMapper QSignalSpy QSignalTransition QSimpleXmlNodeModel
syn keyword qtClass		QSize QSizeF QSizeGrip QSizePolicy QSlider QSocketNotifier
syn keyword qtClass		QTabBar QTabletEvent QTableView QTableWidget QTableWidgetItem QTableWidgetSelectionRange QTabWidget
syn keyword qtClass		QTapAndHoldGesture QTapGesture QTcpServer QTcpSocket QTemporaryFile QTestEventList QTextBlock
syn keyword qtClass		QTextBlockFormat QTextBlockGroup QTextBlockUserData QTextBoundaryFinder QTextBrowser QTextCharFormat
syn keyword qtClass		QTextCodec QTextCodecPlugin
syn keyword qtClass		QUdpSocket QUiLoader QUndoCommand QUndoGroup QUndoStack QUndoView UnhandledException QUrl QUrlInfo QUuid
syn keyword qtClass		QValidator QVariant QVariantAnimation QVarLengthArray QVBoxLayout QVector QVector2D QVector3D QVector4D
syn keyword qtClass		QVectorIterator QVideoFrame VideoPlayer (Phonon) QVideoSurfaceFormat VideoWidget
syn keyword qtClass		VideoWidgetInterface44 VolumeSlider
syn keyword qtClass		QWaitCondition QWeakPointer QWebDatabase QWebElement QWebElementCollection QWebFrame QWebHistory QWebHistoryInterface
syn keyword qtClass		QWebHistoryItem QWebHitTestResult QWebInspector QWebPage QWebPluginFactory QWebSecurityOrigin
syn keyword qtClass		QWebSettings QWebView QWhatsThis QWhatsThisClickedEvent QWheelEvent QWidget QWidgetAction QWidgetItem
syn keyword qtClass		QWindowsMime QWindowsStyle QWindowStateChangeEvent QWindowsVistaStyle QWindowsXPStyle QWizard QWizardPage
syn keyword qtClass		QWriteLocker QWSCalibratedMouseHandler QWSClient QWSEmbedWidget QWSEvent QWSGLWindowSurface QWSInputMethod
syn keyword qtClass		QWSKeyboardHandler QWSMouseHandler QWSPointerCalibrationData QWSScreenSaver QWSServer QWSWindow 
syn keyword qtClass		QX11EmbedContainer QX11EmbedWidget QX11Info QXmlAttributes QXmlContentHandler QXmlDeclHandler QXmlDefaultHandler
syn keyword qtClass		QXmlDTDHandler QXmlEntityResolver QXmlErrorHandler QXmlFormatter QXmlInputSource QXmlItem QXmlLexicalHandler
syn keyword qtClass		QXmlLocator QXmlName QXmlNamePool QXmlNamespaceSupport QXmlNodeModelIndex QXmlParseException QXmlQuery
syn keyword qtClass		QXmlReader QXmlResultItems QXmlSchema QXmlSchemaValidator QXmlSerializer QXmlSimpleReader QXmlStreamAttribute
syn keyword qtClass		QXmlStreamAttributes QXmlStreamEntityDeclaration QXmlStreamEntityResolver QXmlStreamNamespaceDeclaration
syn keyword qtClass		QXmlStreamNotationDeclaration QXmlStreamReader QXmlStreamWriter	
syn keyword qtClass		QTextCursor QTextDecoder QTextDocument QTextDocumentFragment QTextDocumentWriter QTextEdit QTextEncoder QTextFormat
syn keyword qtClass		QTextFragment QTextFrame QTextFrameFormat QTextImageFormat QTextInlineObject QTextItem QTextLayout
syn keyword qtClass		QTextLength QTextLine QTextList QTextListFormat QTextObject QTextObjectInterface QTextOption QTextStream
syn keyword qtClass		QTextTable QTextTableCell QTextTableCellFormat QTextTableFormat QThread QThreadPool QThreadStorage QTileRules
syn keyword qtClass		QTime QTimeEdit QTimeLine QTimer QTimerEvent QToolBar QToolBox QToolButton QToolTip QTouchEvent QTransform
syn keyword qtClass		QTranslator QTreeView QTreeWidget QTreeWidgetItem QTreeWidgetItemIteratorX
syn keyword qtClass		QSortFilterProxyModel QSound QSourceLocation QSpacerItem QSpinBox QSplashScreen QSplitter QSplitterHandle
syn keyword qtClass		QSqlDatabase QSqlDriver QSqlDriverCreator QSqlDriverCreatorBase QSqlDriverPlugin QSqlError QSqlField QSqlIndex
syn keyword qtClass		QSqlQuery QSqlQueryModel QSqlRecord QSqlRelation QSqlRelationalDelegate QSqlRelationalTableModel QSqlResult
syn keyword qtClass		QSqlTableModel QSslCertificate QSslCipher QSslConfiguration QSslError QSslKey QSslSocket QStack QStackedLayout
syn keyword qtClass		QStackedWidget QStandardItem QStandardItemEditorCreator QStandardItemModel QState QStateMachine QStaticText QStatusBar
syn keyword qtClass		QStatusTipEvent QString QStringList QStringListModel QStringMatcher QStringRef QStyle QStyledItemDelegate
syn keyword qtClass		QStyleFactory QStyleHintReturn QStyleHintReturnMask QStyleHintReturnVariant QStyleOption QStyleOptionButton
syn keyword qtClass		QStyleOptionComboBox QStyleOptionComplex QStyleOptionDockWidget QStyleOptionFocusRect QStyleOptionFrame QStyleOptionFrameV2
syn keyword qtClass		QStyleOptionFrameV3 QStyleOptionGraphicsItem QStyleOptionGroupBox QStyleOptionHeader QStyleOptionMenuItem
syn keyword qtClass		QStyleOptionProgressBar QStyleOptionProgressBarV2 QStyleOptionQ3DockWindow QStyleOptionQ3ListView QStyleOptionQ3ListViewItem
syn keyword qtClass		QStyleOptionRubberBand QStyleOptionSizeGrip QStyleOptionSlider QStyleOptionSpinBox QStyleOptionTab QStyleOptionTabBarBase
syn keyword qtClass		QStyleOptionTabBarBaseV2 QStyleOptionTabV2 QStyleOptionTabV3 QStyleOptionTabWidgetFrame QStyleOptionTabWidgetFrameV2
syn keyword qtClass		QStyleOptionTitleBar QStyleOptionToolBar QStyleOptionToolBox QStyleOptionToolBoxV2 QStyleOptionToolButton QStyleOptionViewItem
syn keyword qtClass		QStyleOptionViewItemV2 QStyleOptionViewItemV3 QStyleOptionViewItemV4 QStylePainter QStylePlugin QSvgGenerator
syn keyword qtClass		QSvgRenderer QSvgWidget QSwipeGesture QSymbianEvent QSyntaxHighlighter QSysInfo QSystemLocale QSystemSemaphore QSystemTrayIcon	
syn keyword qtClass		QReadWriteLock QRect QRectF QRegExp QRegExpValidator QRegion QResizeEvent QResource QRubberBand QRunnable 
syn keyword qtClass		QTouchEventSequence QQuaternion QQueue
syn keyword qtClass		QPen QPersistentModelIndex QPicture QPinchGesture QPixmap QPixmapCache QPlainTextDocumentLayout QPlainTextEdit QPlastiqueStyle
syn keyword qtClass		QPluginLoader QPoint QPointer QPointF QPolygon QPolygonF QPrintDialog QPrintEngine QPrinter QPrinterInfo QPrintPreviewDialog
syn keyword qtClass		QPrintPreviewWidget QProcess QProcessEnvironment QProgressBar QProgressDialog QPropertyAnimation QProxyScreen
syn keyword qtClass		QProxyScreenCursor QProxyStyle QPushButton
syn keyword qtClass		QObject QObjectCleanupHandler ObjectDescription
syn keyword qtClass		QNetworkConfigurationManager QNetworkCookie QNetworkCookieJar QNetworkDiskCache QNetworkInterface QNetworkProxy
syn keyword qtClass		QNetworkProxyFactory QNetworkProxyQuery QNetworkReply QNetworkRequest QNetworkSession Notifier 
syn keyword qtClass		MediaObject MediaSource QMenu QMenuBar QMessageBox QMetaClassInfo QMetaEnum QMetaMethod QMetaObject QMetaProperty
syn keyword qtClass		QMetaType QMimeData QModelIndex QMotifStyle QMouseDriverFactory QMouseDriverPlugin QMouseEvent QMouseEventTransition
syn keyword qtClass		QMoveEvent QMovie QMultiHash QMultiMap QMutableHashIterator QMutableLinkedListIterator QMutableListIterator
syn keyword qtClass		QMutableMapIterator QMutableSetIterator QMutableVectorIterator QMutex QMutexLocker
syn keyword qtClass		QLibrary QLibraryInfo QLine QLinearGradient QLineEdit QLineF QLinkedList QLinkedListIterator QList QListIterator
syn keyword qtClass		QListView QListWidget QListWidgetItem QLocale QLocalServer QLocalSocket	
syn keyword qtClass		QKbdDriverPlugin QKeyEvent QKeyEventTransition QKeySequence
syn keyword qtClass		QImageIOPlugin QImageReader QImageWriter QInputContext QInputContextFactory QInputContextPlugin
syn keyword qtClass		QInputDialog QInputEvent QInputMethodEvent QIntValidator QIODevice QItemDelegate QItemEditorCreator
syn keyword qtClass		QItemEditorCreatorBase QItemEditorFactory QItemSelection QItemSelectionModel QItemSelectionRange
syn keyword qtClass		QHelpContentWidget QHelpEngine QHelpEngineCore QHelpEvent QHelpIndexModel QHelpIndexWidget
syn keyword qtClass		QHelpSearchEngine QHelpSearchQuery QHelpSearchQueryWidget QHelpSearchResultWidget QHideEvent
syn keyword qtClass		QHistoryState QHostAddress QHostInfo QHoverEvent
syn keyword qtClass		QGraphicsBlurEffect QGraphicsColorizeEffect QGraphicsDropShadowEffect QGraphicsEffect QGraphicsEllipseItem
syn keyword qtClass		QGraphicsGridLayout QGraphicsItem QGraphicsItemAnimation QGraphicsItemGroup QGraphicsLayout QGraphicsLayoutItem
syn keyword qtClass		QGraphicsLinearLayout QGraphicsLineItem QGraphicsObject QGraphicsOpacityEffect QGraphicsPathItem QGraphicsPixmapItem
syn keyword qtClass		QGraphicsPolygonItem QGraphicsProxyWidget QGraphicsRectItem QGraphicsRotation QGraphicsScale QGraphicsScene
syn keyword qtClass		QGraphicsSceneContextMenuEvent QGraphicsSceneDragDropEvent QGraphicsSceneEvent QGraphicsSceneHelpEvent
syn keyword qtClass		QGraphicsSceneHoverEvent QGraphicsSceneMouseEvent QGraphicsSceneMoveEvent QGraphicsSceneResizeEvent
syn keyword qtClass		QGraphicsSceneWheelEvent QGraphicsSimpleTextItem QGraphicsSvgItem QGraphicsTextItem QGraphicsTransform
syn keyword qtClass		QGraphicsView QGraphicsWebView QGraphicsWidget QGridLayout QGroupBox QGtkStyle
syn keyword qtClass		QFlags QFocusEvent QFocusFrame QFont QFontComboBox QFontDatabase QFontDialog QFontEngineInfo QFontEnginePlugin
syn keyword qtClass		QFontInfo QFontMetrics QFontMetricsF QFormBuilder QFormLayout QFrame QFSFileEngine QFtp QFuture
syn keyword qtClass		QFutureIterator QFutureSynchronizer QFutureWatcher	
syn keyword qtClass		EffectWidget QElapsedTimer QErrorMessage QEvent QEventLoop QEventTransition Exception QExplicitlySharedDataPointer
syn keyword qtClass		QExtensionFactory QExtensionManager
syn keyword qtClass		QDeclarativeItem QDeclarativeListProperty QDeclarativeListReference QDeclarativeNetworkAccessManagerFactory
syn keyword qtClass		QDeclarativeParserStatus QDeclarativeProperty QDeclarativePropertyMap QDeclarativePropertyValueSource
syn keyword qtClass		QDeclarativeScriptString QDeclarativeTypeLoader QDeclarativeView QDecoration QDecorationDefault QDecorationFactory
syn keyword qtClass		QDecorationPlugin QDesignerActionEditorInterface QDesignerContainerExtension QDesignerCustomWidgetCollectionInterface
syn keyword qtClass		QDesignerCustomWidgetInterface QDesignerDynamicPropertySheetExtension QDesignerFormEditorInterface
syn keyword qtClass		QDesignerFormWindowCursorInterface QDesignerFormWindowInterface QDesignerFormWindowManagerInterface QDesignerMemberSheetExtension
syn keyword qtClass		QDesignerObjectInspectorInterface QDesignerPropertyEditorInterface QDesignerPropertySheetExtension QDesignerTaskMenuExtension
syn keyword qtClass		QDesignerWidgetBoxInterface QDesktopServices QDesktopWidget QDial QDialog QDialogButtonBox QDir QDirectPainter
syn keyword qtClass		QDirIterator QDockWidget QDomAttr QDomCDATASection QDomCharacterData QDomComment QDomDocument QDomDocumentFragment QDomDocumentType
syn keyword qtClass		QDomElement QDomEntity QDomEntityReference QDomImplementation QDomNamedNodeMap QDomNode QDomNodeList QDomNotation
syn keyword qtClass		QDomProcessingInstruction QDomText QDoubleSpinBox QDoubleValidator QDrag QDragEnterEvent QDragLeaveEvent
syn keyword qtClass		QDragMoveEvent QDropEvent QDynamicPropertyChangeEvent	
syn keyword qtClass		QClipboard QCloseEvent QColor QColorDialog QColormap QColumnView QComboBox QCommandLinkButton QCommonStyle QCompleter
syn keyword qtClass		QConicalGradient QContextMenuEvent QContiguousCache QCopChannel QCoreApplication QCryptographicHash QCursor QCustomRasterPaintDevice
syn keyword qtClass		QBitmap	QBoxLayout QBrush QBuffer QButtonGroup QByteArray QByteArrayMatcher
syn keyword qtClass		QAbstractSlider QAbstractSocket QAbstractSpinBox QAbstractState QAbstractTableModel QAbstractTextDocumentLayout
syn keyword qtClass		QAbstractTransition QAbstractUriResolver QAbstractVideoBuffer QAbstractVideoSurface QAbstractXmlNodeModel QAbstractXmlReceiver
syn keyword qtClass		QAccessible QAccessibleBridge QAccessibleBridgePlugin QAccessibleEvent QAccessibleInterface QAccessibleObject
syn keyword qtClass		QAccessiblePlugin QAccessibleWidget QAction QActionEvent QActionGroup QAnimationGroup QApplication QAtomicInt
syn keyword qtClass		QAtomicPointer AudioDataOutput QAudioDeviceInfo QAudioFormat QAudioInput QAudioOutput QAuthenticator
syn keyword qtClass		QAxAggregated QAxBase QAxBindable QAxFactory QAxObject QAxScript QAxScriptEngine QAxScriptManager QAxWidget

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean

  HiLink qtRepeat		Conditional
  HiLink qtAccess		cppStatement
  HiLink qtStatement		cppStatement
  HiLink qtType			Type
  HiLink qtMacros		Constant
  HiLink qtClass		Type

  delcommand HiLink
endif

let b:current_syntax = "cpp"

" vim: ts=8
