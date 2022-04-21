//
//  FakeUpdateView.swift
//  FakeUpdate
//
//  Created by 段旭冉 on 2022/4/21.
//

import SwiftUI
import ScreenSaver

@available(OSX 10.15, *)

public class ScreenUpdateView: ScreenSaverView {

   //@objc public var onDidChange: ((Float) -> Void)?

  public override init(frame frameRect: NSRect, isPreview: Bool) {
    super.init(frame: frameRect, isPreview: isPreview)!
      //wantsLayer = true
      //layer?.backgroundColor = NSColor.lightGray.cgColor
      let view = NSHostingView(rootView: FakeUpdateView())
      view.translatesAutoresizingMaskIntoConstraints = false
      addSubview(view)
      leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
      trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
   }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
struct FakeUpdateView: View {
    @State var progressValue: Double = 0
    var body: some View {
        VStack(){
            EmptyView()
                .padding()
            Image(systemName: "applelogo")
                .font(.system(size: 90))
                .padding(.vertical, 110)
            ProgressView(value: progressValue)
                .progressViewStyle(LinearProgressViewStyle(tint: Color.white))
                .background(Color.black)
                .padding()
        }
        .frame(width: 250, height: 300)
            
    }
}

struct FakeUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        FakeUpdateView()
    }
}
