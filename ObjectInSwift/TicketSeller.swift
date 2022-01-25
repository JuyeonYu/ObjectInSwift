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
    if audience.bag.hasInvitation {
      let ticket: Ticket = ticketOffice.tickets.removeFirst()
      audience.bag.ticket = ticket
    } else {
      let ticket: Ticket = ticketOffice.tickets.removeFirst()
      audience.bag.minusAmount(amount: ticket.fee)
      ticketOffice.plusAmount(amount: ticket.fee)
      audience.bag.ticket = ticket
    }
  }
}
