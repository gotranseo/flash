import Vapor

public extension Response {
    public func flash(_ type: Flash.Kind, _ message: String) -> Response {
        if let container = try? make(FlashContainer.self) {
            container.flashes.append(.init(type, message))
        }
        return self
    }
}
