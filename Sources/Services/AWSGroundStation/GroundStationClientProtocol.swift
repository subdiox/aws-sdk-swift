// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
public protocol GroundStationClientProtocol {
    /// Cancels a contact with a specified contact ID.
    ///
    /// - Parameter CancelContactInput :
    ///
    /// - Returns: `CancelContactOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func cancelContact(input: CancelContactInput) async throws -> CancelContactOutput
    /// Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    ///
    /// - Parameter CreateConfigInput :
    ///
    /// - Returns: `CreateConfigOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceLimitExceededException` : Account limits for this resource have been exceeded.
    /// - `ResourceNotFoundException` : Resource was not found.
    func createConfig(input: CreateConfigInput) async throws -> CreateConfigOutput
    /// Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    ///
    /// - Parameter CreateDataflowEndpointGroupInput :
    ///
    /// - Returns: `CreateDataflowEndpointGroupOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func createDataflowEndpointGroup(input: CreateDataflowEndpointGroupInput) async throws -> CreateDataflowEndpointGroupOutput
    /// Creates an Ephemeris with the specified EphemerisData.
    ///
    /// - Parameter CreateEphemerisInput : [no documentation found]
    ///
    /// - Returns: `CreateEphemerisOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func createEphemeris(input: CreateEphemerisInput) async throws -> CreateEphemerisOutput
    /// Creates a mission profile. dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    ///
    /// - Parameter CreateMissionProfileInput :
    ///
    /// - Returns: `CreateMissionProfileOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func createMissionProfile(input: CreateMissionProfileInput) async throws -> CreateMissionProfileOutput
    /// Deletes a Config.
    ///
    /// - Parameter DeleteConfigInput :
    ///
    /// - Returns: `DeleteConfigOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func deleteConfig(input: DeleteConfigInput) async throws -> DeleteConfigOutput
    /// Deletes a dataflow endpoint group.
    ///
    /// - Parameter DeleteDataflowEndpointGroupInput :
    ///
    /// - Returns: `DeleteDataflowEndpointGroupOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func deleteDataflowEndpointGroup(input: DeleteDataflowEndpointGroupInput) async throws -> DeleteDataflowEndpointGroupOutput
    /// Deletes an ephemeris
    ///
    /// - Parameter DeleteEphemerisInput : [no documentation found]
    ///
    /// - Returns: `DeleteEphemerisOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func deleteEphemeris(input: DeleteEphemerisInput) async throws -> DeleteEphemerisOutput
    /// Deletes a mission profile.
    ///
    /// - Parameter DeleteMissionProfileInput :
    ///
    /// - Returns: `DeleteMissionProfileOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func deleteMissionProfile(input: DeleteMissionProfileInput) async throws -> DeleteMissionProfileOutput
    /// Describes an existing contact.
    ///
    /// - Parameter DescribeContactInput :
    ///
    /// - Returns: `DescribeContactOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func describeContact(input: DescribeContactInput) async throws -> DescribeContactOutput
    /// Describes an existing ephemeris.
    ///
    /// - Parameter DescribeEphemerisInput : [no documentation found]
    ///
    /// - Returns: `DescribeEphemerisOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func describeEphemeris(input: DescribeEphemerisInput) async throws -> DescribeEphemerisOutput
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Gets the latest configuration information for a registered agent.
    ///
    /// - Parameter GetAgentConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetAgentConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getAgentConfiguration(input: GetAgentConfigurationInput) async throws -> GetAgentConfigurationOutput
    /// Returns Config information. Only one Config response can be returned.
    ///
    /// - Parameter GetConfigInput :
    ///
    /// - Returns: `GetConfigOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getConfig(input: GetConfigInput) async throws -> GetConfigOutput
    /// Returns the dataflow endpoint group.
    ///
    /// - Parameter GetDataflowEndpointGroupInput :
    ///
    /// - Returns: `GetDataflowEndpointGroupOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getDataflowEndpointGroup(input: GetDataflowEndpointGroupInput) async throws -> GetDataflowEndpointGroupOutput
    /// Returns the number of reserved minutes used by account.
    ///
    /// - Parameter GetMinuteUsageInput :
    ///
    /// - Returns: `GetMinuteUsageOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getMinuteUsage(input: GetMinuteUsageInput) async throws -> GetMinuteUsageOutput
    /// Returns a mission profile.
    ///
    /// - Parameter GetMissionProfileInput :
    ///
    /// - Returns: `GetMissionProfileOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getMissionProfile(input: GetMissionProfileInput) async throws -> GetMissionProfileOutput
    /// Returns a satellite.
    ///
    /// - Parameter GetSatelliteInput :
    ///
    /// - Returns: `GetSatelliteOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func getSatellite(input: GetSatelliteInput) async throws -> GetSatelliteOutput
    /// Returns a list of Config objects.
    ///
    /// - Parameter ListConfigsInput :
    ///
    /// - Returns: `ListConfigsOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listConfigs(input: ListConfigsInput) async throws -> ListConfigsOutput
    /// Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    ///
    /// - Parameter ListContactsInput :
    ///
    /// - Returns: `ListContactsOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listContacts(input: ListContactsInput) async throws -> ListContactsOutput
    /// Returns a list of DataflowEndpoint groups.
    ///
    /// - Parameter ListDataflowEndpointGroupsInput :
    ///
    /// - Returns: `ListDataflowEndpointGroupsOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listDataflowEndpointGroups(input: ListDataflowEndpointGroupsInput) async throws -> ListDataflowEndpointGroupsOutput
    /// List existing ephemerides.
    ///
    /// - Parameter ListEphemeridesInput : [no documentation found]
    ///
    /// - Returns: `ListEphemeridesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listEphemerides(input: ListEphemeridesInput) async throws -> ListEphemeridesOutput
    /// Returns a list of ground stations.
    ///
    /// - Parameter ListGroundStationsInput :
    ///
    /// - Returns: `ListGroundStationsOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listGroundStations(input: ListGroundStationsInput) async throws -> ListGroundStationsOutput
    /// Returns a list of mission profiles.
    ///
    /// - Parameter ListMissionProfilesInput :
    ///
    /// - Returns: `ListMissionProfilesOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listMissionProfiles(input: ListMissionProfilesInput) async throws -> ListMissionProfilesOutput
    /// Returns a list of satellites.
    ///
    /// - Parameter ListSatellitesInput :
    ///
    /// - Returns: `ListSatellitesOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listSatellites(input: ListSatellitesInput) async throws -> ListSatellitesOutput
    /// Returns a list of tags for a specified resource.
    ///
    /// - Parameter ListTagsForResourceInput :
    ///
    /// - Returns: `ListTagsForResourceOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Registers a new agent with AWS Ground Station.
    ///
    /// - Parameter RegisterAgentInput : [no documentation found]
    ///
    /// - Returns: `RegisterAgentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func registerAgent(input: RegisterAgentInput) async throws -> RegisterAgentOutput
    /// Reserves a contact using specified parameters.
    ///
    /// - Parameter ReserveContactInput :
    ///
    /// - Returns: `ReserveContactOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func reserveContact(input: ReserveContactInput) async throws -> ReserveContactOutput
    /// Assigns a tag to a resource.
    ///
    /// - Parameter TagResourceInput :
    ///
    /// - Returns: `TagResourceOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Deassigns a resource tag.
    ///
    /// - Parameter UntagResourceInput :
    ///
    /// - Returns: `UntagResourceOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Update the status of the agent.
    ///
    /// - Parameter UpdateAgentStatusInput : [no documentation found]
    ///
    /// - Returns: `UpdateAgentStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func updateAgentStatus(input: UpdateAgentStatusInput) async throws -> UpdateAgentStatusOutput
    /// Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    ///
    /// - Parameter UpdateConfigInput :
    ///
    /// - Returns: `UpdateConfigOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func updateConfig(input: UpdateConfigInput) async throws -> UpdateConfigOutput
    /// Updates an existing ephemeris
    ///
    /// - Parameter UpdateEphemerisInput : [no documentation found]
    ///
    /// - Returns: `UpdateEphemerisOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func updateEphemeris(input: UpdateEphemerisInput) async throws -> UpdateEphemerisOutput
    /// Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    ///
    /// - Parameter UpdateMissionProfileInput :
    ///
    /// - Returns: `UpdateMissionProfileOutput` :
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DependencyException` : Dependency encountered an error.
    /// - `InvalidParameterException` : One or more parameters are not valid.
    /// - `ResourceNotFoundException` : Resource was not found.
    func updateMissionProfile(input: UpdateMissionProfileInput) async throws -> UpdateMissionProfileOutput
}

public enum GroundStationClientTypes {}
