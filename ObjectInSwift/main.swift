//
//  main.swift
//  ObjectInSwift
//
//  Created by Juyeon on 2022/01/25.
//

import Foundation

print("Hello, World!")

var tickets: [Ticket] = []
for _ in 0 ..< 10 {
  tickets.append(Ticket())
}

let theater: Theater = Theater(tickSeller: TicketSeller(ticketOffice: TicketOffice(amount: 10000, tickets: tickets)))
theater.enter(audience: Audience(bag: Bag(amount: 10000)))
theater.enter(audience: Audience(bag: Bag(amount: 50, invitation: Invitation())))
theater.enter(audience: Audience(bag: Bag(amount: 510, invitation: Invitation())))
theater.enter(audience: Audience(bag: Bag(amount: 10)))
theater.enter(audience: Audience(bag: Bag(amount: 20)))
