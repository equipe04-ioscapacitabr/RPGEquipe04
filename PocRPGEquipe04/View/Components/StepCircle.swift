//
//  StepCircle.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct StepCircle: View {
    var systemImage: String
    var active: Bool
    
    var body: some View {
        Image(systemName: systemImage)
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .bold))
            .padding(10)
            .background(active ? Color.blue : Color.gray.opacity(0.4))
            .clipShape(Circle())
    }
}

