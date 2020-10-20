module soup.RequestFile;

private import gio.FileIF;
private import gobject.ObjectG;
private import soup.Request;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupRequestFile implements #SoupRequest for "file" and "resource"
 * URIs.
 */
public class RequestFile : Request
{
	/** the main Gtk struct */
	protected SoupRequestFile* soupRequestFile;

	/** Get the main Gtk struct */
	public SoupRequestFile* getRequestFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequestFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequestFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequestFile* soupRequestFile, bool ownedRef = false)
	{
		this.soupRequestFile = soupRequestFile;
		super(cast(SoupRequest*)soupRequestFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_request_file_get_type();
	}

	/**
	 * Gets a #GFile corresponding to @file's URI
	 *
	 * Returns: a #GFile corresponding to @file
	 *
	 * Since: 2.40
	 */
	public FileIF getFile()
	{
		auto __p = soup_request_file_get_file(soupRequestFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}
}
