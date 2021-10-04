//
//  ChatRow.swift
//  Moment Memorie
//
//  Created by NGUYEN DUY KHUONG on 2021/08/25.
//

import SwiftUI

struct ChatRow: View {
    var body: some View {
        
        HStack(spacing: 20){
            Image("image1")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            ZStack{
                VStack(alignment: .leading, spacing: 5){
                    
                    HStack{
                        Text("dfdf")
                            .bold()
                        Spacer()
                        
                        Text("fdf")
                    }
                    HStack{
                        Text("fdfdjfdjfkdjkfjdl")
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50 , alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
            }
        }

    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow()
    }
}
