import Cocoa
import Dip

class AppDelegate: NSObject, NSApplicationDelegate
{
  var window: NSWindow!

  private let container = DependencyContainer.configure()
  private lazy var uiFactory: UIFactory? = {
    try? container.resolve()
  }()

  func applicationDidFinishLaunching(_ notification: Notification)
  {
    guard let uiFactory = self.uiFactory else
    {
      fatalError("Failed to load UIFactory")
    }

    window = uiFactory.createMainWindow()
  }
}
