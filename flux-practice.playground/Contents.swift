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
    
    // TODO: state -> view binding

    private var changeState: ((State) -> Void)? = nil
    
    private var state: State {
        didSet {
            changeState?(state)
        }
    }
    
    init(state: State) {
        self.state = state
    }
    
    func setHandler(handler: @escaping (State) -> Void ) {
        self.changeState = handler
    }
    
    func commit(action: Action) {
        self.state = Reducer.reduce(action: action)
    }
}

struct State { }

class Reducer {
    static func reduce(action: Action) -> State {
        return .init()
    }
}

// MARK: Dispatcher

class Dispatcher {
    func dispatch(action: Action) {
        
    }
}

// MARK: Action

enum Action {
    case tapButton
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

protocol Service {}

class LoggedOutService: Service {
    func registration() -> Bool {
        return false
    }
}

class AppointmentService: Service {
    func fetchUsers() -> [String] {
        return []
    }
}

class DerriveryService: Service {
    func fetchUsers() -> [String] {
        return []
    }
}


// MARK: View Layer

class WelcomeViewModel {
    
    let service: LoggedOutService
    
    let state = Store.shared
    let dispatcher = Dispatcher()
    
    init(service: LoggedOutService) {
        self.service = service
    }
    
    func fetch() {
        let action = Action.tapButton
        dispatcher.dispatch(action: action)
    }
}

class WelcomeViewController: UIViewController {
    
    private let viewModel: WelcomeViewModel
    
    private let hogeView = HogeView()
    
    init(viewModel: WelcomeViewModel) {
        self.viewModel = viewModel
        super.init()
        
        viewModel.state.setHandler(handler: { state in
            
        })
    }
    
    func didTap() {
        
    }
}

class HogeView {
    
}


let vc = WelcomeViewController(viewModel: .init(service: .init()))
vc.didTap()
