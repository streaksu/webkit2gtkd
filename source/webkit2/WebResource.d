module webkit2.WebResource;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.TlsCertificate;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.URIRequest;
private import webkit2.URIResponse;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * A #WebKitWebResource encapsulates content for each resource at the
 * end of a particular URI. For example, one #WebKitWebResource will
 * be created for each separate image and stylesheet when a page is
 * loaded.
 * 
 * You can access the response and the URI for a given
 * #WebKitWebResource, using webkit_web_resource_get_uri() and
 * webkit_web_resource_get_response(), as well as the raw data, using
 * webkit_web_resource_get_data().
 */
public class WebResource : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebResource* webKitWebResource;

	/** Get the main Gtk struct */
	public WebKitWebResource* getWebResourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebResource;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebResource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebResource* webKitWebResource, bool ownedRef = false)
	{
		this.webKitWebResource = webKitWebResource;
		super(cast(GObject*)webKitWebResource, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_resource_get_type();
	}

	/**
	 * Asynchronously get the raw data for @resource.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_resource_get_data_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void getData(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_resource_get_data(webKitWebResource, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_resource_get_data().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a
	 *     string with the data of @resource, or %NULL in case of error. if @length
	 *     is not %NULL, the size of the data will be assigned to it.
	 *
	 * Throws: GException on failure.
	 */
	public char[] getDataFinish(AsyncResultIF result)
	{
		size_t length;
		GError* err = null;

		auto __p = webkit_web_resource_get_data_finish(webKitWebResource, (result is null) ? null : result.getAsyncResultStruct(), &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return cast(char[])__p[0 .. length];
	}

	/**
	 * Retrieves the #WebKitURIResponse of the resource load operation.
	 * This method returns %NULL if called before the response
	 * is received from the server. You can connect to notify::response
	 * signal to be notified when the response is received.
	 *
	 * Returns: the #WebKitURIResponse, or %NULL if
	 *     the response hasn't been received yet.
	 */
	public URIResponse getResponse()
	{
		auto __p = webkit_web_resource_get_response(webKitWebResource);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIResponse)(cast(WebKitURIResponse*) __p);
	}

	/**
	 * Returns the current active URI of @resource. The active URI might change during
	 * a load operation:
	 *
	 * <orderedlist>
	 * <listitem><para>
	 * When the resource load starts, the active URI is the requested URI
	 * </para></listitem>
	 * <listitem><para>
	 * When the initial request is sent to the server, #WebKitWebResource::sent-request
	 * signal is emitted without a redirected response, the active URI is the URI of
	 * the request sent to the server.
	 * </para></listitem>
	 * <listitem><para>
	 * In case of a server redirection, #WebKitWebResource::sent-request signal
	 * is emitted again with a redirected response, the active URI is the URI the request
	 * was redirected to.
	 * </para></listitem>
	 * <listitem><para>
	 * When the response is received from the server, the active URI is the final
	 * one and it will not change again.
	 * </para></listitem>
	 * </orderedlist>
	 *
	 * You can monitor the active URI by connecting to the notify::uri
	 * signal of @resource.
	 *
	 * Returns: the current active URI of @resource
	 */
	public string getUri()
	{
		return Str.toString(webkit_web_resource_get_uri(webKitWebResource));
	}

	/**
	 * This signal is emitted when an error occurs during the resource
	 * load operation.
	 *
	 * Params:
	 *     error = the #GError that was triggered
	 */
	gulong addOnFailed(void delegate(ErrorG, WebResource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a TLS error occurs during the resource load operation.
	 *
	 * Params:
	 *     certificate = a #GTlsCertificate
	 *     errors = a #GTlsCertificateFlags with the verification status of @certificate
	 *
	 * Since: 2.8
	 */
	gulong addOnFailedWithTlsErrors(void delegate(TlsCertificate, GTlsCertificateFlags, WebResource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "failed-with-tls-errors", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the resource load finishes successfully
	 * or due to an error. In case of errors #WebKitWebResource::failed signal
	 * is emitted before this one.
	 */
	gulong addOnFinished(void delegate(WebResource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted after response is received,
	 * every time new data has been received. It's
	 * useful to know the progress of the resource load operation.
	 *
	 * Params:
	 *     dataLength = the length of data received in bytes
	 */
	gulong addOnReceivedData(void delegate(ulong, WebResource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "received-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when @request has been sent to the
	 * server. In case of a server redirection this signal is
	 * emitted again with the @request argument containing the new
	 * request sent to the server due to the redirection and the
	 * @redirected_response parameter containing the response
	 * received by the server for the initial request.
	 *
	 * Params:
	 *     request = a #WebKitURIRequest
	 *     redirectedResponse = a #WebKitURIResponse, or %NULL
	 */
	gulong addOnSentRequest(void delegate(URIRequest, URIResponse, WebResource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "sent-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
