// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console. Alternatively, you can use CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK. You can use CloudWatch Logs to:
///
/// * Monitor logs from EC2 instances in real time: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs. Then, it can send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException"). You can also count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
///
/// * Monitor CloudTrail logged events: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
///
/// * Archive log data: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events earlier than this setting are automatically deleted. The CloudWatch Logs agent helps to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
public protocol CloudWatchLogsClientProtocol {
    /// Associates the specified KMS key with the specified log group. Associating a KMS key with a log group overrides any existing associations between the log group and a KMS key. After a KMS key is associated with a log group, all newly ingested data for the log group is encrypted using the KMS key. This association is stored as long as the data encrypted with the KMS keyis still within CloudWatch Logs. This enables CloudWatch Logs to decrypt this data whenever it is requested. CloudWatch Logs supports only symmetric KMS keys. Do not use an associate an asymmetric KMS key with your log group. For more information, see [Using Symmetric and Asymmetric Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html). It can take up to 5 minutes for this operation to take effect. If you attempt to associate a KMS key with a log group but the KMS key does not exist or the KMS key is disabled, you receive an InvalidParameterException error.
    func associateKmsKey(input: AssociateKmsKeyInput) async throws -> AssociateKmsKeyOutputResponse
    /// Cancels the specified export task. The task must be in the PENDING or RUNNING state.
    func cancelExportTask(input: CancelExportTaskInput) async throws -> CancelExportTaskOutputResponse
    /// Creates an export task so that you can efficiently export data from a log group to an Amazon S3 bucket. When you perform a CreateExportTask operation, you must use credentials that have permission to write to the S3 bucket that you specify as the destination. Exporting log data to S3 buckets that are encrypted by KMS is supported. Exporting log data to Amazon S3 buckets that have S3 Object Lock enabled with a retention period is also supported. Exporting to S3 buckets that are encrypted with AES-256 is supported. This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use [DescribeExportTasks](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html) to get the status of the export task. Each account can only have one active (RUNNING or PENDING) export task at a time. To cancel an export task, use [CancelExportTask](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html). You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate log data for each export task, specify a prefix to be used as the Amazon S3 key prefix for all exported objects. Time-based sorting on chunks of log data inside an exported file is not guaranteed. You can sort the exported log field data by using Linux utilities.
    func createExportTask(input: CreateExportTaskInput) async throws -> CreateExportTaskOutputResponse
    /// Creates a log group with the specified name. You can create up to 20,000 log groups per account. You must use the following guidelines when naming a log group:
    ///
    /// * Log group names must be unique within a Region for an Amazon Web Services account.
    ///
    /// * Log group names can be between 1 and 512 characters long.
    ///
    /// * Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#' (number sign)
    ///
    ///
    /// When you create a log group, by default the log events in the log group do not expire. To set a retention policy so that events expire and are deleted after a specified time, use [PutRetentionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html). If you associate an KMS key with the log group, ingested data is encrypted using the KMS key. This association is stored as long as the data encrypted with the KMS key is still within CloudWatch Logs. This enables CloudWatch Logs to decrypt this data whenever it is requested. If you attempt to associate a KMS key with the log group but the KMS key does not exist or the KMS key is disabled, you receive an InvalidParameterException error. CloudWatch Logs supports only symmetric KMS keys. Do not associate an asymmetric KMS key with your log group. For more information, see [Using Symmetric and Asymmetric Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).
    func createLogGroup(input: CreateLogGroupInput) async throws -> CreateLogGroupOutputResponse
    /// Creates a log stream for the specified log group. A log stream is a sequence of log events that originate from a single source, such as an application instance or a resource that is being monitored. There is no limit on the number of log streams that you can create for a log group. There is a limit of 50 TPS on CreateLogStream operations, after which transactions are throttled. You must use the following guidelines when naming a log stream:
    ///
    /// * Log stream names must be unique within the log group.
    ///
    /// * Log stream names can be between 1 and 512 characters long.
    ///
    /// * Don't use ':' (colon) or '*' (asterisk) characters.
    func createLogStream(input: CreateLogStreamInput) async throws -> CreateLogStreamOutputResponse
    /// Deletes a CloudWatch Logs account policy. To use this operation, you must be signed on with the logs:DeleteDataProtectionPolicy and logs:DeleteAccountPolicy permissions.
    func deleteAccountPolicy(input: DeleteAccountPolicyInput) async throws -> DeleteAccountPolicyOutputResponse
    /// Deletes the data protection policy from the specified log group. For more information about data protection policies, see [PutDataProtectionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html).
    func deleteDataProtectionPolicy(input: DeleteDataProtectionPolicyInput) async throws -> DeleteDataProtectionPolicyOutputResponse
    /// Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.
    func deleteDestination(input: DeleteDestinationInput) async throws -> DeleteDestinationOutputResponse
    /// Deletes the specified log group and permanently deletes all the archived log events associated with the log group.
    func deleteLogGroup(input: DeleteLogGroupInput) async throws -> DeleteLogGroupOutputResponse
    /// Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
    func deleteLogStream(input: DeleteLogStreamInput) async throws -> DeleteLogStreamOutputResponse
    /// Deletes the specified metric filter.
    func deleteMetricFilter(input: DeleteMetricFilterInput) async throws -> DeleteMetricFilterOutputResponse
    /// Deletes a saved CloudWatch Logs Insights query definition. A query definition contains details about a saved CloudWatch Logs Insights query. Each DeleteQueryDefinition operation can delete one query definition. You must have the logs:DeleteQueryDefinition permission to be able to perform this operation.
    func deleteQueryDefinition(input: DeleteQueryDefinitionInput) async throws -> DeleteQueryDefinitionOutputResponse
    /// Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Deletes the specified retention policy. Log events do not expire if they belong to log groups without a retention policy.
    func deleteRetentionPolicy(input: DeleteRetentionPolicyInput) async throws -> DeleteRetentionPolicyOutputResponse
    /// Deletes the specified subscription filter.
    func deleteSubscriptionFilter(input: DeleteSubscriptionFilterInput) async throws -> DeleteSubscriptionFilterOutputResponse
    /// Returns a list of all CloudWatch Logs account policies in the account.
    func describeAccountPolicies(input: DescribeAccountPoliciesInput) async throws -> DescribeAccountPoliciesOutputResponse
    /// Lists all your destinations. The results are ASCII-sorted by destination name.
    func describeDestinations(input: DescribeDestinationsInput) async throws -> DescribeDestinationsOutputResponse
    /// Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
    func describeExportTasks(input: DescribeExportTasksInput) async throws -> DescribeExportTasksOutputResponse
    /// Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name. CloudWatch Logs doesn’t support IAM policies that control access to the DescribeLogGroups action by using the aws:ResourceTag/key-name  condition key. Other CloudWatch Logs actions do support the use of the aws:ResourceTag/key-name  condition key to control access. For more information about using tags to control access, see [Controlling access to Amazon Web Services resources using tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html). If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
    func describeLogGroups(input: DescribeLogGroupsInput) async throws -> DescribeLogGroupsOutputResponse
    /// Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. You can specify the log group to search by using either logGroupIdentifier or logGroupName. You must include one of these two parameters, but you can't include both. This operation has a limit of five transactions per second, after which transactions are throttled. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
    func describeLogStreams(input: DescribeLogStreamsInput) async throws -> DescribeLogStreamsOutputResponse
    /// Lists the specified metric filters. You can list all of the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    func describeMetricFilters(input: DescribeMetricFiltersInput) async throws -> DescribeMetricFiltersOutputResponse
    /// Returns a list of CloudWatch Logs Insights queries that are scheduled, running, or have been run recently in this account. You can request all queries or limit it to queries of a specific log group or queries with a certain status.
    func describeQueries(input: DescribeQueriesInput) async throws -> DescribeQueriesOutputResponse
    /// This operation returns a paginated list of your saved CloudWatch Logs Insights query definitions. You can use the queryDefinitionNamePrefix parameter to limit the results to only the query definitions that have names that start with a certain string.
    func describeQueryDefinitions(input: DescribeQueryDefinitionsInput) async throws -> DescribeQueryDefinitionsOutputResponse
    /// Lists the resource policies in this account.
    func describeResourcePolicies(input: DescribeResourcePoliciesInput) async throws -> DescribeResourcePoliciesOutputResponse
    /// Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    func describeSubscriptionFilters(input: DescribeSubscriptionFiltersInput) async throws -> DescribeSubscriptionFiltersOutputResponse
    /// Disassociates the associated KMS key from the specified log group. After the KMS key is disassociated from the log group, CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and CloudWatch Logs requires permissions for the KMS key whenever the encrypted data is requested. Note that it can take up to 5 minutes for this operation to take effect.
    func disassociateKmsKey(input: DisassociateKmsKeyInput) async throws -> DisassociateKmsKeyOutputResponse
    /// Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. You must have the logs:FilterLogEvents permission to perform this operation. You can specify the log group to search by using either logGroupIdentifier or logGroupName. You must include one of these two parameters, but you can't include both. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events) or all the events found within the specified time range. If the results include a token, that means there are more log events available. You can get additional results by specifying the token in a subsequent call. This operation can return empty results while there are more log events available through the token. The returned log events are sorted by event timestamp, the timestamp when the event was ingested by CloudWatch Logs, and the ID of the PutLogEvents request. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
    func filterLogEvents(input: FilterLogEventsInput) async throws -> FilterLogEventsOutputResponse
    /// Returns information about a log group data protection policy.
    func getDataProtectionPolicy(input: GetDataProtectionPolicyInput) async throws -> GetDataProtectionPolicyOutputResponse
    /// Lists log events from the specified log stream. You can list all of the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call. This operation can return empty results while there are more log events available through the token. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html). You can specify the log group to search by using either logGroupIdentifier or logGroupName. You must include one of these two parameters, but you can't include both.
    func getLogEvents(input: GetLogEventsInput) async throws -> GetLogEventsOutputResponse
    /// Returns a list of the fields that are included in log events in the specified log group. Includes the percentage of log events that contain each field. The search is limited to a time period that you specify. You can specify the log group to search by using either logGroupIdentifier or logGroupName. You must specify one of these parameters, but you can't specify both. In the results, fields that start with @ are fields generated by CloudWatch Logs. For example, @timestamp is the timestamp of each log event. For more information about the fields that are generated by CloudWatch logs, see [Supported Logs and Discovered Fields](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html). The response results are sorted by the frequency percentage, starting with the highest percentage. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
    func getLogGroupFields(input: GetLogGroupFieldsInput) async throws -> GetLogGroupFieldsOutputResponse
    /// Retrieves all of the fields and values of a single log event. All fields are retrieved, even if the original query that produced the logRecordPointer retrieved only a subset of fields. Fields are returned as field name/field value pairs. The full unparsed log event is returned within @message.
    func getLogRecord(input: GetLogRecordInput) async throws -> GetLogRecordOutputResponse
    /// Returns the results from the specified query. Only the fields requested in the query are returned, along with a @ptr field, which is the identifier for the log record. You can use the value of @ptr in a [GetLogRecord](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html) operation to get the full log record. GetQueryResults does not start running a query. To run a query, use [StartQuery](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html). If the value of the Status field in the output is Running, this operation returns only partial results. If you see a value of Scheduled or Running for the status, you can retry the operation later to see the final results. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account to start queries in linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
    func getQueryResults(input: GetQueryResultsInput) async throws -> GetQueryResultsOutputResponse
    /// Displays the tags associated with a CloudWatch Logs resource. Currently, log groups and destinations support tagging.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// The ListTagsLogGroup operation is on the path to deprecation. We recommend that you use [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html) instead. Lists the tags for the specified log group.
    @available(*, deprecated, message: "Please use the generic tagging API ListTagsForResource")
    func listTagsLogGroup(input: ListTagsLogGroupInput) async throws -> ListTagsLogGroupOutputResponse
    /// Creates an account-level data protection policy that applies to all log groups in the account. A data protection policy can help safeguard sensitive data that's ingested by your log groups by auditing and masking the sensitive log data. Each account can have only one account-level policy. Sensitive data is detected and masked when it is ingested into a log group. When you set a data protection policy, log events ingested into the log groups before that time are not masked. If you use PutAccountPolicy to create a data protection policy for your whole account, it applies to both existing log groups and all log groups that are created later in this account. The account policy is applied to existing log groups with eventual consistency. It might take up to 5 minutes before sensitive data in existing log groups begins to be masked. By default, when a user views a log event that includes masked data, the sensitive data is replaced by asterisks. A user who has the logs:Unmask permission can use a [GetLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html) or [FilterLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html) operation with the unmask parameter set to true to view the unmasked log events. Users with the logs:Unmask can also view unmasked data in the CloudWatch Logs console by running a CloudWatch Logs Insights query with the unmask query command. For more information, including a list of types of data that can be audited and masked, see [Protect sensitive log data with masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html). To use the PutAccountPolicy operation, you must be signed on with the logs:PutDataProtectionPolicy and logs:PutAccountPolicy permissions. The PutAccountPolicy operation applies to all log groups in the account. You can also use [PutDataProtectionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html) to create a data protection policy that applies to just one log group. If a log group has its own data protection policy and the account also has an account-level data protection policy, then the two policies are cumulative. Any sensitive term specified in either policy is masked.
    func putAccountPolicy(input: PutAccountPolicyInput) async throws -> PutAccountPolicyOutputResponse
    /// Creates a data protection policy for the specified log group. A data protection policy can help safeguard sensitive data that's ingested by the log group by auditing and masking the sensitive log data. Sensitive data is detected and masked when it is ingested into the log group. When you set a data protection policy, log events ingested into the log group before that time are not masked. By default, when a user views a log event that includes masked data, the sensitive data is replaced by asterisks. A user who has the logs:Unmask permission can use a [GetLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html) or [FilterLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html) operation with the unmask parameter set to true to view the unmasked log events. Users with the logs:Unmask can also view unmasked data in the CloudWatch Logs console by running a CloudWatch Logs Insights query with the unmask query command. For more information, including a list of types of data that can be audited and masked, see [Protect sensitive log data with masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html). The PutDataProtectionPolicy operation applies to only the specified log group. You can also use [PutAccountPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html) to create an account-level data protection policy that applies to all log groups in the account, including both existing log groups and log groups that are created level. If a log group has its own data protection policy and the account also has an account-level data protection policy, then the two policies are cumulative. Any sensitive term specified in either policy is masked.
    func putDataProtectionPolicy(input: PutDataProtectionPolicyInput) async throws -> PutDataProtectionPolicyOutputResponse
    /// Creates or updates a destination. This operation is used only to create destinations for cross-account subscriptions. A destination encapsulates a physical resource (such as an Amazon Kinesis stream). With a destination, you can subscribe to a real-time stream of log events for a different account, ingested using [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html). Through an access policy, a destination controls what is written to it. By default, PutDestination does not set any access policy with the destination, which means a cross-account user cannot call [PutSubscriptionFilter](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html) against this destination. To enable this, the destination owner must call [PutDestinationPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html) after PutDestination. To perform a PutDestination operation, you must also have the iam:PassRole permission.
    func putDestination(input: PutDestinationInput) async throws -> PutDestinationOutputResponse
    /// Creates or updates an access policy associated with an existing destination. An access policy is an [IAM policy document](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html) that is used to authorize claims to register a subscription filter against a given destination.
    func putDestinationPolicy(input: PutDestinationPolicyInput) async throws -> PutDestinationPolicyOutputResponse
    /// Uploads a batch of log events to the specified log stream. The sequence token is now ignored in PutLogEvents actions. PutLogEvents actions are always accepted and never return InvalidSequenceTokenException or DataAlreadyAcceptedException even if the sequence token is not valid. You can use parallel PutLogEvents actions on the same log stream. The batch of events must satisfy the following constraints:
    ///
    /// * The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
    ///
    /// * None of the log events in the batch can be more than 2 hours in the future.
    ///
    /// * None of the log events in the batch can be more than 14 days in the past. Also, none of the log events can be from earlier than the retention period of the log group.
    ///
    /// * The log events in the batch must be in chronological order by their timestamp. The timestamp is the time that the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In Amazon Web Services Tools for PowerShell and the Amazon Web Services SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)
    ///
    /// * A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.
    ///
    /// * Each log event can be no larger than 256 KB.
    ///
    /// * The maximum number of log events in a batch is 10,000.
    ///
    /// * The quota of five requests per second per log stream has been removed. Instead, PutLogEvents actions are throttled based on a per-second per-account quota. You can request an increase to the per-second throttling quota by using the Service Quotas service.
    ///
    ///
    /// If a call to PutLogEvents returns "UnrecognizedClientException" the most likely cause is a non-valid Amazon Web Services access key ID or secret key.
    func putLogEvents(input: PutLogEventsInput) async throws -> PutLogEventsOutputResponse
    /// Creates or updates a metric filter and associates it with the specified log group. With metric filters, you can configure rules to extract metric data from log events ingested through [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html). The maximum number of metric filters that can be associated with a log group is 100. When you create a metric filter, you can also optionally assign a unit and dimensions to the metric that is created. Metrics extracted from log events are charged as custom metrics. To prevent unexpected high charges, do not specify high-cardinality fields such as IPAddress or requestID as dimensions. Each different value found for a dimension is treated as a separate metric and accrues charges as a separate custom metric. CloudWatch Logs disables a metric filter if it generates 1,000 different name/value pairs for your specified dimensions within a certain amount of time. This helps to prevent accidental high charges. You can also set up a billing alarm to alert you if your charges are higher than expected. For more information, see [ Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).
    func putMetricFilter(input: PutMetricFilterInput) async throws -> PutMetricFilterOutputResponse
    /// Creates or updates a query definition for CloudWatch Logs Insights. For more information, see [Analyzing Log Data with CloudWatch Logs Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html). To update a query definition, specify its queryDefinitionId in your request. The values of name, queryString, and logGroupNames are changed to the values that you specify in your update operation. No current values are retained from the current query definition. For example, imagine updating a current query definition that includes log groups. If you don't specify the logGroupNames parameter in your update operation, the query definition changes to contain no log groups. You must have the logs:PutQueryDefinition permission to be able to perform this operation.
    func putQueryDefinition(input: PutQueryDefinitionInput) async throws -> PutQueryDefinitionOutputResponse
    /// Creates or updates a resource policy allowing other Amazon Web Services services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per Amazon Web Services Region.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Sets the retention of the specified log group. With a retention policy, you can configure the number of days for which to retain log events in the specified log group. CloudWatch Logs doesn’t immediately delete log events when they reach their retention setting. It typically takes up to 72 hours after that before log events are deleted, but in rare situations might take longer. To illustrate, imagine that you change a log group to have a longer retention setting when it contains log events that are past the expiration date, but haven’t been deleted. Those log events will take up to 72 hours to be deleted after the new retention date is reached. To make sure that log data is deleted permanently, keep a log group at its lower retention setting until 72 hours after the previous retention period ends. Alternatively, wait to change the retention setting until you confirm that the earlier log events are deleted.
    func putRetentionPolicy(input: PutRetentionPolicyInput) async throws -> PutRetentionPolicyOutputResponse
    /// Creates or updates a subscription filter and associates it with the specified log group. With subscription filters, you can subscribe to a real-time stream of log events ingested through [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html) and have them delivered to a specific destination. When log events are sent to the receiving service, they are Base64 encoded and compressed with the GZIP format. The following destinations are supported for subscription filters:
    ///
    /// * An Amazon Kinesis data stream belonging to the same account as the subscription filter, for same-account delivery.
    ///
    /// * A logical destination that belongs to a different account, for cross-account delivery.
    ///
    /// * An Amazon Kinesis Data Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.
    ///
    /// * An Lambda function that belongs to the same account as the subscription filter, for same-account delivery.
    ///
    ///
    /// Each log group can have up to two subscription filters associated with it. If you are updating an existing filter, you must specify the correct name in filterName. To perform a PutSubscriptionFilter operation for any destination except a Lambda function, you must also have the iam:PassRole permission.
    func putSubscriptionFilter(input: PutSubscriptionFilterInput) async throws -> PutSubscriptionFilterOutputResponse
    /// Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query and the query string to use. For more information, see [CloudWatch Logs Insights Query Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html). Queries time out after 60 minutes of runtime. If your queries are timing out, reduce the time range being searched or partition your query into a number of queries. If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account to start a query in a linked source account. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html). For a cross-account StartQuery operation, the query definition must be defined in the monitoring account. You can have up to 30 concurrent CloudWatch Logs insights queries, including queries that have been added to dashboards.
    func startQuery(input: StartQueryInput) async throws -> StartQueryOutputResponse
    /// Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.
    func stopQuery(input: StopQueryInput) async throws -> StopQueryOutputResponse
    /// The TagLogGroup operation is on the path to deprecation. We recommend that you use [TagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html) instead. Adds or updates the specified tags for the specified log group. To list the tags for a log group, use [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html). To remove tags, use [UntagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html). For more information about tags, see [Tag Log Groups in Amazon CloudWatch Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging) in the Amazon CloudWatch Logs User Guide. CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to log groups using the aws:Resource/key-name  or aws:TagKeys condition keys. For more information about using tags to control access, see [Controlling access to Amazon Web Services resources using tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
    @available(*, deprecated, message: "Please use the generic tagging API TagResource")
    func tagLogGroup(input: TagLogGroupInput) async throws -> TagLogGroupOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch Logs resource. Currently, the only CloudWatch Logs resources that can be tagged are log groups and destinations. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a CloudWatch Logs resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
    func testMetricFilter(input: TestMetricFilterInput) async throws -> TestMetricFilterOutputResponse
    /// The UntagLogGroup operation is on the path to deprecation. We recommend that you use [UntagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html) instead. Removes the specified tags from the specified log group. To list the tags for a log group, use [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html). To add tags, use [TagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html). CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to log groups using the aws:Resource/key-name  or aws:TagKeys condition keys.
    @available(*, deprecated, message: "Please use the generic tagging API UntagResource")
    func untagLogGroup(input: UntagLogGroupInput) async throws -> UntagLogGroupOutputResponse
    /// Removes one or more tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum CloudWatchLogsClientTypes {}
