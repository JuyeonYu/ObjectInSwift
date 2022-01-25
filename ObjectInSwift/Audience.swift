//
//  Audience.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class Audience {
  var bag: Bag
  
  init(bag: Bag) {
    self.bag = bag
  }
  
  func buy(ticket: Ticket) -> Double {
    if bag.hasInvitation {
      bag.ticket = ticket
      return 0
    } else {
      bag.minusAmount(amount: ticket.fee)
      bag.ticket = ticket
      return ticket.fee
    }
  }
}
