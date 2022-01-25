//
//  TicketOffice.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class TicketOffice {
  var amount: Double
  var tickets: [Ticket]
  
  init(amount: Double, tickets: [Ticket]) {
    self.amount = amount
    self.tickets = tickets
  }
  
  func minusAmount(amount: Double) {
    self.amount -= amount
  }
  func plusAmount(amount: Double) {
    self.amount += amount
  }
}
