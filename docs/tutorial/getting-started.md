# Tutorial

In this tutorial, we'll walk you through the process of deploying the 
`digest-squid-auth-helper` charm. 

## Set up

If you don't already have a running Juju environment, you can follow 
the [Get started with Juju](https://juju.is/docs/juju/tutorial) guide to set up an 
isolated test environment.

As this charm is a subordinate charm, you should have a 
[Squid Reverseproxy charm](https://charmhub.io/squid-reverseproxy) running before deploying it.

Create your Juju model:

`juju add-model test-squid`

Deploy the reverseproxy charm: 

`juju deploy squid-reverseproxy`

Monitor the deployment: 

`juju status --watch 2s`

## Deploy

Once your Squid instance is running, deploy the auth helper charm:

```bash
juju deploy digest-squid-auth-helper
```

Integrate it with your reverse proxy: 

```bash
juju integrate squid-reverseproxy digest-squid-auth-helper
```
