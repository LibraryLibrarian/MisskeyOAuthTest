//
//  HomeView.swift
//  MisskeyOAuthTest
//
//  Created by Librarian on 2024/05/30.
//

import Foundation
import SwiftUI

struct OAuthView: View {
    @ObservedObject var viewModel: OAuthViewModel

    var body: some View {
        Text(viewModel.title)
    }
}
