//
//  ContactPhoneAndEmailView.swift
//  ContactListSwiftUI
//
//  Created by Dmitrii Melnikov on 05.05.2023.
//

import SwiftUI

struct ContactPhoneAndEmailView: View {
    let contact: Person
    
    var body: some View {
        HStack {
            Image(systemName: Contacts.phone.rawValue)
                .foregroundColor(.blue)
            Text(contact.phone)
        }
        HStack {
            Image(systemName: Contacts.email.rawValue)
                .foregroundColor(.blue)
            Text(contact.email)
        }    }
}

struct ContactPhoneAndEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactPhoneAndEmailView(contact: Person.getPersonList()[1])
    }
}
