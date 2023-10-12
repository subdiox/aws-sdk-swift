// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ComprehendClient {
    /// Paginate over `[ListDatasetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetsOutput`
    public func listDatasetsPaginated(input: ListDatasetsInput) -> ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput>(input: input, inputKey: \ListDatasetsInput.nextToken, outputKey: \ListDatasetsOutput.nextToken, paginationFunction: self.listDatasets(input:))
    }
}

extension ListDatasetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetsInput {
        return ListDatasetsInput(
            filter: self.filter,
            flywheelArn: self.flywheelArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListDocumentClassificationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDocumentClassificationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassificationJobsOutput`
    public func listDocumentClassificationJobsPaginated(input: ListDocumentClassificationJobsInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassificationJobsInput, ListDocumentClassificationJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassificationJobsInput, ListDocumentClassificationJobsOutput>(input: input, inputKey: \ListDocumentClassificationJobsInput.nextToken, outputKey: \ListDocumentClassificationJobsOutput.nextToken, paginationFunction: self.listDocumentClassificationJobs(input:))
    }
}

extension ListDocumentClassificationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassificationJobsInput {
        return ListDocumentClassificationJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListDocumentClassifiersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDocumentClassifiersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassifiersOutput`
    public func listDocumentClassifiersPaginated(input: ListDocumentClassifiersInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassifiersInput, ListDocumentClassifiersOutput> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassifiersInput, ListDocumentClassifiersOutput>(input: input, inputKey: \ListDocumentClassifiersInput.nextToken, outputKey: \ListDocumentClassifiersOutput.nextToken, paginationFunction: self.listDocumentClassifiers(input:))
    }
}

extension ListDocumentClassifiersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassifiersInput {
        return ListDocumentClassifiersInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListDocumentClassifierSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDocumentClassifierSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassifierSummariesOutput`
    public func listDocumentClassifierSummariesPaginated(input: ListDocumentClassifierSummariesInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassifierSummariesInput, ListDocumentClassifierSummariesOutput> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassifierSummariesInput, ListDocumentClassifierSummariesOutput>(input: input, inputKey: \ListDocumentClassifierSummariesInput.nextToken, outputKey: \ListDocumentClassifierSummariesOutput.nextToken, paginationFunction: self.listDocumentClassifierSummaries(input:))
    }
}

extension ListDocumentClassifierSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassifierSummariesInput {
        return ListDocumentClassifierSummariesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListDominantLanguageDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDominantLanguageDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDominantLanguageDetectionJobsOutput`
    public func listDominantLanguageDetectionJobsPaginated(input: ListDominantLanguageDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListDominantLanguageDetectionJobsInput, ListDominantLanguageDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDominantLanguageDetectionJobsInput, ListDominantLanguageDetectionJobsOutput>(input: input, inputKey: \ListDominantLanguageDetectionJobsInput.nextToken, outputKey: \ListDominantLanguageDetectionJobsOutput.nextToken, paginationFunction: self.listDominantLanguageDetectionJobs(input:))
    }
}

extension ListDominantLanguageDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDominantLanguageDetectionJobsInput {
        return ListDominantLanguageDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListEndpointsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEndpointsOutput`
    public func listEndpointsPaginated(input: ListEndpointsInput) -> ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutput> {
        return ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutput>(input: input, inputKey: \ListEndpointsInput.nextToken, outputKey: \ListEndpointsOutput.nextToken, paginationFunction: self.listEndpoints(input:))
    }
}

extension ListEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointsInput {
        return ListEndpointsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEndpointsInput, Output == ListEndpointsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEndpointsPaginated`
    /// to access the nested member `[ComprehendClientTypes.EndpointProperties]`
    /// - Returns: `[ComprehendClientTypes.EndpointProperties]`
    public func endpointPropertiesList() async throws -> [ComprehendClientTypes.EndpointProperties] {
        return try await self.asyncCompactMap { item in item.endpointPropertiesList }
    }
}
extension ComprehendClient {
    /// Paginate over `[ListEntitiesDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEntitiesDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEntitiesDetectionJobsOutput`
    public func listEntitiesDetectionJobsPaginated(input: ListEntitiesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListEntitiesDetectionJobsInput, ListEntitiesDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListEntitiesDetectionJobsInput, ListEntitiesDetectionJobsOutput>(input: input, inputKey: \ListEntitiesDetectionJobsInput.nextToken, outputKey: \ListEntitiesDetectionJobsOutput.nextToken, paginationFunction: self.listEntitiesDetectionJobs(input:))
    }
}

extension ListEntitiesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntitiesDetectionJobsInput {
        return ListEntitiesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListEntityRecognizersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEntityRecognizersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEntityRecognizersOutput`
    public func listEntityRecognizersPaginated(input: ListEntityRecognizersInput) -> ClientRuntime.PaginatorSequence<ListEntityRecognizersInput, ListEntityRecognizersOutput> {
        return ClientRuntime.PaginatorSequence<ListEntityRecognizersInput, ListEntityRecognizersOutput>(input: input, inputKey: \ListEntityRecognizersInput.nextToken, outputKey: \ListEntityRecognizersOutput.nextToken, paginationFunction: self.listEntityRecognizers(input:))
    }
}

extension ListEntityRecognizersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntityRecognizersInput {
        return ListEntityRecognizersInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListEntityRecognizerSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEntityRecognizerSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEntityRecognizerSummariesOutput`
    public func listEntityRecognizerSummariesPaginated(input: ListEntityRecognizerSummariesInput) -> ClientRuntime.PaginatorSequence<ListEntityRecognizerSummariesInput, ListEntityRecognizerSummariesOutput> {
        return ClientRuntime.PaginatorSequence<ListEntityRecognizerSummariesInput, ListEntityRecognizerSummariesOutput>(input: input, inputKey: \ListEntityRecognizerSummariesInput.nextToken, outputKey: \ListEntityRecognizerSummariesOutput.nextToken, paginationFunction: self.listEntityRecognizerSummaries(input:))
    }
}

extension ListEntityRecognizerSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntityRecognizerSummariesInput {
        return ListEntityRecognizerSummariesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListEventsDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEventsDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEventsDetectionJobsOutput`
    public func listEventsDetectionJobsPaginated(input: ListEventsDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListEventsDetectionJobsInput, ListEventsDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListEventsDetectionJobsInput, ListEventsDetectionJobsOutput>(input: input, inputKey: \ListEventsDetectionJobsInput.nextToken, outputKey: \ListEventsDetectionJobsOutput.nextToken, paginationFunction: self.listEventsDetectionJobs(input:))
    }
}

extension ListEventsDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventsDetectionJobsInput {
        return ListEventsDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListFlywheelIterationHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFlywheelIterationHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFlywheelIterationHistoryOutput`
    public func listFlywheelIterationHistoryPaginated(input: ListFlywheelIterationHistoryInput) -> ClientRuntime.PaginatorSequence<ListFlywheelIterationHistoryInput, ListFlywheelIterationHistoryOutput> {
        return ClientRuntime.PaginatorSequence<ListFlywheelIterationHistoryInput, ListFlywheelIterationHistoryOutput>(input: input, inputKey: \ListFlywheelIterationHistoryInput.nextToken, outputKey: \ListFlywheelIterationHistoryOutput.nextToken, paginationFunction: self.listFlywheelIterationHistory(input:))
    }
}

extension ListFlywheelIterationHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFlywheelIterationHistoryInput {
        return ListFlywheelIterationHistoryInput(
            filter: self.filter,
            flywheelArn: self.flywheelArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListFlywheelsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFlywheelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFlywheelsOutput`
    public func listFlywheelsPaginated(input: ListFlywheelsInput) -> ClientRuntime.PaginatorSequence<ListFlywheelsInput, ListFlywheelsOutput> {
        return ClientRuntime.PaginatorSequence<ListFlywheelsInput, ListFlywheelsOutput>(input: input, inputKey: \ListFlywheelsInput.nextToken, outputKey: \ListFlywheelsOutput.nextToken, paginationFunction: self.listFlywheels(input:))
    }
}

extension ListFlywheelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFlywheelsInput {
        return ListFlywheelsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListKeyPhrasesDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKeyPhrasesDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKeyPhrasesDetectionJobsOutput`
    public func listKeyPhrasesDetectionJobsPaginated(input: ListKeyPhrasesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListKeyPhrasesDetectionJobsInput, ListKeyPhrasesDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListKeyPhrasesDetectionJobsInput, ListKeyPhrasesDetectionJobsOutput>(input: input, inputKey: \ListKeyPhrasesDetectionJobsInput.nextToken, outputKey: \ListKeyPhrasesDetectionJobsOutput.nextToken, paginationFunction: self.listKeyPhrasesDetectionJobs(input:))
    }
}

extension ListKeyPhrasesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeyPhrasesDetectionJobsInput {
        return ListKeyPhrasesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListPiiEntitiesDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPiiEntitiesDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPiiEntitiesDetectionJobsOutput`
    public func listPiiEntitiesDetectionJobsPaginated(input: ListPiiEntitiesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListPiiEntitiesDetectionJobsInput, ListPiiEntitiesDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListPiiEntitiesDetectionJobsInput, ListPiiEntitiesDetectionJobsOutput>(input: input, inputKey: \ListPiiEntitiesDetectionJobsInput.nextToken, outputKey: \ListPiiEntitiesDetectionJobsOutput.nextToken, paginationFunction: self.listPiiEntitiesDetectionJobs(input:))
    }
}

extension ListPiiEntitiesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPiiEntitiesDetectionJobsInput {
        return ListPiiEntitiesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPiiEntitiesDetectionJobsInput, Output == ListPiiEntitiesDetectionJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPiiEntitiesDetectionJobsPaginated`
    /// to access the nested member `[ComprehendClientTypes.PiiEntitiesDetectionJobProperties]`
    /// - Returns: `[ComprehendClientTypes.PiiEntitiesDetectionJobProperties]`
    public func piiEntitiesDetectionJobPropertiesList() async throws -> [ComprehendClientTypes.PiiEntitiesDetectionJobProperties] {
        return try await self.asyncCompactMap { item in item.piiEntitiesDetectionJobPropertiesList }
    }
}
extension ComprehendClient {
    /// Paginate over `[ListSentimentDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSentimentDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSentimentDetectionJobsOutput`
    public func listSentimentDetectionJobsPaginated(input: ListSentimentDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListSentimentDetectionJobsInput, ListSentimentDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListSentimentDetectionJobsInput, ListSentimentDetectionJobsOutput>(input: input, inputKey: \ListSentimentDetectionJobsInput.nextToken, outputKey: \ListSentimentDetectionJobsOutput.nextToken, paginationFunction: self.listSentimentDetectionJobs(input:))
    }
}

extension ListSentimentDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSentimentDetectionJobsInput {
        return ListSentimentDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListTargetedSentimentDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTargetedSentimentDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTargetedSentimentDetectionJobsOutput`
    public func listTargetedSentimentDetectionJobsPaginated(input: ListTargetedSentimentDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListTargetedSentimentDetectionJobsInput, ListTargetedSentimentDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListTargetedSentimentDetectionJobsInput, ListTargetedSentimentDetectionJobsOutput>(input: input, inputKey: \ListTargetedSentimentDetectionJobsInput.nextToken, outputKey: \ListTargetedSentimentDetectionJobsOutput.nextToken, paginationFunction: self.listTargetedSentimentDetectionJobs(input:))
    }
}

extension ListTargetedSentimentDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetedSentimentDetectionJobsInput {
        return ListTargetedSentimentDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ComprehendClient {
    /// Paginate over `[ListTopicsDetectionJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTopicsDetectionJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTopicsDetectionJobsOutput`
    public func listTopicsDetectionJobsPaginated(input: ListTopicsDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListTopicsDetectionJobsInput, ListTopicsDetectionJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListTopicsDetectionJobsInput, ListTopicsDetectionJobsOutput>(input: input, inputKey: \ListTopicsDetectionJobsInput.nextToken, outputKey: \ListTopicsDetectionJobsOutput.nextToken, paginationFunction: self.listTopicsDetectionJobs(input:))
    }
}

extension ListTopicsDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTopicsDetectionJobsInput {
        return ListTopicsDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
