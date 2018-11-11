import Foundation


class Store {
    struct State {
        
    }

    let state = State()
}


enum Action {
    
}


class APIManager {
    
}

class Request {

    static let baseURL: URL = .init(string: "https://")
    
    func name() -> URLRequest {
        let url = Request.baseURL
        return URLRequest(url: url)
    }
    
}

class Service {
    func fetchUsers() -> [String] {
        return []
    }
}


class ViewController {
    
}

class ViewModel {
    
}

class HogeView {
    
}
