struct APIClient {
    let baseURL: String = "http://localhost:8080"
    // ...
    func createUser(_ body: CreateUserRequest) async throws -> UserResponse
    func getUsers() async throws -> [UserResponse]
    func getUser(id: UUID) async throws -> UserResponse
    func getUserListings(userID: UUID) async throws -> [ListingResponse]
    func createListing(_ body: CreateListingRequest) async throws -> ListingResponse
    func getListings(page: Int, category: String?, query: String?) async throws -> PagedListingResponse
    func getListing(id: UUID) async throws -> ListingResponse
    func deleteListing(id: UUID) async throws
}
