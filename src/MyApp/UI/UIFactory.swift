import Dip
import Foundation

class UIFactory
{
  private let container: DependencyContainer

  init(container: DependencyContainer)
  {
    self.container = container
  }
}

// sourcery:inline:UIFactory.AutoUIFactory
extension UIFactory
{
  func createMainViewController() -> MainViewController
  {
    return try! container.resolve()
  }
}

extension UIFactory
{
  func createMainWindow() -> MainWindow
  {
    return try! container.resolve()
  }
}

// sourcery:end
