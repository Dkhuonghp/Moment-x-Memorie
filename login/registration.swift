//
//  Login.swift
//  Moment Memorie
//
//  Created by NGUYEN DUY KHUONG on 2021/06/18.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var name = ""
    @State var color = Color.black.opacity(0.7)
    @State var pass = ""
    @State var visible = false
    //checkBox


    var body: some View {

                GeometryReader{_ in

                    VStack{

                        HStack{

                            VStack(alignment: .leading) {

                                Text("性")
                                    .multilineTextAlignment(.trailing)


                                TextField("性", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }

                            VStack(alignment: .leading) {

                                Text("名")
                                    .multilineTextAlignment(.trailing)


                                TextField("名", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }


                        }
                        .padding(.vertical, 10)
                        HStack{

                            VStack(alignment: .leading) {

                                Text("セイ")
                                    .multilineTextAlignment(.trailing)


                                TextField("セイ", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }

                            VStack(alignment: .leading) {

                                Text("メイ")
                                    .multilineTextAlignment(.trailing)


                                TextField("メイ", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }


                        }
                        .padding(.vertical, 10)
                        
                        HStack{

                            VStack(alignment: .leading) {

                                Text("郵便番号")
                                    .multilineTextAlignment(.trailing)

                                HStack{

                                    TextField("郵便番号", text: self.$name)
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                                    TextField("", text: self.$name)
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                                }
                            }
                        }
                        .padding(.vertical, 10)

                        HStack{

                            VStack(alignment: .leading) {

                                Text("電話番号")
                                    .multilineTextAlignment(.trailing)


                                TextField("電話番号", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }
                        }
                        .padding(.vertical, 10)

                        HStack{

                            VStack(alignment: .leading) {

                                Text("住所")
                                    .multilineTextAlignment(.trailing)


                                TextField("住所", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }
                        }
                        .padding(.vertical, 10)

                        HStack{

                            VStack(alignment: .leading) {

                                Text("メールアドレス")
                                    .multilineTextAlignment(.trailing)


                                TextField("メールアドレス", text: self.$name)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            }
                        }

                        .padding(.vertical, 10)

                        HStack{

                            VStack(alignment: .leading){

                                if self.visible{

                                    TextField("Password", text: self.$pass)
                                }
                                else{
                                    SecureField("Password" ,text: self.$pass)
                                }
                            }


                            Button(action: {

                                self.visible.toggle()

                            }) {

                                Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(self.color)


                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }
                    .padding(.horizontal, 25)
                }
            }
        }

struct CheckboxField: View {
    
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: Int
    let callback: (String, Bool)->()
    
    init(
        id: String,
        label:String,
        size: CGFloat = 10,
        color: Color = Color.black,
        textSize: Int = 14,
        callback: @escaping (String, Bool)->()
        ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self.callback = callback
    }
    
    @State var isMarked:Bool = false
    
    var body: some View {
        Button(action:{
            self.isMarked.toggle()
            self.callback(self.id, self.isMarked)
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.isMarked ? "checkmark.square.fill" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                Text(label)
                    .font(Font.system(size: size))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(Color.white)
    }
}

enum Gender: String {
    case 男
    case 女
}

struct ContentView1: View {
    @State var email = ""
    @State var name = ""
    @State var color = Color.black.opacity(0.7)
    @State var pass = ""
    @State var visible = false


    var body: some View {
        
        ScrollView{
            
            VStack{
                
                HStack{

                    VStack(alignment: .leading) {

                        Text("性")
                            .multilineTextAlignment(.trailing)


                        TextField("性", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }

                    VStack(alignment: .leading) {

                        Text("名")
                            .multilineTextAlignment(.trailing)


                        TextField("名", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }


                }
                .padding(.vertical, 10)
                HStack{

                    VStack(alignment: .leading) {

                        Text("セイ")
                            .multilineTextAlignment(.trailing)


                        TextField("セイ", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }

                    VStack(alignment: .leading) {

                        Text("メイ")
                            .multilineTextAlignment(.trailing)


                        TextField("メイ", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }


                }
                .padding(.vertical, 10)
                HStack {
                    CheckboxField(
                        id: Gender.男.rawValue,
                        label: Gender.男.rawValue,
                        size: 20,
                        textSize: 14,
                        callback: checkboxSelected
                    )
                    CheckboxField(
                        id: Gender.女.rawValue,
                        label: Gender.女.rawValue,
                        size: 20,
                        textSize: 14,
                        callback: checkboxSelected
                    )
                }
                .padding(.vertical, 10)

                HStack{

                    VStack(alignment: .leading) {

                        Text("郵便番号")
                            .multilineTextAlignment(.trailing)

                        HStack{

                            TextField("郵便番号", text: self.$name)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                            TextField("", text: self.$name)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                        }
                    }
                }
                .padding(.vertical, 10)

                HStack{

                    VStack(alignment: .leading) {

                        Text("電話番号")
                            .multilineTextAlignment(.trailing)


                        TextField("電話番号", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }
                }
                .padding(.vertical, 10)

                HStack{

                    VStack(alignment: .leading) {

                        Text("住所")
                            .multilineTextAlignment(.trailing)


                        TextField("住所", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }
                }
                .padding(.vertical, 10)

                HStack{

                    VStack(alignment: .leading) {

                        Text("メールアドレス")
                            .multilineTextAlignment(.trailing)


                        TextField("メールアドレス", text: self.$name)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                    }
                }

                .padding(.vertical, 10)

                HStack{

                    VStack(alignment: .leading){

                        if self.visible{

                            TextField("Password", text: self.$pass)
                        }
                        else{
                            SecureField("Password" ,text: self.$pass)
                        }
                    }


                    Button(action: {

                        self.visible.toggle()

                    }) {

                        Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(self.color)


                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color("color") : self.color,lineWidth: 2))
                .padding(.vertical, 10)
                HStack{

                    VStack(alignment: .leading) {

                        Text("メールアドレス")
                            .multilineTextAlignment(.trailing)


                        TextField("メールアドレス", text: self.$email)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("color") : self.color,lineWidth: 2))
                    }
                }

                
                
            }
            .padding()
            
        }

    }
    
    func checkboxSelected(id: String, isMarked: Bool) {
        print("\(id) is marked: \(isMarked)")
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
