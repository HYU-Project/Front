//
//  StarPosts.swift
//  frontproject
//
//  Created by ace on 10/15/24.
//

import SwiftUI

struct StarPosts: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("← 관심 목록")
                .font(.title)
            Divider()
            HStack{
                Image(systemName: "")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 5))
                Text("["+String(post.subject)+"]\n\n"+String(post.price)+" 원")
                Spacer()
                VStack {
                    Text("♥")
                        .font(.title)
                    Spacer()
                }
            }
            .frame(height: 100)
            HStack() {
                Spacer()
                Text("거래완료")
                Spacer()
            }
            Divider()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StarPosts()
}
