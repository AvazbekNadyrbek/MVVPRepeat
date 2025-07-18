//
//  SecondView.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 16.07.25.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(AppViewModel.self) var appViewModel: AppViewModel
    
    var body: some View {
        Text("SecondView")
        Button {
            appViewModel.logout()
        } label: {
            Text("Press me yo change a View")
        }

    }
}

#Preview  {
    SecondView()
        .environment(AppViewModel())
}
