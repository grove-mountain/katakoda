The username/password combinations are configured directly to the auth method using the `users/` path. This method cannot read usernames and passwords from an external source.


Execute the following command to list which authentication methods have been enabled:

```
vault auth list
```{{execute T2}}


Userpass auth method allows users to login with username and password.  Execute the following command to enable the userpass auth method:

```
vault auth enable userpass
```{{execute T2}}

Now, when you list the enabled auth methods, you should see `userpass`.

```
vault auth list
```{{execute T2}}

<br>

> Everything in Vault is path based, and you can enable the same method at multiple paths.  The data is isolated at path that they are not shared between paths even among the same auth method.

Execute the following command to enable userpass at a different path, training-userpass:

```
vault auth enable -path=training-userpass -description="userpass at a different path" userpass
```{{execute T2}}

Now, the enabled auth method list should include `userpass` and `training-userpass`:

```
vault auth list
```{{execute T2}}

<br>

```
Path                  Type        Accessor                  Description
----                  ----        --------                  -----------
token/                token       auth_token_1d355601       token based credentials
training-userpass/    userpass    auth_userpass_67c0850b    userpass at a different path
userpass/             userpass    auth_userpass_08620fee    n/a
```
