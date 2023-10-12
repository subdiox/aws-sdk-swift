// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class IoTJobsDataPlaneClient {
    public static let clientName = "IoTJobsDataPlaneClient"
    let client: ClientRuntime.SdkHttpClient
    let config: IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration
    let serviceName = "IoT Jobs Data Plane"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration()
        self.init(config: config)
    }
}

extension IoTJobsDataPlaneClient {
    public typealias IoTJobsDataPlaneClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "IoT Jobs Data Plane" }
        public var clientName: String { "IoTJobsDataPlaneClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct IoTJobsDataPlaneClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "IoTJobsDataPlaneClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension IoTJobsDataPlaneClient: IoTJobsDataPlaneClientProtocol {
    /// Gets details of a job execution.
    ///
    /// - Parameter DescribeJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `DescribeJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `TerminalStateException` : The job is in a terminal state.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func describeJobExecution(input: DescribeJobExecutionInput) async throws -> DescribeJobExecutionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeJobExecutionInput, DescribeJobExecutionOutput, DescribeJobExecutionOutputError>(id: "describeJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput, DescribeJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeJobExecutionOutput, DescribeJobExecutionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeJobExecutionOutput, DescribeJobExecutionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeJobExecutionOutput, DescribeJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeJobExecutionOutput, DescribeJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeJobExecutionOutput, DescribeJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Gets the list of all jobs for a thing that are not in a terminal status.
    ///
    /// - Parameter GetPendingJobExecutionsInput : [no documentation found]
    ///
    /// - Returns: `GetPendingJobExecutionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func getPendingJobExecutions(input: GetPendingJobExecutionsInput) async throws -> GetPendingJobExecutionsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPendingJobExecutions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>(id: "getPendingJobExecutions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPendingJobExecutionsOutput, GetPendingJobExecutionsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    ///
    /// - Parameter StartNextPendingJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `StartNextPendingJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput) async throws -> StartNextPendingJobExecutionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startNextPendingJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>(id: "startNextPendingJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(xmlName: "StartNextPendingJobExecutionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartNextPendingJobExecutionOutput, StartNextPendingJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Updates the status of a job execution.
    ///
    /// - Parameter UpdateJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `UpdateJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `InvalidStateTransitionException` : An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func updateJobExecution(input: UpdateJobExecutionInput) async throws -> UpdateJobExecutionOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateJobExecutionInput, UpdateJobExecutionOutput, UpdateJobExecutionOutputError>(id: "updateJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput, UpdateJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateJobExecutionOutput, UpdateJobExecutionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(xmlName: "UpdateJobExecutionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateJobExecutionOutput, UpdateJobExecutionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateJobExecutionOutput, UpdateJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateJobExecutionOutput, UpdateJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateJobExecutionOutput, UpdateJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
