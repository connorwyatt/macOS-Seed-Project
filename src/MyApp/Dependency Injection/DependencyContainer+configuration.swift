import Dip
import Foundation

extension DependencyContainer
{
  static func configure() -> DependencyContainer
  {
    return DependencyContainer
    { container in
      unowned let container = container

      container.register { UIFactory(container: container) }

      container.register { MainWindow(uiFactory: $0) }

      container.register { MainViewController(viewModel: $0) }

      container.register(.weakSingleton) { MainViewModel() }
    }
  }
}
