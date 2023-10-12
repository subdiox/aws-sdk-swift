// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see [ Amazon Inspector User Guide](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
public protocol InspectorClientProtocol {
    /// Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    ///
    /// - Parameter AddAttributesToFindingsInput : [no documentation found]
    ///
    /// - Returns: `AddAttributesToFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func addAttributesToFindings(input: AddAttributesToFindingsInput) async throws -> AddAttributesToFindingsOutput
    /// Creates a new assessment target using the ARN of the resource group that is generated by [CreateResourceGroup]. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html) isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see [ Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
    ///
    /// - Parameter CreateAssessmentTargetInput : [no documentation found]
    ///
    /// - Returns: `CreateAssessmentTargetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidCrossAccountRoleException` : Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `LimitExceededException` : The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func createAssessmentTarget(input: CreateAssessmentTargetInput) async throws -> CreateAssessmentTargetOutput
    /// Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html) isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    ///
    /// - Parameter CreateAssessmentTemplateInput : [no documentation found]
    ///
    /// - Returns: `CreateAssessmentTemplateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `LimitExceededException` : The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func createAssessmentTemplate(input: CreateAssessmentTemplateInput) async throws -> CreateAssessmentTemplateOutput
    /// Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment.
    ///
    /// - Parameter CreateExclusionsPreviewInput : [no documentation found]
    ///
    /// - Returns: `CreateExclusionsPreviewOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `PreviewGenerationInProgressException` : The request is rejected. The specified assessment template is currently generating an exclusions preview.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func createExclusionsPreview(input: CreateExclusionsPreviewInput) async throws -> CreateExclusionsPreviewOutput
    /// Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see [CreateAssessmentTarget].
    ///
    /// - Parameter CreateResourceGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateResourceGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `LimitExceededException` : The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func createResourceGroup(input: CreateResourceGroupInput) async throws -> CreateResourceGroupOutput
    /// Deletes the assessment run that is specified by the ARN of the assessment run.
    ///
    /// - Parameter DeleteAssessmentRunInput : [no documentation found]
    ///
    /// - Returns: `DeleteAssessmentRunOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `AssessmentRunInProgressException` : You cannot perform a specified action if an assessment run is currently in progress.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func deleteAssessmentRun(input: DeleteAssessmentRunInput) async throws -> DeleteAssessmentRunOutput
    /// Deletes the assessment target that is specified by the ARN of the assessment target.
    ///
    /// - Parameter DeleteAssessmentTargetInput : [no documentation found]
    ///
    /// - Returns: `DeleteAssessmentTargetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `AssessmentRunInProgressException` : You cannot perform a specified action if an assessment run is currently in progress.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func deleteAssessmentTarget(input: DeleteAssessmentTargetInput) async throws -> DeleteAssessmentTargetOutput
    /// Deletes the assessment template that is specified by the ARN of the assessment template.
    ///
    /// - Parameter DeleteAssessmentTemplateInput : [no documentation found]
    ///
    /// - Returns: `DeleteAssessmentTemplateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `AssessmentRunInProgressException` : You cannot perform a specified action if an assessment run is currently in progress.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func deleteAssessmentTemplate(input: DeleteAssessmentTemplateInput) async throws -> DeleteAssessmentTemplateOutput
    /// Describes the assessment runs that are specified by the ARNs of the assessment runs.
    ///
    /// - Parameter DescribeAssessmentRunsInput : [no documentation found]
    ///
    /// - Returns: `DescribeAssessmentRunsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeAssessmentRuns(input: DescribeAssessmentRunsInput) async throws -> DescribeAssessmentRunsOutput
    /// Describes the assessment targets that are specified by the ARNs of the assessment targets.
    ///
    /// - Parameter DescribeAssessmentTargetsInput : [no documentation found]
    ///
    /// - Returns: `DescribeAssessmentTargetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeAssessmentTargets(input: DescribeAssessmentTargetsInput) async throws -> DescribeAssessmentTargetsOutput
    /// Describes the assessment templates that are specified by the ARNs of the assessment templates.
    ///
    /// - Parameter DescribeAssessmentTemplatesInput : [no documentation found]
    ///
    /// - Returns: `DescribeAssessmentTemplatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeAssessmentTemplates(input: DescribeAssessmentTemplatesInput) async throws -> DescribeAssessmentTemplatesOutput
    /// Describes the IAM role that enables Amazon Inspector to access your AWS account.
    ///
    /// - Parameter DescribeCrossAccountAccessRoleInput : [no documentation found]
    ///
    /// - Returns: `DescribeCrossAccountAccessRoleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    func describeCrossAccountAccessRole(input: DescribeCrossAccountAccessRoleInput) async throws -> DescribeCrossAccountAccessRoleOutput
    /// Describes the exclusions that are specified by the exclusions' ARNs.
    ///
    /// - Parameter DescribeExclusionsInput : [no documentation found]
    ///
    /// - Returns: `DescribeExclusionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeExclusions(input: DescribeExclusionsInput) async throws -> DescribeExclusionsOutput
    /// Describes the findings that are specified by the ARNs of the findings.
    ///
    /// - Parameter DescribeFindingsInput : [no documentation found]
    ///
    /// - Returns: `DescribeFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeFindings(input: DescribeFindingsInput) async throws -> DescribeFindingsOutput
    /// Describes the resource groups that are specified by the ARNs of the resource groups.
    ///
    /// - Parameter DescribeResourceGroupsInput : [no documentation found]
    ///
    /// - Returns: `DescribeResourceGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeResourceGroups(input: DescribeResourceGroupsInput) async throws -> DescribeResourceGroupsOutput
    /// Describes the rules packages that are specified by the ARNs of the rules packages.
    ///
    /// - Parameter DescribeRulesPackagesInput : [no documentation found]
    ///
    /// - Returns: `DescribeRulesPackagesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func describeRulesPackages(input: DescribeRulesPackagesInput) async throws -> DescribeRulesPackagesOutput
    /// Produces an assessment report that includes detailed and comprehensive results of a specified assessment run.
    ///
    /// - Parameter GetAssessmentReportInput : [no documentation found]
    ///
    /// - Returns: `GetAssessmentReportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `AssessmentRunInProgressException` : You cannot perform a specified action if an assessment run is currently in progress.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    /// - `UnsupportedFeatureException` : Used by the [GetAssessmentReport] API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.
    func getAssessmentReport(input: GetAssessmentReportInput) async throws -> GetAssessmentReportOutput
    /// Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    ///
    /// - Parameter GetExclusionsPreviewInput : [no documentation found]
    ///
    /// - Returns: `GetExclusionsPreviewOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func getExclusionsPreview(input: GetExclusionsPreviewInput) async throws -> GetExclusionsPreviewOutput
    /// Information about the data that is collected for the specified assessment run.
    ///
    /// - Parameter GetTelemetryMetadataInput : [no documentation found]
    ///
    /// - Returns: `GetTelemetryMetadataOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func getTelemetryMetadata(input: GetTelemetryMetadataInput) async throws -> GetTelemetryMetadataOutput
    /// Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    ///
    /// - Parameter ListAssessmentRunAgentsInput : [no documentation found]
    ///
    /// - Returns: `ListAssessmentRunAgentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listAssessmentRunAgents(input: ListAssessmentRunAgentsInput) async throws -> ListAssessmentRunAgentsOutput
    /// Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    ///
    /// - Parameter ListAssessmentRunsInput : [no documentation found]
    ///
    /// - Returns: `ListAssessmentRunsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listAssessmentRuns(input: ListAssessmentRunsInput) async throws -> ListAssessmentRunsOutput
    /// Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see [Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
    ///
    /// - Parameter ListAssessmentTargetsInput : [no documentation found]
    ///
    /// - Returns: `ListAssessmentTargetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func listAssessmentTargets(input: ListAssessmentTargetsInput) async throws -> ListAssessmentTargetsOutput
    /// Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    ///
    /// - Parameter ListAssessmentTemplatesInput : [no documentation found]
    ///
    /// - Returns: `ListAssessmentTemplatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listAssessmentTemplates(input: ListAssessmentTemplatesInput) async throws -> ListAssessmentTemplatesOutput
    /// Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see [SubscribeToEvent] and [UnsubscribeFromEvent].
    ///
    /// - Parameter ListEventSubscriptionsInput : [no documentation found]
    ///
    /// - Returns: `ListEventSubscriptionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listEventSubscriptions(input: ListEventSubscriptionsInput) async throws -> ListEventSubscriptionsOutput
    /// List exclusions that are generated by the assessment run.
    ///
    /// - Parameter ListExclusionsInput : [no documentation found]
    ///
    /// - Returns: `ListExclusionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listExclusions(input: ListExclusionsInput) async throws -> ListExclusionsOutput
    /// Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    ///
    /// - Parameter ListFindingsInput : [no documentation found]
    ///
    /// - Returns: `ListFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutput
    /// Lists all available Amazon Inspector rules packages.
    ///
    /// - Parameter ListRulesPackagesInput : [no documentation found]
    ///
    /// - Returns: `ListRulesPackagesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    func listRulesPackages(input: ListRulesPackagesInput) async throws -> ListRulesPackagesOutput
    /// Lists all tags associated with an assessment template.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    ///
    /// - Parameter PreviewAgentsInput : [no documentation found]
    ///
    /// - Returns: `PreviewAgentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidCrossAccountRoleException` : Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    func previewAgents(input: PreviewAgentsInput) async throws -> PreviewAgentsOutput
    /// Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    ///
    /// - Parameter RegisterCrossAccountAccessRoleInput : [no documentation found]
    ///
    /// - Returns: `RegisterCrossAccountAccessRoleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidCrossAccountRoleException` : Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func registerCrossAccountAccessRole(input: RegisterCrossAccountAccessRoleInput) async throws -> RegisterCrossAccountAccessRoleOutput
    /// Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    ///
    /// - Parameter RemoveAttributesFromFindingsInput : [no documentation found]
    ///
    /// - Returns: `RemoveAttributesFromFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func removeAttributesFromFindings(input: RemoveAttributesFromFindingsInput) async throws -> RemoveAttributesFromFindingsOutput
    /// Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    ///
    /// - Parameter SetTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `SetTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func setTagsForResource(input: SetTagsForResourceInput) async throws -> SetTagsForResourceOutput
    /// Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    ///
    /// - Parameter StartAssessmentRunInput : [no documentation found]
    ///
    /// - Returns: `StartAssessmentRunOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `AgentsAlreadyRunningAssessmentException` : You started an assessment run, but one of the instances is already participating in another assessment run.
    /// - `InternalException` : Internal server error.
    /// - `InvalidCrossAccountRoleException` : Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `LimitExceededException` : The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func startAssessmentRun(input: StartAssessmentRunInput) async throws -> StartAssessmentRunOutput
    /// Stops the assessment run that is specified by the ARN of the assessment run.
    ///
    /// - Parameter StopAssessmentRunInput : [no documentation found]
    ///
    /// - Returns: `StopAssessmentRunOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func stopAssessmentRun(input: StopAssessmentRunInput) async throws -> StopAssessmentRunOutput
    /// Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    ///
    /// - Parameter SubscribeToEventInput : [no documentation found]
    ///
    /// - Returns: `SubscribeToEventOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `LimitExceededException` : The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func subscribeToEvent(input: SubscribeToEventInput) async throws -> SubscribeToEventOutput
    /// Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    ///
    /// - Parameter UnsubscribeFromEventInput : [no documentation found]
    ///
    /// - Returns: `UnsubscribeFromEventOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func unsubscribeFromEvent(input: UnsubscribeFromEventInput) async throws -> UnsubscribeFromEventOutput
    /// Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    ///
    /// - Parameter UpdateAssessmentTargetInput : [no documentation found]
    ///
    /// - Returns: `UpdateAssessmentTargetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have required permissions to access the requested resource.
    /// - `InternalException` : Internal server error.
    /// - `InvalidInputException` : The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    /// - `NoSuchEntityException` : The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    /// - `ServiceTemporarilyUnavailableException` : The serice is temporary unavailable.
    func updateAssessmentTarget(input: UpdateAssessmentTargetInput) async throws -> UpdateAssessmentTargetOutput
}

public enum InspectorClientTypes {}
