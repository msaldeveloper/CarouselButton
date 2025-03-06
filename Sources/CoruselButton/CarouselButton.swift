// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI
import Foundation
@available(iOS 15.0, *)
@available(macOS 12.0, *)

public struct CarouselButton: View {
    public var items: [String]
    public var color: Color = Color.mint
    public var spacing: CGFloat = 20
    public var cornerRadius: CGFloat = 20
    public var frame: (CGFloat, CGFloat) = (300, 50)
    public var completion: (String) -> Text
    public var buttonAction: (String) -> Void

    public var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: spacing) {
                ForEach(items, id: \.self) { item in
                    Button {
                        buttonAction(item)
                    } label: {
                        VStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                                    .fill(color)
                                    .shadow(radius: 5)
                                    .opacity(0.3)
                                    .frame(width: frame.0, height: frame.1)
                                HStack {
                                    //
                                    completion(item).multilineTextAlignment(.center).frame(width: 300, height: 100)
                                    //
                                }
                            }
                            .padding(.vertical)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
