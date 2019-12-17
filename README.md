# atlas-whitelister

**ARCHIVED**: we now use [Google Cloud NAT](https://cloud.google.com/nat/docs/overview) to get a single IP for our Kubernetes nodes.

Whitelist k8s nodes on MongoDb Atlas.

## Use case
To restrict access to the cluster from unknown IPs, we block connections from everywhere except the IPs of our Kubernetes nodes.

We run this container as a job every few minutes to respond to new nodes joining the pool, and old nodes disappearing.

An alternative solution is to use a NAT gateway but that funnels all your traffic through one machine causing a potential bottleneck, and it's "One More Thing™" to keep alive. You'd really want to do that in HA mode, which was more trouble than writing the whitelister.
