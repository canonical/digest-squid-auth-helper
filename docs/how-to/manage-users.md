# How to manage users

The following actions can be performed with the users:

## Give access to users

New users can be given access through the `juju run digest-squid-auth-helper/0 create-user username=yourusername`. The command will return you the username, realm and password.

## List current users

Run `juju run digest-squid-auth-helper/0 list-users` to return the list of active users.

## Remove users

Remove users with `juju run digest-squid-auth-helper/0 remove-user username=yourusername`

Note: Squid caches some authentication lookups (see [documentation](https://wiki.squid-cache.org/Features/Authentication#does-squid-cache-authentication-lookups)).


## Configure the authentication type

The default configuration can be seen using the `juju config digest-squid-auth-helper` command.

The default authentication type is "digest". If you want to switch to Basic authentication, use the `juju config digest-squid-auth-helper authentication-type=basic` command.

Warning: changing the authentication type will reset all existing users.
