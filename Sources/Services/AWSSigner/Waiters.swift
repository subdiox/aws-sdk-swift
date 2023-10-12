// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SignerClientProtocol {

    static func successfulSigningJobWaiterConfig() throws -> WaiterConfiguration<DescribeSigningJobInput, DescribeSigningJobOutput> {
        let acceptors: [WaiterConfiguration<DescribeSigningJobInput, DescribeSigningJobOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeSigningJobInput, result: Result<DescribeSigningJobOutput, Error>) -> Bool in
                // JMESPath expression: "status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Succeeded"
                guard case .success(let output) = result else { return false }
                let status = output.status
                return JMESUtils.compare(status, ==, "Succeeded")
            }),
            .init(state: .failure, matcher: { (input: DescribeSigningJobInput, result: Result<DescribeSigningJobOutput, Error>) -> Bool in
                // JMESPath expression: "status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let status = output.status
                return JMESUtils.compare(status, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: DescribeSigningJobInput, result: Result<DescribeSigningJobOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<DescribeSigningJobInput, DescribeSigningJobOutput>(acceptors: acceptors, minDelay: 20.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the SuccessfulSigningJob event on the describeSigningJob operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeSigningJobInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilSuccessfulSigningJob(options: WaiterOptions, input: DescribeSigningJobInput) async throws -> WaiterOutcome<DescribeSigningJobOutput> {
        let waiter = Waiter(config: try Self.successfulSigningJobWaiterConfig(), operation: self.describeSigningJob(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
