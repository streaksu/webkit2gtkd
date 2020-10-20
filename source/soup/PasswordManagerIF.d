module soup.PasswordManagerIF;

private import gio.Cancellable;
private import glib.MainContext;
private import soup.Auth;
private import soup.Message;
private import soup.c.functions;
public  import soup.c.types;


/** */
public interface PasswordManagerIF{
	/** Get the main Gtk struct */
	public SoupPasswordManager* getPasswordManagerStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return soup_password_manager_get_type();
	}

	/** */
	public void getPasswordsAsync(Message msg, Auth auth, bool retrying, MainContext asyncContext, Cancellable cancellable, SoupPasswordManagerCallback callback, void* userData);

	/** */
	public void getPasswordsSync(Message msg, Auth auth, Cancellable cancellable);
}
