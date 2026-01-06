# How to upgrade

## Upgrade `digest-squid-auth-helper`

The `digest-squid-auth-helper` charm is stateless, meaning it doesn't store persistent data 
that could be lost during an upgrade. This makes the upgrade process for the charm straightforward.

Upgrade the charm with the `refresh` command:

```bash
juju refresh digest-squid-auth-helper
```

## Verify the upgrade

After upgrading, verify that the charm is functioning correctly with the `juju status` command. 
The charm must be in active and idle state.
