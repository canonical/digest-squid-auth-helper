A [Juju](https://juju.is/) [subordinate charm](https://documentation.ubuntu.com/juju/3.6/reference/charm/#subordinate-charm) for the [Squid reverse proxy charm](https://charmhub.io/squid-reverseproxy) that enables digest or basic authentication using squid-auth-helper relation.

As a subordinate charm this charm requires the [Squid reverse proxy charm](https://charmhub.io/squid-reverseproxy) to be deployed and integrated with it.

The charm brings digest or basic authentication support to the Squid reverse proxy using the `squid-auth-helper` charm relation.

It allows you to manage user credentials through charm actions (create-user, remove-user, list-users), and configure authentication parameters using charm configuration.

While the Squid reverse proxy charm targets a "reverse proxy setup", this subordinate charm is currently only tested for a "forward proxy" use case and will enable you to control accesses in this context.

For operators running Squid as a forward proxy, this charm makes it straightforward to restrict
proxy access to authenticated users and to manage those users through Juju.

## In this documentation

|                 |                                                                                                                                                                         |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Get started** | [Deploy the digest-squid-auth-helper charm](tutorial/getting-started.md)                                                                                                |
| **Operations**  | [Manage users](how-to/manage-users.md) \| [Configure the authentication type](how-to/manage-users.md#configure-the-authentication-type) \| [Upgrade](how-to/upgrade.md) |
| **Development** | [Contribute](how-to/contribute.md)                                                                                                                                      |

## How this documentation is organized

This documentation uses the [Diátaxis documentation structure](https://diataxis.fr/).

- The [Tutorial](tutorial) takes you step-by-step through deploying the charm alongside the Squid
  reverse proxy charm and integrating the two.
- The [How-to guides](how-to) cover practical tasks such as managing proxy users, switching
  between digest and basic authentication, upgrading, and contributing to the charm.

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
  2. [Manage users](how-to/manage-users.md)
  3. [Upgrade](how-to/upgrade.md)

