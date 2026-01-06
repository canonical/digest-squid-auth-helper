A [Juju](https://juju.is/) [subordinate charm](https://documentation.ubuntu.com/juju/3.6/reference/charm/#subordinate-charm) for the [Squid reverse proxy charm](https://charmhub.io/squid-reverseproxy) that enables digest or basic authentication using squid-auth-helper relation.

As a subordinate charm this charm requires the [Squid reverse proxy charm](https://charmhub.io/squid-reverseproxy) to be deployed and integrated with it.

The charm brings digest or basic authentication support to the Squid reverse proxy using the `squid-auth-helper` charm relation.

It allows you to manage user credentials through charm actions (create-user, remove-user, list-users), and configure authentication parameters using charm configuration.

While the Squid reverse proxy charm targets a "reverse proxy setup", this subordinate charm is currently only tested for a "forward proxy" use case and will enable you to control accesses in this context.

## In this documentation

| | |
|--|--|
| [Tutorials](#tutorial-5)</br> Get started - a hands-on introduction to using the charm for new users </br> | [How-to guides](#how-to-8)</br> Step-by-step guides covering key operations and common tasks |

## Project and community

The *digest-squid-auth-helper* charm is a member of the Ubuntu family. It's an open-source project that warmly welcomes community projects, contributions, suggestions, fixes, and constructive feedback.

- [Code of conduct](https://ubuntu.com/community/code-of-conduct)
- [Get support](https://discourse.charmhub.io/)
- [Join our online chat](https://matrix.to/#/#charmhub-charmdev:ubuntu.com)

Thinking about using the *digest-squid-auth-helper* charm for your next project?

[Get in touch](https://matrix.to/#/#charmhub-charmdev:ubuntu.com)!

# Contents

1. [Tutorial](tutorial)
  1. [Getting Started](tutorial/getting-started.md)
2. [How to](how-to)
  1. [Contribute](how-to/contribute.md)
  2. [Configure SAML](how-to/manage-users.md)
  3. [Upgrade](how-to/upgrade.md)

