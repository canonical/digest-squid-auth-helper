A [Juju](https://juju.is/) subordinate [charm](https://juju.is/docs/olm/charmed-operators) for the [Squid Reverseproxy charm](https://charmhub.io/squid-reverseproxy) that enables digest or basic authentication using squid-auth-helper relation.

As a subordinate charm this charm requires the [Squid Reverseproxy charm](https://charmhub.io/squid-reverseproxy) to be deployed and integrated with it.

The charm brings digest or basic authentication support to the Squid Reverseproxy using the `squid-auth-helper` charm relation.

It allows you to manage user credentials through charm actions (create-user, remove-user, list-users), and configure authentication parameters using charm configuration.

While the Squid Reverseproxy charm targets a "reverse proxy setup".

This subordinate charm is currently only tested for a "forward proxy" use case and will enable you to control accesses in this context.

## In this documentation

| | |
|--|--|
| [Tutorials](#tutorial-5)</br> Get started - a hands-on introduction to using the charm for new users </br> | [How-to guides](#how-to-8)</br> Step-by-step guides covering key operations and common tasks |

## Contributing to this documentation

Documentation is an important part of this project, and we take the same open-source approach to the documentation as the code. As such, we welcome community contributions, suggestions and constructive feedback on our documentation.

Our documentation is hosted on the [Charmhub forum](https://discourse.charmhub.io/t/digest-squid-auth-helper-documentation-overview/) to enable easy collaboration. Please use the "Help us improve this documentation" links on each documentation page to either directly change something you see that's wrong, ask a question or make a suggestion about a potential change via the comments section.

If there's a particular area of documentation that you'd like to see that's missing, please 
[file a bug](https://github.com/canonical/digest-squid-auth-helper/issues).

## Project and community

The *digest-squid-auth-helper* charm is a member of the Ubuntu family. It's an open-source project that warmly welcomes community projects, contributions, suggestions, fixes, and constructive feedback.

- [Code of conduct](https://ubuntu.com/community/code-of-conduct)
- [Get support](https://discourse.charmhub.io/)
- [Join our online chat](https://matrix.to/#/#charmhub-charmdev:ubuntu.com)

Thinking about using the *digest-squid-auth-helper* charm for your next project?

[Get in touch](https://matrix.to/#/#charmhub-charmdev:ubuntu.com)!

# Contents

## Tutorial

### Set up

If you don't already have a running Juju environment, you can follow the [Get started with Juju](https://juju.is/docs/juju/tutorial) guide to set up an isolated test environment.

As this charm is a subordinate charm, you should have a [Squid Reverseproxy charm](https://charmhub.io/squid-reverseproxy) running before deploying it.

- Create your juju model: `juju add-model test-squid`

- Deploy the reverseproxy charm: `juju deploy squid-reverseproxy`

- Monitor the deployment with: `juju status --watch 2s`

### Deploy

Once your Squid instance is running, deploy the auth helper charm with `juju deploy digest-squid-auth-helper` and integrate it with your reverse proxy with `juju integrate squid-reverseproxy digest-squid-auth-helper`.

## How-to

### Configure the authentication type

The default configuration can be seen using the `juju config digest-squid-auth-helper` command.

The default authentication type is "digest". If you want to switch to Basic authentication, you can issue the `juju config digest-squid-auth-helper authentication-type=basic` command.

Warning: changing the authentication type will reset all existing users.

### Give access to users

New users can be given access through the `juju run digest-squid-auth-helper/0 create-user username=yourusername`. The command will return you the username, realm and password.

### List current users

The `juju run digest-squid-auth-helper/0 list-users` will return the list of active users.

### Remove users

You can remove users with `juju run digest-squid-auth-helper/0 remove-user username=yourusername`

Note: Squid caches some authentication lookups (see [documentation](https://wiki.squid-cache.org/Features/Authentication#does-squid-cache-authentication-lookups)).
