//
//  ScrumView.swift
//  Scrumy
//
//  Created by MUmarJ on 1/31/23.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(
                    destination: DetailView(scrum: scrum)
                ) {
                    CardView(scrum: scrum)

                }
//                    .background(scrum.theme.mainColor)
                .listRowBackground(scrum.theme.mainColor)
            }
        }
            .navigationTitle("Daily Scrums")
            .toolbar {
            Button(action: { }) {
                Image(systemName: "plus"
                )
            }
                .accessibilityLabel(Text("New Scrum"))
        }
    }
}

struct ScrumView_Preview: PreviewProvider {
    static var previews: some View {
        ScrumView(scrums: DailyScrum.sampleData)
    }
}
