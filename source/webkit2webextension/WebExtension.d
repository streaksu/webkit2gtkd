module webkit2webextension.WebExtension;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2webextension.UserMessage;
private import webkit2webextension.WebPage;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * WebKitWebExtension is a loadable module for the WebProcess. It allows you to execute code in the
 * WebProcess and being able to use the DOM API, to change any request or to inject custom
 * JavaScript code, for example.
 * 
 * To create a WebKitWebExtension you should write a module with an initialization function that could
 * be either webkit_web_extension_initialize() with prototype #WebKitWebExtensionInitializeFunction or
 * webkit_web_extension_initialize_with_user_data() with prototype #WebKitWebExtensionInitializeWithUserDataFunction.
 * This function has to be public and it has to use the #G_MODULE_EXPORT macro. It is called when the
 * web process is initialized.
 * 
 * <informalexample><programlisting>
 * static void
 * web_page_created_callback (WebKitWebExtension *extension,
 * WebKitWebPage      *web_page,
 * gpointer            user_data)
 * {
 * g_print ("Page %d created for %s\n",
 * webkit_web_page_get_id (web_page),
 * webkit_web_page_get_uri (web_page));
 * }
 * 
 * G_MODULE_EXPORT void
 * webkit_web_extension_initialize (WebKitWebExtension *extension)
 * {
 * g_signal_connect (extension, "page-created",
 * G_CALLBACK (web_page_created_callback),
 * NULL);
 * }
 * </programlisting></informalexample>
 * 
 * The previous piece of code shows a trivial example of an extension that notifies when
 * a #WebKitWebPage is created.
 * 
 * WebKit has to know where it can find the created WebKitWebExtension. To do so you
 * should use the webkit_web_context_set_web_extensions_directory() function. The signal
 * #WebKitWebContext::initialize-web-extensions is the recommended place to call it.
 * 
 * To provide the initialization data used by the webkit_web_extension_initialize_with_user_data()
 * function, you have to call webkit_web_context_set_web_extensions_initialization_user_data() with
 * the desired data as parameter. You can see an example of this in the following piece of code:
 * 
 * <informalexample><programlisting>
 * #define WEB_EXTENSIONS_DIRECTORY /<!-- -->* ... *<!-- -->/
 * 
 * static void
 * initialize_web_extensions (WebKitWebContext *context,
 * gpointer          user_data)
 * {
 * /<!-- -->* Web Extensions get a different ID for each Web Process *<!-- -->/
 * static guint32 unique_id = 0;
 * 
 * webkit_web_context_set_web_extensions_directory (
 * context, WEB_EXTENSIONS_DIRECTORY);
 * webkit_web_context_set_web_extensions_initialization_user_data (
 * context, g_variant_new_uint32 (unique_id++));
 * }
 * 
 * int main (int argc, char **argv)
 * {
 * g_signal_connect (webkit_web_context_get_default (),
 * "initialize-web-extensions",
 * G_CALLBACK (initialize_web_extensions),
 * NULL);
 * 
 * GtkWidget *view = webkit_web_view_new ();
 * 
 * /<!-- -->* ... *<!-- -->/
 * }
 * </programlisting></informalexample>
 */
public class WebExtension : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebExtension* webKitWebExtension;

	/** Get the main Gtk struct */
	public WebKitWebExtension* getWebExtensionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebExtension;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebExtension;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebExtension* webKitWebExtension, bool ownedRef = false)
	{
		this.webKitWebExtension = webKitWebExtension;
		super(cast(GObject*)webKitWebExtension, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_extension_get_type();
	}

	/**
	 * Get the web page of the given @page_id.
	 *
	 * Params:
	 *     pageId = the identifier of the #WebKitWebPage to get
	 *
	 * Returns: the #WebKitWebPage for the given @page_id, or %NULL if the
	 *     identifier doesn't correspond to an existing web page.
	 */
	public WebPage getPage(ulong pageId)
	{
		auto __p = webkit_web_extension_get_page(webKitWebExtension, pageId);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebPage)(cast(WebKitWebPage*) __p);
	}

	/**
	 * Send @message to the #WebKitWebContext corresponding to @extension. If @message is floating, it's consumed.
	 *
	 * If you don't expect any reply, or you simply want to ignore it, you can pass %NULL as @calback.
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_extension_send_message_to_context_finish() to get the message reply.
	 *
	 * Params:
	 *     message = a #WebKitUserMessage
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = (nullable): A #GAsyncReadyCallback to call when the request is satisfied or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.28
	 */
	public void sendMessageToContext(UserMessage message, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_extension_send_message_to_context(webKitWebExtension, (message is null) ? null : message.getUserMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_extension_send_message_to_context().
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
	public UserMessage sendMessageToContextFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_extension_send_message_to_context_finish(webKitWebExtension, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * This signal is emitted when a new #WebKitWebPage is created in
	 * the Web Process.
	 *
	 * Params:
	 *     webPage = the #WebKitWebPage created
	 */
	gulong addOnPageCreated(void delegate(WebPage, WebExtension) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-created", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a #WebKitUserMessage is received from the
	 * #WebKitWebContext corresponding to @extension. Messages sent by #WebKitWebContext
	 * are always broadcasted to all #WebKitWebExtension<!-- -->s and they can't be
	 * replied to. Calling webkit_user_message_send_reply() will do nothing.
	 *
	 * Params:
	 *     message = the #WebKitUserMessage received
	 *
	 * Since: 2.28
	 */
	gulong addOnUserMessageReceived(void delegate(UserMessage, WebExtension) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "user-message-received", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
