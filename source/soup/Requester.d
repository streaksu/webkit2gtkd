module soup.Requester;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Request;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class Requester : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupRequester* soupRequester;

	/** Get the main Gtk struct */
	public SoupRequester* getRequesterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequester;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequester;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequester* soupRequester, bool ownedRef = false)
	{
		this.soupRequester = soupRequester;
		super(cast(GObject*)soupRequester, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupRequester);


	/** */
	public static GType getType()
	{
		return soup_requester_get_type();
	}

	/** */
	public this()
	{
		auto __p = soup_requester_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupRequester*) __p, true);
	}

	/** */
	public Request request(string uriString)
	{
		GError* err = null;

		auto __p = soup_requester_request(soupRequester, Str.toStringz(uriString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}

	/** */
	public Request requestUri(URI uri)
	{
		GError* err = null;

		auto __p = soup_requester_request_uri(soupRequester, (uri is null) ? null : uri.getURIStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}
}
