module soup.RequestData;

private import soup.Request;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupRequestData implements #SoupRequest for "data" URIs.
 */
public class RequestData : Request
{
	/** the main Gtk struct */
	protected SoupRequestData* soupRequestData;

	/** Get the main Gtk struct */
	public SoupRequestData* getRequestDataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequestData;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequestData;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequestData* soupRequestData, bool ownedRef = false)
	{
		this.soupRequestData = soupRequestData;
		super(cast(SoupRequest*)soupRequestData, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_request_data_get_type();
	}
}
