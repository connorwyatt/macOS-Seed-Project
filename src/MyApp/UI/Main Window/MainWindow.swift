import Cocoa

class MainWindow: NSWindow, UIInjectable
{
  init(uiFactory: UIFactory)
  {
    let rect = NSRect(x: 0, y: 0, width: 400, height: 200)

    super.init(
      contentRect: rect,
      styleMask: [.titled, .closable, .miniaturizable, .resizable],
      backing: .buffered,
      defer: false
    )

    title = "My App"

    makeKeyAndOrderFront(self)

    center()

    contentViewController = uiFactory.createMainViewController()
  }
}
