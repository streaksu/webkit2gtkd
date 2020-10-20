module soup.HSTSEnforcerDB;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.HSTSEnforcer;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupHSTSEnforcerDB is a #SoupHSTSEnforcer that uses a SQLite
 * database as a backend for persistency.
 */
public class HSTSEnforcerDB : HSTSEnforcer
{
	/** the main Gtk struct */
	protected SoupHSTSEnforcerDB* soupHSTSEnforcerDB;

	/** Get the main Gtk struct */
	public SoupHSTSEnforcerDB* getHSTSEnforcerDBStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupHSTSEnforcerDB;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupHSTSEnforcerDB;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupHSTSEnforcerDB* soupHSTSEnforcerDB, bool ownedRef = false)
	{
		this.soupHSTSEnforcerDB = soupHSTSEnforcerDB;
		super(cast(SoupHSTSEnforcer*)soupHSTSEnforcerDB, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_hsts_enforcer_db_get_type();
	}

	/**
	 * Creates a #SoupHSTSEnforcerDB.
	 *
	 * @filename will be read in during the initialization of a
	 * #SoupHSTSEnforcerDB, in order to create an initial set of HSTS
	 * policies. If the file doesn't exist, a new database will be created
	 * and initialized. Changes to the policies during the lifetime of a
	 * #SoupHSTSEnforcerDB will be written to @filename when
	 * #SoupHSTSEnforcer::changed is emitted.
	 *
	 * Params:
	 *     filename = the filename of the database to read/write from.
	 *
	 * Returns: the new #SoupHSTSEnforcer
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = soup_hsts_enforcer_db_new(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupHSTSEnforcerDB*) __p, true);
	}
}
