module webkit2.URISchemeRequest;

private import gio.InputStream;
private import glib.ErrorG;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.WebView;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * If you register a particular URI scheme in a #WebKitWebContext,
 * using webkit_web_context_register_uri_scheme(), you have to provide
 * a #WebKitURISchemeRequestCallback. After that, when a URI request
 * is made with that particular scheme, your callback will be
 * called. There you will be able to access properties such as the
 * scheme, the URI and path, and the #WebKitWebView that initiated the
 * request, and also finish the request with
 * webkit_uri_scheme_request_finish().
 */
public class URISchemeRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitURISchemeRequest* webKitURISchemeRequest;

	/** Get the main Gtk struct */
	public WebKitURISchemeRequest* getURISchemeRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitURISchemeRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitURISchemeRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitURISchemeRequest* webKitURISchemeRequest, bool ownedRef = false)
	{
		this.webKitURISchemeRequest = webKitURISchemeRequest;
		super(cast(GObject*)webKitURISchemeRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_uri_scheme_request_get_type();
	}

	/**
	 * Finish a #WebKitURISchemeRequest by setting the contents of the request and its mime type.
	 *
	 * Params:
	 *     stream = a #GInputStream to read the contents of the request
	 *     streamLength = the length of the stream or -1 if not known
	 *     contentType = the content type of the stream or %NULL if not known
	 */
	public void finish(InputStream stream, long streamLength, string contentType)
	{
		webkit_uri_scheme_request_finish(webKitURISchemeRequest, (stream is null) ? null : stream.getInputStreamStruct(), streamLength, Str.toStringz(contentType));
	}

	/**
	 * Finish a #WebKitURISchemeRequest with a #GError.
	 *
	 * Params:
	 *     error = a #GError that will be passed to the #WebKitWebView
	 *
	 * Since: 2.2
	 */
	public void finishError(ErrorG error)
	{
		webkit_uri_scheme_request_finish_error(webKitURISchemeRequest, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Get the URI path of @request
	 *
	 * Returns: the URI path of @request
	 */
	public string getPath()
	{
		return Str.toString(webkit_uri_scheme_request_get_path(webKitURISchemeRequest));
	}

	/**
	 * Get the URI scheme of @request
	 *
	 * Returns: the URI scheme of @request
	 */
	public string getScheme()
	{
		return Str.toString(webkit_uri_scheme_request_get_scheme(webKitURISchemeRequest));
	}

	/**
	 * Get the URI of @request
	 *
	 * Returns: the full URI of @request
	 */
	public string getUri()
	{
		return Str.toString(webkit_uri_scheme_request_get_uri(webKitURISchemeRequest));
	}

	/**
	 * Get the #WebKitWebView that initiated the request.
	 *
	 * Returns: the #WebKitWebView that initiated @request.
	 */
	public WebView getWebView()
	{
		auto __p = webkit_uri_scheme_request_get_web_view(webKitURISchemeRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebView)(cast(WebKitWebView*) __p);
	}
}
