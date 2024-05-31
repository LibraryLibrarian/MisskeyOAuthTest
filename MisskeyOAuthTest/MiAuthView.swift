//
//  SettingsView.swift
//  MisskeyOAuthTest
//
//  Created by Librarian on 2024/05/30.
//

import Foundation
import SwiftUI

struct MiAuthView: View {
    @ObservedObject var viewModel: MiAuthViewModel

    var body: some View {
        Text(viewModel.title)
    }
}
