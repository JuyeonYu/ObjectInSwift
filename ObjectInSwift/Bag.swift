//
//  Bag.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class Bag {
  var amount: Double = 0
  var invitation: Invitation?
  var ticket: Ticket?
  var hasInvitation: Bool {
    invitation != nil
  }
  
  init(amount: Double, invitation: Invitation?) {
    self.amount = amount
    self.invitation = invitation
  }
  convenience init(amount: Double) {
    self.init(amount: amount, invitation: nil)
  }
  
  func minusAmount(amount: Double) {
    self.amount -= amount
  }
  func plusAmount(amount: Double) {
    self.amount += amount
  }
}
