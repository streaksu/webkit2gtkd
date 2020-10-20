module webkit2.c.types;

public import cairo.c.types;
public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import javascriptcore.c.types;
public import soup.c.types;


/**
 * Enum values representing the authentication scheme.
 *
 * Since: 2.2
 */
public enum WebKitAuthenticationScheme
{
	/**
	 * The default authentication scheme of WebKit.
	 */
	DEFAULT = 1,
	/**
	 * Basic authentication scheme as defined in RFC 2617.
	 */
	HTTP_BASIC = 2,
	/**
	 * Digest authentication scheme as defined in RFC 2617.
	 */
	HTTP_DIGEST = 3,
	/**
	 * HTML Form authentication.
	 */
	HTML_FORM = 4,
	/**
	 * NTLM Microsoft proprietary authentication scheme.
	 */
	NTLM = 5,
	/**
	 * Negotiate (or SPNEGO) authentication scheme as defined in RFC 4559.
	 */
	NEGOTIATE = 6,
	/**
	 * Client Certificate Authentication (see RFC 2246).
	 */
	CLIENT_CERTIFICATE_REQUESTED = 7,
	/**
	 * Server Trust Authentication.
	 */
	SERVER_TRUST_EVALUATION_REQUESTED = 8,
	/**
	 * Authentication scheme unknown.
	 */
	UNKNOWN = 100,
}
alias WebKitAuthenticationScheme AuthenticationScheme;

/**
 * Enum values used for determining the automation browsing context presentation.
 *
 * Since: 2.28
 */
public enum WebKitAutomationBrowsingContextPresentation
{
	/**
	 * a window
	 */
	WINDOW = 0,
	/**
	 * a tab
	 */
	TAB = 1,
}
alias WebKitAutomationBrowsingContextPresentation AutomationBrowsingContextPresentation;

/**
 * Enum values used to specify autoplay policies.
 *
 * Since: 2.30
 */
public enum WebKitAutoplayPolicy
{
	/**
	 * Do not restrict autoplay.
	 */
	ALLOW = 0,
	/**
	 * Allow videos to autoplay if
	 * they have no audio track, or if their audio track is muted.
	 */
	ALLOW_WITHOUT_SOUND = 1,
	/**
	 * Never allow autoplay.
	 */
	DENY = 2,
}
alias WebKitAutoplayPolicy AutoplayPolicy;

/**
 * Enum values used for determining the #WebKitWebContext cache model.
 */
public enum WebKitCacheModel
{
	/**
	 * Disable the cache completely, which
	 * substantially reduces memory usage. Useful for applications that only
	 * access a single local file, with no navigation to other pages. No remote
	 * resources will be cached.
	 */
	DOCUMENT_VIEWER = 0,
	/**
	 * Improve document load speed substantially
	 * by caching a very large number of resources and previously viewed content.
	 */
	WEB_BROWSER = 1,
	/**
	 * A cache model optimized for viewing
	 * a series of local files -- for example, a documentation viewer or a website
	 * designer. WebKit will cache a moderate number of resources.
	 */
	DOCUMENT_BROWSER = 2,
}
alias WebKitCacheModel CacheModel;

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
 * Enum values used to denote the cookie acceptance policies.
 */
public enum WebKitCookieAcceptPolicy
{
	/**
	 * Accept all cookies unconditionally.
	 */
	ALWAYS = 0,
	/**
	 * Reject all cookies unconditionally.
	 */
	NEVER = 1,
	/**
	 * Accept only cookies set by the main document loaded.
	 */
	NO_THIRD_PARTY = 2,
}
alias WebKitCookieAcceptPolicy CookieAcceptPolicy;

/**
 * Enum values used to denote the cookie persistent storage types.
 */
public enum WebKitCookiePersistentStorage
{
	/**
	 * Cookies are stored in a text
	 * file in the Mozilla "cookies.txt" format.
	 */
	TEXT = 0,
	/**
	 * Cookies are stored in a SQLite
	 * file in the current Mozilla format.
	 */
	SQLITE = 1,
}
alias WebKitCookiePersistentStorage CookiePersistentStorage;

/**
 * Enum values representing the duration for which a credential persists.
 *
 * Since: 2.2
 */
public enum WebKitCredentialPersistence
{
	/**
	 * Credential does not persist
	 */
	NONE = 0,
	/**
	 * Credential persists for session only
	 */
	FOR_SESSION = 1,
	/**
	 * Credential persists permanently
	 */
	PERMANENT = 2,
}
alias WebKitCredentialPersistence CredentialPersistence;

/**
 * Enum values used to denote the various download errors.
 */
public enum WebKitDownloadError
{
	/**
	 * Download failure due to network error
	 */
	NETWORK = 499,
	/**
	 * Download was cancelled by user
	 */
	CANCELLED_BY_USER = 400,
	/**
	 * Download failure due to destination error
	 */
	DESTINATION = 401,
}
alias WebKitDownloadError DownloadError;

/**
 * Enum values with flags representing typing attributes.
 *
 * Since: 2.10
 */
public enum WebKitEditorTypingAttributes
{
	/**
	 * No typing attributes.
	 */
	NONE = 2,
	/**
	 * Bold typing attribute.
	 */
	BOLD = 4,
	/**
	 * Italic typing attribute.
	 */
	ITALIC = 8,
	/**
	 * Underline typing attribute.
	 */
	UNDERLINE = 16,
	/**
	 * Strikethrough typing attribute.
	 */
	STRIKETHROUGH = 32,
}
alias WebKitEditorTypingAttributes EditorTypingAttributes;

/**
 * Enum values used to denote the various errors related to the #WebKitFaviconDatabase.
 */
public enum WebKitFaviconDatabaseError
{
	/**
	 * The #WebKitFaviconDatabase has not been initialized yet
	 */
	NOT_INITIALIZED = 0,
	/**
	 * There is not an icon available for the requested URL
	 */
	FAVICON_NOT_FOUND = 1,
	/**
	 * There might be an icon for the requested URL, but its data is unknown at the moment
	 */
	FAVICON_UNKNOWN = 2,
}
alias WebKitFaviconDatabaseError FaviconDatabaseError;

/**
 * Enum values used to specify search options.
 */
public enum WebKitFindOptions
{
	/**
	 * no search flags, this means a case
	 * sensitive, no wrap, forward only search.
	 */
	NONE = 0,
	/**
	 * case insensitive search.
	 */
	CASE_INSENSITIVE = 1,
	/**
	 * search text only at the
	 * begining of the words.
	 */
	AT_WORD_STARTS = 2,
	/**
	 * treat
	 * capital letters in the middle of words as word start.
	 */
	TREAT_MEDIAL_CAPITAL_AS_WORD_START = 4,
	/**
	 * search backwards.
	 */
	BACKWARDS = 8,
	/**
	 * if not present search will stop
	 * at the end of the document.
	 */
	WRAP_AROUND = 16,
}
alias WebKitFindOptions FindOptions;

/**
 * Enum values used for determining the hardware acceleration policy.
 *
 * Since: 2.16
 */
public enum WebKitHardwareAccelerationPolicy
{
	/**
	 * Hardware acceleration is enabled/disabled as request by web contents.
	 */
	ON_DEMAND = 0,
	/**
	 * Hardware acceleration is always enabled, even for websites not requesting it.
	 */
	ALWAYS = 1,
	/**
	 * Hardware acceleration is always disabled, even for websites requesting it.
	 */
	NEVER = 2,
}
alias WebKitHardwareAccelerationPolicy HardwareAccelerationPolicy;

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
 * Enum values used to describe hints that might be taken into account by input methods.
 *
 * Since: 2.28
 */
public enum WebKitInputHints
{
	/**
	 * No special behavior suggested
	 */
	NONE = 0,
	/**
	 * Suggest spell checking
	 */
	SPELLCHECK = 1,
	/**
	 * Suggest to not autocapitlize
	 */
	LOWERCASE = 2,
	/**
	 * Suggest to capitalize all text
	 */
	UPPERCASE_CHARS = 4,
	/**
	 * Suggest to capitalize the first character of each word
	 */
	UPPERCASE_WORDS = 8,
	/**
	 * Suggest to capitalize the first word of each sentence
	 */
	UPPERCASE_SENTENCES = 16,
	/**
	 * Suggest to not show an onscreen keyboard
	 */
	INHIBIT_OSK = 32,
}
alias WebKitInputHints InputHints;

/**
 * Enum values used to describe the primary purpose of the active editable element.
 *
 * Since: 2.28
 */
public enum WebKitInputPurpose
{
	/**
	 * Editable element expects any characters
	 */
	FREE_FORM = 0,
	/**
	 * Editable element expects digits
	 */
	DIGITS = 1,
	/**
	 * Editable element expects a number
	 */
	NUMBER = 2,
	/**
	 * Editable element expects a telephone
	 */
	PHONE = 3,
	/**
	 * Editable element expects a URL
	 */
	URL = 4,
	/**
	 * Editable element expects an email
	 */
	EMAIL = 5,
	/**
	 * Editable element expects a password
	 */
	PASSWORD = 6,
}
alias WebKitInputPurpose InputPurpose;

/**
 * Enum values used to denote the different events which can trigger
 * the detection of insecure content.
 */
public enum WebKitInsecureContentEvent
{
	/**
	 * Insecure content has been detected by
	 * trying to execute any kind of logic (e.g. a script) from an
	 * untrusted source.
	 */
	RUN = 0,
	/**
	 * Insecure content has been
	 * detected by trying to display any kind of resource (e.g. an image)
	 * from an untrusted source.
	 */
	DISPLAYED = 1,
}
alias WebKitInsecureContentEvent InsecureContentEvent;

/**
 * Enum values used to denote errors happening when executing JavaScript
 */
public enum WebKitJavascriptError
{
	/**
	 * An exception was raised in JavaScript execution
	 */
	FAILED = 699,
}
alias WebKitJavascriptError JavascriptError;

/**
 * Enum values used to denote the different events that happen during a
 * #WebKitWebView load operation.
 */
public enum WebKitLoadEvent
{
	/**
	 * A new load request has been made.
	 * No data has been received yet, empty structures have
	 * been allocated to perform the load; the load may still
	 * fail due to transport issues such as not being able to
	 * resolve a name, or connect to a port.
	 */
	STARTED = 0,
	/**
	 * A provisional data source received
	 * a server redirect.
	 */
	REDIRECTED = 1,
	/**
	 * The content started arriving for a page load.
	 * The necessary transport requirements are established, and the
	 * load is being performed.
	 */
	COMMITTED = 2,
	/**
	 * Load completed. All resources are done loading
	 * or there was an error during the load operation.
	 */
	FINISHED = 3,
}
alias WebKitLoadEvent LoadEvent;

/**
 * Enum values used to denote the various navigation types.
 */
public enum WebKitNavigationType
{
	/**
	 * The navigation was triggered by clicking a link.
	 */
	LINK_CLICKED = 0,
	/**
	 * The navigation was triggered by submitting a form.
	 */
	FORM_SUBMITTED = 1,
	/**
	 * The navigation was triggered by navigating forward or backward.
	 */
	BACK_FORWARD = 2,
	/**
	 * The navigation was triggered by reloading.
	 */
	RELOAD = 3,
	/**
	 * The navigation was triggered by resubmitting a form.
	 */
	FORM_RESUBMITTED = 4,
	/**
	 * The navigation was triggered by some other action.
	 */
	OTHER = 5,
}
alias WebKitNavigationType NavigationType;

/**
 * Enum values used to denote the various network errors.
 */
public enum WebKitNetworkError
{
	/**
	 * Generic load failure
	 */
	FAILED = 399,
	/**
	 * Load failure due to transport error
	 */
	TRANSPORT = 300,
	/**
	 * Load failure due to unknown protocol
	 */
	UNKNOWN_PROTOCOL = 301,
	/**
	 * Load failure due to cancellation
	 */
	CANCELLED = 302,
	/**
	 * Load failure due to missing file
	 */
	FILE_DOES_NOT_EXIST = 303,
}
alias WebKitNetworkError NetworkError;

/**
 * Enum values used to set the network proxy mode.
 *
 * Since: 2.16
 */
public enum WebKitNetworkProxyMode
{
	/**
	 * Use the default proxy of the system.
	 */
	DEFAULT = 0,
	/**
	 * Do not use any proxy.
	 */
	NO_PROXY = 1,
	/**
	 * Use custom proxy settings.
	 */
	CUSTOM = 2,
}
alias WebKitNetworkProxyMode NetworkProxyMode;

/**
 * Enum values used to denote the various plugin errors.
 */
public enum WebKitPluginError
{
	/**
	 * Generic plugin load failure
	 */
	FAILED = 299,
	/**
	 * Load failure due to missing plugin
	 */
	CANNOT_FIND_PLUGIN = 200,
	/**
	 * Load failure due to inability to load plugin
	 */
	CANNOT_LOAD_PLUGIN = 201,
	/**
	 * Load failure due to missing Java support that is required to load plugin
	 */
	JAVA_UNAVAILABLE = 202,
	/**
	 * Load failure due to connection cancellation
	 */
	CONNECTION_CANCELLED = 203,
	/**
	 * Load failure since plugin handles the load
	 */
	WILL_HANDLE_LOAD = 204,
}
alias WebKitPluginError PluginError;

/**
 * Enum values used for determining the type of a policy decision during
 * #WebKitWebView::decide-policy.
 */
public enum WebKitPolicyDecisionType
{
	/**
	 * This type of policy decision
	 * is requested when WebKit is about to navigate to a new page in either the
	 * main frame or a subframe. Acceptable policy decisions are either
	 * webkit_policy_decision_use() or webkit_policy_decision_ignore(). This
	 * type of policy decision is always a #WebKitNavigationPolicyDecision.
	 */
	NAVIGATION_ACTION = 0,
	/**
	 * This type of policy decision
	 * is requested when WebKit is about to create a new window. Acceptable policy
	 * decisions are either webkit_policy_decision_use() or
	 * webkit_policy_decision_ignore(). This type of policy decision is always
	 * a #WebKitNavigationPolicyDecision. These decisions are useful for implementing
	 * special actions for new windows, such as forcing the new window to open
	 * in a tab when a keyboard modifier is active or handling a special
	 * target attribute on &lt;a&gt; elements.
	 */
	NEW_WINDOW_ACTION = 1,
	/**
	 * This type of decision is used when WebKit has
	 * received a response for a network resource and is about to start the load.
	 * Note that these resources include all subresources of a page such as images
	 * and stylesheets as well as main documents. Appropriate policy responses to
	 * this decision are webkit_policy_decision_use(), webkit_policy_decision_ignore(),
	 * or webkit_policy_decision_download(). This type of policy decision is always
	 * a #WebKitResponsePolicyDecision. This decision is useful for forcing
	 * some types of resources to be downloaded rather than rendered in the WebView
	 * or to block the transfer of resources entirely.
	 */
	RESPONSE = 2,
}
alias WebKitPolicyDecisionType PolicyDecisionType;

/**
 * Enum values used to denote the various policy errors.
 */
public enum WebKitPolicyError
{
	/**
	 * Generic load failure due to policy error
	 */
	FAILED = 199,
	/**
	 * Load failure due to unsupported mime type
	 */
	CANNOT_SHOW_MIME_TYPE = 100,
	/**
	 * Load failure due to URI that can not be shown
	 */
	CANNOT_SHOW_URI = 101,
	/**
	 * Load failure due to frame load interruption by policy change
	 */
	FRAME_LOAD_INTERRUPTED_BY_POLICY_CHANGE = 102,
	/**
	 * Load failure due to port restriction
	 */
	CANNOT_USE_RESTRICTED_PORT = 103,
}
alias WebKitPolicyError PolicyError;

/**
 * Enum values used to denote the various print errors.
 */
public enum WebKitPrintError
{
	/**
	 * Unspecified error during a print operation
	 */
	GENERAL = 599,
	/**
	 * Selected printer cannot be found
	 */
	PRINTER_NOT_FOUND = 500,
	/**
	 * Invalid page range
	 */
	INVALID_PAGE_RANGE = 501,
}
alias WebKitPrintError PrintError;

/**
 * Enum values representing the response of the print dialog shown with
 * webkit_print_operation_run_dialog().
 */
public enum WebKitPrintOperationResponse
{
	/**
	 * Print button was clicked in print dialog
	 */
	PRINT = 0,
	/**
	 * Print dialog was cancelled
	 */
	CANCEL = 1,
}
alias WebKitPrintOperationResponse PrintOperationResponse;

/**
 * Enum values used for determining the #WebKitWebContext process model.
 *
 * Since: 2.4
 */
public enum WebKitProcessModel
{
	/**
	 * Deprecated 2.26.
	 */
	SHARED_SECONDARY_PROCESS = 0,
	/**
	 * Use one process
	 * for each #WebKitWebView, while still allowing for some of them to
	 * share a process in certain situations. The main advantage
	 * of this process model is that the rendering process for a web view
	 * can crash while the rest of the views keep working normally. This
	 * process model is indicated for applications which may use a number
	 * of web views and the content of in each must not interfere with the
	 * rest — for example a full-fledged web browser with support for
	 * multiple tabs.
	 */
	MULTIPLE_SECONDARY_PROCESSES = 1,
}
alias WebKitProcessModel ProcessModel;

/**
 * Enum values to specify the different ways in which a #WebKitWebView
 * can save its current web page into a self-contained file.
 */
public enum WebKitSaveMode
{
	/**
	 * Save the current page using the MHTML format.
	 */
	MHTML = 0,
}
alias WebKitSaveMode SaveMode;

/**
 * Enum values used for determining the type of #WebKitScriptDialog
 */
public enum WebKitScriptDialogType
{
	/**
	 * Alert script dialog, used to show a
	 * message to the user.
	 */
	ALERT = 0,
	/**
	 * Confirm script dialog, used to ask
	 * confirmation to the user.
	 */
	CONFIRM = 1,
	/**
	 * Prompt script dialog, used to ask
	 * information to the user.
	 */
	PROMPT = 2,
	/**
	 * Before unload confirm dialog,
	 * used to ask confirmation to leave the current page to the user. Since 2.12
	 */
	BEFORE_UNLOAD_CONFIRM = 3,
}
alias WebKitScriptDialogType ScriptDialogType;

/**
 * Enum values used to denote errors happening when creating snapshots of #WebKitWebView
 */
public enum WebKitSnapshotError
{
	/**
	 * An error occurred when creating a webpage snapshot.
	 */
	CREATE = 799,
}
alias WebKitSnapshotError SnapshotError;

/**
 * Enum values used to specify options when taking a snapshot
 * from a #WebKitWebView.
 */
public enum WebKitSnapshotOptions
{
	/**
	 * Do not include any special options.
	 */
	NONE = 0,
	/**
	 * Whether to include in the
	 * snapshot the highlight of the selected content.
	 */
	INCLUDE_SELECTION_HIGHLIGHTING = 1,
	/**
	 * Do not fill the background with white before
	 * rendering the snapshot. Since 2.8
	 */
	TRANSPARENT_BACKGROUND = 2,
}
alias WebKitSnapshotOptions SnapshotOptions;

/**
 * Enum values used to specify the region from which to get a #WebKitWebView
 * snapshot
 */
public enum WebKitSnapshotRegion
{
	/**
	 * Specifies a snapshot only for the area that is
	 * visible in the webview
	 */
	VISIBLE = 0,
	/**
	 * A snapshot of the entire document.
	 */
	FULL_DOCUMENT = 1,
}
alias WebKitSnapshotRegion SnapshotRegion;

/**
 * Enum values used to denote the TLS errors policy.
 */
public enum WebKitTLSErrorsPolicy
{
	/**
	 * Ignore TLS errors.
	 */
	IGNORE = 0,
	/**
	 * TLS errors will emit
	 * #WebKitWebView::load-failed-with-tls-errors and, if the signal is handled,
	 * finish the load. In case the signal is not handled,
	 * #WebKitWebView::load-failed is emitted before the load finishes.
	 */
	FAIL = 1,
}
alias WebKitTLSErrorsPolicy TLSErrorsPolicy;

public enum WebKitUserContentFilterError
{
	/**
	 * The JSON source for a content filter is invalid.
	 */
	INVALID_SOURCE = 0,
	/**
	 * The requested content filter could not be found.
	 */
	NOT_FOUND = 1,
}
alias WebKitUserContentFilterError UserContentFilterError;

/**
 * Specifies in which frames user style sheets are to be inserted in.
 *
 * Since: 2.6
 */
public enum WebKitUserContentInjectedFrames
{
	/**
	 * Insert the user style
	 * sheet in all the frames loaded by the web view, including
	 * nested frames. This is the default.
	 */
	ALL_FRAMES = 0,
	/**
	 * Insert the user style
	 * sheet *only* in the top-level frame loaded by the web view,
	 * and *not* in the nested frames.
	 */
	TOP_FRAME = 1,
}
alias WebKitUserContentInjectedFrames UserContentInjectedFrames;

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
	MESSAGE = 0,
}
alias WebKitUserMessageError UserMessageError;

/**
 * Specifies at which place of documents an user script will be inserted.
 *
 * Since: 2.6
 */
public enum WebKitUserScriptInjectionTime
{
	/**
	 * Insert the code of the user
	 * script at the beginning of loaded documents. This is the default.
	 */
	START = 0,
	/**
	 * Insert the code of the user
	 * script at the end of the loaded documents.
	 */
	END = 1,
}
alias WebKitUserScriptInjectionTime UserScriptInjectionTime;

/**
 * Specifies how to treat an user style sheet.
 *
 * Since: 2.6
 */
public enum WebKitUserStyleLevel
{
	/**
	 * The style sheet is an user style sheet,
	 * its contents always override other style sheets. This is the default.
	 */
	USER = 0,
	/**
	 * The style sheet will be treated as if
	 * it was provided by the loaded documents. That means other user style
	 * sheets may still override it.
	 */
	AUTHOR = 1,
}
alias WebKitUserStyleLevel UserStyleLevel;

/**
 * Enum values used to specify the reason why the web process terminated abnormally.
 *
 * Since: 2.20
 */
public enum WebKitWebProcessTerminationReason
{
	/**
	 * the web process crashed.
	 */
	CRASHED = 0,
	/**
	 * the web process exceeded the memory limit.
	 */
	EXCEEDED_MEMORY_LIMIT = 1,
}
alias WebKitWebProcessTerminationReason WebProcessTerminationReason;

/**
 * Enum values with flags representing types of Website data.
 *
 * Since: 2.16
 */
public enum WebKitWebsiteDataTypes
{
	/**
	 * Memory cache.
	 */
	MEMORY_CACHE = 1,
	/**
	 * HTTP disk cache.
	 */
	DISK_CACHE = 2,
	/**
	 * Offline web application cache.
	 */
	OFFLINE_APPLICATION_CACHE = 4,
	/**
	 * Session storage data.
	 */
	SESSION_STORAGE = 8,
	/**
	 * Local storage data.
	 */
	LOCAL_STORAGE = 16,
	/**
	 * WebSQL databases. Deprecated 2.24
	 */
	WEBSQL_DATABASES = 32,
	/**
	 * IndexedDB databases.
	 */
	INDEXEDDB_DATABASES = 64,
	/**
	 * Plugins data.
	 */
	PLUGIN_DATA = 128,
	/**
	 * Cookies.
	 */
	COOKIES = 256,
	/**
	 * Hash salt used to generate the device ids used by webpages. Since 2.24
	 */
	DEVICE_ID_HASH_SALT = 512,
	/**
	 * HSTS cache. Since 2.26
	 */
	HSTS_CACHE = 1024,
	/**
	 * Intelligent Tracking Prevention data. Since 2.30.
	 */
	ITP = 2048,
	/**
	 * Service worker registrations. Since 2.30
	 */
	SERVICE_WORKER_REGISTRATIONS = 4096,
	/**
	 * DOM (CacheStorage) cache. Since 2.30
	 */
	DOM_CACHE = 8192,
	/**
	 * All types.
	 */
	ALL = 16383,
}
alias WebKitWebsiteDataTypes WebsiteDataTypes;

struct WebKitApplicationInfo;

struct WebKitAuthenticationRequest
{
	GObject parent;
	WebKitAuthenticationRequestPrivate* priv;
}

struct WebKitAuthenticationRequestClass
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

struct WebKitAuthenticationRequestPrivate;

struct WebKitAutomationSession
{
	GObject parent;
	WebKitAutomationSessionPrivate* priv;
}

struct WebKitAutomationSessionClass
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

struct WebKitAutomationSessionPrivate;

struct WebKitBackForwardList
{
	GObject parent;
	WebKitBackForwardListPrivate* priv;
}

struct WebKitBackForwardListClass
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

struct WebKitBackForwardListItem
{
	GObject parent;
	WebKitBackForwardListItemPrivate* priv;
}

struct WebKitBackForwardListItemClass
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

struct WebKitBackForwardListItemPrivate;

struct WebKitBackForwardListPrivate;

struct WebKitColorChooserRequest
{
	GObject parent;
	WebKitColorChooserRequestPrivate* priv;
}

struct WebKitColorChooserRequestClass
{
	GObjectClass parentClass;
}

struct WebKitColorChooserRequestPrivate;

struct WebKitContextMenu
{
	GObject parent;
	WebKitContextMenuPrivate* priv;
}

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

struct WebKitContextMenuItem
{
	GObject parent;
	WebKitContextMenuItemPrivate* priv;
}

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

struct WebKitCookieManager
{
	GObject parent;
	WebKitCookieManagerPrivate* priv;
}

struct WebKitCookieManagerClass
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

struct WebKitCookieManagerPrivate;

struct WebKitCredential;

struct WebKitDeviceInfoPermissionRequest
{
	GObject parent;
	WebKitDeviceInfoPermissionRequestPrivate* priv;
}

struct WebKitDeviceInfoPermissionRequestClass
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

struct WebKitDeviceInfoPermissionRequestPrivate;

struct WebKitDownload
{
	GObject parent;
	WebKitDownloadPrivate* priv;
}

struct WebKitDownloadClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(WebKitDownload* download, const(char)* suggestedFilename) decideDestination;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitDownloadPrivate;

struct WebKitEditorState
{
	GObject parent;
	WebKitEditorStatePrivate* priv;
}

struct WebKitEditorStateClass
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

struct WebKitEditorStatePrivate;

struct WebKitFaviconDatabase
{
	GObject parent;
	WebKitFaviconDatabasePrivate* priv;
}

struct WebKitFaviconDatabaseClass
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

struct WebKitFaviconDatabasePrivate;

struct WebKitFileChooserRequest
{
	GObject parent;
	WebKitFileChooserRequestPrivate* priv;
}

struct WebKitFileChooserRequestClass
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

struct WebKitFileChooserRequestPrivate;

struct WebKitFindController
{
	GObject parent;
	WebKitFindControllerPrivate* priv;
}

struct WebKitFindControllerClass
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

struct WebKitFindControllerPrivate;

struct WebKitFormSubmissionRequest
{
	GObject parent;
	WebKitFormSubmissionRequestPrivate* priv;
}

struct WebKitFormSubmissionRequestClass
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

struct WebKitFormSubmissionRequestPrivate;

struct WebKitGeolocationManager
{
	GObject parent;
	WebKitGeolocationManagerPrivate* priv;
}

struct WebKitGeolocationManagerClass
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

struct WebKitGeolocationManagerPrivate;

struct WebKitGeolocationPermissionRequest
{
	GObject parent;
	WebKitGeolocationPermissionRequestPrivate* priv;
}

struct WebKitGeolocationPermissionRequestClass
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

struct WebKitGeolocationPermissionRequestPrivate;

struct WebKitGeolocationPosition;

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

struct WebKitITPFirstParty;

struct WebKitITPThirdParty;

struct WebKitInputMethodContext
{
	GObject parent;
	WebKitInputMethodContextPrivate* priv;
}

struct WebKitInputMethodContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) preeditStarted;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) preeditChanged;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) preeditFinished;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, const(char)* text) committed;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, int offset, uint nChars) deleteSurrounding;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, int enabled) setEnablePreedit;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, char** text, GList** underlines, uint* cursorOffset) getPreedit;
	/**
	 *
	 * Params:
	 *     context = a #WebKitInputMethodContext
	 *     keyEvent = the key event to filter
	 * Returns: %TRUE if the key event was handled, or %FALSE otherwise
	 */
	extern(C) int function(WebKitInputMethodContext* context, GdkEventKey* keyEvent) filterKeyEvent;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) notifyFocusIn;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) notifyFocusOut;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, int x, int y, int width, int height) notifyCursorArea;
	/** */
	extern(C) void function(WebKitInputMethodContext* context, const(char)* text, uint length, uint cursorIndex, uint selectionIndex) notifySurrounding;
	/** */
	extern(C) void function(WebKitInputMethodContext* context) reset;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
	/** */
	extern(C) void function() WebkitReserved4;
	/** */
	extern(C) void function() WebkitReserved5;
	/** */
	extern(C) void function() WebkitReserved6;
	/** */
	extern(C) void function() WebkitReserved7;
}

struct WebKitInputMethodContextPrivate;

struct WebKitInputMethodUnderline;

struct WebKitInstallMissingMediaPluginsPermissionRequest
{
	GObject parent;
	WebKitInstallMissingMediaPluginsPermissionRequestPrivate* priv;
}

struct WebKitInstallMissingMediaPluginsPermissionRequestClass
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

struct WebKitInstallMissingMediaPluginsPermissionRequestPrivate;

struct WebKitJavascriptResult;

struct WebKitMimeInfo;

struct WebKitNavigationAction;

struct WebKitNavigationPolicyDecision
{
	WebKitPolicyDecision parent;
	WebKitNavigationPolicyDecisionPrivate* priv;
}

struct WebKitNavigationPolicyDecisionClass
{
	WebKitPolicyDecisionClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitNavigationPolicyDecisionPrivate;

struct WebKitNetworkProxySettings;

struct WebKitNotification
{
	GObject parent;
	WebKitNotificationPrivate* priv;
}

struct WebKitNotificationClass
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
	/** */
	extern(C) void function() WebkitReserved4;
	/** */
	extern(C) void function() WebkitReserved5;
}

struct WebKitNotificationPermissionRequest
{
	GObject parent;
	WebKitNotificationPermissionRequestPrivate* priv;
}

struct WebKitNotificationPermissionRequestClass
{
	GObjectClass parentClass;
}

struct WebKitNotificationPermissionRequestPrivate;

struct WebKitNotificationPrivate;

struct WebKitOptionMenu
{
	GObject parent;
	WebKitOptionMenuPrivate* priv;
}

struct WebKitOptionMenuClass
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

struct WebKitOptionMenuItem;

struct WebKitOptionMenuPrivate;

struct WebKitPermissionRequest;

struct WebKitPermissionRequestIface
{
	GTypeInterface parentInterface;
	/** */
	extern(C) void function(WebKitPermissionRequest* request) allow;
	/** */
	extern(C) void function(WebKitPermissionRequest* request) deny;
}

struct WebKitPlugin
{
	GObject parent;
	WebKitPluginPrivate* priv;
}

struct WebKitPluginClass
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

struct WebKitPluginPrivate;

struct WebKitPointerLockPermissionRequest
{
	GObject parent;
	WebKitPointerLockPermissionRequestPrivate* priv;
}

struct WebKitPointerLockPermissionRequestClass
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

struct WebKitPointerLockPermissionRequestPrivate;

struct WebKitPolicyDecision
{
	GObject parent;
	WebKitPolicyDecisionPrivate* priv;
}

struct WebKitPolicyDecisionClass
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

struct WebKitPolicyDecisionPrivate;

struct WebKitPrintCustomWidget
{
	GObject parent;
	WebKitPrintCustomWidgetPrivate* priv;
}

struct WebKitPrintCustomWidgetClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(WebKitPrintCustomWidget* printCustomWidget, GtkWidget* widget) apply;
	/** */
	extern(C) void function(WebKitPrintCustomWidget* printCustomWidget, GtkWidget* widget, GtkPageSetup* pageSetup, GtkPrintSettings* printSettings) update;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitPrintCustomWidgetPrivate;

struct WebKitPrintOperation
{
	GObject parent;
	WebKitPrintOperationPrivate* priv;
}

struct WebKitPrintOperationClass
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

struct WebKitPrintOperationPrivate;

struct WebKitResponsePolicyDecision
{
	WebKitPolicyDecision parent;
	WebKitResponsePolicyDecisionPrivate* priv;
}

struct WebKitResponsePolicyDecisionClass
{
	WebKitPolicyDecisionClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitResponsePolicyDecisionPrivate;

struct WebKitScriptDialog;

struct WebKitSecurityManager
{
	GObject parent;
	WebKitSecurityManagerPrivate* priv;
}

struct WebKitSecurityManagerClass
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

struct WebKitSecurityManagerPrivate;

struct WebKitSecurityOrigin;

struct WebKitSettings
{
	GObject parentInstance;
	WebKitSettingsPrivate* priv;
}

struct WebKitSettingsClass
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

struct WebKitSettingsPrivate;

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

struct WebKitURISchemeRequest
{
	GObject parent;
	WebKitURISchemeRequestPrivate* priv;
}

struct WebKitURISchemeRequestClass
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

struct WebKitURISchemeRequestPrivate;

struct WebKitUserContentFilter;

struct WebKitUserContentFilterStore
{
	GObject parent;
	WebKitUserContentFilterStorePrivate* priv;
}

struct WebKitUserContentFilterStoreClass
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

struct WebKitUserContentFilterStorePrivate;

struct WebKitUserContentManager
{
	GObject parent;
	WebKitUserContentManagerPrivate* priv;
}

struct WebKitUserContentManagerClass
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

struct WebKitUserContentManagerPrivate;

struct WebKitUserMediaPermissionRequest
{
	GObject parent;
	WebKitUserMediaPermissionRequestPrivate* priv;
}

struct WebKitUserMediaPermissionRequestClass
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

struct WebKitUserMediaPermissionRequestPrivate;

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

struct WebKitUserScript;

struct WebKitUserStyleSheet;

struct WebKitWebContext
{
	GObject parent;
	WebKitWebContextPrivate* priv;
}

struct WebKitWebContextClass
{
	GObjectClass parent;
	/** */
	extern(C) void function(WebKitWebContext* context, WebKitDownload* download) downloadStarted;
	/** */
	extern(C) void function(WebKitWebContext* context) initializeWebExtensions;
	/** */
	extern(C) void function(WebKitWebContext* context) initializeNotificationPermissions;
	/** */
	extern(C) void function(WebKitWebContext* context, WebKitAutomationSession* session) automationStarted;
	/** */
	extern(C) int function(WebKitWebContext* context, WebKitUserMessage* message) userMessageReceived;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
}

struct WebKitWebContextPrivate;

struct WebKitWebInspector
{
	GObject parent;
	WebKitWebInspectorPrivate* priv;
}

struct WebKitWebInspectorClass
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

struct WebKitWebInspectorPrivate;

struct WebKitWebResource
{
	GObject parent;
	WebKitWebResourcePrivate* priv;
}

struct WebKitWebResourceClass
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

struct WebKitWebResourcePrivate;

struct WebKitWebView
{
	WebKitWebViewBase parent;
	WebKitWebViewPrivate* priv;
}

struct WebKitWebViewBase
{
	GtkContainer parentInstance;
	WebKitWebViewBasePrivate* priv;
}

struct WebKitWebViewBaseClass
{
	GtkContainerClass parentClass;
	/** */
	extern(C) void function() WebkitReserved0;
	/** */
	extern(C) void function() WebkitReserved1;
	/** */
	extern(C) void function() WebkitReserved2;
	/** */
	extern(C) void function() WebkitReserved3;
}

struct WebKitWebViewBasePrivate;

struct WebKitWebViewClass
{
	WebKitWebViewBaseClass parent;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitLoadEvent loadEvent) loadChanged;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitLoadEvent loadEvent, const(char)* failingUri, GError* error) loadFailed;
	/** */
	extern(C) GtkWidget* function(WebKitWebView* webView, WebKitNavigationAction* navigationAction) create;
	/** */
	extern(C) void function(WebKitWebView* webView) readyToShow;
	/** */
	extern(C) void function(WebKitWebView* webView) runAsModal;
	/** */
	extern(C) void function(WebKitWebView* webView) close;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitScriptDialog* dialog) scriptDialog;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitPolicyDecision* decision, WebKitPolicyDecisionType type) decidePolicy;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitPermissionRequest* permissionRequest) permissionRequest;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitHitTestResult* hitTestResult, uint modifiers) mouseTargetChanged;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitPrintOperation* printOperation) print;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitWebResource* resource, WebKitURIRequest* request) resourceLoadStarted;
	/** */
	extern(C) int function(WebKitWebView* webView) enterFullscreen;
	/** */
	extern(C) int function(WebKitWebView* webView) leaveFullscreen;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitFileChooserRequest* request) runFileChooser;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitContextMenu* contextMenu, GdkEvent* event, WebKitHitTestResult* hitTestResult) contextMenu;
	/** */
	extern(C) void function(WebKitWebView* webView) contextMenuDismissed;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitFormSubmissionRequest* request) submitForm;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitInsecureContentEvent event) insecureContentDetected;
	/** */
	extern(C) int function(WebKitWebView* webView) webProcessCrashed;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitAuthenticationRequest* request) authenticate;
	/** */
	extern(C) int function(WebKitWebView* webView, const(char)* failingUri, GTlsCertificate* certificate, GTlsCertificateFlags errors) loadFailedWithTlsErrors;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitNotification* notification) showNotification;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitColorChooserRequest* request) runColorChooser;
	/** */
	extern(C) int function(WebKitWebView* webView, GdkRectangle* rectangle, WebKitOptionMenu* menu) showOptionMenu;
	/** */
	extern(C) void function(WebKitWebView* webView, WebKitWebProcessTerminationReason reason) webProcessTerminated;
	/** */
	extern(C) int function(WebKitWebView* webView, WebKitUserMessage* message) userMessageReceived;
	/** */
	extern(C) void function() WebkitReserved0;
}

struct WebKitWebViewPrivate;

struct WebKitWebViewSessionState;

struct WebKitWebsiteData;

struct WebKitWebsiteDataAccessPermissionRequest
{
	GObject parent;
	WebKitWebsiteDataAccessPermissionRequestPrivate* priv;
}

struct WebKitWebsiteDataAccessPermissionRequestClass
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

struct WebKitWebsiteDataAccessPermissionRequestPrivate;

struct WebKitWebsiteDataManager
{
	GObject parent;
	WebKitWebsiteDataManagerPrivate* priv;
}

struct WebKitWebsiteDataManagerClass
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

struct WebKitWebsiteDataManagerPrivate;

struct WebKitWebsitePolicies
{
	GObject parent;
	WebKitWebsitePoliciesPrivate* priv;
}

struct WebKitWebsitePoliciesClass
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

struct WebKitWebsitePoliciesPrivate;

struct WebKitWindowProperties
{
	GObject parent;
	WebKitWindowPropertiesPrivate* priv;
}

struct WebKitWindowPropertiesClass
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

struct WebKitWindowPropertiesPrivate;

/**
 * Type definition for a function that will be called back when an URI request is
 * made for a user registered URI scheme.
 *
 * Params:
 *     request = the #WebKitURISchemeRequest
 *     userData = user data passed to the callback
 */
public alias extern(C) void function(WebKitURISchemeRequest* request, void* userData) WebKitURISchemeRequestCallback;

/**
 * The copy clipboard command. Copies the current selection inside
 * a #WebKitWebView to the clipboard.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). In general it's
 * possible to copy to the clipboard when there is an active selection
 * inside the #WebKitWebView.
 */
enum EDITING_COMMAND_COPY = "Copy";
alias WEBKIT_EDITING_COMMAND_COPY = EDITING_COMMAND_COPY;

/**
 * The create link command. Creates a link element that is inserted at
 * the current cursor position. If there's a selection, the selected text
 * will be used as the link text, otherwise the URL itself will be used.
 * It receives the link URL as argument. This command should be executed
 * with webkit_web_view_execute_editing_command_with_argument()
 */
enum EDITING_COMMAND_CREATE_LINK = "CreateLink";
alias WEBKIT_EDITING_COMMAND_CREATE_LINK = EDITING_COMMAND_CREATE_LINK;

/**
 * The cut clipboard command. Copies the current selection inside
 * a #WebKitWebView to the clipboard and deletes the selected content.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). In general it's
 * possible to cut to the clipboard when the #WebKitWebView content is
 * editable and there is an active selection.
 */
enum EDITING_COMMAND_CUT = "Cut";
alias WEBKIT_EDITING_COMMAND_CUT = EDITING_COMMAND_CUT;

/**
 * The insert image command. Creates an image element that is inserted at
 * the current cursor position. It receives an URI as argument,
 * that is used as the image source. This command should be executed with
 * webkit_web_view_execute_editing_command_with_argument().
 */
enum EDITING_COMMAND_INSERT_IMAGE = "InsertImage";
alias WEBKIT_EDITING_COMMAND_INSERT_IMAGE = EDITING_COMMAND_INSERT_IMAGE;

/**
 * The paste clipboard command. Pastes the contents of the clipboard to
 * a #WebKitWebView.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). In general it's possible
 * to paste from the clipboard when the #WebKitWebView content is editable
 * and clipboard is not empty.
 */
enum EDITING_COMMAND_PASTE = "Paste";
alias WEBKIT_EDITING_COMMAND_PASTE = EDITING_COMMAND_PASTE;

/**
 * The paste as plaintext clipboard command. Pastes the contents of the
 * clipboard to a #WebKitWebView, with formatting removed.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). In general it's possible
 * to paste from the clipboard when the #WebKitWebView content is editable
 * and clipboard is not empty.
 */
enum EDITING_COMMAND_PASTE_AS_PLAIN_TEXT = "PasteAsPlainText";
alias WEBKIT_EDITING_COMMAND_PASTE_AS_PLAIN_TEXT = EDITING_COMMAND_PASTE_AS_PLAIN_TEXT;

/**
 * The redo command. Redoes a previously undone editing command in
 * a #WebKitWebView.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). It's only possible
 * to redo a command when it has been previously undone.
 */
enum EDITING_COMMAND_REDO = "Redo";
alias WEBKIT_EDITING_COMMAND_REDO = EDITING_COMMAND_REDO;

/**
 * The select all command. Selects all the content of the current text field in
 * a #WebKitWebView.
 * It is always possible to select all text, no matter whether the
 * #WebKitWebView content is editable or not. You can still check it
 * with webkit_web_view_can_execute_editing_command().
 */
enum EDITING_COMMAND_SELECT_ALL = "SelectAll";
alias WEBKIT_EDITING_COMMAND_SELECT_ALL = EDITING_COMMAND_SELECT_ALL;

/**
 * The undo command. Undoes the last editing command in a #WebKitWebView.
 * You can check whether it's possible to execute the command with
 * webkit_web_view_can_execute_editing_command(). It's only possible
 * to undo a command after a previously executed editing operation.
 */
enum EDITING_COMMAND_UNDO = "Undo";
alias WEBKIT_EDITING_COMMAND_UNDO = EDITING_COMMAND_UNDO;

/**
 * Like webkit_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MAJOR_VERSION = 2;
alias WEBKIT_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Like webkit_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MICRO_VERSION = 1;
alias WEBKIT_MICRO_VERSION = MICRO_VERSION;

/**
 * Like webkit_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MINOR_VERSION = 30;
alias WEBKIT_MINOR_VERSION = MINOR_VERSION;
