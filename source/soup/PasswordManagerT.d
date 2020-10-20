module soup.PasswordManagerT;

public  import gio.Cancellable;
public  import glib.MainContext;
public  import soup.Auth;
public  import soup.Message;
public  import soup.c.functions;
public  import soup.c.types;


/** */
public template PasswordManagerT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupPasswordManager* getPasswordManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupPasswordManager*)getStruct();
	}


	/** */
	public void getPasswordsAsync(Message msg, Auth auth, bool retrying, MainContext asyncContext, Cancellable cancellable, SoupPasswordManagerCallback callback, void* userData)
	{
		soup_password_manager_get_passwords_async(getPasswordManagerStruct(), (msg is null) ? null : msg.getMessageStruct(), (auth is null) ? null : auth.getAuthStruct(), retrying, (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public void getPasswordsSync(Message msg, Auth auth, Cancellable cancellable)
	{
		soup_password_manager_get_passwords_sync(getPasswordManagerStruct(), (msg is null) ? null : msg.getMessageStruct(), (auth is null) ? null : auth.getAuthStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());
	}
}
