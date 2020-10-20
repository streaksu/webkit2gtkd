module soup.SessionFeatureT;

public  import soup.Session;
public  import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupSessionFeature is the interface used by classes that extend
 * the functionality of a #SoupSession. Some features like HTTP
 * authentication handling are implemented internally via
 * #SoupSessionFeature<!-- -->s. Other features can be added to the session
 * by the application. (Eg, #SoupLogger, #SoupCookieJar.)
 * 
 * See soup_session_add_feature(), etc, to add a feature to a session.
 *
 * Since: 2.24
 */
public template SessionFeatureT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupSessionFeature* getSessionFeatureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupSessionFeature*)getStruct();
	}


	/**
	 * Adds a "sub-feature" of type @type to the base feature @feature.
	 * This is used for features that can be extended with multiple
	 * different types. Eg, the authentication manager can be extended
	 * with subtypes of #SoupAuth.
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature accepted @type as a subfeature.
	 *
	 * Since: 2.34
	 */
	public bool addFeature(GType type)
	{
		return soup_session_feature_add_feature(getSessionFeatureStruct(), type) != 0;
	}

	/** */
	public void attach(Session session)
	{
		soup_session_feature_attach(getSessionFeatureStruct(), (session is null) ? null : session.getSessionStruct());
	}

	/** */
	public void detach(Session session)
	{
		soup_session_feature_detach(getSessionFeatureStruct(), (session is null) ? null : session.getSessionStruct());
	}

	/**
	 * Tests if @feature has a "sub-feature" of type @type. See
	 * soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature has a subfeature of type @type
	 *
	 * Since: 2.34
	 */
	public bool hasFeature(GType type)
	{
		return soup_session_feature_has_feature(getSessionFeatureStruct(), type) != 0;
	}

	/**
	 * Removes the "sub-feature" of type @type from the base feature
	 * @feature. See soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @type was removed from @feature
	 *
	 * Since: 2.34
	 */
	public bool removeFeature(GType type)
	{
		return soup_session_feature_remove_feature(getSessionFeatureStruct(), type) != 0;
	}
}
