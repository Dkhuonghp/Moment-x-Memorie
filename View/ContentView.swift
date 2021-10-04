//
//  ContentView.swift
//  Moment Memorie
//
//  Created by NGUYEN DUY KHUONG on 2021/06/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Home()
    }
}

struct Home: View {
    var body: some View {

        NavigationView{

            ZStack {
                Image("background")
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)


                VStack{

                    VStack{

                        Text("あなたの幸せを繋げる")
                            .font(.title3)
                            .foregroundColor(Color("text"))
                        Image("logo")
                            .resizable()
                            .frame(width: 290, height: 105)
            //            Spacer()
                    }
                    .padding(.vertical, 60)


                    VStack{

                        VStack{

                            NavigationLink(
                                destination: Login(),
                                label: {
                                    Text("ログイン")
                                    .font(.title2)
                                    .foregroundColor(Color("text"))
                                    .bold()
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 50)                                })
                                    .background(Color("btn"))
                                    .cornerRadius(10)
                                    .padding(.top, 25)


                        }
                        .padding(.vertical,20)

                        VStack{

                            Text("IDお持ちでない方")
                                .font(.title3)
                                .foregroundColor(Color("text"))
                                .padding()
                                NavigationLink(
                                    destination: ContentView1(),
                                    label: {
                                        Text("メールアドレスまたは電話番号で新規登録")
                                    })
                        }
                    }
                }
            }
        }
    }
}

struct Login: View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
//    @Binding var show : Bool
//    @State var alert = false
//    @State var error = ""

    var body: some View{

        ZStack{

            Image("background")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.25)

            VStack{
                Image("logo")
                    .padding()

                TextField("Email", text: self.$email)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("color") : self.color,lineWidth: 2))
                    .padding(.top, 25)

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
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("color") : self.color,lineWidth: 2))
                    .padding(.top, 25)

                Button(action: {



                }){

                    Text("ログイン")
                    .font(.title2)
                    .foregroundColor(Color("text"))
                    .bold()
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(Color("btn"))
                .cornerRadius(10)
                .padding(.top, 25)


            }
            .padding(.horizontal,480)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
