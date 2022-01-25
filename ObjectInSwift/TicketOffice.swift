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
  private func plusAmount(amount: Double) {
    self.amount += amount
  }
  func sell(ticket to: Audience) {
    plusAmount(amount: to.buy(ticket: self.tickets.removeFirst()))
  }
}
