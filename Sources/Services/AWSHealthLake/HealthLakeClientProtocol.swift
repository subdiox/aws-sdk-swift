// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS HealthLake is a HIPAA eligibile service that allows customers to store, transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.
public protocol HealthLakeClientProtocol {
    /// Creates a data store that can ingest and export FHIR formatted data.
    ///
    /// - Parameter CreateFHIRDatastoreInput : [no documentation found]
    ///
    /// - Returns: `CreateFHIRDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func createFHIRDatastore(input: CreateFHIRDatastoreInput) async throws -> CreateFHIRDatastoreOutput
    /// Deletes a data store.
    ///
    /// - Parameter DeleteFHIRDatastoreInput : [no documentation found]
    ///
    /// - Returns: `DeleteFHIRDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `ConflictException` : The data store is in a transition state and the user requested action can not be performed.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func deleteFHIRDatastore(input: DeleteFHIRDatastoreInput) async throws -> DeleteFHIRDatastoreOutput
    /// Gets the properties associated with the FHIR data store, including the data store ID, data store ARN, data store name, data store status, when the data store was created, data store type version, and the data store's endpoint.
    ///
    /// - Parameter DescribeFHIRDatastoreInput : [no documentation found]
    ///
    /// - Returns: `DescribeFHIRDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func describeFHIRDatastore(input: DescribeFHIRDatastoreInput) async throws -> DescribeFHIRDatastoreOutput
    /// Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.
    ///
    /// - Parameter DescribeFHIRExportJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeFHIRExportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func describeFHIRExportJob(input: DescribeFHIRExportJobInput) async throws -> DescribeFHIRExportJobOutput
    /// Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job.
    ///
    /// - Parameter DescribeFHIRImportJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeFHIRImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func describeFHIRImportJob(input: DescribeFHIRImportJobInput) async throws -> DescribeFHIRImportJobOutput
    /// Lists all FHIR data stores that are in the user’s account, regardless of data store status.
    ///
    /// - Parameter ListFHIRDatastoresInput : [no documentation found]
    ///
    /// - Returns: `ListFHIRDatastoresOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func listFHIRDatastores(input: ListFHIRDatastoresInput) async throws -> ListFHIRDatastoresOutput
    /// Lists all FHIR export jobs associated with an account and their statuses.
    ///
    /// - Parameter ListFHIRExportJobsInput : [no documentation found]
    ///
    /// - Returns: `ListFHIRExportJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func listFHIRExportJobs(input: ListFHIRExportJobsInput) async throws -> ListFHIRExportJobsOutput
    /// Lists all FHIR import jobs associated with an account and their statuses.
    ///
    /// - Parameter ListFHIRImportJobsInput : [no documentation found]
    ///
    /// - Returns: `ListFHIRImportJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func listFHIRImportJobs(input: ListFHIRImportJobsInput) async throws -> ListFHIRImportJobsOutput
    /// Returns a list of all existing tags associated with a data store.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ValidationException` : The user input parameter was invalid.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Begins a FHIR export job.
    ///
    /// - Parameter StartFHIRExportJobInput : [no documentation found]
    ///
    /// - Returns: `StartFHIRExportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func startFHIRExportJob(input: StartFHIRExportJobInput) async throws -> StartFHIRExportJobOutput
    /// Begins a FHIR Import job.
    ///
    /// - Parameter StartFHIRImportJobInput : [no documentation found]
    ///
    /// - Returns: `StartFHIRImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. Your account is not authorized to perform this operation.
    /// - `InternalServerException` : Unknown error occurs in the service.
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ThrottlingException` : The user has exceeded their maximum number of allowed calls to the given API.
    /// - `ValidationException` : The user input parameter was invalid.
    func startFHIRImportJob(input: StartFHIRImportJobInput) async throws -> StartFHIRImportJobOutput
    /// Adds a user specified key and value tag to a data store.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ValidationException` : The user input parameter was invalid.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes tags from a data store.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The requested data store was not found.
    /// - `ValidationException` : The user input parameter was invalid.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum HealthLakeClientTypes {}
