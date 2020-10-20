module webkit2webextension.c.types;

public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import javascriptcore.c.types;
public import soup.c.types;


/**
 * Enum values used to denote the various levels of console messages.
 *
 * Since: 2.12
 */
public enum WebKitConsoleMessageLevel
{
	/**
	 * Information message.
	 */
	INFO = 0,
	/**
	 * Log message.
	 */
	LOG = 1,
	/**
	 * Warning message.
	 */
	WARNING = 2,
	/**
	 * Error message.
	 */
	ERROR = 3,
	/**
	 * Debug message.
	 */
	DEBUG = 4,
}
alias WebKitConsoleMessageLevel ConsoleMessageLevel;

/**
 * Enum values used to denote the various sources of console messages.
 *
 * Since: 2.12
 */
public enum WebKitConsoleMessageSource
{
	/**
	 * Message produced by JavaScript.
	 */
	JAVASCRIPT = 0,
	/**
	 * Network messages.
	 */
	NETWORK = 1,
	/**
	 * Messages produced by console API.
	 */
	CONSOLE_API = 2,
	/**
	 * Security messages.
	 */
	SECURITY = 3,
	/**
	 * Other messages.
	 */
	OTHER = 4,
}
alias WebKitConsoleMessageSource ConsoleMessageSource;

/**
 * Enum values used to denote the stock actions for
 * #WebKitContextMenuItem<!-- -->s
 */
public enum WebKitContextMenuAction
{
	/**
	 * No action, used by separator menu items.
	 */
	NO_ACTION = 0,
	/**
	 * Open current link.
	 */
	OPEN_LINK = 1,
	/**
	 * Open current link in a new window.
	 */
	OPEN_LINK_IN_NEW_WINDOW = 2,
	/**
	 * Download link destination.
	 */
	DOWNLOAD_LINK_TO_DISK = 3,
	/**
	 * Copy link location to the clipboard.
	 */
	COPY_LINK_TO_CLIPBOARD = 4,
	/**
	 * Open current image in a new window.
	 */
	OPEN_IMAGE_IN_NEW_WINDOW = 5,
	/**
	 * Download current image.
	 */
	DOWNLOAD_IMAGE_TO_DISK = 6,
	/**
	 * Copy current image to the clipboard.
	 */
	COPY_IMAGE_TO_CLIPBOARD = 7,
	/**
	 * Copy current image location to the clipboard.
	 */
	COPY_IMAGE_URL_TO_CLIPBOARD = 8,
	/**
	 * Open current frame in a new window.
	 */
	OPEN_FRAME_IN_NEW_WINDOW = 9,
	/**
	 * Load the previous history item.
	 */
	GO_BACK = 10,
	/**
	 * Load the next history item.
	 */
	GO_FORWARD = 11,
	/**
	 * Stop any ongoing loading operation.
	 */
	STOP = 12,
	/**
	 * Reload the contents of current view.
	 */
	RELOAD = 13,
	/**
	 * Copy current selection the clipboard.
	 */
	COPY = 14,
	/**
	 * Cut current selection to the clipboard.
	 */
	CUT = 15,
	/**
	 * Paste clipboard contents.
	 */
	PASTE = 16,
	/**
	 * Delete current selection.
	 */
	DELETE = 17,
	/**
	 * Select all text.
	 */
	SELECT_ALL = 18,
	/**
	 * Input methods menu.
	 */
	INPUT_METHODS = 19,
	/**
	 * Unicode menu.
	 */
	UNICODE = 20,
	/**
	 * A proposed replacement for a misspelled word.
	 */
	SPELLING_GUESS = 21,
	/**
	 * An indicator that spellchecking found no proposed replacements.
	 */
	NO_GUESSES_FOUND = 22,
	/**
	 * Causes the spellchecker to ignore the word for this session.
	 */
	IGNORE_SPELLING = 23,
	/**
	 * Causes the spellchecker to add the word to the dictionary.
	 */
	LEARN_SPELLING = 24,
	/**
	 * Ignore grammar.
	 */
	IGNORE_GRAMMAR = 25,
	/**
	 * Font options menu.
	 */
	FONT_MENU = 26,
	/**
	 * Bold.
	 */
	BOLD = 27,
	/**
	 * Italic.
	 */
	ITALIC = 28,
	/**
	 * Underline.
	 */
	UNDERLINE = 29,
	/**
	 * Outline.
	 */
	OUTLINE = 30,
	/**
	 * Open current element in the inspector.
	 */
	INSPECT_ELEMENT = 31,
	/**
	 * Open current video element in a new window.
	 */
	OPEN_VIDEO_IN_NEW_WINDOW = 32,
	/**
	 * Open current audio element in a new window.
	 */
	OPEN_AUDIO_IN_NEW_WINDOW = 33,
	/**
	 * Copy video link location in to the clipboard.
	 */
	COPY_VIDEO_LINK_TO_CLIPBOARD = 34,
	/**
	 * Copy audio link location in to the clipboard.
	 */
	COPY_AUDIO_LINK_TO_CLIPBOARD = 35,
	/**
	 * Enable or disable media controls.
	 */
	TOGGLE_MEDIA_CONTROLS = 36,
	/**
	 * Enable or disable media loop.
	 */
	TOGGLE_MEDIA_LOOP = 37,
	/**
	 * Show current video element in fullscreen mode.
	 */
	ENTER_VIDEO_FULLSCREEN = 38,
	/**
	 * Play current media element.
	 */
	MEDIA_PLAY = 39,
	/**
	 * Pause current media element.
	 */
	MEDIA_PAUSE = 40,
	/**
	 * Mute current media element.
	 */
	MEDIA_MUTE = 41,
	/**
	 * Download video to disk. Since 2.2
	 */
	DOWNLOAD_VIDEO_TO_DISK = 42,
	/**
	 * Download audio to disk. Since 2.2
	 */
	DOWNLOAD_AUDIO_TO_DISK = 43,
	/**
	 * Insert an emoji. Since 2.26
	 */
	INSERT_EMOJI = 44,
	/**
	 * Paste clipboard contents as plain text. Since 2.30
	 */
	PASTE_AS_PLAIN_TEXT = 45,
	/**
	 * Custom action defined by applications.
	 */
	CUSTOM = 10000,
}
alias WebKitContextMenuAction ContextMenuAction;

/**
 * Used to indicate a particular stage in form submission. See
 * #WebKitWebPage::will-submit-form.
 *
 * Since: 2.20
 */
public enum WebKitFormSubmissionStep
{
	/**
	 * indicates the form's
	 * DOM submit event is about to be emitted.
	 */
	SEND_DOM_EVENT = 0,
	/**
	 * indicates the form is about
	 * to be submitted.
	 */
	COMPLETE = 1,
}
alias WebKitFormSubmissionStep FormSubmissionStep;

/**
 * Enum values with flags representing the context of a #WebKitHitTestResult.
 */
public enum WebKitHitTestResultContext
{
	/**
	 * anywhere in the document.
	 */
	DOCUMENT = 2,
	/**
	 * a hyperlink element.
	 */
	LINK = 4,
	/**
	 * an image element.
	 */
	IMAGE = 8,
	/**
	 * a video or audio element.
	 */
	MEDIA = 16,
	/**
	 * an editable element
	 */
	EDITABLE = 32,
	/**
	 * a scrollbar element.
	 */
	SCROLLBAR = 64,
	/**
	 * a selected element. Since 2.8
	 */
	SELECTION = 128,
}
alias WebKitHitTestResultContext HitTestResultContext;

/**
 * Enum values used to denote errors happening when sending user messages.
 *
 * Since: 2.28
 */
public enum WebKitUserMessageError
{
	/**
	 * The message was not handled by the receiver.
	 */
	USER_MESSAGE_UNHANDLED_MESSAGE = 0,
}
alias WebKitUserMessageError UserMessageError;

struct WebKitConsoleMessage;

struct WebKitContextMenu;

struct WebKitContextMenuClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitContextMenuItem;

struct WebKitContextMenuItemClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitContextMenuItemPrivate;

struct WebKitContextMenuPrivate;

struct WebKitDOMAttr
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMAttrClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMBlob
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMBlobClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMCDATASection
{
	WebKitDOMText parentInstance;
}

struct WebKitDOMCDATASectionClass
{
	WebKitDOMTextClass parentClass;
}

struct WebKitDOMCSSRule
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMCSSRuleClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMCSSRuleList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMCSSRuleListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMCSSStyleDeclaration
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMCSSStyleDeclarationClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMCSSStyleSheet
{
	WebKitDOMStyleSheet parentInstance;
}

struct WebKitDOMCSSStyleSheetClass
{
	WebKitDOMStyleSheetClass parentClass;
}

struct WebKitDOMCSSValue
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMCSSValueClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMCharacterData
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMCharacterDataClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMClientRect
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMClientRectClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMClientRectList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMClientRectListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMComment
{
	WebKitDOMCharacterData parentInstance;
}

struct WebKitDOMCommentClass
{
	WebKitDOMCharacterDataClass parentClass;
}

struct WebKitDOMDOMImplementation
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMDOMImplementationClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMDOMSelection
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMDOMSelectionClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMDOMTokenList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMDOMTokenListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMDOMWindow
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMDOMWindowClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMDocument
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMDocumentClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMDocumentFragment
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMDocumentFragmentClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMDocumentType
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMDocumentTypeClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMElement
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMElementClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMEntityReference
{
	WebKitDOMNode parentInstance;
}

struct WebKitDOMEntityReferenceClass
{
	WebKitDOMNodeClass parentClass;
}

struct WebKitDOMEvent
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMEventClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMEventTarget;

struct WebKitDOMEventTargetIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     target = A #WebKitDOMEventTarget
	 *     event = A #WebKitDOMEvent
	 * Returns: a #gboolean
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(WebKitDOMEventTarget* target, WebKitDOMEvent* event, GError** err) dispatchEvent;
	/** */
	extern(C) int function(WebKitDOMEventTarget* target, const(char)* eventName, GClosure* handler, int useCapture) addEventListener;
	/**
	 *
	 * Params:
	 *     target = A #WebKitDOMEventTarget
	 *     eventName = A #gchar
	 *     handler = A #GCallback
	 *     useCapture = A #gboolean
	 * Returns: a #gboolean
	 */
	extern(C) int function(WebKitDOMEventTarget* target, const(char)* eventName, GClosure* handler, int useCapture) removeEventListener;
	/** */
	extern(C) void function() WebkitdomReserved0;
	/** */
	extern(C) void function() WebkitdomReserved1;
	/** */
	extern(C) void function() WebkitdomReserved2;
	/** */
	extern(C) void function() WebkitdomReserved3;
}

struct WebKitDOMFile
{
	WebKitDOMBlob parentInstance;
}

struct WebKitDOMFileClass
{
	WebKitDOMBlobClass parentClass;
}

struct WebKitDOMFileList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMFileListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMHTMLAnchorElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLAnchorElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLAppletElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLAppletElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLAreaElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLAreaElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLBRElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLBRElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLBaseElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLBaseElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLBaseFontElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLBaseFontElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLBodyElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLBodyElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLButtonElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLButtonElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLCanvasElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLCanvasElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLCollection
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMHTMLCollectionClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMHTMLDListElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLDListElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLDirectoryElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLDirectoryElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLDivElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLDivElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLDocument
{
	WebKitDOMDocument parentInstance;
}

struct WebKitDOMHTMLDocumentClass
{
	WebKitDOMDocumentClass parentClass;
}

struct WebKitDOMHTMLElement
{
	WebKitDOMElement parentInstance;
}

struct WebKitDOMHTMLElementClass
{
	WebKitDOMElementClass parentClass;
}

struct WebKitDOMHTMLEmbedElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLEmbedElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLFieldSetElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLFieldSetElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLFontElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLFontElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLFormElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLFormElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLFrameElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLFrameElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLFrameSetElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLFrameSetElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLHRElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLHRElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLHeadElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLHeadElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLHeadingElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLHeadingElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLHtmlElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLHtmlElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLIFrameElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLIFrameElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLImageElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLImageElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLInputElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLInputElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLLIElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLLIElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLLabelElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLLabelElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLLegendElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLLegendElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLLinkElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLLinkElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLMapElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLMapElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLMarqueeElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLMarqueeElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLMenuElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLMenuElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLMetaElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLMetaElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLModElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLModElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLOListElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLOListElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLObjectElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLObjectElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLOptGroupElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLOptGroupElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLOptionElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLOptionElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLOptionsCollection
{
	WebKitDOMHTMLCollection parentInstance;
}

struct WebKitDOMHTMLOptionsCollectionClass
{
	WebKitDOMHTMLCollectionClass parentClass;
}

struct WebKitDOMHTMLParagraphElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLParagraphElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLParamElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLParamElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLPreElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLPreElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLQuoteElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLQuoteElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLScriptElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLScriptElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLSelectElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLSelectElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLStyleElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLStyleElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableCaptionElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableCaptionElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableCellElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableCellElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableColElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableColElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableRowElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableRowElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTableSectionElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTableSectionElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTextAreaElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTextAreaElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLTitleElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLTitleElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMHTMLUListElement
{
	WebKitDOMHTMLElement parentInstance;
}

struct WebKitDOMHTMLUListElementClass
{
	WebKitDOMHTMLElementClass parentClass;
}

struct WebKitDOMKeyboardEvent
{
	WebKitDOMUIEvent parentInstance;
}

struct WebKitDOMKeyboardEventClass
{
	WebKitDOMUIEventClass parentClass;
}

struct WebKitDOMMediaList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMMediaListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMMouseEvent
{
	WebKitDOMUIEvent parentInstance;
}

struct WebKitDOMMouseEventClass
{
	WebKitDOMUIEventClass parentClass;
}

struct WebKitDOMNamedNodeMap
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMNamedNodeMapClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMNode
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMNodeClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMNodeFilter;

struct WebKitDOMNodeFilterIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     filter = A #WebKitDOMNodeFilter
	 *     node = A #WebKitDOMNode
	 * Returns: a #gshort
	 */
	extern(C) short function(WebKitDOMNodeFilter* filter, WebKitDOMNode* node) acceptNode;
	/** */
	extern(C) void function() WebkitdomReserved0;
	/** */
	extern(C) void function() WebkitdomReserved1;
	/** */
	extern(C) void function() WebkitdomReserved2;
	/** */
	extern(C) void function() WebkitdomReserved3;
}

struct WebKitDOMNodeIterator
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMNodeIteratorClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMNodeList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMNodeListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMObject
{
	GObject parentInstance;
	void* coreObject;
}

struct WebKitDOMObjectClass
{
	GObjectClass parentClass;
}

struct WebKitDOMProcessingInstruction
{
	WebKitDOMCharacterData parentInstance;
}

struct WebKitDOMProcessingInstructionClass
{
	WebKitDOMCharacterDataClass parentClass;
}

struct WebKitDOMRange
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMRangeClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMStyleSheet
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMStyleSheetClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMStyleSheetList
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMStyleSheetListClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMText
{
	WebKitDOMCharacterData parentInstance;
}

struct WebKitDOMTextClass
{
	WebKitDOMCharacterDataClass parentClass;
}

struct WebKitDOMTreeWalker
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMTreeWalkerClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMUIEvent
{
	WebKitDOMEvent parentInstance;
}

struct WebKitDOMUIEventClass
{
	WebKitDOMEventClass parentClass;
}

struct WebKitDOMWheelEvent
{
	WebKitDOMMouseEvent parentInstance;
}

struct WebKitDOMWheelEventClass
{
	WebKitDOMMouseEventClass parentClass;
}

struct WebKitDOMXPathExpression
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMXPathExpressionClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitDOMXPathNSResolver;

struct WebKitDOMXPathNSResolverIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     resolver = A #WebKitDOMXPathNSResolver
	 *     prefix = The prefix to lookup
	 * Returns: a #gchar
	 */
	extern(C) char* function(WebKitDOMXPathNSResolver* resolver, const(char)* prefix) lookupNamespaceUri;
	/** */
	extern(C) void function() WebkitdomReserved0;
	/** */
	extern(C) void function() WebkitdomReserved1;
	/** */
	extern(C) void function() WebkitdomReserved2;
	/** */
	extern(C) void function() WebkitdomReserved3;
}

struct WebKitDOMXPathResult
{
	WebKitDOMObject parentInstance;
}

struct WebKitDOMXPathResultClass
{
	WebKitDOMObjectClass parentClass;
}

struct WebKitFrame
{
	GObject parent;
	WebKitFramePrivate* priv;
}

struct WebKitFrameClass
{
	GObjectClass parentClass;
}

struct WebKitFramePrivate;

struct WebKitHitTestResult
{
	GObject parent;
	WebKitHitTestResultPrivate* priv;
}

struct WebKitHitTestResultClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitHitTestResultPrivate;

struct WebKitScriptWorld
{
	GObject parent;
	WebKitScriptWorldPrivate* priv;
}

struct WebKitScriptWorldClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitScriptWorldPrivate;

struct WebKitURIRequest
{
	GObject parent;
	WebKitURIRequestPrivate* priv;
}

struct WebKitURIRequestClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitURIRequestPrivate;

struct WebKitURIResponse
{
	GObject parent;
	WebKitURIResponsePrivate* priv;
}

struct WebKitURIResponseClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitURIResponsePrivate;

struct WebKitUserMessage
{
	GObject parent;
	WebKitUserMessagePrivate* priv;
}

struct WebKitUserMessageClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitUserMessagePrivate;

struct WebKitWebEditor
{
	GObject parent;
	WebKitWebEditorPrivate* priv;
}

struct WebKitWebEditorClass
{
	GObjectClass parentClass;
}

struct WebKitWebEditorPrivate;

struct WebKitWebExtension
{
	GObject parent;
	WebKitWebExtensionPrivate* priv;
}

struct WebKitWebExtensionClass
{
	GObjectClass parentClass;
}

struct WebKitWebExtensionPrivate;

struct WebKitWebHitTestResult
{
	WebKitHitTestResult parent;
	WebKitWebHitTestResultPrivate* priv;
}

struct WebKitWebHitTestResultClass
{
	WebKitHitTestResultClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitWebHitTestResultPrivate;

struct WebKitWebPage
{
	GObject parent;
	WebKitWebPagePrivate* priv;
}

struct WebKitWebPageClass
{
	GObjectClass parentClass;
}

struct WebKitWebPagePrivate;

struct _WebKitContextMenu
{
	GObject parent;
	WebKitContextMenuPrivate* priv;
}

struct _WebKitContextMenuItem
{
	GObject parent;
	WebKitContextMenuItemPrivate* priv;
}

/**
 * Type definition for a function that will be called to initialize
 * the web extension when the web process starts.
 *
 * Params:
 *     extension = a #WebKitWebExtension
 */
public alias extern(C) void function(WebKitWebExtension* extension) WebKitWebExtensionInitializeFunction;

/**
 * Type definition for a function that will be called to initialize
 * the web extensions when the web process starts, and which receives
 * as additional argument the user data set with
 * webkit_web_context_set_web_extensions_initialization_user_data().
 *
 * Params:
 *     extension = a #WebKitWebExtension
 *     userData = a #GVariant
 *
 * Since: 2.4
 */
public alias extern(C) void function(WebKitWebExtension* extension, GVariant* userData) WebKitWebExtensionInitializeWithUserDataFunction;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_CHARSET_RULE = 2;
alias WEBKIT_DOM_CSS_RULE_CHARSET_RULE = DOM_CSS_RULE_CHARSET_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_FONT_FACE_RULE = 5;
alias WEBKIT_DOM_CSS_RULE_FONT_FACE_RULE = DOM_CSS_RULE_FONT_FACE_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_IMPORT_RULE = 3;
alias WEBKIT_DOM_CSS_RULE_IMPORT_RULE = DOM_CSS_RULE_IMPORT_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_MEDIA_RULE = 4;
alias WEBKIT_DOM_CSS_RULE_MEDIA_RULE = DOM_CSS_RULE_MEDIA_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_PAGE_RULE = 6;
alias WEBKIT_DOM_CSS_RULE_PAGE_RULE = DOM_CSS_RULE_PAGE_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_STYLE_RULE = 1;
alias WEBKIT_DOM_CSS_RULE_STYLE_RULE = DOM_CSS_RULE_STYLE_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_RULE_UNKNOWN_RULE = 0;
alias WEBKIT_DOM_CSS_RULE_UNKNOWN_RULE = DOM_CSS_RULE_UNKNOWN_RULE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_VALUE_CSS_CUSTOM = 3;
alias WEBKIT_DOM_CSS_VALUE_CSS_CUSTOM = DOM_CSS_VALUE_CSS_CUSTOM;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_VALUE_CSS_INHERIT = 0;
alias WEBKIT_DOM_CSS_VALUE_CSS_INHERIT = DOM_CSS_VALUE_CSS_INHERIT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_VALUE_CSS_PRIMITIVE_VALUE = 1;
alias WEBKIT_DOM_CSS_VALUE_CSS_PRIMITIVE_VALUE = DOM_CSS_VALUE_CSS_PRIMITIVE_VALUE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_CSS_VALUE_CSS_VALUE_LIST = 2;
alias WEBKIT_DOM_CSS_VALUE_CSS_VALUE_LIST = DOM_CSS_VALUE_CSS_VALUE_LIST;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_ELEMENT_ALLOW_KEYBOARD_INPUT = 1;
alias WEBKIT_DOM_ELEMENT_ALLOW_KEYBOARD_INPUT = DOM_ELEMENT_ALLOW_KEYBOARD_INPUT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_AT_TARGET = 2;
alias WEBKIT_DOM_EVENT_AT_TARGET = DOM_EVENT_AT_TARGET;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_BLUR = 8192;
alias WEBKIT_DOM_EVENT_BLUR = DOM_EVENT_BLUR;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_BUBBLING_PHASE = 3;
alias WEBKIT_DOM_EVENT_BUBBLING_PHASE = DOM_EVENT_BUBBLING_PHASE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_CAPTURING_PHASE = 1;
alias WEBKIT_DOM_EVENT_CAPTURING_PHASE = DOM_EVENT_CAPTURING_PHASE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_CHANGE = 32768;
alias WEBKIT_DOM_EVENT_CHANGE = DOM_EVENT_CHANGE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_CLICK = 64;
alias WEBKIT_DOM_EVENT_CLICK = DOM_EVENT_CLICK;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_DBLCLICK = 128;
alias WEBKIT_DOM_EVENT_DBLCLICK = DOM_EVENT_DBLCLICK;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_DRAGDROP = 2048;
alias WEBKIT_DOM_EVENT_DRAGDROP = DOM_EVENT_DRAGDROP;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_FOCUS = 4096;
alias WEBKIT_DOM_EVENT_FOCUS = DOM_EVENT_FOCUS;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_KEYDOWN = 256;
alias WEBKIT_DOM_EVENT_KEYDOWN = DOM_EVENT_KEYDOWN;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_KEYPRESS = 1024;
alias WEBKIT_DOM_EVENT_KEYPRESS = DOM_EVENT_KEYPRESS;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_KEYUP = 512;
alias WEBKIT_DOM_EVENT_KEYUP = DOM_EVENT_KEYUP;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEDOWN = 1;
alias WEBKIT_DOM_EVENT_MOUSEDOWN = DOM_EVENT_MOUSEDOWN;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEDRAG = 32;
alias WEBKIT_DOM_EVENT_MOUSEDRAG = DOM_EVENT_MOUSEDRAG;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEMOVE = 16;
alias WEBKIT_DOM_EVENT_MOUSEMOVE = DOM_EVENT_MOUSEMOVE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEOUT = 8;
alias WEBKIT_DOM_EVENT_MOUSEOUT = DOM_EVENT_MOUSEOUT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEOVER = 4;
alias WEBKIT_DOM_EVENT_MOUSEOVER = DOM_EVENT_MOUSEOVER;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_MOUSEUP = 2;
alias WEBKIT_DOM_EVENT_MOUSEUP = DOM_EVENT_MOUSEUP;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_NONE = 0;
alias WEBKIT_DOM_EVENT_NONE = DOM_EVENT_NONE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_EVENT_SELECT = 16384;
alias WEBKIT_DOM_EVENT_SELECT = DOM_EVENT_SELECT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_KEYBOARD_EVENT_KEY_LOCATION_LEFT = 1;
alias WEBKIT_DOM_KEYBOARD_EVENT_KEY_LOCATION_LEFT = DOM_KEYBOARD_EVENT_KEY_LOCATION_LEFT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_KEYBOARD_EVENT_KEY_LOCATION_NUMPAD = 3;
alias WEBKIT_DOM_KEYBOARD_EVENT_KEY_LOCATION_NUMPAD = DOM_KEYBOARD_EVENT_KEY_LOCATION_NUMPAD;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_KEYBOARD_EVENT_KEY_LOCATION_RIGHT = 2;
alias WEBKIT_DOM_KEYBOARD_EVENT_KEY_LOCATION_RIGHT = DOM_KEYBOARD_EVENT_KEY_LOCATION_RIGHT;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_KEYBOARD_EVENT_KEY_LOCATION_STANDARD = 0;
alias WEBKIT_DOM_KEYBOARD_EVENT_KEY_LOCATION_STANDARD = DOM_KEYBOARD_EVENT_KEY_LOCATION_STANDARD;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_ATTRIBUTE_NODE = 2;
alias WEBKIT_DOM_NODE_ATTRIBUTE_NODE = DOM_NODE_ATTRIBUTE_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_CDATA_SECTION_NODE = 4;
alias WEBKIT_DOM_NODE_CDATA_SECTION_NODE = DOM_NODE_CDATA_SECTION_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_COMMENT_NODE = 8;
alias WEBKIT_DOM_NODE_COMMENT_NODE = DOM_NODE_COMMENT_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_FRAGMENT_NODE = 11;
alias WEBKIT_DOM_NODE_DOCUMENT_FRAGMENT_NODE = DOM_NODE_DOCUMENT_FRAGMENT_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_NODE = 9;
alias WEBKIT_DOM_NODE_DOCUMENT_NODE = DOM_NODE_DOCUMENT_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_CONTAINED_BY = 16;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_CONTAINED_BY = DOM_NODE_DOCUMENT_POSITION_CONTAINED_BY;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_CONTAINS = 8;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_CONTAINS = DOM_NODE_DOCUMENT_POSITION_CONTAINS;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_DISCONNECTED = 1;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_DISCONNECTED = DOM_NODE_DOCUMENT_POSITION_DISCONNECTED;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_FOLLOWING = 4;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_FOLLOWING = DOM_NODE_DOCUMENT_POSITION_FOLLOWING;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = DOM_NODE_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_POSITION_PRECEDING = 2;
alias WEBKIT_DOM_NODE_DOCUMENT_POSITION_PRECEDING = DOM_NODE_DOCUMENT_POSITION_PRECEDING;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_DOCUMENT_TYPE_NODE = 10;
alias WEBKIT_DOM_NODE_DOCUMENT_TYPE_NODE = DOM_NODE_DOCUMENT_TYPE_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_ELEMENT_NODE = 1;
alias WEBKIT_DOM_NODE_ELEMENT_NODE = DOM_NODE_ELEMENT_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_ENTITY_NODE = 6;
alias WEBKIT_DOM_NODE_ENTITY_NODE = DOM_NODE_ENTITY_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_ENTITY_REFERENCE_NODE = 5;
alias WEBKIT_DOM_NODE_ENTITY_REFERENCE_NODE = DOM_NODE_ENTITY_REFERENCE_NODE;

/**
 * Accept the node. Use this macro as return value of webkit_dom_node_filter_accept_node()
 * implementation to accept the given #WebKitDOMNode
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_ACCEPT = 1;
alias WEBKIT_DOM_NODE_FILTER_ACCEPT = DOM_NODE_FILTER_ACCEPT;

/**
 * Reject the node. Use this macro as return value of webkit_dom_node_filter_accept_node()
 * implementation to reject the given #WebKitDOMNode. The children of the given node will
 * be rejected too.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_REJECT = 2;
alias WEBKIT_DOM_NODE_FILTER_REJECT = DOM_NODE_FILTER_REJECT;

/**
 * Show all nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_ALL = 4294967295;
alias WEBKIT_DOM_NODE_FILTER_SHOW_ALL = DOM_NODE_FILTER_SHOW_ALL;

/**
 * Show #WebKitDOMAttr nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_ATTRIBUTE = 2;
alias WEBKIT_DOM_NODE_FILTER_SHOW_ATTRIBUTE = DOM_NODE_FILTER_SHOW_ATTRIBUTE;

/**
 * Show #WebKitDOMCDataSection nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_CDATA_SECTION = 8;
alias WEBKIT_DOM_NODE_FILTER_SHOW_CDATA_SECTION = DOM_NODE_FILTER_SHOW_CDATA_SECTION;

/**
 * Show #WebKitDOMComment nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_COMMENT = 128;
alias WEBKIT_DOM_NODE_FILTER_SHOW_COMMENT = DOM_NODE_FILTER_SHOW_COMMENT;

/**
 * Show #WebKitDOMDocument nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_DOCUMENT = 256;
alias WEBKIT_DOM_NODE_FILTER_SHOW_DOCUMENT = DOM_NODE_FILTER_SHOW_DOCUMENT;

/**
 * Show #WebKitDOMDocumentFragment nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_DOCUMENT_FRAGMENT = 1024;
alias WEBKIT_DOM_NODE_FILTER_SHOW_DOCUMENT_FRAGMENT = DOM_NODE_FILTER_SHOW_DOCUMENT_FRAGMENT;

/**
 * Show #WebKitDOMDocumentType nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_DOCUMENT_TYPE = 512;
alias WEBKIT_DOM_NODE_FILTER_SHOW_DOCUMENT_TYPE = DOM_NODE_FILTER_SHOW_DOCUMENT_TYPE;

/**
 * Show #WebKitDOMElement nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_ELEMENT = 1;
alias WEBKIT_DOM_NODE_FILTER_SHOW_ELEMENT = DOM_NODE_FILTER_SHOW_ELEMENT;

/**
 * Show #WebKitDOMEntity nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_ENTITY = 32;
alias WEBKIT_DOM_NODE_FILTER_SHOW_ENTITY = DOM_NODE_FILTER_SHOW_ENTITY;

/**
 * Show #WebKitDOMEntityReference nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_ENTITY_REFERENCE = 16;
alias WEBKIT_DOM_NODE_FILTER_SHOW_ENTITY_REFERENCE = DOM_NODE_FILTER_SHOW_ENTITY_REFERENCE;

/**
 * Show #WebKitDOMNotation nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_NOTATION = 2048;
alias WEBKIT_DOM_NODE_FILTER_SHOW_NOTATION = DOM_NODE_FILTER_SHOW_NOTATION;

/**
 * Show #WebKitDOMProcessingInstruction nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_PROCESSING_INSTRUCTION = 64;
alias WEBKIT_DOM_NODE_FILTER_SHOW_PROCESSING_INSTRUCTION = DOM_NODE_FILTER_SHOW_PROCESSING_INSTRUCTION;

/**
 * Show #WebKitDOMText nodes.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SHOW_TEXT = 4;
alias WEBKIT_DOM_NODE_FILTER_SHOW_TEXT = DOM_NODE_FILTER_SHOW_TEXT;

/**
 * Skip the node. Use this macro as return value of webkit_dom_node_filter_accept_node()
 * implementation to skip the given #WebKitDOMNode. The children of the given node will
 * not be skipped.
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_FILTER_SKIP = 3;
alias WEBKIT_DOM_NODE_FILTER_SKIP = DOM_NODE_FILTER_SKIP;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_PROCESSING_INSTRUCTION_NODE = 7;
alias WEBKIT_DOM_NODE_PROCESSING_INSTRUCTION_NODE = DOM_NODE_PROCESSING_INSTRUCTION_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_NODE_TEXT_NODE = 3;
alias WEBKIT_DOM_NODE_TEXT_NODE = DOM_NODE_TEXT_NODE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_END_TO_END = 2;
alias WEBKIT_DOM_RANGE_END_TO_END = DOM_RANGE_END_TO_END;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_END_TO_START = 3;
alias WEBKIT_DOM_RANGE_END_TO_START = DOM_RANGE_END_TO_START;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_NODE_AFTER = 1;
alias WEBKIT_DOM_RANGE_NODE_AFTER = DOM_RANGE_NODE_AFTER;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_NODE_BEFORE = 0;
alias WEBKIT_DOM_RANGE_NODE_BEFORE = DOM_RANGE_NODE_BEFORE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_NODE_BEFORE_AND_AFTER = 2;
alias WEBKIT_DOM_RANGE_NODE_BEFORE_AND_AFTER = DOM_RANGE_NODE_BEFORE_AND_AFTER;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_NODE_INSIDE = 3;
alias WEBKIT_DOM_RANGE_NODE_INSIDE = DOM_RANGE_NODE_INSIDE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_START_TO_END = 1;
alias WEBKIT_DOM_RANGE_START_TO_END = DOM_RANGE_START_TO_END;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_RANGE_START_TO_START = 0;
alias WEBKIT_DOM_RANGE_START_TO_START = DOM_RANGE_START_TO_START;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_ANY_TYPE = 0;
alias WEBKIT_DOM_XPATH_RESULT_ANY_TYPE = DOM_XPATH_RESULT_ANY_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_ANY_UNORDERED_NODE_TYPE = 8;
alias WEBKIT_DOM_XPATH_RESULT_ANY_UNORDERED_NODE_TYPE = DOM_XPATH_RESULT_ANY_UNORDERED_NODE_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_BOOLEAN_TYPE = 3;
alias WEBKIT_DOM_XPATH_RESULT_BOOLEAN_TYPE = DOM_XPATH_RESULT_BOOLEAN_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_FIRST_ORDERED_NODE_TYPE = 9;
alias WEBKIT_DOM_XPATH_RESULT_FIRST_ORDERED_NODE_TYPE = DOM_XPATH_RESULT_FIRST_ORDERED_NODE_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_NUMBER_TYPE = 1;
alias WEBKIT_DOM_XPATH_RESULT_NUMBER_TYPE = DOM_XPATH_RESULT_NUMBER_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_ORDERED_NODE_ITERATOR_TYPE = 5;
alias WEBKIT_DOM_XPATH_RESULT_ORDERED_NODE_ITERATOR_TYPE = DOM_XPATH_RESULT_ORDERED_NODE_ITERATOR_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_ORDERED_NODE_SNAPSHOT_TYPE = 7;
alias WEBKIT_DOM_XPATH_RESULT_ORDERED_NODE_SNAPSHOT_TYPE = DOM_XPATH_RESULT_ORDERED_NODE_SNAPSHOT_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_STRING_TYPE = 2;
alias WEBKIT_DOM_XPATH_RESULT_STRING_TYPE = DOM_XPATH_RESULT_STRING_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_UNORDERED_NODE_ITERATOR_TYPE = 4;
alias WEBKIT_DOM_XPATH_RESULT_UNORDERED_NODE_ITERATOR_TYPE = DOM_XPATH_RESULT_UNORDERED_NODE_ITERATOR_TYPE;

/**
 *
 *
 * Deprecated: Use JavaScriptCore API instead
 */
enum DOM_XPATH_RESULT_UNORDERED_NODE_SNAPSHOT_TYPE = 6;
alias WEBKIT_DOM_XPATH_RESULT_UNORDERED_NODE_SNAPSHOT_TYPE = DOM_XPATH_RESULT_UNORDERED_NODE_SNAPSHOT_TYPE;
