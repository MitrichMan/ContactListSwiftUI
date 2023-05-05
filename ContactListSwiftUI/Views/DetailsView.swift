//
//  DetailsView.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct DetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 220, height: 220)
                Spacer()
            }
            ContactPhoneAndEmailView(contact: contact)
        }
        .navigationTitle(contact.fullName)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Person.getPersonList()[1])
    }
}
