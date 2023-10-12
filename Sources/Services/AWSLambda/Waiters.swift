// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LambdaClientProtocol {

    static func functionActiveV2WaiterConfig() throws -> WaiterConfiguration<GetFunctionInput, GetFunctionOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionInput, GetFunctionOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Active"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let state = configuration?.state
                return JMESUtils.compare(state, ==, "Active")
            }),
            .init(state: .failure, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let state = configuration?.state
                return JMESUtils.compare(state, ==, "Failed")
            }),
            .init(state: .retry, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Pending"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let state = configuration?.state
                return JMESUtils.compare(state, ==, "Pending")
            }),
        ]
        return try WaiterConfiguration<GetFunctionInput, GetFunctionOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FunctionActiveV2 event on the getFunction operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFunctionActiveV2(options: WaiterOptions, input: GetFunctionInput) async throws -> WaiterOutcome<GetFunctionOutput> {
        let waiter = Waiter(config: try Self.functionActiveV2WaiterConfig(), operation: self.getFunction(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func functionExistsWaiterConfig() throws -> WaiterConfiguration<GetFunctionInput, GetFunctionOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionInput, GetFunctionOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<GetFunctionInput, GetFunctionOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FunctionExists event on the getFunction operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFunctionExists(options: WaiterOptions, input: GetFunctionInput) async throws -> WaiterOutcome<GetFunctionOutput> {
        let waiter = Waiter(config: try Self.functionExistsWaiterConfig(), operation: self.getFunction(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func functionUpdatedV2WaiterConfig() throws -> WaiterConfiguration<GetFunctionInput, GetFunctionOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionInput, GetFunctionOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Successful"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let lastUpdateStatus = configuration?.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "Successful")
            }),
            .init(state: .failure, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let lastUpdateStatus = configuration?.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "Failed")
            }),
            .init(state: .retry, matcher: { (input: GetFunctionInput, result: Result<GetFunctionOutput, Error>) -> Bool in
                // JMESPath expression: "Configuration.LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "InProgress"
                guard case .success(let output) = result else { return false }
                let configuration = output.configuration
                let lastUpdateStatus = configuration?.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "InProgress")
            }),
        ]
        return try WaiterConfiguration<GetFunctionInput, GetFunctionOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FunctionUpdatedV2 event on the getFunction operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFunctionUpdatedV2(options: WaiterOptions, input: GetFunctionInput) async throws -> WaiterOutcome<GetFunctionOutput> {
        let waiter = Waiter(config: try Self.functionUpdatedV2WaiterConfig(), operation: self.getFunction(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func functionActiveWaiterConfig() throws -> WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Active"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Active")
            }),
            .init(state: .failure, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Failed")
            }),
            .init(state: .retry, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Pending"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Pending")
            }),
        ]
        return try WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FunctionActive event on the getFunctionConfiguration operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionConfigurationInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFunctionActive(options: WaiterOptions, input: GetFunctionConfigurationInput) async throws -> WaiterOutcome<GetFunctionConfigurationOutput> {
        let waiter = Waiter(config: try Self.functionActiveWaiterConfig(), operation: self.getFunctionConfiguration(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func functionUpdatedWaiterConfig() throws -> WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Successful"
                guard case .success(let output) = result else { return false }
                let lastUpdateStatus = output.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "Successful")
            }),
            .init(state: .failure, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let lastUpdateStatus = output.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "Failed")
            }),
            .init(state: .retry, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "LastUpdateStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "InProgress"
                guard case .success(let output) = result else { return false }
                let lastUpdateStatus = output.lastUpdateStatus
                return JMESUtils.compare(lastUpdateStatus, ==, "InProgress")
            }),
        ]
        return try WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the FunctionUpdated event on the getFunctionConfiguration operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionConfigurationInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilFunctionUpdated(options: WaiterOptions, input: GetFunctionConfigurationInput) async throws -> WaiterOutcome<GetFunctionConfigurationOutput> {
        let waiter = Waiter(config: try Self.functionUpdatedWaiterConfig(), operation: self.getFunctionConfiguration(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func publishedVersionActiveWaiterConfig() throws -> WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput> {
        let acceptors: [WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Active"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Active")
            }),
            .init(state: .failure, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Failed")
            }),
            .init(state: .retry, matcher: { (input: GetFunctionConfigurationInput, result: Result<GetFunctionConfigurationOutput, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Pending"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "Pending")
            }),
        ]
        return try WaiterConfiguration<GetFunctionConfigurationInput, GetFunctionConfigurationOutput>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the PublishedVersionActive event on the getFunctionConfiguration operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetFunctionConfigurationInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilPublishedVersionActive(options: WaiterOptions, input: GetFunctionConfigurationInput) async throws -> WaiterOutcome<GetFunctionConfigurationOutput> {
        let waiter = Waiter(config: try Self.publishedVersionActiveWaiterConfig(), operation: self.getFunctionConfiguration(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
