//
//  SectionedContactListView.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct SectionedContactListView: View {
    let contacts: [Person]

    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    Label(contact.phone, systemImage: Contacts.phone.rawValue)
                    Label(contact.email, systemImage: Contacts.email.rawValue)                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct SectionedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionedContactListView(contacts: Person.getPersonList())
    }
}
