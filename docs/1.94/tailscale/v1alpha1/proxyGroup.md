---
permalink: /1.94/tailscale/v1alpha1/proxyGroup/
---

# tailscale.v1alpha1.proxyGroup

"ProxyGroup defines a set of Tailscale devices that will act as proxies.\nDepending on spec.Type, it can be a group of egress, ingress, or kube-apiserver\nproxies. In addition to running a highly available set of proxies, ingress\nand egress ProxyGroups also allow for serving many annotated Services from a\nsingle set of proxies to minimise resource consumption.\n\nFor ingress and egress, use the tailscale.com/proxy-group annotation on a\nService to specify that the proxy should be implemented by a ProxyGroup\ninstead of a single dedicated proxy.\n\nMore info:\n* https://tailscale.com/kb/1438/kubernetes-operator-cluster-egress\n* https://tailscale.com/kb/1439/kubernetes-operator-cluster-ingress\n\nFor kube-apiserver, the ProxyGroup is a standalone resource. Use the\nspec.kubeAPIServer field to configure options specific to the kube-apiserver\nProxyGroup type."

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
  * [`fn withHostnamePrefix(hostnamePrefix)`](#fn-specwithhostnameprefix)
  * [`fn withProxyClass(proxyClass)`](#fn-specwithproxyclass)
  * [`fn withReplicas(replicas)`](#fn-specwithreplicas)
  * [`fn withTags(tags)`](#fn-specwithtags)
  * [`fn withTagsMixin(tags)`](#fn-specwithtagsmixin)
  * [`fn withType(type)`](#fn-specwithtype)
  * [`obj spec.kubeAPIServer`](#obj-speckubeapiserver)
    * [`fn withHostname(hostname)`](#fn-speckubeapiserverwithhostname)
    * [`fn withMode(mode)`](#fn-speckubeapiserverwithmode)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of ProxyGroup

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

"Spec describes the desired ProxyGroup instances."

### fn spec.withHostnamePrefix

```ts
withHostnamePrefix(hostnamePrefix)
```

"HostnamePrefix is the hostname prefix to use for tailnet devices created\nby the ProxyGroup. Each device will have the integer number from its\nStatefulSet pod appended to this prefix to form the full hostname.\nHostnamePrefix can contain lower case letters, numbers and dashes, it\nmust not start with a dash and must be between 1 and 62 characters long."

### fn spec.withProxyClass

```ts
withProxyClass(proxyClass)
```

"ProxyClass is the name of the ProxyClass custom resource that contains\nconfiguration options that should be applied to the resources created\nfor this ProxyGroup. If unset, and there is no default ProxyClass\nconfigured, the operator will create resources with the default\nconfiguration."

### fn spec.withReplicas

```ts
withReplicas(replicas)
```

"Replicas specifies how many replicas to create the StatefulSet with.\nDefaults to 2."

### fn spec.withTags

```ts
withTags(tags)
```

"Tags that the Tailscale devices will be tagged with. Defaults to [tag:k8s].\nIf you specify custom tags here, make sure you also make the operator\nan owner of these tags.\nSee  https://tailscale.com/kb/1236/kubernetes-operator/#setting-up-the-kubernetes-operator.\nTags cannot be changed once a ProxyGroup device has been created.\nTag values must be in form ^tag:[a-zA-Z][a-zA-Z0-9-]*$."

### fn spec.withTagsMixin

```ts
withTagsMixin(tags)
```

"Tags that the Tailscale devices will be tagged with. Defaults to [tag:k8s].\nIf you specify custom tags here, make sure you also make the operator\nan owner of these tags.\nSee  https://tailscale.com/kb/1236/kubernetes-operator/#setting-up-the-kubernetes-operator.\nTags cannot be changed once a ProxyGroup device has been created.\nTag values must be in form ^tag:[a-zA-Z][a-zA-Z0-9-]*$."

**Note:** This function appends passed data to existing values

### fn spec.withType

```ts
withType(type)
```

"Type of the ProxyGroup proxies. Supported types are egress, ingress, and kube-apiserver.\nType is immutable once a ProxyGroup is created."

## obj spec.kubeAPIServer

"KubeAPIServer contains configuration specific to the kube-apiserver\nProxyGroup type. This field is only used when Type is set to \"kube-apiserver\"."

### fn spec.kubeAPIServer.withHostname

```ts
withHostname(hostname)
```

"Hostname is the hostname with which to expose the Kubernetes API server\nproxies. Must be a valid DNS label no longer than 63 characters. If not\nspecified, the name of the ProxyGroup is used as the hostname. Must be\nunique across the whole tailnet."

### fn spec.kubeAPIServer.withMode

```ts
withMode(mode)
```

"Mode to run the API server proxy in. Supported modes are auth and noauth.\nIn auth mode, requests from the tailnet proxied over to the Kubernetes\nAPI server are additionally impersonated using the sender's tailnet identity.\nIf not specified, defaults to auth mode."