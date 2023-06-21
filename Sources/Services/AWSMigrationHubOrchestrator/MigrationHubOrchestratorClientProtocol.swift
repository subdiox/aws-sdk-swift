// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Migration Hub Orchestrator. he topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using.
public protocol MigrationHubOrchestratorClientProtocol {
    /// Create a workflow to orchestrate your migrations.
    func createWorkflow(input: CreateWorkflowInput) async throws -> CreateWorkflowOutputResponse
    /// Create a step in the migration workflow.
    func createWorkflowStep(input: CreateWorkflowStepInput) async throws -> CreateWorkflowStepOutputResponse
    /// Create a step group in a migration workflow.
    func createWorkflowStepGroup(input: CreateWorkflowStepGroupInput) async throws -> CreateWorkflowStepGroupOutputResponse
    /// Delete a migration workflow. You must pause a running workflow in Migration Hub Orchestrator console to delete it.
    func deleteWorkflow(input: DeleteWorkflowInput) async throws -> DeleteWorkflowOutputResponse
    /// Delete a step in a migration workflow. Pause the workflow to delete a running step.
    func deleteWorkflowStep(input: DeleteWorkflowStepInput) async throws -> DeleteWorkflowStepOutputResponse
    /// Delete a step group in a migration workflow.
    func deleteWorkflowStepGroup(input: DeleteWorkflowStepGroupInput) async throws -> DeleteWorkflowStepGroupOutputResponse
    /// Get the template you want to use for creating a migration workflow.
    func getTemplate(input: GetTemplateInput) async throws -> GetTemplateOutputResponse
    /// Get a specific step in a template.
    func getTemplateStep(input: GetTemplateStepInput) async throws -> GetTemplateStepOutputResponse
    /// Get a step group in a template.
    func getTemplateStepGroup(input: GetTemplateStepGroupInput) async throws -> GetTemplateStepGroupOutputResponse
    /// Get migration workflow.
    func getWorkflow(input: GetWorkflowInput) async throws -> GetWorkflowOutputResponse
    /// Get a step in the migration workflow.
    func getWorkflowStep(input: GetWorkflowStepInput) async throws -> GetWorkflowStepOutputResponse
    /// Get the step group of a migration workflow.
    func getWorkflowStepGroup(input: GetWorkflowStepGroupInput) async throws -> GetWorkflowStepGroupOutputResponse
    /// List AWS Migration Hub Orchestrator plugins.
    func listPlugins(input: ListPluginsInput) async throws -> ListPluginsOutputResponse
    /// List the tags added to a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// List the templates available in Migration Hub Orchestrator to create a migration workflow.
    func listTemplates(input: ListTemplatesInput) async throws -> ListTemplatesOutputResponse
    /// List the step groups in a template.
    func listTemplateStepGroups(input: ListTemplateStepGroupsInput) async throws -> ListTemplateStepGroupsOutputResponse
    /// List the steps in a template.
    func listTemplateSteps(input: ListTemplateStepsInput) async throws -> ListTemplateStepsOutputResponse
    /// List the migration workflows.
    func listWorkflows(input: ListWorkflowsInput) async throws -> ListWorkflowsOutputResponse
    /// List the step groups in a migration workflow.
    func listWorkflowStepGroups(input: ListWorkflowStepGroupsInput) async throws -> ListWorkflowStepGroupsOutputResponse
    /// List the steps in a workflow.
    func listWorkflowSteps(input: ListWorkflowStepsInput) async throws -> ListWorkflowStepsOutputResponse
    /// Retry a failed step in a migration workflow.
    func retryWorkflowStep(input: RetryWorkflowStepInput) async throws -> RetryWorkflowStepOutputResponse
    /// Start a migration workflow.
    func startWorkflow(input: StartWorkflowInput) async throws -> StartWorkflowOutputResponse
    /// Stop an ongoing migration workflow.
    func stopWorkflow(input: StopWorkflowInput) async throws -> StopWorkflowOutputResponse
    /// Tag a resource by specifying its Amazon Resource Name (ARN).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Deletes the tags for a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Update a migration workflow.
    func updateWorkflow(input: UpdateWorkflowInput) async throws -> UpdateWorkflowOutputResponse
    /// Update a step in a migration workflow.
    func updateWorkflowStep(input: UpdateWorkflowStepInput) async throws -> UpdateWorkflowStepOutputResponse
    /// Update the step group in a migration workflow.
    func updateWorkflowStepGroup(input: UpdateWorkflowStepGroupInput) async throws -> UpdateWorkflowStepGroupOutputResponse
}

public enum MigrationHubOrchestratorClientTypes {}
