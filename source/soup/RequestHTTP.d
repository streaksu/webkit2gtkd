module soup.RequestHTTP;

private import gobject.ObjectG;
private import soup.Message;
private import soup.Request;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupRequestHTTP implements #SoupRequest for "http" and "https"
 * URIs.
 * 
 * To do more complicated HTTP operations using the #SoupRequest APIs,
 * call soup_request_http_get_message() to get the request's
 * #SoupMessage.
 */
public class RequestHTTP : Request
{
	/** the main Gtk struct */
	protected SoupRequestHTTP* soupRequestHTTP;

	/** Get the main Gtk struct */
	public SoupRequestHTTP* getRequestHTTPStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequestHTTP;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequestHTTP;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequestHTTP* soupRequestHTTP, bool ownedRef = false)
	{
		this.soupRequestHTTP = soupRequestHTTP;
		super(cast(SoupRequest*)soupRequestHTTP, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_request_http_get_type();
	}

	/**
	 * Gets a new reference to the #SoupMessage associated to this SoupRequest
	 *
	 * Returns: a new reference to the #SoupMessage
	 *
	 * Since: 2.40
	 */
	public Message getMessage()
	{
		auto __p = soup_request_http_get_message(soupRequestHTTP);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Message)(cast(SoupMessage*) __p, true);
	}
}
