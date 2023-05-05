//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: DetailsView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getPersonList())
    }
}
