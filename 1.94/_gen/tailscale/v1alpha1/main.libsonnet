{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='v1alpha1', url='', help=''),
  connector: (import 'connector.libsonnet'),
  dnsConfig: (import 'dnsConfig.libsonnet'),
  proxyClass: (import 'proxyClass.libsonnet'),
  proxyGroup: (import 'proxyGroup.libsonnet'),
  recorder: (import 'recorder.libsonnet'),
}
