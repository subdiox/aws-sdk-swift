// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Connect Wisdom delivers agents the information they need to solve customer issues as they're actively speaking with customers. Agents can search across connected repositories from within their agent desktop to find answers quickly. Use Amazon Connect Wisdom to create an assistant and a knowledge base, for example, or manage content by uploading custom files.
public protocol WisdomClientProtocol {
    /// Creates an Amazon Connect Wisdom assistant.
    ///
    /// - Parameter CreateAssistantInput : [no documentation found]
    ///
    /// - Returns: `CreateAssistantOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ServiceQuotaExceededException` : You've exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use service quotas to request a service quota increase.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func createAssistant(input: CreateAssistantInput) async throws -> CreateAssistantOutput
    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the only supported association is with a knowledge base. An assistant can have only a single association.
    ///
    /// - Parameter CreateAssistantAssociationInput : [no documentation found]
    ///
    /// - Returns: `CreateAssistantAssociationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : You've exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use service quotas to request a service quota increase.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func createAssistantAssociation(input: CreateAssistantAssociationInput) async throws -> CreateAssistantAssociationOutput
    /// Creates Wisdom content. Before to calling this API, use [StartContentUpload](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html) to upload an asset.
    ///
    /// - Parameter CreateContentInput : [no documentation found]
    ///
    /// - Returns: `CreateContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : You've exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use service quotas to request a service quota increase.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func createContent(input: CreateContentInput) async throws -> CreateContentOutput
    /// Creates a knowledge base. When using this API, you cannot reuse [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html) DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do, you'll get an InvalidRequestException error. For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:
    ///
    /// * Call [DeleteKnowledgeBase](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html).
    ///
    /// * Call [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).
    ///
    /// * Call [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) to recreate the DataIntegration or a create different one.
    ///
    /// * Call CreateKnowledgeBase.
    ///
    /// - Parameter CreateKnowledgeBaseInput : [no documentation found]
    ///
    /// - Returns: `CreateKnowledgeBaseOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ServiceQuotaExceededException` : You've exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use service quotas to request a service quota increase.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func createKnowledgeBase(input: CreateKnowledgeBaseInput) async throws -> CreateKnowledgeBaseOutput
    /// Creates a session. A session is a contextual container used for generating recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is enabled.
    ///
    /// - Parameter CreateSessionInput : [no documentation found]
    ///
    /// - Returns: `CreateSessionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func createSession(input: CreateSessionInput) async throws -> CreateSessionOutput
    /// Deletes an assistant.
    ///
    /// - Parameter DeleteAssistantInput : [no documentation found]
    ///
    /// - Returns: `DeleteAssistantOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func deleteAssistant(input: DeleteAssistantInput) async throws -> DeleteAssistantOutput
    /// Deletes an assistant association.
    ///
    /// - Parameter DeleteAssistantAssociationInput : [no documentation found]
    ///
    /// - Returns: `DeleteAssistantAssociationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func deleteAssistantAssociation(input: DeleteAssistantAssociationInput) async throws -> DeleteAssistantAssociationOutput
    /// Deletes the content.
    ///
    /// - Parameter DeleteContentInput : [no documentation found]
    ///
    /// - Returns: `DeleteContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func deleteContent(input: DeleteContentInput) async throws -> DeleteContentOutput
    /// Deletes the knowledge base. When you use this API to delete an external knowledge base such as Salesforce or ServiceNow, you must also delete the [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html) DataIntegration. This is because you can't reuse the DataIntegration after it's been associated with an external knowledge base. However, you can delete and recreate it. See [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html) and [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) in the Amazon AppIntegrations API Reference.
    ///
    /// - Parameter DeleteKnowledgeBaseInput : [no documentation found]
    ///
    /// - Returns: `DeleteKnowledgeBaseOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. For example, if you're using a Create API (such as CreateAssistant) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func deleteKnowledgeBase(input: DeleteKnowledgeBaseInput) async throws -> DeleteKnowledgeBaseOutput
    /// Retrieves information about an assistant.
    ///
    /// - Parameter GetAssistantInput : [no documentation found]
    ///
    /// - Returns: `GetAssistantOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getAssistant(input: GetAssistantInput) async throws -> GetAssistantOutput
    /// Retrieves information about an assistant association.
    ///
    /// - Parameter GetAssistantAssociationInput : [no documentation found]
    ///
    /// - Returns: `GetAssistantAssociationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getAssistantAssociation(input: GetAssistantAssociationInput) async throws -> GetAssistantAssociationOutput
    /// Retrieves content, including a pre-signed URL to download the content.
    ///
    /// - Parameter GetContentInput : [no documentation found]
    ///
    /// - Returns: `GetContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getContent(input: GetContentInput) async throws -> GetContentOutput
    /// Retrieves summary information about the content.
    ///
    /// - Parameter GetContentSummaryInput : [no documentation found]
    ///
    /// - Returns: `GetContentSummaryOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getContentSummary(input: GetContentSummaryInput) async throws -> GetContentSummaryOutput
    /// Retrieves information about the knowledge base.
    ///
    /// - Parameter GetKnowledgeBaseInput : [no documentation found]
    ///
    /// - Returns: `GetKnowledgeBaseOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getKnowledgeBase(input: GetKnowledgeBaseInput) async throws -> GetKnowledgeBaseOutput
    /// Retrieves recommendations for the specified session. To avoid retrieving the same recommendations in subsequent calls, use [NotifyRecommendationsReceived](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html). This API supports long-polling behavior with the waitTimeSeconds parameter. Short poll is the default behavior and only returns recommendations already available. To perform a manual query against an assistant, use [QueryAssistant](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html).
    ///
    /// - Parameter GetRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getRecommendations(input: GetRecommendationsInput) async throws -> GetRecommendationsOutput
    /// Retrieves information for a specified session.
    ///
    /// - Parameter GetSessionInput : [no documentation found]
    ///
    /// - Returns: `GetSessionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func getSession(input: GetSessionInput) async throws -> GetSessionOutput
    /// Lists information about assistant associations.
    ///
    /// - Parameter ListAssistantAssociationsInput : [no documentation found]
    ///
    /// - Returns: `ListAssistantAssociationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func listAssistantAssociations(input: ListAssistantAssociationsInput) async throws -> ListAssistantAssociationsOutput
    /// Lists information about assistants.
    ///
    /// - Parameter ListAssistantsInput : [no documentation found]
    ///
    /// - Returns: `ListAssistantsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func listAssistants(input: ListAssistantsInput) async throws -> ListAssistantsOutput
    /// Lists the content.
    ///
    /// - Parameter ListContentsInput : [no documentation found]
    ///
    /// - Returns: `ListContentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func listContents(input: ListContentsInput) async throws -> ListContentsOutput
    /// Lists the knowledge bases.
    ///
    /// - Parameter ListKnowledgeBasesInput : [no documentation found]
    ///
    /// - Returns: `ListKnowledgeBasesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func listKnowledgeBases(input: ListKnowledgeBasesInput) async throws -> ListKnowledgeBasesOutput
    /// Lists the tags for the specified resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Removes the specified recommendations from the specified assistant's queue of newly available recommendations. You can use this API in conjunction with [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html) and a waitTimeSeconds input for long-polling behavior and avoiding duplicate recommendations.
    ///
    /// - Parameter NotifyRecommendationsReceivedInput : [no documentation found]
    ///
    /// - Returns: `NotifyRecommendationsReceivedOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func notifyRecommendationsReceived(input: NotifyRecommendationsReceivedInput) async throws -> NotifyRecommendationsReceivedOutput
    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html).
    ///
    /// - Parameter QueryAssistantInput : [no documentation found]
    ///
    /// - Returns: `QueryAssistantOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func queryAssistant(input: QueryAssistantInput) async throws -> QueryAssistantOutput
    /// Removes a URI template from a knowledge base.
    ///
    /// - Parameter RemoveKnowledgeBaseTemplateUriInput : [no documentation found]
    ///
    /// - Returns: `RemoveKnowledgeBaseTemplateUriOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func removeKnowledgeBaseTemplateUri(input: RemoveKnowledgeBaseTemplateUriInput) async throws -> RemoveKnowledgeBaseTemplateUriOutput
    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    ///
    /// - Parameter SearchContentInput : [no documentation found]
    ///
    /// - Returns: `SearchContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func searchContent(input: SearchContentInput) async throws -> SearchContentOutput
    /// Searches for sessions.
    ///
    /// - Parameter SearchSessionsInput : [no documentation found]
    ///
    /// - Returns: `SearchSessionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func searchSessions(input: SearchSessionsInput) async throws -> SearchSessionsOutput
    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT request to the returned URL with your file, making sure to include the required headers. Then use [CreateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html) to finalize the content creation process or [UpdateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html) to modify an existing resource. You can only upload content to a knowledge base of type CUSTOM.
    ///
    /// - Parameter StartContentUploadInput : [no documentation found]
    ///
    /// - Returns: `StartContentUploadOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func startContentUpload(input: StartContentUploadInput) async throws -> StartContentUploadOutput
    /// Adds the specified tags to the specified resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `TooManyTagsException` : Amazon Connect Wisdom throws this exception if you have too many tags in your tag set.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes the specified tags from the specified resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates information about the content.
    ///
    /// - Parameter UpdateContentInput : [no documentation found]
    ///
    /// - Returns: `UpdateContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `PreconditionFailedException` : The provided revisionId does not match, indicating the content has been modified since it was last read.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func updateContent(input: UpdateContentInput) async throws -> UpdateContentOutput
    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases of type EXTERNAL. Include a single variable in ${variable} format; this interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce article, it has an Id value, and you can set the template URI to https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    ///
    /// - Parameter UpdateKnowledgeBaseTemplateUriInput : [no documentation found]
    ///
    /// - Returns: `UpdateKnowledgeBaseTemplateUriOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by a service.
    func updateKnowledgeBaseTemplateUri(input: UpdateKnowledgeBaseTemplateUriInput) async throws -> UpdateKnowledgeBaseTemplateUriOutput
}

public enum WisdomClientTypes {}
