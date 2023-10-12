// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon Chime SDK media pipeline APIs in this section allow software developers to create Amazon Chime SDK media pipelines that capture, concatenate, or stream your Amazon Chime SDK meetings. For more information about media pipelines, see [Amazon Chime SDK media pipelines](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).
public protocol ChimeSDKMediaPipelinesClientProtocol {
    /// Creates a media pipeline.
    ///
    /// - Parameter CreateMediaCapturePipelineInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaCapturePipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaCapturePipeline(input: CreateMediaCapturePipelineInput) async throws -> CreateMediaCapturePipelineOutput
    /// Creates a media concatenation pipeline.
    ///
    /// - Parameter CreateMediaConcatenationPipelineInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaConcatenationPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaConcatenationPipeline(input: CreateMediaConcatenationPipelineInput) async throws -> CreateMediaConcatenationPipelineOutput
    /// Creates a media insights pipeline.
    ///
    /// - Parameter CreateMediaInsightsPipelineInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaInsightsPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaInsightsPipeline(input: CreateMediaInsightsPipelineInput) async throws -> CreateMediaInsightsPipelineOutput
    /// A structure that contains the static configurations for a media insights pipeline.
    ///
    /// - Parameter CreateMediaInsightsPipelineConfigurationInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaInsightsPipelineConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaInsightsPipelineConfiguration(input: CreateMediaInsightsPipelineConfigurationInput) async throws -> CreateMediaInsightsPipelineConfigurationOutput
    /// Creates a media live connector pipeline in an Amazon Chime SDK meeting.
    ///
    /// - Parameter CreateMediaLiveConnectorPipelineInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaLiveConnectorPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaLiveConnectorPipeline(input: CreateMediaLiveConnectorPipelineInput) async throws -> CreateMediaLiveConnectorPipelineOutput
    /// Creates an Kinesis video stream pool for the media pipeline.
    ///
    /// - Parameter CreateMediaPipelineKinesisVideoStreamPoolInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaPipelineKinesisVideoStreamPoolOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaPipelineKinesisVideoStreamPool(input: CreateMediaPipelineKinesisVideoStreamPoolInput) async throws -> CreateMediaPipelineKinesisVideoStreamPoolOutput
    /// Creates a streaming media pipeline.
    ///
    /// - Parameter CreateMediaStreamPipelineInput : [no documentation found]
    ///
    /// - Returns: `CreateMediaStreamPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func createMediaStreamPipeline(input: CreateMediaStreamPipelineInput) async throws -> CreateMediaStreamPipelineOutput
    /// Deletes the media pipeline.
    ///
    /// - Parameter DeleteMediaCapturePipelineInput : [no documentation found]
    ///
    /// - Returns: `DeleteMediaCapturePipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteMediaCapturePipeline(input: DeleteMediaCapturePipelineInput) async throws -> DeleteMediaCapturePipelineOutput
    /// Deletes the specified configuration settings.
    ///
    /// - Parameter DeleteMediaInsightsPipelineConfigurationInput : [no documentation found]
    ///
    /// - Returns: `DeleteMediaInsightsPipelineConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteMediaInsightsPipelineConfiguration(input: DeleteMediaInsightsPipelineConfigurationInput) async throws -> DeleteMediaInsightsPipelineConfigurationOutput
    /// Deletes the media pipeline.
    ///
    /// - Parameter DeleteMediaPipelineInput : [no documentation found]
    ///
    /// - Returns: `DeleteMediaPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteMediaPipeline(input: DeleteMediaPipelineInput) async throws -> DeleteMediaPipelineOutput
    /// Deletes an Kinesis video stream pool.
    ///
    /// - Parameter DeleteMediaPipelineKinesisVideoStreamPoolInput : [no documentation found]
    ///
    /// - Returns: `DeleteMediaPipelineKinesisVideoStreamPoolOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func deleteMediaPipelineKinesisVideoStreamPool(input: DeleteMediaPipelineKinesisVideoStreamPoolInput) async throws -> DeleteMediaPipelineKinesisVideoStreamPoolOutput
    /// Gets an existing media pipeline.
    ///
    /// - Parameter GetMediaCapturePipelineInput : [no documentation found]
    ///
    /// - Returns: `GetMediaCapturePipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getMediaCapturePipeline(input: GetMediaCapturePipelineInput) async throws -> GetMediaCapturePipelineOutput
    /// Gets the configuration settings for a media insights pipeline.
    ///
    /// - Parameter GetMediaInsightsPipelineConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetMediaInsightsPipelineConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getMediaInsightsPipelineConfiguration(input: GetMediaInsightsPipelineConfigurationInput) async throws -> GetMediaInsightsPipelineConfigurationOutput
    /// Gets an existing media pipeline.
    ///
    /// - Parameter GetMediaPipelineInput : [no documentation found]
    ///
    /// - Returns: `GetMediaPipelineOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getMediaPipeline(input: GetMediaPipelineInput) async throws -> GetMediaPipelineOutput
    /// Gets an Kinesis video stream pool.
    ///
    /// - Parameter GetMediaPipelineKinesisVideoStreamPoolInput : [no documentation found]
    ///
    /// - Returns: `GetMediaPipelineKinesisVideoStreamPoolOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getMediaPipelineKinesisVideoStreamPool(input: GetMediaPipelineKinesisVideoStreamPoolInput) async throws -> GetMediaPipelineKinesisVideoStreamPoolOutput
    /// Retrieves the details of the specified speaker search task.
    ///
    /// - Parameter GetSpeakerSearchTaskInput : [no documentation found]
    ///
    /// - Returns: `GetSpeakerSearchTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getSpeakerSearchTask(input: GetSpeakerSearchTaskInput) async throws -> GetSpeakerSearchTaskOutput
    /// Retrieves the details of a voice tone analysis task.
    ///
    /// - Parameter GetVoiceToneAnalysisTaskInput : [no documentation found]
    ///
    /// - Returns: `GetVoiceToneAnalysisTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func getVoiceToneAnalysisTask(input: GetVoiceToneAnalysisTaskInput) async throws -> GetVoiceToneAnalysisTaskOutput
    /// Returns a list of media pipelines.
    ///
    /// - Parameter ListMediaCapturePipelinesInput : [no documentation found]
    ///
    /// - Returns: `ListMediaCapturePipelinesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listMediaCapturePipelines(input: ListMediaCapturePipelinesInput) async throws -> ListMediaCapturePipelinesOutput
    /// Lists the available media insights pipeline configurations.
    ///
    /// - Parameter ListMediaInsightsPipelineConfigurationsInput : [no documentation found]
    ///
    /// - Returns: `ListMediaInsightsPipelineConfigurationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listMediaInsightsPipelineConfigurations(input: ListMediaInsightsPipelineConfigurationsInput) async throws -> ListMediaInsightsPipelineConfigurationsOutput
    /// Lists the video stream pools in the media pipeline.
    ///
    /// - Parameter ListMediaPipelineKinesisVideoStreamPoolsInput : [no documentation found]
    ///
    /// - Returns: `ListMediaPipelineKinesisVideoStreamPoolsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listMediaPipelineKinesisVideoStreamPools(input: ListMediaPipelineKinesisVideoStreamPoolsInput) async throws -> ListMediaPipelineKinesisVideoStreamPoolsOutput
    /// Returns a list of media pipelines.
    ///
    /// - Parameter ListMediaPipelinesInput : [no documentation found]
    ///
    /// - Returns: `ListMediaPipelinesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `ResourceLimitExceededException` : The request exceeds the resource limit.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listMediaPipelines(input: ListMediaPipelinesInput) async throws -> ListMediaPipelinesOutput
    /// Lists the tags available for a media pipeline.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Starts a speaker search task. Before starting any speaker search tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.
    ///
    /// - Parameter StartSpeakerSearchTaskInput : [no documentation found]
    ///
    /// - Returns: `StartSpeakerSearchTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func startSpeakerSearchTask(input: StartSpeakerSearchTaskInput) async throws -> StartSpeakerSearchTaskOutput
    /// Starts a voice tone analysis task. For more information about voice tone analysis, see [Using Amazon Chime SDK voice analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html) in the Amazon Chime SDK Developer Guide. Before starting any voice tone analysis tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.
    ///
    /// - Parameter StartVoiceToneAnalysisTaskInput : [no documentation found]
    ///
    /// - Returns: `StartVoiceToneAnalysisTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func startVoiceToneAnalysisTask(input: StartVoiceToneAnalysisTaskInput) async throws -> StartVoiceToneAnalysisTaskOutput
    /// Stops a speaker search task.
    ///
    /// - Parameter StopSpeakerSearchTaskInput : [no documentation found]
    ///
    /// - Returns: `StopSpeakerSearchTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func stopSpeakerSearchTask(input: StopSpeakerSearchTaskInput) async throws -> StopSpeakerSearchTaskOutput
    /// Stops a voice tone analysis task.
    ///
    /// - Parameter StopVoiceToneAnalysisTaskInput : [no documentation found]
    ///
    /// - Returns: `StopVoiceToneAnalysisTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func stopVoiceToneAnalysisTask(input: StopVoiceToneAnalysisTaskInput) async throws -> StopVoiceToneAnalysisTaskOutput
    /// The ARN of the media pipeline that you want to tag. Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes any tags from a media pipeline.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates the media insights pipeline's configuration settings.
    ///
    /// - Parameter UpdateMediaInsightsPipelineConfigurationInput : [no documentation found]
    ///
    /// - Returns: `UpdateMediaInsightsPipelineConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateMediaInsightsPipelineConfiguration(input: UpdateMediaInsightsPipelineConfigurationInput) async throws -> UpdateMediaInsightsPipelineConfigurationOutput
    /// Updates the status of a media insights pipeline.
    ///
    /// - Parameter UpdateMediaInsightsPipelineStatusInput : [no documentation found]
    ///
    /// - Returns: `UpdateMediaInsightsPipelineStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateMediaInsightsPipelineStatus(input: UpdateMediaInsightsPipelineStatusInput) async throws -> UpdateMediaInsightsPipelineStatusOutput
    /// Updates an Kinesis video stream pool in a media pipeline.
    ///
    /// - Parameter UpdateMediaPipelineKinesisVideoStreamPoolInput : [no documentation found]
    ///
    /// - Returns: `UpdateMediaPipelineKinesisVideoStreamPoolOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input parameters don't match the service's restrictions.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `ForbiddenException` : The client is permanently forbidden from making the request.
    /// - `NotFoundException` : One or more of the resources in the request does not exist in the system.
    /// - `ServiceFailureException` : The service encountered an unexpected error.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottledClientException` : The client exceeded its request rate limit.
    /// - `UnauthorizedClientException` : The client is not currently authorized to make the request.
    func updateMediaPipelineKinesisVideoStreamPool(input: UpdateMediaPipelineKinesisVideoStreamPoolInput) async throws -> UpdateMediaPipelineKinesisVideoStreamPoolOutput
}

public enum ChimeSDKMediaPipelinesClientTypes {}
