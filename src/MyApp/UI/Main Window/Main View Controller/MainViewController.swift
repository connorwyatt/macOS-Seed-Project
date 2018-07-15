import Cocoa
import SnapKit

class MainViewController: NSViewController, UIInjectable
{
  private let viewModel: MainViewModel

  init(viewModel: MainViewModel)
  {
    self.viewModel = viewModel

    super.init(nibName: nil, bundle: nil)
  }

  @available(*, unavailable)
  required init?(coder: NSCoder)
  {
    fatalError("init(coder:) has not been implemented")
  }

  override func loadView()
  {
    view = layout()
  }

  private func layout() -> NSView
  {
    let view = NSView()

    view.snp.makeConstraints
    { make in
      make.width.greaterThanOrEqualTo(400)
      make.height.greaterThanOrEqualTo(200)
    }

    let textView = self.textView()

    view.addSubview(textView)

    textView.snp.makeConstraints
    { make in
      make.centerX.centerY.equalToSuperview()
      make.height.equalTo(textView.attributedString().size().height)
      make.left.right.equalToSuperview().inset(20)
    }

    return view
  }

  private func textView() -> NSTextView
  {
    let textView = NSTextView()

    textView.string = viewModel.string
    textView.alignCenter(nil)
    textView.isEditable = false
    textView.isSelectable = false
    textView.backgroundColor = NSColor.clear

    return textView
  }
}
