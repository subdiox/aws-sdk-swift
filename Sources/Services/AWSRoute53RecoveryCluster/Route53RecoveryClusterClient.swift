// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class Route53RecoveryClusterClient {
    public static let clientName = "Route53RecoveryClusterClient"
    let client: ClientRuntime.SdkHttpClient
    let config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration
    let serviceName = "Route53 Recovery Cluster"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration) {
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
        let config = try Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration()
        self.init(config: config)
    }
}

extension Route53RecoveryClusterClient {
    public typealias Route53RecoveryClusterClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Route53 Recovery Cluster" }
        public var clientName: String { "Route53RecoveryClusterClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct Route53RecoveryClusterClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "Route53RecoveryClusterClient"
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

extension Route53RecoveryClusterClient: Route53RecoveryClusterClientProtocol {
    /// Get the state for a routing control. A routing control is a simple on/off switch that you can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When the state is Off, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    public func getRoutingControlState(input: GetRoutingControlStateInput) async throws -> GetRoutingControlStateOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(id: "getRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>(xAmzTarget: "ToggleCustomerAPI.GetRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>(xmlName: "GetRoutingControlStateRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// List routing control names and Amazon Resource Names (ARNs), as well as the routing control state for each routing control, along with the control panel name and control panel ARN for the routing controls. If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists all the routing controls in the cluster. A routing control is a simple on/off switch in Route 53 ARC that you can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When the state is Off, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to use this API operation to list routing controls in Route 53 ARC. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    public func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRoutingControls")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListRoutingControlsInput, ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>(id: "listRoutingControls")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListRoutingControlsInput, ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListRoutingControlsInput, ListRoutingControlsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListRoutingControlsInput, ListRoutingControlsOutputResponse>(xAmzTarget: "ToggleCustomerAPI.ListRoutingControls"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<ListRoutingControlsInput, ListRoutingControlsOutputResponse>(xmlName: "ListRoutingControlsRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListRoutingControlsInput, ListRoutingControlsOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListRoutingControlsOutputResponse, ListRoutingControlsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Set the state of the routing control to reroute traffic. You can set the value to be On or Off. When the state is On, traffic flows to a cell. When the state is Off, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    public func updateRoutingControlState(input: UpdateRoutingControlStateInput) async throws -> UpdateRoutingControlStateOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(id: "updateRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>(xmlName: "UpdateRoutingControlStateRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Set multiple routing control states. You can set the value for each state to be On or Off. When the state is On, traffic flows to a cell. When it's Off, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    public func updateRoutingControlStates(input: UpdateRoutingControlStatesInput) async throws -> UpdateRoutingControlStatesOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlStates")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(id: "updateRoutingControlStates")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlStates"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>(xmlName: "UpdateRoutingControlStatesRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
