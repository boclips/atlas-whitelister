# atlas-whitelister

Whitelist k8s nodes on MongoDb Atlas.

## Use case
To restrict access to the cluster from unknown IPs, we block connections from everywhere except the IPs of our Kubernetes nodes.

We run this container as a job every few minutes to respond to new nodes joining the pool, and old nodes disappearing.
