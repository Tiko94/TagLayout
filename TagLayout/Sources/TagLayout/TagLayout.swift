import SwiftUI

public struct TagLayout<Content>: View where Content: View {
    private let content: (String) -> Content
    private let tags: [String]

    public var body: some View {
        VStack {
            layout
        }
    }

    private var layout: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                var width = CGFloat.zero
                var height = CGFloat.zero

                ForEach(tags, id: \.self) { tag in
                    self.content(tag)
                        .alignmentGuide(.leading, computeValue: { d in
                            if abs(width - d.width) > geometry.size.width {
                                width = 0
                                height -= d.height
                            }
                            let result = width
                            if tag == self.tags.last {
                                width = 0
                            } else {
                                width -= d.width
                            }
                            return result
                        })
                        .alignmentGuide(.top, computeValue: { d in
                            let result = height + d.height
                            if tag == self.tags.last {
                                height = 0
                            }
                            return result
                        })

                }
            }
        }
    }

    public init(tags: [String],
                content: @escaping (String) -> Content) {
        self.content = content
        self.tags = tags
    }
}
