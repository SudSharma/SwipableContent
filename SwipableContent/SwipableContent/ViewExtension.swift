//
//  ViewExtension.swift
//  SwipableContent
//
//  Created by Sudarshan Sharma on 11/26/20.
//

import SwiftUI

public extension View {
    public func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
        return conditional ? AnyView(content(self)) : AnyView(self)
    }
    
    public func onSwipe(_ position: ContextualViewPosition, configurations: [ContextualViewConfiguration]) -> some View {
        preference(key: ContextualViewPreferenceKey.self, value: configurations)
    }
}
