module webkit2webextension.URIRequest;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.MessageHeaders;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * A #WebKitURIRequest can be created with a URI using the
 * webkit_uri_request_new() method, and you can get the URI of an
 * existing request with the webkit_uri_request_get_uri() one.
 */
public class URIRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitURIRequest* webKitURIRequest;

	/** Get the main Gtk struct */
	public WebKitURIRequest* getURIRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitURIRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitURIRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitURIRequest* webKitURIRequest, bool ownedRef = false)
	{
		this.webKitURIRequest = webKitURIRequest;
		super(cast(GObject*)webKitURIRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_uri_request_get_type();
	}

	/**
	 * Creates a new #WebKitURIRequest for the given URI.
	 *
	 * Params:
	 *     uri = an URI
	 *
	 * Returns: a new #WebKitURIRequest
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uri)
	{
		auto __p = webkit_uri_request_new(Str.toStringz(uri));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitURIRequest*) __p, true);
	}

	/**
	 * Get the HTTP headers of a #WebKitURIRequest as a #SoupMessageHeaders.
	 *
	 * Returns: a #SoupMessageHeaders with the HTTP headers of @request
	 *     or %NULL if @request is not an HTTP request.
	 */
	public MessageHeaders getHttpHeaders()
	{
		auto __p = webkit_uri_request_get_http_headers(webKitURIRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MessageHeaders)(cast(SoupMessageHeaders*) __p);
	}

	/**
	 * Get the HTTP method of the #WebKitURIRequest.
	 *
	 * Returns: the HTTP method of the #WebKitURIRequest or %NULL if @request is not
	 *     an HTTP request.
	 *
	 * Since: 2.12
	 */
	public string getHttpMethod()
	{
		return Str.toString(webkit_uri_request_get_http_method(webKitURIRequest));
	}

	/**
	 * Returns: the uri of the #WebKitURIRequest
	 */
	public string getUri()
	{
		return Str.toString(webkit_uri_request_get_uri(webKitURIRequest));
	}

	/**
	 * Set the URI of @request
	 *
	 * Params:
	 *     uri = an URI
	 */
	public void setUri(string uri)
	{
		webkit_uri_request_set_uri(webKitURIRequest, Str.toStringz(uri));
	}
}
