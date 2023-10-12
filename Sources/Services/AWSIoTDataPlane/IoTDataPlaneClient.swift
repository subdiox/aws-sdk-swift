// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class IoTDataPlaneClient {
    public static let clientName = "IoTDataPlaneClient"
    let client: ClientRuntime.SdkHttpClient
    let config: IoTDataPlaneClient.IoTDataPlaneClientConfiguration
    let serviceName = "IoT Data Plane"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: IoTDataPlaneClient.IoTDataPlaneClientConfiguration) {
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
        let config = try IoTDataPlaneClient.IoTDataPlaneClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await IoTDataPlaneClient.IoTDataPlaneClientConfiguration()
        self.init(config: config)
    }
}

extension IoTDataPlaneClient {
    public typealias IoTDataPlaneClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "IoT Data Plane" }
        public var clientName: String { "IoTDataPlaneClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct IoTDataPlaneClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "IoTDataPlaneClient"
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

extension IoTDataPlaneClient: IoTDataPlaneClientProtocol {
    /// Deletes the shadow for the specified thing. Requires permission to access the [DeleteThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action. For more information, see [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html) in the IoT Developer Guide.
    ///
    /// - Parameter DeleteThingShadowInput : The input for the DeleteThingShadow operation.
    ///
    /// - Returns: `DeleteThingShadowOutput` : The output from the DeleteThingShadow operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    /// - `UnsupportedDocumentEncodingException` : The document encoding is not supported.
    public func deleteThingShadow(input: DeleteThingShadowInput) async throws -> DeleteThingShadowOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteThingShadowInput, DeleteThingShadowOutput, DeleteThingShadowOutputError>(id: "deleteThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteThingShadowInput, DeleteThingShadowOutput, DeleteThingShadowOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteThingShadowInput, DeleteThingShadowOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteThingShadowOutput, DeleteThingShadowOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<DeleteThingShadowInput, DeleteThingShadowOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteThingShadowOutput, DeleteThingShadowOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteThingShadowOutput, DeleteThingShadowOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteThingShadowOutput, DeleteThingShadowOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteThingShadowOutput, DeleteThingShadowOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Gets the details of a single retained message for the specified topic. This action returns the message payload of the retained message, which can incur messaging costs. To list only the topic names of the retained messages, call [ListRetainedMessages](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html). Requires permission to access the [GetRetainedMessage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions) action. For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
    ///
    /// - Parameter GetRetainedMessageInput : The input for the GetRetainedMessage operation.
    ///
    /// - Returns: `GetRetainedMessageOutput` : The output from the GetRetainedMessage operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    public func getRetainedMessage(input: GetRetainedMessageInput) async throws -> GetRetainedMessageOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRetainedMessage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRetainedMessageInput, GetRetainedMessageOutput, GetRetainedMessageOutputError>(id: "getRetainedMessage")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRetainedMessageInput, GetRetainedMessageOutput, GetRetainedMessageOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRetainedMessageInput, GetRetainedMessageOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRetainedMessageOutput, GetRetainedMessageOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRetainedMessageOutput, GetRetainedMessageOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRetainedMessageOutput, GetRetainedMessageOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRetainedMessageOutput, GetRetainedMessageOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRetainedMessageOutput, GetRetainedMessageOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Gets the shadow for the specified thing. Requires permission to access the [GetThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action. For more information, see [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html) in the IoT Developer Guide.
    ///
    /// - Parameter GetThingShadowInput : The input for the GetThingShadow operation.
    ///
    /// - Returns: `GetThingShadowOutput` : The output from the GetThingShadow operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    /// - `UnsupportedDocumentEncodingException` : The document encoding is not supported.
    public func getThingShadow(input: GetThingShadowInput) async throws -> GetThingShadowOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetThingShadowInput, GetThingShadowOutput, GetThingShadowOutputError>(id: "getThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetThingShadowInput, GetThingShadowOutput, GetThingShadowOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetThingShadowInput, GetThingShadowOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetThingShadowOutput, GetThingShadowOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<GetThingShadowInput, GetThingShadowOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetThingShadowOutput, GetThingShadowOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetThingShadowOutput, GetThingShadowOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetThingShadowOutput, GetThingShadowOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetThingShadowOutput, GetThingShadowOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Lists the shadows for the specified thing. Requires permission to access the [ListNamedShadowsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter ListNamedShadowsForThingInput : [no documentation found]
    ///
    /// - Returns: `ListNamedShadowsForThingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    public func listNamedShadowsForThing(input: ListNamedShadowsForThingInput) async throws -> ListNamedShadowsForThingOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listNamedShadowsForThing")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>(id: "listNamedShadowsForThing")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListNamedShadowsForThingInput, ListNamedShadowsForThingOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListNamedShadowsForThingOutput, ListNamedShadowsForThingOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Lists summary information about the retained messages stored for the account. This action returns only the topic names of the retained messages. It doesn't return any message payloads. Although this action doesn't return a message payload, it can still incur messaging costs. To get the message payload of a retained message, call [GetRetainedMessage](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html) with the topic name of the retained message. Requires permission to access the [ListRetainedMessages](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions) action. For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
    ///
    /// - Parameter ListRetainedMessagesInput : [no documentation found]
    ///
    /// - Returns: `ListRetainedMessagesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    public func listRetainedMessages(input: ListRetainedMessagesInput) async throws -> ListRetainedMessagesOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRetainedMessages")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListRetainedMessagesInput, ListRetainedMessagesOutput, ListRetainedMessagesOutputError>(id: "listRetainedMessages")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListRetainedMessagesInput, ListRetainedMessagesOutput, ListRetainedMessagesOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListRetainedMessagesInput, ListRetainedMessagesOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListRetainedMessagesOutput, ListRetainedMessagesOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListRetainedMessagesInput, ListRetainedMessagesOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListRetainedMessagesOutput, ListRetainedMessagesOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListRetainedMessagesOutput, ListRetainedMessagesOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListRetainedMessagesOutput, ListRetainedMessagesOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListRetainedMessagesOutput, ListRetainedMessagesOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Publishes an MQTT message. Requires permission to access the [Publish](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action. For more information about MQTT messages, see [MQTT Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html) in the IoT Developer Guide. For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
    ///
    /// - Parameter PublishInput : The input for the Publish operation.
    ///
    /// - Returns: `PublishOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    public func publish(input: PublishInput) async throws -> PublishOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "publish")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PublishInput, PublishOutput, PublishOutputError>(id: "publish")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PublishInput, PublishOutput, PublishOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PublishInput, PublishOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PublishOutput, PublishOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<PublishInput, PublishOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<PublishInput, PublishOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PublishInput, PublishOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: PublishInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PublishOutput, PublishOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PublishOutput, PublishOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PublishOutput, PublishOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PublishOutput, PublishOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Updates the shadow for the specified thing. Requires permission to access the [UpdateThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action. For more information, see [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html) in the IoT Developer Guide.
    ///
    /// - Parameter UpdateThingShadowInput : The input for the UpdateThingShadow operation.
    ///
    /// - Returns: `UpdateThingShadowOutput` : The output from the UpdateThingShadow operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : The specified version does not match the version of the document.
    /// - `InternalFailureException` : An unexpected error has occurred.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `MethodNotAllowedException` : The specified combination of HTTP verb and URI is not supported.
    /// - `RequestEntityTooLargeException` : The payload exceeds the maximum size allowed.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    /// - `UnauthorizedException` : You are not authorized to perform this operation.
    /// - `UnsupportedDocumentEncodingException` : The document encoding is not supported.
    public func updateThingShadow(input: UpdateThingShadowInput) async throws -> UpdateThingShadowOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateThingShadow")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iotdata")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateThingShadowInput, UpdateThingShadowOutput, UpdateThingShadowOutputError>(id: "updateThingShadow")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateThingShadowInput, UpdateThingShadowOutput, UpdateThingShadowOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateThingShadowInput, UpdateThingShadowOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateThingShadowOutput, UpdateThingShadowOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<UpdateThingShadowInput, UpdateThingShadowOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateThingShadowInput, UpdateThingShadowOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: UpdateThingShadowInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateThingShadowOutput, UpdateThingShadowOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateThingShadowOutput, UpdateThingShadowOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateThingShadowOutput, UpdateThingShadowOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateThingShadowOutput, UpdateThingShadowOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
