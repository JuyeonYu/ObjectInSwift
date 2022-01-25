//
//  Bag.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class Bag {
  private var amount: Double = 0
  private var invitation: Invitation?
  private var ticket: Ticket?
  private var hasInvitation: Bool {
    invitation != nil
  }
  
  init(amount: Double, invitation: Invitation?) {
    self.amount = amount
    self.invitation = invitation
  }
  convenience init(amount: Double) {
    self.init(amount: amount, invitation: nil)
  }
  
  private func minusAmount(amount: Double) {
    self.amount -= amount
  }
  private func plusAmount(amount: Double) {
    self.amount += amount
  }
  
  func hold(ticket: Ticket) -> Double {
    if hasInvitation {
      self.ticket = ticket
      return 0
    } else {
      minusAmount(amount: ticket.fee)
      self.ticket = ticket
      return ticket.fee
    }
  }
}
