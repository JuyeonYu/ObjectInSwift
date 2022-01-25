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
    if audience.bag.hasInvitation {
      let ticket: Ticket = self.tickSeller.ticketOffice.tickets.removeFirst()
      audience.bag.ticket = ticket
    } else {
      let ticket: Ticket = self.tickSeller.ticketOffice.tickets.removeFirst()
      audience.bag.minusAmount(amount: ticket.fee)
      tickSeller.ticketOffice.plusAmount(amount: ticket.fee)
      audience.bag.ticket = ticket
    }
  }
}
