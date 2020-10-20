module webkit2webextension.WebPage;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import glib.PtrArray;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2webextension.ConsoleMessage;
private import webkit2webextension.ContextMenu;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMElement;
private import webkit2webextension.Frame;
private import webkit2webextension.URIRequest;
private import webkit2webextension.URIResponse;
private import webkit2webextension.UserMessage;
private import webkit2webextension.WebEditor;
private import webkit2webextension.WebHitTestResult;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class WebPage : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebPage* webKitWebPage;

	/** Get the main Gtk struct */
	public WebKitWebPage* getWebPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebPage* webKitWebPage, bool ownedRef = false)
	{
		this.webKitWebPage = webKitWebPage;
		super(cast(GObject*)webKitWebPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_page_get_type();
	}

	/**
	 * Get the #WebKitDOMDocument currently loaded in @web_page
	 *
	 * Returns: the #WebKitDOMDocument currently loaded, or %NULL
	 *     if no document is currently loaded.
	 */
	public DOMDocument getDomDocument()
	{
		auto __p = webkit_web_page_get_dom_document(webKitWebPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocument)(cast(WebKitDOMDocument*) __p);
	}

	/**
	 * Gets the #WebKitWebEditor of a #WebKitWebPage.
	 *
	 * Returns: the #WebKitWebEditor
	 *
	 * Since: 2.10
	 */
	public WebEditor getEditor()
	{
		auto __p = webkit_web_page_get_editor(webKitWebPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebEditor)(cast(WebKitWebEditor*) __p);
	}

	/**
	 * Get the identifier of the #WebKitWebPage
	 *
	 * Returns: the identifier of @web_page
	 */
	public ulong getId()
	{
		return webkit_web_page_get_id(webKitWebPage);
	}

	/**
	 * Returns the main frame of a #WebKitWebPage.
	 *
	 * Returns: the #WebKitFrame that is the main frame of @web_page
	 *
	 * Since: 2.2
	 */
	public Frame getMainFrame()
	{
		auto __p = webkit_web_page_get_main_frame(webKitWebPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Frame)(cast(WebKitFrame*) __p);
	}

	/**
	 * Returns the current active URI of @web_page.
	 *
	 * You can monitor the active URI by connecting to the notify::uri
	 * signal of @web_page.
	 *
	 * Returns: the current active URI of @web_view or %NULL if nothing has been
	 *     loaded yet.
	 */
	public string getUri()
	{
		return Str.toString(webkit_web_page_get_uri(webKitWebPage));
	}

	/**
	 * Send @message to the #WebKitWebView corresponding to @web_page. If @message is floating, it's consumed.
	 *
	 * If you don't expect any reply, or you simply want to ignore it, you can pass %NULL as @callback.
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_page_send_message_to_view_finish() to get the message reply.
	 *
	 * Params:
	 *     message = a #WebKitUserMessage
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = (nullable): A #GAsyncReadyCallback to call when the request is satisfied or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.28
	 */
	public void sendMessageToView(UserMessage message, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_page_send_message_to_view(webKitWebPage, (message is null) ? null : message.getUserMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_page_send_message_to_view().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitUserMessage with the reply or %NULL in case of error.
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 */
	public UserMessage sendMessageToViewFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_page_send_message_to_view_finish(webKitWebPage, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserMessage)(cast(WebKitUserMessage*) __p, true);
	}

	/**
	 * Emitted when a message is sent to the console. This can be a message
	 * produced by the use of JavaScript console API, a JavaScript exception,
	 * a security error or other errors, warnings, debug or log messages.
	 * The @console_message contains information of the message.
	 *
	 * Params:
	 *     consoleMessage = the #WebKitConsoleMessage
	 *
	 * Since: 2.12
	 */
	gulong addOnConsoleMessageSent(void delegate(ConsoleMessage, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "console-message-sent", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted before a context menu is displayed in the UI Process to
	 * give the application a chance to customize the proposed menu,
	 * build its own context menu or pass user data to the UI Process.
	 * This signal is useful when the information available in the UI Process
	 * is not enough to build or customize the context menu, for example, to
	 * add menu entries depending on the #WebKitDOMNode at the coordinates of the
	 * @hit_test_result. Otherwise, it's recommended to use #WebKitWebView::context-menu
	 * signal instead.
	 *
	 * Params:
	 *     contextMenu = the proposed #WebKitContextMenu
	 *     hitTestResult = a #WebKitWebHitTestResult
	 *
	 * Returns: %TRUE if the proposed @context_menu has been modified, or %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	gulong addOnContextMenu(bool delegate(ContextMenu, WebHitTestResult, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "context-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the DOM document of a #WebKitWebPage has been
	 * loaded.
	 *
	 * You can wait for this signal to get the DOM document with
	 * webkit_web_page_get_dom_document().
	 */
	gulong addOnDocumentLoaded(void delegate(WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "document-loaded", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after form elements (or form associated elements) are associated to a particular web
	 * page. This is useful to implement form auto filling for web pages where form fields are added
	 * dynamically. This signal might be emitted multiple times for the same web page.
	 *
	 * Note that this signal could be also emitted when form controls are moved between forms. In
	 * that case, the @elements array carries the list of those elements which have moved.
	 *
	 * Clients should take a reference to the members of the @elements array if it is desired to
	 * keep them alive after the signal handler returns.
	 *
	 * Deprecated: , use #WebKitWebPage::form-controls-associated-for-frame instead.
	 *
	 * Params:
	 *     elements = a #GPtrArray of
	 *         #WebKitDOMElement with the list of forms in the page
	 *
	 * Since: 2.16
	 */
	gulong addOnFormControlsAssociated(void delegate(PtrArray, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "form-controls-associated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after form elements (or form associated elements) are associated to a particular web
	 * page. This is useful to implement form auto filling for web pages where form fields are added
	 * dynamically. This signal might be emitted multiple times for the same web page.
	 *
	 * Note that this signal could be also emitted when form controls are moved between forms. In
	 * that case, the @elements array carries the list of those elements which have moved.
	 *
	 * Clients should take a reference to the members of the @elements array if it is desired to
	 * keep them alive after the signal handler returns.
	 *
	 * Params:
	 *     elements = a #GPtrArray of
	 *         #WebKitDOMElement with the list of forms in the page
	 *     frame = the #WebKitFrame
	 *
	 * Since: 2.26
	 */
	gulong addOnFormControlsAssociatedForFrame(void delegate(PtrArray, Frame, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "form-controls-associated-for-frame", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when @request is about to be sent to
	 * the server. This signal can be used to modify the #WebKitURIRequest
	 * that will be sent to the server. You can also cancel the resource load
	 * operation by connecting to this signal and returning %TRUE.
	 *
	 * In case of a server redirection this signal is
	 * emitted again with the @request argument containing the new
	 * request to be sent to the server due to the redirection and the
	 * @redirected_response parameter containing the response
	 * received by the server for the initial request.
	 *
	 * Modifications to the #WebKitURIRequest and its associated
	 * #SoupMessageHeaders will be taken into account when the request
	 * is sent over the network.
	 *
	 * Params:
	 *     request = a #WebKitURIRequest
	 *     redirectedResponse = a #WebKitURIResponse, or %NULL
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to continue emission of the event.
	 */
	gulong addOnSendRequest(bool delegate(URIRequest, URIResponse, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "send-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a #WebKitUserMessage is received from the
	 * #WebKitWebView corresponding to @web_page. You can reply to the message
	 * using webkit_user_message_send_reply().
	 *
	 * You can handle the user message asynchronously by calling g_object_ref() on
	 * @message and returning %TRUE. If the last reference of @message is removed
	 * and the message has been replied, the operation in the #WebKitWebView will
	 * finish with error %WEBKIT_USER_MESSAGE_UNHANDLED_MESSAGE.
	 *
	 * Params:
	 *     message = the #WebKitUserMessage received
	 *
	 * Returns: %TRUE if the message was handled, or %FALSE otherwise.
	 *
	 * Since: 2.28
	 */
	gulong addOnUserMessageReceived(bool delegate(UserMessage, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "user-message-received", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted to indicate various points during form
	 * submission. @step indicates the current stage of form submission.
	 *
	 * If this signal is emitted with %WEBKIT_FORM_SUBMISSION_WILL_SEND_DOM_EVENT,
	 * then the DOM submit event is about to be emitted. JavaScript code
	 * may rely on the submit event to detect that the user has clicked
	 * on a submit button, and to possibly cancel the form submission
	 * before %WEBKIT_FORM_SUBMISSION_WILL_COMPLETE. However, beware
	 * that, for historical reasons, the submit event is not emitted at
	 * all if the form submission is triggered by JavaScript. For these
	 * reasons, %WEBKIT_FORM_SUBMISSION_WILL_SEND_DOM_EVENT may not
	 * be used to reliably detect whether a form will be submitted.
	 * Instead, use it to detect if a user has clicked on a form's
	 * submit button even if JavaScript later cancels the form
	 * submission, or to read the values of the form's fields even if
	 * JavaScript later clears certain fields before submitting. This
	 * may be needed, for example, to implement a robust browser
	 * password manager, as some misguided websites may use such
	 * techniques to attempt to thwart password managers.
	 *
	 * If this signal is emitted with %WEBKIT_FORM_SUBMISSION_WILL_COMPLETE,
	 * the form will imminently be submitted. It can no longer be
	 * cancelled. This event always occurs immediately before a form is
	 * submitted to its target, so use this event to reliably detect
	 * when a form is submitted. This event occurs after
	 * %WEBKIT_FORM_SUBMISSION_WILL_SEND_DOM_EVENT if that event is
	 * emitted.
	 *
	 * Params:
	 *     form = the #WebKitDOMElement to be submitted, which will always correspond to an HTMLFormElement
	 *     step = a #WebKitFormSubmissionEventType indicating the current
	 *         stage of form submission
	 *     sourceFrame = the #WebKitFrame containing the form to be
	 *         submitted
	 *     targetFrame = the #WebKitFrame containing the form's target,
	 *         which may be the same as @source_frame if no target was specified
	 *     textFieldNames = names of
	 *         the form's text fields
	 *     textFieldValues = values
	 *         of the form's text fields
	 *
	 * Since: 2.20
	 */
	gulong addOnWillSubmitForm(void delegate(DOMElement, WebKitFormSubmissionStep, Frame, Frame, PtrArray, PtrArray, WebPage) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "will-submit-form", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
