//
//  Theater.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class Theater {
  let tickSeller: TicketSeller
  
  init(tickSeller: TicketSeller) {
    self.tickSeller = tickSeller
  }
  
  func enter(audience: Audience) {
    tickSeller.sell(to: audience)
  }
}
