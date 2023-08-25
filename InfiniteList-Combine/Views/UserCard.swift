//
//  UserCard.swift
//  InfiniteList-Combine
//
//  Created by Uday on 25/08/2023.
//

import SwiftUI

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        HStack (spacing: 12) {
            if !(user.avatarUrl.isEmpty){
                AsyncImage(url: URL(string: user.avatarUrl)) { image in
                    image
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
            }else{
                Image("imagePlaceholder")
            }
            Text(user.name)
        }
        .padding(4)
        
        
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        let mockUser = User(id: 1, name: "John Doe", avatarUrl: "")
        UserRow(user: mockUser)
    }
}
