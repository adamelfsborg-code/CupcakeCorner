//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Adam Elfsborg on 2024-07-28.
//

import SwiftUI

struct AddressView: View {
    var order: Order
    var body: some View {
        Text("\(order.quantity)")
    }
}

#Preview {
    AddressView(order: Order())
}
