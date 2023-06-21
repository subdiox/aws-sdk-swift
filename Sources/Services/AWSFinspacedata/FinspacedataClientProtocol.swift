// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The FinSpace APIs let you take actions inside the FinSpace.
public protocol FinspacedataClientProtocol {
    /// Adds a user account to a permission group to grant permissions for actions a user can perform in FinSpace.
    func associateUserToPermissionGroup(input: AssociateUserToPermissionGroupInput) async throws -> AssociateUserToPermissionGroupOutputResponse
    /// Creates a new Changeset in a FinSpace Dataset.
    func createChangeset(input: CreateChangesetInput) async throws -> CreateChangesetOutputResponse
    /// Creates a new FinSpace Dataset.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    /// Creates a Dataview for a Dataset.
    func createDataView(input: CreateDataViewInput) async throws -> CreateDataViewOutputResponse
    /// Creates a group of permissions for various actions that a user can perform in FinSpace.
    func createPermissionGroup(input: CreatePermissionGroupInput) async throws -> CreatePermissionGroupOutputResponse
    /// Creates a new user in FinSpace.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes a FinSpace Dataset.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    /// Deletes a permission group. This action is irreversible.
    func deletePermissionGroup(input: DeletePermissionGroupInput) async throws -> DeletePermissionGroupOutputResponse
    /// Denies access to the FinSpace web application and API for the specified user.
    func disableUser(input: DisableUserInput) async throws -> DisableUserOutputResponse
    /// Removes a user account from a permission group.
    func disassociateUserFromPermissionGroup(input: DisassociateUserFromPermissionGroupInput) async throws -> DisassociateUserFromPermissionGroupOutputResponse
    /// Allows the specified user to access the FinSpace web application and API.
    func enableUser(input: EnableUserInput) async throws -> EnableUserOutputResponse
    /// Get information about a Changeset.
    func getChangeset(input: GetChangesetInput) async throws -> GetChangesetOutputResponse
    /// Returns information about a Dataset.
    func getDataset(input: GetDatasetInput) async throws -> GetDatasetOutputResponse
    /// Gets information about a Dataview.
    func getDataView(input: GetDataViewInput) async throws -> GetDataViewOutputResponse
    /// Returns the credentials to access the external Dataview from an S3 location. To call this API:
    ///
    /// * You must retrieve the programmatic credentials.
    ///
    /// * You must be a member of a FinSpace user group, where the dataset that you want to access has Read Dataset Data permissions.
    func getExternalDataViewAccessDetails(input: GetExternalDataViewAccessDetailsInput) async throws -> GetExternalDataViewAccessDetailsOutputResponse
    /// Retrieves the details of a specific permission group.
    func getPermissionGroup(input: GetPermissionGroupInput) async throws -> GetPermissionGroupOutputResponse
    /// Request programmatic credentials to use with FinSpace SDK.
    func getProgrammaticAccessCredentials(input: GetProgrammaticAccessCredentialsInput) async throws -> GetProgrammaticAccessCredentialsOutputResponse
    /// Retrieves details for a specific user.
    func getUser(input: GetUserInput) async throws -> GetUserOutputResponse
    /// A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook.
    func getWorkingLocation(input: GetWorkingLocationInput) async throws -> GetWorkingLocationOutputResponse
    /// Lists the FinSpace Changesets for a Dataset.
    func listChangesets(input: ListChangesetsInput) async throws -> ListChangesetsOutputResponse
    /// Lists all of the active Datasets that a user has access to.
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    /// Lists all available Dataviews for a Dataset.
    func listDataViews(input: ListDataViewsInput) async throws -> ListDataViewsOutputResponse
    /// Lists all available permission groups in FinSpace.
    func listPermissionGroups(input: ListPermissionGroupsInput) async throws -> ListPermissionGroupsOutputResponse
    /// Lists all the permission groups that are associated with a specific user account.
    func listPermissionGroupsByUser(input: ListPermissionGroupsByUserInput) async throws -> ListPermissionGroupsByUserOutputResponse
    /// Lists all available user accounts in FinSpace.
    func listUsers(input: ListUsersInput) async throws -> ListUsersOutputResponse
    /// Lists details of all the users in a specific permission group.
    func listUsersByPermissionGroup(input: ListUsersByPermissionGroupInput) async throws -> ListUsersByPermissionGroupOutputResponse
    /// Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.
    func resetUserPassword(input: ResetUserPasswordInput) async throws -> ResetUserPasswordOutputResponse
    /// Updates a FinSpace Changeset.
    func updateChangeset(input: UpdateChangesetInput) async throws -> UpdateChangesetOutputResponse
    /// Updates a FinSpace Dataset.
    func updateDataset(input: UpdateDatasetInput) async throws -> UpdateDatasetOutputResponse
    /// Modifies the details of a permission group. You cannot modify a permissionGroupID.
    func updatePermissionGroup(input: UpdatePermissionGroupInput) async throws -> UpdatePermissionGroupOutputResponse
    /// Modifies the details of the specified user account. You cannot update the userId for a user.
    func updateUser(input: UpdateUserInput) async throws -> UpdateUserOutputResponse
}

public enum FinspacedataClientTypes {}
