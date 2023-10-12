// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SageMakerClientProtocol {

    static func endpointDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput> {
        let acceptors: [WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeEndpointInput, result: Result<DescribeEndpointOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
            .init(state: .failure, matcher: { (input: DescribeEndpointInput, result: Result<DescribeEndpointOutput, Error>) -> Bool in
                // JMESPath expression: "EndpointStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let endpointStatus = output.endpointStatus
                return JMESUtils.compare(endpointStatus, ==, "Failed")
            }),
        ]
        return try WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the EndpointDeleted event on the describeEndpoint operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeEndpointInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilEndpointDeleted(options: WaiterOptions, input: DescribeEndpointInput) async throws -> WaiterOutcome<DescribeEndpointOutput> {
        let waiter = Waiter(config: try Self.endpointDeletedWaiterConfig(), operation: self.describeEndpoint(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func endpointInServiceWaiterConfig() throws -> WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput> {
        let acceptors: [WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeEndpointInput, result: Result<DescribeEndpointOutput, Error>) -> Bool in
                // JMESPath expression: "EndpointStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "InService"
                guard case .success(let output) = result else { return false }
                let endpointStatus = output.endpointStatus
                return JMESUtils.compare(endpointStatus, ==, "InService")
            }),
            .init(state: .failure, matcher: { (input: DescribeEndpointInput, result: Result<DescribeEndpointOutput, Error>) -> Bool in
                // JMESPath expression: "EndpointStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let endpointStatus = output.endpointStatus
                return JMESUtils.compare(endpointStatus, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: DescribeEndpointInput, result: Result<DescribeEndpointOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeEndpointInput, DescribeEndpointOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the EndpointInService event on the describeEndpoint operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeEndpointInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilEndpointInService(options: WaiterOptions, input: DescribeEndpointInput) async throws -> WaiterOutcome<DescribeEndpointOutput> {
        let waiter = Waiter(config: try Self.endpointInServiceWaiterConfig(), operation: self.describeEndpoint(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func imageCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeImageInput, DescribeImageOutput> {
        let acceptors: [WaiterConfiguration<DescribeImageInput, DescribeImageOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                // JMESPath expression: "ImageStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATED"
                guard case .success(let output) = result else { return false }
                let imageStatus = output.imageStatus
                return JMESUtils.compare(imageStatus, ==, "CREATED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                // JMESPath expression: "ImageStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATE_FAILED"
                guard case .success(let output) = result else { return false }
                let imageStatus = output.imageStatus
                return JMESUtils.compare(imageStatus, ==, "CREATE_FAILED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeImageInput, DescribeImageOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageCreated event on the describeImage operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageCreated(options: WaiterOptions, input: DescribeImageInput) async throws -> WaiterOutcome<DescribeImageOutput> {
        let waiter = Waiter(config: try Self.imageCreatedWaiterConfig(), operation: self.describeImage(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func imageDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeImageInput, DescribeImageOutput> {
        let acceptors: [WaiterConfiguration<DescribeImageInput, DescribeImageOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                // JMESPath expression: "ImageStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETE_FAILED"
                guard case .success(let output) = result else { return false }
                let imageStatus = output.imageStatus
                return JMESUtils.compare(imageStatus, ==, "DELETE_FAILED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeImageInput, DescribeImageOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageDeleted event on the describeImage operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageDeleted(options: WaiterOptions, input: DescribeImageInput) async throws -> WaiterOutcome<DescribeImageOutput> {
        let waiter = Waiter(config: try Self.imageDeletedWaiterConfig(), operation: self.describeImage(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func imageUpdatedWaiterConfig() throws -> WaiterConfiguration<DescribeImageInput, DescribeImageOutput> {
        let acceptors: [WaiterConfiguration<DescribeImageInput, DescribeImageOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                // JMESPath expression: "ImageStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATED"
                guard case .success(let output) = result else { return false }
                let imageStatus = output.imageStatus
                return JMESUtils.compare(imageStatus, ==, "CREATED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                // JMESPath expression: "ImageStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "UPDATE_FAILED"
                guard case .success(let output) = result else { return false }
                let imageStatus = output.imageStatus
                return JMESUtils.compare(imageStatus, ==, "UPDATE_FAILED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageInput, result: Result<DescribeImageOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeImageInput, DescribeImageOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageUpdated event on the describeImage operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageUpdated(options: WaiterOptions, input: DescribeImageInput) async throws -> WaiterOutcome<DescribeImageOutput> {
        let waiter = Waiter(config: try Self.imageUpdatedWaiterConfig(), operation: self.describeImage(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func imageVersionCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput> {
        let acceptors: [WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                // JMESPath expression: "ImageVersionStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATED"
                guard case .success(let output) = result else { return false }
                let imageVersionStatus = output.imageVersionStatus
                return JMESUtils.compare(imageVersionStatus, ==, "CREATED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                // JMESPath expression: "ImageVersionStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATE_FAILED"
                guard case .success(let output) = result else { return false }
                let imageVersionStatus = output.imageVersionStatus
                return JMESUtils.compare(imageVersionStatus, ==, "CREATE_FAILED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageVersionCreated event on the describeImageVersion operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageVersionInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageVersionCreated(options: WaiterOptions, input: DescribeImageVersionInput) async throws -> WaiterOutcome<DescribeImageVersionOutput> {
        let waiter = Waiter(config: try Self.imageVersionCreatedWaiterConfig(), operation: self.describeImageVersion(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func imageVersionDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput> {
        let acceptors: [WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
            .init(state: .failure, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                // JMESPath expression: "ImageVersionStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETE_FAILED"
                guard case .success(let output) = result else { return false }
                let imageVersionStatus = output.imageVersionStatus
                return JMESUtils.compare(imageVersionStatus, ==, "DELETE_FAILED")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageVersionInput, result: Result<DescribeImageVersionOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeImageVersionInput, DescribeImageVersionOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageVersionDeleted event on the describeImageVersion operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageVersionInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageVersionDeleted(options: WaiterOptions, input: DescribeImageVersionInput) async throws -> WaiterOutcome<DescribeImageVersionOutput> {
        let waiter = Waiter(config: try Self.imageVersionDeletedWaiterConfig(), operation: self.describeImageVersion(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func notebookInstanceDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput> {
        let acceptors: [WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
            .init(state: .failure, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                // JMESPath expression: "NotebookInstanceStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let notebookInstanceStatus = output.notebookInstanceStatus
                return JMESUtils.compare(notebookInstanceStatus, ==, "Failed")
            }),
        ]
        return try WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the NotebookInstanceDeleted event on the describeNotebookInstance operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeNotebookInstanceInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilNotebookInstanceDeleted(options: WaiterOptions, input: DescribeNotebookInstanceInput) async throws -> WaiterOutcome<DescribeNotebookInstanceOutput> {
        let waiter = Waiter(config: try Self.notebookInstanceDeletedWaiterConfig(), operation: self.describeNotebookInstance(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func notebookInstanceInServiceWaiterConfig() throws -> WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput> {
        let acceptors: [WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                // JMESPath expression: "NotebookInstanceStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "InService"
                guard case .success(let output) = result else { return false }
                let notebookInstanceStatus = output.notebookInstanceStatus
                return JMESUtils.compare(notebookInstanceStatus, ==, "InService")
            }),
            .init(state: .failure, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                // JMESPath expression: "NotebookInstanceStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let notebookInstanceStatus = output.notebookInstanceStatus
                return JMESUtils.compare(notebookInstanceStatus, ==, "Failed")
            }),
        ]
        return try WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the NotebookInstanceInService event on the describeNotebookInstance operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeNotebookInstanceInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilNotebookInstanceInService(options: WaiterOptions, input: DescribeNotebookInstanceInput) async throws -> WaiterOutcome<DescribeNotebookInstanceOutput> {
        let waiter = Waiter(config: try Self.notebookInstanceInServiceWaiterConfig(), operation: self.describeNotebookInstance(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func notebookInstanceStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput> {
        let acceptors: [WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                // JMESPath expression: "NotebookInstanceStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Stopped"
                guard case .success(let output) = result else { return false }
                let notebookInstanceStatus = output.notebookInstanceStatus
                return JMESUtils.compare(notebookInstanceStatus, ==, "Stopped")
            }),
            .init(state: .failure, matcher: { (input: DescribeNotebookInstanceInput, result: Result<DescribeNotebookInstanceOutput, Error>) -> Bool in
                // JMESPath expression: "NotebookInstanceStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let notebookInstanceStatus = output.notebookInstanceStatus
                return JMESUtils.compare(notebookInstanceStatus, ==, "Failed")
            }),
        ]
        return try WaiterConfiguration<DescribeNotebookInstanceInput, DescribeNotebookInstanceOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the NotebookInstanceStopped event on the describeNotebookInstance operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeNotebookInstanceInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilNotebookInstanceStopped(options: WaiterOptions, input: DescribeNotebookInstanceInput) async throws -> WaiterOutcome<DescribeNotebookInstanceOutput> {
        let waiter = Waiter(config: try Self.notebookInstanceStoppedWaiterConfig(), operation: self.describeNotebookInstance(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func processingJobCompletedOrStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeProcessingJobInput, DescribeProcessingJobOutput> {
        let acceptors: [WaiterConfiguration<DescribeProcessingJobInput, DescribeProcessingJobOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeProcessingJobInput, result: Result<DescribeProcessingJobOutput, Error>) -> Bool in
                // JMESPath expression: "ProcessingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Completed"
                guard case .success(let output) = result else { return false }
                let processingJobStatus = output.processingJobStatus
                return JMESUtils.compare(processingJobStatus, ==, "Completed")
            }),
            .init(state: .success, matcher: { (input: DescribeProcessingJobInput, result: Result<DescribeProcessingJobOutput, Error>) -> Bool in
                // JMESPath expression: "ProcessingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Stopped"
                guard case .success(let output) = result else { return false }
                let processingJobStatus = output.processingJobStatus
                return JMESUtils.compare(processingJobStatus, ==, "Stopped")
            }),
            .init(state: .failure, matcher: { (input: DescribeProcessingJobInput, result: Result<DescribeProcessingJobOutput, Error>) -> Bool in
                // JMESPath expression: "ProcessingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let processingJobStatus = output.processingJobStatus
                return JMESUtils.compare(processingJobStatus, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: DescribeProcessingJobInput, result: Result<DescribeProcessingJobOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeProcessingJobInput, DescribeProcessingJobOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ProcessingJobCompletedOrStopped event on the describeProcessingJob operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeProcessingJobInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilProcessingJobCompletedOrStopped(options: WaiterOptions, input: DescribeProcessingJobInput) async throws -> WaiterOutcome<DescribeProcessingJobOutput> {
        let waiter = Waiter(config: try Self.processingJobCompletedOrStoppedWaiterConfig(), operation: self.describeProcessingJob(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func trainingJobCompletedOrStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeTrainingJobInput, DescribeTrainingJobOutput> {
        let acceptors: [WaiterConfiguration<DescribeTrainingJobInput, DescribeTrainingJobOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeTrainingJobInput, result: Result<DescribeTrainingJobOutput, Error>) -> Bool in
                // JMESPath expression: "TrainingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Completed"
                guard case .success(let output) = result else { return false }
                let trainingJobStatus = output.trainingJobStatus
                return JMESUtils.compare(trainingJobStatus, ==, "Completed")
            }),
            .init(state: .success, matcher: { (input: DescribeTrainingJobInput, result: Result<DescribeTrainingJobOutput, Error>) -> Bool in
                // JMESPath expression: "TrainingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Stopped"
                guard case .success(let output) = result else { return false }
                let trainingJobStatus = output.trainingJobStatus
                return JMESUtils.compare(trainingJobStatus, ==, "Stopped")
            }),
            .init(state: .failure, matcher: { (input: DescribeTrainingJobInput, result: Result<DescribeTrainingJobOutput, Error>) -> Bool in
                // JMESPath expression: "TrainingJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let trainingJobStatus = output.trainingJobStatus
                return JMESUtils.compare(trainingJobStatus, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: DescribeTrainingJobInput, result: Result<DescribeTrainingJobOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeTrainingJobInput, DescribeTrainingJobOutput>(acceptors: acceptors, minDelay: 120.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the TrainingJobCompletedOrStopped event on the describeTrainingJob operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeTrainingJobInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilTrainingJobCompletedOrStopped(options: WaiterOptions, input: DescribeTrainingJobInput) async throws -> WaiterOutcome<DescribeTrainingJobOutput> {
        let waiter = Waiter(config: try Self.trainingJobCompletedOrStoppedWaiterConfig(), operation: self.describeTrainingJob(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func transformJobCompletedOrStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeTransformJobInput, DescribeTransformJobOutput> {
        let acceptors: [WaiterConfiguration<DescribeTransformJobInput, DescribeTransformJobOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeTransformJobInput, result: Result<DescribeTransformJobOutput, Error>) -> Bool in
                // JMESPath expression: "TransformJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Completed"
                guard case .success(let output) = result else { return false }
                let transformJobStatus = output.transformJobStatus
                return JMESUtils.compare(transformJobStatus, ==, "Completed")
            }),
            .init(state: .success, matcher: { (input: DescribeTransformJobInput, result: Result<DescribeTransformJobOutput, Error>) -> Bool in
                // JMESPath expression: "TransformJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Stopped"
                guard case .success(let output) = result else { return false }
                let transformJobStatus = output.transformJobStatus
                return JMESUtils.compare(transformJobStatus, ==, "Stopped")
            }),
            .init(state: .failure, matcher: { (input: DescribeTransformJobInput, result: Result<DescribeTransformJobOutput, Error>) -> Bool in
                // JMESPath expression: "TransformJobStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let transformJobStatus = output.transformJobStatus
                return JMESUtils.compare(transformJobStatus, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: DescribeTransformJobInput, result: Result<DescribeTransformJobOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ValidationException"
            }),
        ]
        return try WaiterConfiguration<DescribeTransformJobInput, DescribeTransformJobOutput>(acceptors: acceptors, minDelay: 60.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the TransformJobCompletedOrStopped event on the describeTransformJob operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeTransformJobInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilTransformJobCompletedOrStopped(options: WaiterOptions, input: DescribeTransformJobInput) async throws -> WaiterOutcome<DescribeTransformJobOutput> {
        let waiter = Waiter(config: try Self.transformJobCompletedOrStoppedWaiterConfig(), operation: self.describeTransformJob(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
