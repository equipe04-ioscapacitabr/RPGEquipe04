//
//  StepLine.swift
//  PocRPGEquipe04
//
//  Created by iredefbmac_18 on 18/08/25.
//

import SwiftUI

struct StepLine: View {
    var active: Bool
    
    var body: some View {
        Rectangle()
            .fill(active ? Color.blue : Color.gray)
            .frame(width: 60, height: 2)
    }
}
