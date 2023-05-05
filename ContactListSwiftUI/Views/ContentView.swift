//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getPersonList()
    
    var body: some View {
            TabView {
                ContactListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                SectionedContactListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
