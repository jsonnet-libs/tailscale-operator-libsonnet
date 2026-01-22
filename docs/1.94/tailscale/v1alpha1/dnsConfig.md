---
permalink: /1.94/tailscale/v1alpha1/dnsConfig/
---

# tailscale.v1alpha1.dnsConfig

"DNSConfig can be deployed to cluster to make a subset of Tailscale MagicDNS\nnames resolvable by cluster workloads. Use this if: A) you need to refer to\ntailnet services, exposed to cluster via Tailscale Kubernetes operator egress\nproxies by the MagicDNS names of those tailnet services (usually because the\nservices run over HTTPS)\nB) you have exposed a cluster workload to the tailnet using Tailscale Ingress\nand you also want to refer to the workload from within the cluster over the\nIngress's MagicDNS name (usually because you have some callback component\nthat needs to use the same URL as that used by a non-cluster client on\ntailnet).\nWhen a DNSConfig is applied to a cluster, Tailscale Kubernetes operator will\ndeploy a nameserver for ts.net DNS names and automatically populate it with records\nfor any Tailscale egress or Ingress proxies deployed to that cluster.\nCurrently you must manually update your cluster DNS configuration to add the\nIP address of the deployed nameserver as a ts.net stub nameserver.\nInstructions for how to do it:\nhttps://kubernetes.io/docs/tasks/administer-cluster/dns-custom-nameservers/#configuration-of-stub-domain-and-upstream-nameserver-using-coredns (for CoreDNS),\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/kube-dns (for kube-dns).\nTailscale Kubernetes operator will write the address of a Service fronting\nthe nameserver to dsnconfig.status.nameserver.ip.\nDNSConfig is a singleton - you must not create more than one.\nNB: if you want cluster workloads to be able to refer to Tailscale Ingress\nusing its MagicDNS name, you must also annotate the Ingress resource with\ntailscale.com/experimental-forward-cluster-traffic-via-ingress annotation to\nensure that the proxy created for the Ingress listens on its Pod IP address."

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
  * [`obj spec.nameserver`](#obj-specnameserver)
    * [`fn withReplicas(replicas)`](#fn-specnameserverwithreplicas)
    * [`obj spec.nameserver.image`](#obj-specnameserverimage)
      * [`fn withRepo(repo)`](#fn-specnameserverimagewithrepo)
      * [`fn withTag(tag)`](#fn-specnameserverimagewithtag)
    * [`obj spec.nameserver.pod`](#obj-specnameserverpod)
      * [`fn withTolerations(tolerations)`](#fn-specnameserverpodwithtolerations)
      * [`fn withTolerationsMixin(tolerations)`](#fn-specnameserverpodwithtolerationsmixin)
      * [`obj spec.nameserver.pod.tolerations`](#obj-specnameserverpodtolerations)
        * [`fn withEffect(effect)`](#fn-specnameserverpodtolerationswitheffect)
        * [`fn withKey(key)`](#fn-specnameserverpodtolerationswithkey)
        * [`fn withOperator(operator)`](#fn-specnameserverpodtolerationswithoperator)
        * [`fn withTolerationSeconds(tolerationSeconds)`](#fn-specnameserverpodtolerationswithtolerationseconds)
        * [`fn withValue(value)`](#fn-specnameserverpodtolerationswithvalue)
    * [`obj spec.nameserver.service`](#obj-specnameserverservice)
      * [`fn withClusterIP(clusterIP)`](#fn-specnameserverservicewithclusterip)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of DNSConfig

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

"Spec describes the desired DNS configuration.\nMore info:\nhttps://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status"

## obj spec.nameserver

"Configuration for a nameserver that can resolve ts.net DNS names\nassociated with in-cluster proxies for Tailscale egress Services and\nTailscale Ingresses. The operator will always deploy this nameserver\nwhen a DNSConfig is applied."

### fn spec.nameserver.withReplicas

```ts
withReplicas(replicas)
```

"Replicas specifies how many Pods to create. Defaults to 1."

## obj spec.nameserver.image

"Nameserver image. Defaults to tailscale/k8s-nameserver:unstable."

### fn spec.nameserver.image.withRepo

```ts
withRepo(repo)
```

"Repo defaults to tailscale/k8s-nameserver."

### fn spec.nameserver.image.withTag

```ts
withTag(tag)
```

"Tag defaults to unstable."

## obj spec.nameserver.pod

"Pod configuration."

### fn spec.nameserver.pod.withTolerations

```ts
withTolerations(tolerations)
```

"If specified, applies tolerations to the pods deployed by the DNSConfig resource."

### fn spec.nameserver.pod.withTolerationsMixin

```ts
withTolerationsMixin(tolerations)
```

"If specified, applies tolerations to the pods deployed by the DNSConfig resource."

**Note:** This function appends passed data to existing values

## obj spec.nameserver.pod.tolerations

"If specified, applies tolerations to the pods deployed by the DNSConfig resource."

### fn spec.nameserver.pod.tolerations.withEffect

```ts
withEffect(effect)
```

"Effect indicates the taint effect to match. Empty means match all taint effects.\nWhen specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."

### fn spec.nameserver.pod.tolerations.withKey

```ts
withKey(key)
```

"Key is the taint key that the toleration applies to. Empty means match all taint keys.\nIf the key is empty, operator must be Exists; this combination means to match all values and all keys."

### fn spec.nameserver.pod.tolerations.withOperator

```ts
withOperator(operator)
```

"Operator represents a key's relationship to the value.\nValid operators are Exists and Equal. Defaults to Equal.\nExists is equivalent to wildcard for value, so that a pod can\ntolerate all taints of a particular category."

### fn spec.nameserver.pod.tolerations.withTolerationSeconds

```ts
withTolerationSeconds(tolerationSeconds)
```

"TolerationSeconds represents the period of time the toleration (which must be\nof effect NoExecute, otherwise this field is ignored) tolerates the taint. By default,\nit is not set, which means tolerate the taint forever (do not evict). Zero and\nnegative values will be treated as 0 (evict immediately) by the system."

### fn spec.nameserver.pod.tolerations.withValue

```ts
withValue(value)
```

"Value is the taint value the toleration matches to.\nIf the operator is Exists, the value should be empty, otherwise just a regular string."

## obj spec.nameserver.service

"Service configuration."

### fn spec.nameserver.service.withClusterIP

```ts
withClusterIP(clusterIP)
```

"ClusterIP sets the static IP of the service used by the nameserver."