---
permalink: /1.94/tailscale/v1alpha1/connector/
---

# tailscale.v1alpha1.connector

"Connector defines a Tailscale node that will be deployed in the cluster. The\nnode can be configured to act as a Tailscale subnet router and/or a Tailscale\nexit node.\nConnector is a cluster-scoped resource.\nMore info:\nhttps://tailscale.com/kb/1441/kubernetes-operator-connector"

## Index

* [`fn new(name)`](#fn-new)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(annotations)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(annotations)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(clusterName)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(creationTimestamp)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(deletionTimestamp)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(finalizers)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(finalizers)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(generateName)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(generation)`](#fn-metadatawithgeneration)
  * [`fn withLabels(labels)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(labels)`](#fn-metadatawithlabelsmixin)
  * [`fn withName(name)`](#fn-metadatawithname)
  * [`fn withNamespace(namespace)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(ownerReferences)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(ownerReferences)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(resourceVersion)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(selfLink)`](#fn-metadatawithselflink)
  * [`fn withUid(uid)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withExitNode(exitNode)`](#fn-specwithexitnode)
  * [`fn withHostname(hostname)`](#fn-specwithhostname)
  * [`fn withHostnamePrefix(hostnamePrefix)`](#fn-specwithhostnameprefix)
  * [`fn withProxyClass(proxyClass)`](#fn-specwithproxyclass)
  * [`fn withReplicas(replicas)`](#fn-specwithreplicas)
  * [`fn withTags(tags)`](#fn-specwithtags)
  * [`fn withTagsMixin(tags)`](#fn-specwithtagsmixin)
  * [`obj spec.appConnector`](#obj-specappconnector)
    * [`fn withRoutes(routes)`](#fn-specappconnectorwithroutes)
    * [`fn withRoutesMixin(routes)`](#fn-specappconnectorwithroutesmixin)
  * [`obj spec.subnetRouter`](#obj-specsubnetrouter)
    * [`fn withAdvertiseRoutes(advertiseRoutes)`](#fn-specsubnetrouterwithadvertiseroutes)
    * [`fn withAdvertiseRoutesMixin(advertiseRoutes)`](#fn-specsubnetrouterwithadvertiseroutesmixin)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of Connector

## obj metadata

"ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create."

### fn metadata.withAnnotations

```ts
withAnnotations(annotations)
```

"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"

### fn metadata.withAnnotationsMixin

```ts
withAnnotationsMixin(annotations)
```

"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"

**Note:** This function appends passed data to existing values

### fn metadata.withClusterName

```ts
withClusterName(clusterName)
```

"The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request."

### fn metadata.withCreationTimestamp

```ts
withCreationTimestamp(creationTimestamp)
```

"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."

### fn metadata.withDeletionGracePeriodSeconds

```ts
withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)
```

"Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."

### fn metadata.withDeletionTimestamp

```ts
withDeletionTimestamp(deletionTimestamp)
```

"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."

### fn metadata.withFinalizers

```ts
withFinalizers(finalizers)
```

"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."

### fn metadata.withFinalizersMixin

```ts
withFinalizersMixin(finalizers)
```

"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."

**Note:** This function appends passed data to existing values

### fn metadata.withGenerateName

```ts
withGenerateName(generateName)
```

"GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency"

### fn metadata.withGeneration

```ts
withGeneration(generation)
```

"A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."

### fn metadata.withLabels

```ts
withLabels(labels)
```

"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"

### fn metadata.withLabelsMixin

```ts
withLabelsMixin(labels)
```

"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"

**Note:** This function appends passed data to existing values

### fn metadata.withName

```ts
withName(name)
```

"Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"

### fn metadata.withNamespace

```ts
withNamespace(namespace)
```

"Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces"

### fn metadata.withOwnerReferences

```ts
withOwnerReferences(ownerReferences)
```

"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."

### fn metadata.withOwnerReferencesMixin

```ts
withOwnerReferencesMixin(ownerReferences)
```

"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."

**Note:** This function appends passed data to existing values

### fn metadata.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

"An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency"

### fn metadata.withSelfLink

```ts
withSelfLink(selfLink)
```

"SelfLink is a URL representing this object. Populated by the system. Read-only.\n\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release."

### fn metadata.withUid

```ts
withUid(uid)
```

"UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids"

## obj spec

"ConnectorSpec describes the desired Tailscale component.\nMore info:\nhttps://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status"

### fn spec.withExitNode

```ts
withExitNode(exitNode)
```

"ExitNode defines whether the Connector device should act as a Tailscale exit node. Defaults to false.\nThis field is mutually exclusive with the appConnector field.\nhttps://tailscale.com/kb/1103/exit-nodes"

### fn spec.withHostname

```ts
withHostname(hostname)
```

"Hostname is the tailnet hostname that should be assigned to the\nConnector node. If unset, hostname defaults to <connector\nname>-connector. Hostname can contain lower case letters, numbers and\ndashes, it must not start or end with a dash and must be between 2\nand 63 characters long. This field should only be used when creating a connector\nwith an unspecified number of replicas, or a single replica."

### fn spec.withHostnamePrefix

```ts
withHostnamePrefix(hostnamePrefix)
```

"HostnamePrefix specifies the hostname prefix for each\nreplica. Each device will have the integer number\nfrom its StatefulSet pod appended to this prefix to form the full hostname.\nHostnamePrefix can contain lower case letters, numbers and dashes, it\nmust not start with a dash and must be between 1 and 62 characters long."

### fn spec.withProxyClass

```ts
withProxyClass(proxyClass)
```

"ProxyClass is the name of the ProxyClass custom resource that\ncontains configuration options that should be applied to the\nresources created for this Connector. If unset, the operator will\ncreate resources with the default configuration."

### fn spec.withReplicas

```ts
withReplicas(replicas)
```

"Replicas specifies how many devices to create. Set this to enable\nhigh availability for app connectors, subnet routers, or exit nodes.\nhttps://tailscale.com/kb/1115/high-availability. Defaults to 1."

### fn spec.withTags

```ts
withTags(tags)
```

"Tags that the Tailscale node will be tagged with.\nDefaults to [tag:k8s].\nTo autoapprove the subnet routes or exit node defined by a Connector,\nyou can configure Tailscale ACLs to give these tags the necessary\npermissions.\nSee https://tailscale.com/kb/1337/acl-syntax#autoapprovers.\nIf you specify custom tags here, you must also make the operator an owner of these tags.\nSee  https://tailscale.com/kb/1236/kubernetes-operator/#setting-up-the-kubernetes-operator.\nTags cannot be changed once a Connector node has been created.\nTag values must be in form ^tag:[a-zA-Z][a-zA-Z0-9-]*$."

### fn spec.withTagsMixin

```ts
withTagsMixin(tags)
```

"Tags that the Tailscale node will be tagged with.\nDefaults to [tag:k8s].\nTo autoapprove the subnet routes or exit node defined by a Connector,\nyou can configure Tailscale ACLs to give these tags the necessary\npermissions.\nSee https://tailscale.com/kb/1337/acl-syntax#autoapprovers.\nIf you specify custom tags here, you must also make the operator an owner of these tags.\nSee  https://tailscale.com/kb/1236/kubernetes-operator/#setting-up-the-kubernetes-operator.\nTags cannot be changed once a Connector node has been created.\nTag values must be in form ^tag:[a-zA-Z][a-zA-Z0-9-]*$."

**Note:** This function appends passed data to existing values

## obj spec.appConnector

"AppConnector defines whether the Connector device should act as a Tailscale app connector. A Connector that is\nconfigured as an app connector cannot be a subnet router or an exit node. If this field is unset, the\nConnector does not act as an app connector.\nNote that you will need to manually configure the permissions and the domains for the app connector via the\nAdmin panel.\nNote also that the main tested and supported use case of this config option is to deploy an app connector on\nKubernetes to access SaaS applications available on the public internet. Using the app connector to expose\ncluster workloads or other internal workloads to tailnet might work, but this is not a use case that we have\ntested or optimised for.\nIf you are using the app connector to access SaaS applications because you need a predictable egress IP that\ncan be whitelisted, it is also your responsibility to ensure that cluster traffic from the connector flows\nvia that predictable IP, for example by enforcing that cluster egress traffic is routed via an egress NAT\ndevice with a static IP address.\nhttps://tailscale.com/kb/1281/app-connectors"

### fn spec.appConnector.withRoutes

```ts
withRoutes(routes)
```

"Routes are optional preconfigured routes for the domains routed via the app connector.\nIf not set, routes for the domains will be discovered dynamically.\nIf set, the app connector will immediately be able to route traffic using the preconfigured routes, but may\nalso dynamically discover other routes.\nhttps://tailscale.com/kb/1332/apps-best-practices#preconfiguration"

### fn spec.appConnector.withRoutesMixin

```ts
withRoutesMixin(routes)
```

"Routes are optional preconfigured routes for the domains routed via the app connector.\nIf not set, routes for the domains will be discovered dynamically.\nIf set, the app connector will immediately be able to route traffic using the preconfigured routes, but may\nalso dynamically discover other routes.\nhttps://tailscale.com/kb/1332/apps-best-practices#preconfiguration"

**Note:** This function appends passed data to existing values

## obj spec.subnetRouter

"SubnetRouter defines subnet routes that the Connector device should\nexpose to tailnet as a Tailscale subnet router.\nhttps://tailscale.com/kb/1019/subnets/\nIf this field is unset, the device does not get configured as a Tailscale subnet router.\nThis field is mutually exclusive with the appConnector field."

### fn spec.subnetRouter.withAdvertiseRoutes

```ts
withAdvertiseRoutes(advertiseRoutes)
```

"AdvertiseRoutes refer to CIDRs that the subnet router should make\navailable. Route values must be strings that represent a valid IPv4\nor IPv6 CIDR range. Values can be Tailscale 4via6 subnet routes.\nhttps://tailscale.com/kb/1201/4via6-subnets/"

### fn spec.subnetRouter.withAdvertiseRoutesMixin

```ts
withAdvertiseRoutesMixin(advertiseRoutes)
```

"AdvertiseRoutes refer to CIDRs that the subnet router should make\navailable. Route values must be strings that represent a valid IPv4\nor IPv6 CIDR range. Values can be Tailscale 4via6 subnet routes.\nhttps://tailscale.com/kb/1201/4via6-subnets/"

**Note:** This function appends passed data to existing values