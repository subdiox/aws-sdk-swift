// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IAM Identity Center (successor to AWS Single Sign-On) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with IAM Identity Center. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with IAM Identity Center. Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed). Considerations for Using This Guide Before you begin using this guide, we recommend that you first review the following important information about how the IAM Identity Center OIDC service works.
///
/// * The IAM Identity Center OIDC service currently implements only the portions of the OAuth 2.0 Device Authorization Grant standard ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)) that are necessary to enable single sign-on authentication with the AWS CLI. Support for other OIDC flows frequently needed for native applications, such as Authorization Code Flow (+ PKCE), will be addressed in future releases.
///
/// * The service emits only OIDC access tokens, such that obtaining a new token (For example, token refresh) requires explicit user re-authentication.
///
/// * The access tokens provided by this service grant access to all AWS account entitlements assigned to an IAM Identity Center user, not just a particular application.
///
/// * The documentation in this guide does not describe the mechanism to convert the access token into AWS Auth (“sigv4”) credentials for use with IAM-protected AWS service endpoints. For more information, see [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html) in the IAM Identity Center Portal API Reference Guide.
///
///
/// For general information about IAM Identity Center, see [What is IAM Identity Center?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html) in the IAM Identity Center User Guide.
public protocol SSOOIDCClientProtocol {
    /// Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    ///
    /// - Parameter CreateTokenInput : [no documentation found]
    ///
    /// - Returns: `CreateTokenOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `AuthorizationPendingException` : Indicates that a request to authorize a client with an access user session token is pending.
    /// - `ExpiredTokenException` : Indicates that the token issued by the service is expired and is no longer valid.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidGrantException` : Indicates that a request contains an invalid grant. This can occur if a client makes a [CreateToken] request with an invalid grant type.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    /// - `UnsupportedGrantTypeException` : Indicates that the grant type in the request is not supported by the service.
    func createToken(input: CreateTokenInput) async throws -> CreateTokenOutput
    /// Registers a client with IAM Identity Center. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    ///
    /// - Parameter RegisterClientInput : [no documentation found]
    ///
    /// - Returns: `RegisterClientOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientMetadataException` : Indicates that the client information sent in the request during registration is invalid.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    func registerClient(input: RegisterClientInput) async throws -> RegisterClientOutput
    /// Initiates device authorization by requesting a pair of verification codes from the authorization service.
    ///
    /// - Parameter StartDeviceAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `StartDeviceAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    func startDeviceAuthorization(input: StartDeviceAuthorizationInput) async throws -> StartDeviceAuthorizationOutput
}

public enum SSOOIDCClientTypes {}
