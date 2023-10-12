// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class WorkMailMessageFlowClient {
    public static let clientName = "WorkMailMessageFlowClient"
    let client: ClientRuntime.SdkHttpClient
    let config: WorkMailMessageFlowClient.WorkMailMessageFlowClientConfiguration
    let serviceName = "WorkMailMessageFlow"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: WorkMailMessageFlowClient.WorkMailMessageFlowClientConfiguration) {
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
        let config = try WorkMailMessageFlowClient.WorkMailMessageFlowClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await WorkMailMessageFlowClient.WorkMailMessageFlowClientConfiguration()
        self.init(config: config)
    }
}

extension WorkMailMessageFlowClient {
    public typealias WorkMailMessageFlowClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "WorkMailMessageFlow" }
        public var clientName: String { "WorkMailMessageFlowClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct WorkMailMessageFlowClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "WorkMailMessageFlowClient"
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

extension WorkMailMessageFlowClient: WorkMailMessageFlowClientProtocol {
    /// Retrieves the raw content of an in-transit email message, in MIME format.
    ///
    /// - Parameter GetRawMessageContentInput : [no documentation found]
    ///
    /// - Returns: `GetRawMessageContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The requested email message is not found.
    public func getRawMessageContent(input: GetRawMessageContentInput) async throws -> GetRawMessageContentOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRawMessageContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "workmailmessageflow")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRawMessageContentInput, GetRawMessageContentOutput, GetRawMessageContentOutputError>(id: "getRawMessageContent")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRawMessageContentInput, GetRawMessageContentOutput, GetRawMessageContentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRawMessageContentInput, GetRawMessageContentOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRawMessageContentOutput, GetRawMessageContentOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRawMessageContentOutput, GetRawMessageContentOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRawMessageContentOutput, GetRawMessageContentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRawMessageContentOutput, GetRawMessageContentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRawMessageContentOutput, GetRawMessageContentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Updates the raw content of an in-transit email message, in MIME format. This example describes how to update in-transit email message. For more information and examples for using this API, see [ Updating message content with AWS Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html). Updates to an in-transit message only appear when you call PutRawMessageContent from an AWS Lambda function configured with a synchronous [ Run Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules) rule. If you call PutRawMessageContent on a delivered or sent message, the message remains unchanged, even though [GetRawMessageContent](https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html) returns an updated message.
    ///
    /// - Parameter PutRawMessageContentInput : [no documentation found]
    ///
    /// - Returns: `PutRawMessageContentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidContentLocation` : WorkMail could not access the updated email content. Possible reasons:
    ///
    /// * You made the request in a region other than your S3 bucket region.
    ///
    /// * The [S3 bucket owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html) is not the same as the calling AWS account.
    ///
    /// * You have an incomplete or missing S3 bucket policy. For more information about policies, see [ Updating message content with AWS Lambda ](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html) in the WorkMail Administrator Guide.
    /// - `MessageFrozen` : The requested email is not eligible for update. This is usually the case for a redirected email.
    /// - `MessageRejected` : The requested email could not be updated due to an error in the MIME content. Check the error message for more information about what caused the error.
    /// - `ResourceNotFoundException` : The requested email message is not found.
    public func putRawMessageContent(input: PutRawMessageContentInput) async throws -> PutRawMessageContentOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putRawMessageContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "workmailmessageflow")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PutRawMessageContentInput, PutRawMessageContentOutput, PutRawMessageContentOutputError>(id: "putRawMessageContent")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutRawMessageContentInput, PutRawMessageContentOutput, PutRawMessageContentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutRawMessageContentInput, PutRawMessageContentOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutRawMessageContentOutput, PutRawMessageContentOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutRawMessageContentInput, PutRawMessageContentOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PutRawMessageContentInput, PutRawMessageContentOutput>(xmlName: "PutRawMessageContentRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PutRawMessageContentOutput, PutRawMessageContentOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutRawMessageContentOutput, PutRawMessageContentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutRawMessageContentOutput, PutRawMessageContentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutRawMessageContentOutput, PutRawMessageContentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
