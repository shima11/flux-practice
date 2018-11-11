import Foundation

class UIViewController {}

// MARK: Routing

class Router {
    
    static let shared = Router()
    
    private var currentStack: [UIViewController] = []
    
    func route(to: UIViewController, from: UIViewController) {
        
    }
}


// MARK: Store, State

class Store {
    
    static let shared = Store(state: .init())
    
    struct State {
        
    }
    
    // TODO: state -> view binding

    private let state: State
    
    init(state: State) {
        self.state = state
    }
}

class Reducer {
    static func reduce(action: Action) -> Store.State {
        return .init()
    }
}

// MARK: Dispatcher

class Dispatcher {
    
}

// MARK: Action

enum Action {
    
}



// MARK: API Layer

class APIManager {
    let session = URLSession()
    
}

class Request {

    static let baseURL = URL(string: "https://")
    
    static func name() -> URLRequest {
        let url = Request.baseURL
        return URLRequest(url: url!)
    }
}


// MARK: Service Layer

class Service {
    func fetchUsers() -> [String] {
        return []
    }
}


// MARK: View Layer

class ViewController: UIViewController {
    
}

class ViewModel {
    
}

class HogeView {
    
}

