// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Migration Hub Orchestrator. he topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using.
public protocol MigrationHubOrchestratorClientProtocol {
    /// Create a workflow to orchestrate your migrations.
    ///
    /// - Parameter CreateWorkflowInput : [no documentation found]
    ///
    /// - Returns: `CreateWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func createWorkflow(input: CreateWorkflowInput) async throws -> CreateWorkflowOutput
    /// Create a step in the migration workflow.
    ///
    /// - Parameter CreateWorkflowStepInput : [no documentation found]
    ///
    /// - Returns: `CreateWorkflowStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func createWorkflowStep(input: CreateWorkflowStepInput) async throws -> CreateWorkflowStepOutput
    /// Create a step group in a migration workflow.
    ///
    /// - Parameter CreateWorkflowStepGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateWorkflowStepGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func createWorkflowStepGroup(input: CreateWorkflowStepGroupInput) async throws -> CreateWorkflowStepGroupOutput
    /// Delete a migration workflow. You must pause a running workflow in Migration Hub Orchestrator console to delete it.
    ///
    /// - Parameter DeleteWorkflowInput : [no documentation found]
    ///
    /// - Returns: `DeleteWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteWorkflow(input: DeleteWorkflowInput) async throws -> DeleteWorkflowOutput
    /// Delete a step in a migration workflow. Pause the workflow to delete a running step.
    ///
    /// - Parameter DeleteWorkflowStepInput : [no documentation found]
    ///
    /// - Returns: `DeleteWorkflowStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteWorkflowStep(input: DeleteWorkflowStepInput) async throws -> DeleteWorkflowStepOutput
    /// Delete a step group in a migration workflow.
    ///
    /// - Parameter DeleteWorkflowStepGroupInput : [no documentation found]
    ///
    /// - Returns: `DeleteWorkflowStepGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteWorkflowStepGroup(input: DeleteWorkflowStepGroupInput) async throws -> DeleteWorkflowStepGroupOutput
    /// Get the template you want to use for creating a migration workflow.
    ///
    /// - Parameter GetTemplateInput : [no documentation found]
    ///
    /// - Returns: `GetTemplateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getTemplate(input: GetTemplateInput) async throws -> GetTemplateOutput
    /// Get a specific step in a template.
    ///
    /// - Parameter GetTemplateStepInput : [no documentation found]
    ///
    /// - Returns: `GetTemplateStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getTemplateStep(input: GetTemplateStepInput) async throws -> GetTemplateStepOutput
    /// Get a step group in a template.
    ///
    /// - Parameter GetTemplateStepGroupInput : [no documentation found]
    ///
    /// - Returns: `GetTemplateStepGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getTemplateStepGroup(input: GetTemplateStepGroupInput) async throws -> GetTemplateStepGroupOutput
    /// Get migration workflow.
    ///
    /// - Parameter GetWorkflowInput : [no documentation found]
    ///
    /// - Returns: `GetWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getWorkflow(input: GetWorkflowInput) async throws -> GetWorkflowOutput
    /// Get a step in the migration workflow.
    ///
    /// - Parameter GetWorkflowStepInput : [no documentation found]
    ///
    /// - Returns: `GetWorkflowStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func getWorkflowStep(input: GetWorkflowStepInput) async throws -> GetWorkflowStepOutput
    /// Get the step group of a migration workflow.
    ///
    /// - Parameter GetWorkflowStepGroupInput : [no documentation found]
    ///
    /// - Returns: `GetWorkflowStepGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getWorkflowStepGroup(input: GetWorkflowStepGroupInput) async throws -> GetWorkflowStepGroupOutput
    /// List AWS Migration Hub Orchestrator plugins.
    ///
    /// - Parameter ListPluginsInput : [no documentation found]
    ///
    /// - Returns: `ListPluginsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listPlugins(input: ListPluginsInput) async throws -> ListPluginsOutput
    /// List the tags added to a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// List the templates available in Migration Hub Orchestrator to create a migration workflow.
    ///
    /// - Parameter ListTemplatesInput : [no documentation found]
    ///
    /// - Returns: `ListTemplatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func listTemplates(input: ListTemplatesInput) async throws -> ListTemplatesOutput
    /// List the step groups in a template.
    ///
    /// - Parameter ListTemplateStepGroupsInput : [no documentation found]
    ///
    /// - Returns: `ListTemplateStepGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func listTemplateStepGroups(input: ListTemplateStepGroupsInput) async throws -> ListTemplateStepGroupsOutput
    /// List the steps in a template.
    ///
    /// - Parameter ListTemplateStepsInput : [no documentation found]
    ///
    /// - Returns: `ListTemplateStepsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTemplateSteps(input: ListTemplateStepsInput) async throws -> ListTemplateStepsOutput
    /// List the migration workflows.
    ///
    /// - Parameter ListWorkflowsInput : [no documentation found]
    ///
    /// - Returns: `ListWorkflowsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listWorkflows(input: ListWorkflowsInput) async throws -> ListWorkflowsOutput
    /// List the step groups in a migration workflow.
    ///
    /// - Parameter ListWorkflowStepGroupsInput : [no documentation found]
    ///
    /// - Returns: `ListWorkflowStepGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listWorkflowStepGroups(input: ListWorkflowStepGroupsInput) async throws -> ListWorkflowStepGroupsOutput
    /// List the steps in a workflow.
    ///
    /// - Parameter ListWorkflowStepsInput : [no documentation found]
    ///
    /// - Returns: `ListWorkflowStepsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listWorkflowSteps(input: ListWorkflowStepsInput) async throws -> ListWorkflowStepsOutput
    /// Retry a failed step in a migration workflow.
    ///
    /// - Parameter RetryWorkflowStepInput : [no documentation found]
    ///
    /// - Returns: `RetryWorkflowStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    func retryWorkflowStep(input: RetryWorkflowStepInput) async throws -> RetryWorkflowStepOutput
    /// Start a migration workflow.
    ///
    /// - Parameter StartWorkflowInput : [no documentation found]
    ///
    /// - Returns: `StartWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startWorkflow(input: StartWorkflowInput) async throws -> StartWorkflowOutput
    /// Stop an ongoing migration workflow.
    ///
    /// - Parameter StopWorkflowInput : [no documentation found]
    ///
    /// - Returns: `StopWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func stopWorkflow(input: StopWorkflowInput) async throws -> StopWorkflowOutput
    /// Tag a resource by specifying its Amazon Resource Name (ARN).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Deletes the tags for a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Update a migration workflow.
    ///
    /// - Parameter UpdateWorkflowInput : [no documentation found]
    ///
    /// - Returns: `UpdateWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateWorkflow(input: UpdateWorkflowInput) async throws -> UpdateWorkflowOutput
    /// Update a step in a migration workflow.
    ///
    /// - Parameter UpdateWorkflowStepInput : [no documentation found]
    ///
    /// - Returns: `UpdateWorkflowStepOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateWorkflowStep(input: UpdateWorkflowStepInput) async throws -> UpdateWorkflowStepOutput
    /// Update the step group in a migration workflow.
    ///
    /// - Parameter UpdateWorkflowStepGroupInput : [no documentation found]
    ///
    /// - Returns: `UpdateWorkflowStepGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateWorkflowStepGroup(input: UpdateWorkflowStepGroupInput) async throws -> UpdateWorkflowStepGroupOutput
}

public enum MigrationHubOrchestratorClientTypes {}
