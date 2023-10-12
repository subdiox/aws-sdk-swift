// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DocDBClientProtocol {

    static func dbInstanceAvailableWaiterConfig() throws -> WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput> {
        let acceptors: [WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "allStringEquals"
                // JMESPath expected value: "available"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return (projection?.count ?? 0) > 1 && (projection?.allSatisfy { JMESUtils.compare($0, ==, "available") } ?? false)
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "deleted"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "deleted") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "deleting"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "deleting") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "failed"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "failed") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "incompatible-restore"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "incompatible-restore") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "incompatible-parameters"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "incompatible-parameters") }) ?? false
            }),
        ]
        return try WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the DBInstanceAvailable event on the describeDBInstances operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeDBInstancesInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilDBInstanceAvailable(options: WaiterOptions, input: DescribeDBInstancesInput) async throws -> WaiterOutcome<DescribeDBInstancesOutput> {
        let waiter = Waiter(config: try Self.dbInstanceAvailableWaiterConfig(), operation: self.describeDBInstances(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func dbInstanceDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput> {
        let acceptors: [WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "allStringEquals"
                // JMESPath expected value: "deleted"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return (projection?.count ?? 0) > 1 && (projection?.allSatisfy { JMESUtils.compare($0, ==, "deleted") } ?? false)
            }),
            .init(state: .success, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ServiceError)?.typeName == "DBInstanceNotFound"
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "creating"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "creating") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "modifying"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "modifying") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "rebooting"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "rebooting") }) ?? false
            }),
            .init(state: .failure, matcher: { (input: DescribeDBInstancesInput, result: Result<DescribeDBInstancesOutput, Error>) -> Bool in
                // JMESPath expression: "DBInstances[].DBInstanceStatus"
                // JMESPath comparator: "anyStringEquals"
                // JMESPath expected value: "resetting-master-credentials"
                guard case .success(let output) = result else { return false }
                let dbInstances = output.dbInstances
                let projection: [Swift.String]? = dbInstances?.compactMap { original in
                    let dbInstanceStatus = original.dbInstanceStatus
                    return dbInstanceStatus
                }
                return projection?.contains(where: { JMESUtils.compare($0, ==, "resetting-master-credentials") }) ?? false
            }),
        ]
        return try WaiterConfiguration<DescribeDBInstancesInput, DescribeDBInstancesOutput>(acceptors: acceptors, minDelay: 30.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the DBInstanceDeleted event on the describeDBInstances operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeDBInstancesInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilDBInstanceDeleted(options: WaiterOptions, input: DescribeDBInstancesInput) async throws -> WaiterOutcome<DescribeDBInstancesOutput> {
        let waiter = Waiter(config: try Self.dbInstanceDeletedWaiterConfig(), operation: self.describeDBInstances(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
