//
//  TicketSeller.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

class TicketSeller {
  private let ticketOffice: TicketOffice
  
  init(ticketOffice: TicketOffice) {
    self.ticketOffice = ticketOffice
  }
  
  func sell(to audience: Audience) {
    ticketOffice.plusAmount(amount: audience.buy(ticket: ticketOffice.tickets.removeFirst()))
  }
}
