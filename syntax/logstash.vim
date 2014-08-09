" Vim syntax file
" Language: logstash.conf

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=.
setlocal iskeyword+=/
setlocal iskeyword+=:

syn match logstashVariableBlock '\[[^,]*\]' contained
syn match logstashVariableString '\[[^,]*\]' contained

syn match logstashOperator '=>' contained
syn match logstashOperator '==' contained
syn match logstashOperator '!=' contained
syn match logstashOperator '<' contained
syn match logstashOperator '>' contained
syn match logstashOperator '>=' contained
syn match logstashOperator '<=' contained

syn keyword logstashOperator in contained
syn keyword logstashOperator not contained
syn keyword logstashOperator not contained

syn keyword logstashConditional if contained

syn keyword logstashBoolean true contained
syn keyword logstashBoolean false contained

syn match logstashNumber '\d\+' contained

syn region logstashBlock start=+{+ end=+}+ contains=logstashBlock,logstashComment,logstashPlugin,logstashVariableBlock,logstashString,logstashOperator,logstashBoolean,logstashNumber,logstashConditional
syn region logstashString start=+"+ end=+"+ skip=+\\\\\|\\"+ contains=logstashVariableString,logstashFormat oneline
syn region logstashString start=+'+ end=+'+ skip=+\\\\\|\\'+ contains=logstashVariableString,logstashFormat oneline
syn region logstashFormat start=+%{+ end=+}+ contains=logstashVariableString oneline

syn match logstashComment ' *#.*$'

syn keyword logstashSection input
syn keyword logstashSection filter
syn keyword logstashSection output

" Inputs
syn keyword logstashPlugin collectd contained
syn keyword logstashPlugin drupal_dblog contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin eventlog contained
syn keyword logstashPlugin exec contained
syn keyword logstashPlugin file contained
syn keyword logstashPlugin ganglia contained
syn keyword logstashPlugin gelf contained
syn keyword logstashPlugin gemfire contained
syn keyword logstashPlugin generator contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin heroku contained
syn keyword logstashPlugin imap contained
syn keyword logstashPlugin invalid_input contained
syn keyword logstashPlugin irc contained
syn keyword logstashPlugin jmx contained
syn keyword logstashPlugin log4j contained
syn keyword logstashPlugin lumberjack contained
syn keyword logstashPlugin pipe contained
syn keyword logstashPlugin puppet_facter contained
syn keyword logstashPlugin rabbitmq contained
syn keyword logstashPlugin rackspace contained
syn keyword logstashPlugin redis contained
syn keyword logstashPlugin relp contained
syn keyword logstashPlugin s3 contained
syn keyword logstashPlugin snmptrap contained
syn keyword logstashPlugin sqlite contained
syn keyword logstashPlugin sqs contained
syn keyword logstashPlugin stdin contained
syn keyword logstashPlugin stomp contained
syn keyword logstashPlugin syslog contained
syn keyword logstashPlugin tcp contained
syn keyword logstashPlugin twitter contained
syn keyword logstashPlugin udp contained
syn keyword logstashPlugin unix contained
syn keyword logstashPlugin varnishlog contained
syn keyword logstashPlugin websocket contained
syn keyword logstashPlugin wmi contained
syn keyword logstashPlugin xmpp contained
syn keyword logstashPlugin zenoss contained
syn keyword logstashPlugin zeromq contained
syn keyword logstashPlugin codecs contained
syn keyword logstashPlugin cloudtrail contained
syn keyword logstashPlugin collectd contained
syn keyword logstashPlugin compress_spooler contained
syn keyword logstashPlugin dots contained
syn keyword logstashPlugin edn contained
syn keyword logstashPlugin edn_lines contained
syn keyword logstashPlugin fluent contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin json contained
syn keyword logstashPlugin json_lines contained
syn keyword logstashPlugin json_spooler contained
syn keyword logstashPlugin line contained
syn keyword logstashPlugin msgpack contained
syn keyword logstashPlugin multiline contained
syn keyword logstashPlugin netflow contained
syn keyword logstashPlugin noop contained
syn keyword logstashPlugin oldlogstashjson contained
syn keyword logstashPlugin plain contained
syn keyword logstashPlugin rubydebug contained
syn keyword logstashPlugin spool contained

" Filters
syn keyword logstashPlugin advisor contained
syn keyword logstashPlugin alter contained
syn keyword logstashPlugin anonymize contained
syn keyword logstashPlugin checksum contained
syn keyword logstashPlugin cidr contained
syn keyword logstashPlugin cipher contained
syn keyword logstashPlugin clone contained
syn keyword logstashPlugin collate contained
syn keyword logstashPlugin csv contained
syn keyword logstashPlugin date contained
syn keyword logstashPlugin dns contained
syn keyword logstashPlugin drop contained
syn keyword logstashPlugin elapsed contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin environment contained
syn keyword logstashPlugin extractnumbers contained
syn keyword logstashPlugin fingerprint contained
syn keyword logstashPlugin gelfify contained
syn keyword logstashPlugin geoip contained
syn keyword logstashPlugin grep contained
syn keyword logstashPlugin grok contained
syn keyword logstashPlugin grokdiscovery contained
syn keyword logstashPlugin i18n contained
syn keyword logstashPlugin json contained
syn keyword logstashPlugin json_encode contained
syn keyword logstashPlugin kv contained
syn keyword logstashPlugin metaevent contained
syn keyword logstashPlugin metrics contained
syn keyword logstashPlugin multiline contained
syn keyword logstashPlugin mutate contained
syn keyword logstashPlugin noop contained
syn keyword logstashPlugin prune contained
syn keyword logstashPlugin punct contained
syn keyword logstashPlugin railsparallelrequest contained
syn keyword logstashPlugin range contained
syn keyword logstashPlugin ruby contained
syn keyword logstashPlugin sleep contained
syn keyword logstashPlugin split contained
syn keyword logstashPlugin sumnumbers contained
syn keyword logstashPlugin syslog_pri contained
syn keyword logstashPlugin throttle contained
syn keyword logstashPlugin translate contained
syn keyword logstashPlugin unique contained
syn keyword logstashPlugin urldecode contained
syn keyword logstashPlugin useragent contained
syn keyword logstashPlugin uuid contained
syn keyword logstashPlugin wms contained
syn keyword logstashPlugin wmts contained
syn keyword logstashPlugin xml contained
syn keyword logstashPlugin zeromq contained

" Outputs
syn keyword logstashPlugin boundary contained
syn keyword logstashPlugin circonus contained
syn keyword logstashPlugin cloudwatch contained
syn keyword logstashPlugin csv contained
syn keyword logstashPlugin datadog contained
syn keyword logstashPlugin datadog_metrics contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin elasticsearch_http contained
syn keyword logstashPlugin elasticsearch_river contained
syn keyword logstashPlugin email contained
syn keyword logstashPlugin exec contained
syn keyword logstashPlugin file contained
syn keyword logstashPlugin ganglia contained
syn keyword logstashPlugin gelf contained
syn keyword logstashPlugin gemfire contained
syn keyword logstashPlugin google_bigquery contained
syn keyword logstashPlugin google_cloud_storage contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin graphtastic contained
syn keyword logstashPlugin hipchat contained
syn keyword logstashPlugin http contained
syn keyword logstashPlugin irc contained
syn keyword logstashPlugin jira contained
syn keyword logstashPlugin juggernaut contained
syn keyword logstashPlugin librato contained
syn keyword logstashPlugin loggly contained
syn keyword logstashPlugin lumberjack contained
syn keyword logstashPlugin metriccatcher contained
syn keyword logstashPlugin mongodb contained
syn keyword logstashPlugin nagios contained
syn keyword logstashPlugin nagios_nsca contained
syn keyword logstashPlugin null contained
syn keyword logstashPlugin opentsdb contained
syn keyword logstashPlugin pagerduty contained
syn keyword logstashPlugin pipe contained
syn keyword logstashPlugin rabbitmq contained
syn keyword logstashPlugin rackspace contained
syn keyword logstashPlugin redis contained
syn keyword logstashPlugin redmine contained
syn keyword logstashPlugin riak contained
syn keyword logstashPlugin riemann contained
syn keyword logstashPlugin s3 contained
syn keyword logstashPlugin sns contained
syn keyword logstashPlugin solr_http contained
syn keyword logstashPlugin sqs contained
syn keyword logstashPlugin statsd contained
syn keyword logstashPlugin stdout contained
syn keyword logstashPlugin stomp contained
syn keyword logstashPlugin syslog contained
syn keyword logstashPlugin tcp contained
syn keyword logstashPlugin udp contained
syn keyword logstashPlugin websocket contained
syn keyword logstashPlugin xmpp contained
syn keyword logstashPlugin zabbix contained
syn keyword logstashPlugin zeromq contained

" highlight

hi link logstashBlock Normal
hi link logstashPlugin Function
hi link logstashSection Statement

hi link logstashComment Comment
hi link logstashVariableBlock Identifier
hi link logstashVariableString Identifier
hi link logstashString String
hi link logstashOperator Operator
hi link logstashBoolean Boolean
hi link logstashNumber Number
hi link logstashConditional Conditional
hi link logstashFormat Delimiter

let b:current_syntax = "logstash"
