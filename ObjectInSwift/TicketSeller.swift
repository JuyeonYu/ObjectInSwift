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
//    1. ticketOffice의 자율성은 없지만 결합도는 낮은 설계
//    ticketOffice.plusAmount(amount: audience.buy(ticket: ticketOffice.tickets.removeFirst()))
    
//    2. ticketOffice의 자율성은 있지만 ticketOffice와 audience간 의존성이 생긴 설계
    ticketOffice.sell(ticket: audience)
  }
}
