//
//  ContentView.swift
//  Scrumy
//
//  Created by MUmarJ on 1/25/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 10)
            HStack {
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer(minLength: 75)
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption2)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
            }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Label("", systemImage: "waveform.and.mic")
                Button(action: { }) {
                    Image(systemName: "forward.fill")
                }
                    .accessibilityLabel("Next speaker")
            }
        }
            .padding(50)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
