//
//  View+validated.swift
//  ValidatedPropertyKit
//
//  Created by Sven Tiigi on 04.01.21.
//  Copyright © 2021 Sven Tiigi. All rights reserved.
//

#if canImport(SwiftUI)
    import SwiftUI
#endif

// MARK: - View+validated

@available(iOS 14, *)
public extension View {
    
    /// Adds a condition that controls whether users can interact
    /// with this view if all given `Validatable` instances are valid
    /// - Parameter validatables: The Validatables
    func validated(
        _ validatables: Validatable...
    ) -> some View {
        self.disabled(
            validatables
                .map(\.isValid)
                .contains(false)
        )
    }
    
}
