// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Provide APIs to create and manage Amazon Connect Campaigns.
public protocol ConnectCampaignsClientProtocol {
    /// Creates a campaign for the specified Amazon Connect account. This API is idempotent.
    ///
    /// - Parameter CreateCampaignInput : The request for Create Campaign API.
    ///
    /// - Returns: `CreateCampaignOutput` : The response for Create Campaign API
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ServiceQuotaExceededException` : Request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func createCampaign(input: CreateCampaignInput) async throws -> CreateCampaignOutput
    /// Deletes a campaign from the specified Amazon Connect account.
    ///
    /// - Parameter DeleteCampaignInput : DeleteCampaignRequest
    ///
    /// - Returns: `DeleteCampaignOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteCampaign(input: DeleteCampaignInput) async throws -> DeleteCampaignOutput
    /// Deletes a connect instance config from the specified AWS account.
    ///
    /// - Parameter DeleteConnectInstanceConfigInput : DeleteCampaignRequest
    ///
    /// - Returns: `DeleteConnectInstanceConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidStateException` : The request could not be processed because of conflict in the current state.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteConnectInstanceConfig(input: DeleteConnectInstanceConfigInput) async throws -> DeleteConnectInstanceConfigOutput
    /// Delete the Connect Campaigns onboarding job for the specified Amazon Connect instance.
    ///
    /// - Parameter DeleteInstanceOnboardingJobInput : The request for DeleteInstanceOnboardingJob API.
    ///
    /// - Returns: `DeleteInstanceOnboardingJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidStateException` : The request could not be processed because of conflict in the current state.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteInstanceOnboardingJob(input: DeleteInstanceOnboardingJobInput) async throws -> DeleteInstanceOnboardingJobOutput
    /// Describes the specific campaign.
    ///
    /// - Parameter DescribeCampaignInput : DescribeCampaignRequests
    ///
    /// - Returns: `DescribeCampaignOutput` : DescribeCampaignResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func describeCampaign(input: DescribeCampaignInput) async throws -> DescribeCampaignOutput
    /// Get state of a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter GetCampaignStateInput : GetCampaignStateRequest
    ///
    /// - Returns: `GetCampaignStateOutput` : GetCampaignStateResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getCampaignState(input: GetCampaignStateInput) async throws -> GetCampaignStateOutput
    /// Get state of campaigns for the specified Amazon Connect account.
    ///
    /// - Parameter GetCampaignStateBatchInput : GetCampaignStateBatchRequest
    ///
    /// - Returns: `GetCampaignStateBatchOutput` : GetCampaignStateBatchResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getCampaignStateBatch(input: GetCampaignStateBatchInput) async throws -> GetCampaignStateBatchOutput
    /// Get the specific Connect instance config.
    ///
    /// - Parameter GetConnectInstanceConfigInput : GetConnectInstanceConfigRequest
    ///
    /// - Returns: `GetConnectInstanceConfigOutput` : GetConnectInstanceConfigResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getConnectInstanceConfig(input: GetConnectInstanceConfigInput) async throws -> GetConnectInstanceConfigOutput
    /// Get the specific instance onboarding job status.
    ///
    /// - Parameter GetInstanceOnboardingJobStatusInput : GetInstanceOnboardingJobStatusRequest
    ///
    /// - Returns: `GetInstanceOnboardingJobStatusOutput` : GetInstanceOnboardingJobStatusResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getInstanceOnboardingJobStatus(input: GetInstanceOnboardingJobStatusInput) async throws -> GetInstanceOnboardingJobStatusOutput
    /// Provides summary information about the campaigns under the specified Amazon Connect account.
    ///
    /// - Parameter ListCampaignsInput : ListCampaignsRequest
    ///
    /// - Returns: `ListCampaignsOutput` : ListCampaignsResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listCampaigns(input: ListCampaignsInput) async throws -> ListCampaignsOutput
    /// List tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : ListTagsForResource
    ///
    /// - Returns: `ListTagsForResourceOutput` : ListTagsForResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Pauses a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter PauseCampaignInput : PauseCampaignRequest
    ///
    /// - Returns: `PauseCampaignOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func pauseCampaign(input: PauseCampaignInput) async throws -> PauseCampaignOutput
    /// Creates dials requests for the specified campaign Amazon Connect account. This API is idempotent.
    ///
    /// - Parameter PutDialRequestBatchInput : PutDialRequestBatchRequest
    ///
    /// - Returns: `PutDialRequestBatchOutput` : PutDialRequestBatchResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func putDialRequestBatch(input: PutDialRequestBatchInput) async throws -> PutDialRequestBatchOutput
    /// Stops a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter ResumeCampaignInput : ResumeCampaignRequest
    ///
    /// - Returns: `ResumeCampaignOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func resumeCampaign(input: ResumeCampaignInput) async throws -> ResumeCampaignOutput
    /// Starts a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter StartCampaignInput : StartCampaignRequest
    ///
    /// - Returns: `StartCampaignOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startCampaign(input: StartCampaignInput) async throws -> StartCampaignOutput
    /// Onboard the specific Amazon Connect instance to Connect Campaigns.
    ///
    /// - Parameter StartInstanceOnboardingJobInput : The request for StartInstanceOnboardingJob API.
    ///
    /// - Returns: `StartInstanceOnboardingJobOutput` : The response for StartInstanceOnboardingJob API.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startInstanceOnboardingJob(input: StartInstanceOnboardingJobInput) async throws -> StartInstanceOnboardingJobOutput
    /// Stops a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter StopCampaignInput : StopCampaignRequest
    ///
    /// - Returns: `StopCampaignOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func stopCampaign(input: StopCampaignInput) async throws -> StopCampaignOutput
    /// Tag a resource.
    ///
    /// - Parameter TagResourceInput : TagResourceRequest
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Untag a resource.
    ///
    /// - Parameter UntagResourceInput : UntagResourceRequest
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates the dialer config of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignDialerConfigInput : UpdateCampaignDialerConfigRequest
    ///
    /// - Returns: `UpdateCampaignDialerConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignDialerConfig(input: UpdateCampaignDialerConfigInput) async throws -> UpdateCampaignDialerConfigOutput
    /// Updates the name of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignNameInput : UpdateCampaignNameRequest
    ///
    /// - Returns: `UpdateCampaignNameOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignName(input: UpdateCampaignNameInput) async throws -> UpdateCampaignNameOutput
    /// Updates the outbound call config of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignOutboundCallConfigInput : UpdateCampaignOutboundCallConfigRequest
    ///
    /// - Returns: `UpdateCampaignOutboundCallConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignOutboundCallConfig(input: UpdateCampaignOutboundCallConfigInput) async throws -> UpdateCampaignOutboundCallConfigOutput
}

public enum ConnectCampaignsClientTypes {}
