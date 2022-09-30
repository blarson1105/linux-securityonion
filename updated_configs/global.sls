global:
  soversion: '2.3.160'
  hnmanager: '192.168.4.0/22'
  dockernet: '172.17.0.0'
  mdengine: 'ZEEK'
  ids: 'Suricata'
  url_base: '192.168.5.100'
  managerip: '192.168.5.100'
  airgap: False
  fleet_custom_hostname:
  fleet_manager: True
  fleet_node: False
  fleet_packages-timestamp: '2022-09-21-23:28'
  fleet_packages-version: 2
  fleet_hostname: 'onion'
  fleet_ip: '192.168.5.100'
  sensoronikey: '76xmyb5YkGin7tivs9Rt'
  wazuh: 1
  imagerepo: 'security-onion-solutions'
  pipeline: 'redis'
sensoroni:
  node_checkin_interval_ms: 1000
strelka:
  enabled: 1
  rules: 1
  repos:
    - 'https://github.com/Neo23x0/signature-base'
curator:
  hot_warm: False
elastic:
  features: False
elasticsearch:
  true_cluster: False
  replicas: 0
  discovery_nodes: 1
  hot_warm_enabled: False
  cluster_routing_allocation_disk.threshold_enabled: true
  cluster_routing_allocation_disk_watermark_low: '95%'
  cluster_routing_allocation_disk_watermark_high: '98%'
  cluster_routing_allocation_disk_watermark_flood_stage: '98%'
  index_settings:
    so-beats:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-endgame:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-firewall:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-flow:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-ids:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-import:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 73000
      delete: 73001
    so-osquery:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-ossec:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-strelka:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-syslog:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 1
      warm: 7
      close: 30
      delete: 365
    so-zeek:
      index_template:
        template:
          settings:
            index:
              number_of_shards: 2
      warm: 7
      close: 45
      delete: 365
minio:
  access_key: ''
  access_secret: ''
s3_settings:
  size_file: 2048
  time_file: 1
  upload_queue_size: 4
  encoding: 'gzip'
  interval: 5
backup:
  locations:
    - /opt/so/saltstack/local
soctopus:
  playbook:
    rulesets:
      - windows
      - linux
docker:
  range: '172.17.0.0/24'
  bip: '172.17.0.1/24'
redis_settings:
  redis_maxmemory: 812
playbook:
  api_key: 2e0f660e9397ed10d0024eafd0b256c98cbb6ad9
