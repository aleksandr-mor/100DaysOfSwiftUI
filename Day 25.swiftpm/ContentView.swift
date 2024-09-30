import SwiftUI

struct ContentView: View {
   
    @State var agreedToTerms = false
    @State var agreedToPrivacyPolicy = false
    @State var agreedToEmails = false

    var body: some View {
        let agreedToAll = Binding<Bool>(
            get: { agreedToTerms && agreedToPrivacyPolicy && agreedToEmails },
            set: {
                agreedToTerms = $0
                agreedToPrivacyPolicy = $0
                agreedToEmails = $0
            }
        )
        
        return VStack {
            Toggle("Agree to terms", isOn: $agreedToTerms)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
            Toggle("Agree to emails", isOn: $agreedToEmails)
            Toggle("AgreeToAll", isOn: agreedToAll)
        }
    }
}

