// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find and deploy serverless applications in the AWS Cloud. For more information about serverless applications, see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of all levels can get started with serverless computing without needing to learn anything new. You can use category keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately within your team or across your organization. To publish a serverless application (or app), you can use the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template. For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer experiences available:
///
/// * Consuming Applications – Browse for applications and view information about them, including source code and readme files. Also install, configure, and deploy applications of your choosing. Publishing Applications – Configure and upload applications to make them available to other developers, and publish new versions of applications.
public protocol ServerlessApplicationRepositoryClientProtocol {
    /// Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    ///
    /// - Parameter CreateApplicationInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ConflictException` : The resource already exists.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutput
    /// Creates an application version.
    ///
    /// - Parameter CreateApplicationVersionInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationVersionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ConflictException` : The resource already exists.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func createApplicationVersion(input: CreateApplicationVersionInput) async throws -> CreateApplicationVersionOutput
    /// Creates an AWS CloudFormation change set for the given application.
    ///
    /// - Parameter CreateCloudFormationChangeSetInput : [no documentation found]
    ///
    /// - Returns: `CreateCloudFormationChangeSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func createCloudFormationChangeSet(input: CreateCloudFormationChangeSetInput) async throws -> CreateCloudFormationChangeSetOutput
    /// Creates an AWS CloudFormation template.
    ///
    /// - Parameter CreateCloudFormationTemplateInput : [no documentation found]
    ///
    /// - Returns: `CreateCloudFormationTemplateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func createCloudFormationTemplate(input: CreateCloudFormationTemplateInput) async throws -> CreateCloudFormationTemplateOutput
    /// Deletes the specified application.
    ///
    /// - Parameter DeleteApplicationInput : [no documentation found]
    ///
    /// - Returns: `DeleteApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ConflictException` : The resource already exists.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutput
    /// Gets the specified application.
    ///
    /// - Parameter GetApplicationInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutput
    /// Retrieves the policy for the application.
    ///
    /// - Parameter GetApplicationPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func getApplicationPolicy(input: GetApplicationPolicyInput) async throws -> GetApplicationPolicyOutput
    /// Gets the specified AWS CloudFormation template.
    ///
    /// - Parameter GetCloudFormationTemplateInput : [no documentation found]
    ///
    /// - Returns: `GetCloudFormationTemplateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func getCloudFormationTemplate(input: GetCloudFormationTemplateInput) async throws -> GetCloudFormationTemplateOutput
    /// Retrieves the list of applications nested in the containing application.
    ///
    /// - Parameter ListApplicationDependenciesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationDependenciesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func listApplicationDependencies(input: ListApplicationDependenciesInput) async throws -> ListApplicationDependenciesOutput
    /// Lists applications owned by the requester.
    ///
    /// - Parameter ListApplicationsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutput
    /// Lists versions for the specified application.
    ///
    /// - Parameter ListApplicationVersionsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationVersionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func listApplicationVersions(input: ListApplicationVersionsInput) async throws -> ListApplicationVersionsOutput
    /// Sets the permission policy for an application. For the list of actions supported for this operation, see [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions) .
    ///
    /// - Parameter PutApplicationPolicyInput : [no documentation found]
    ///
    /// - Returns: `PutApplicationPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func putApplicationPolicy(input: PutApplicationPolicyInput) async throws -> PutApplicationPolicyOutput
    /// Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    ///
    /// - Parameter UnshareApplicationInput : [no documentation found]
    ///
    /// - Returns: `UnshareApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func unshareApplication(input: UnshareApplicationInput) async throws -> UnshareApplicationOutput
    /// Updates the specified application.
    ///
    /// - Parameter UpdateApplicationInput : [no documentation found]
    ///
    /// - Returns: `UpdateApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One of the parameters in the request is invalid.
    /// - `ConflictException` : The resource already exists.
    /// - `ForbiddenException` : The client is not authenticated.
    /// - `InternalServerErrorException` : The AWS Serverless Application Repository service encountered an internal error.
    /// - `NotFoundException` : The resource (for example, an access policy statement) specified in the request doesn't exist.
    /// - `TooManyRequestsException` : The client is sending more than the allowed number of requests per unit of time.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutput
}

public enum ServerlessApplicationRepositoryClientTypes {}
