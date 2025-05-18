import SwiftUI

struct ContentView: View {
    @State private var airplaneMode: Bool = false
    @State private var Search: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack{
                List{
                    
                    Section{
                        HStack{
                            Image(systemName:"magnifyingglass")
                                .resizable()
                                .frame(width:20, height:20)
                            TextField("검색", text: $Search)
                                .frame(width:300)
                            Image(systemName:"microphone.fill")
                                .frame(width:20, height:20)
                        }
                    }
                    Section{
                        HStack{
                            Image("Apple AC")
                                .resizable()
                                .frame(width:100, height:100)
                            VStack{
                                HStack{
                                    Text("Apple 계정")
                                        .font(.title)
                                    Spacer()
                                }
                                Text("icloud 데이터, App Store, Apple 서비스등에 접근하시려면 로그인하십시오")
                                    .font(.caption2)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(nil)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                    }
                    Section{
                        HStack{
                            Image(systemName: "airplane")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .padding(1)
                            Text("에어플레인 모드")
                            Toggle("",isOn:$airplaneMode)
                        }
                        ZStack{
                            HStack{
                                Image(systemName: "wifi")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(1)
                                Spacer()
                                NavigationLink("Wi-Fi"){
                                    OtherView()
                                        .navigationBarBackButtonHidden()
                                }
                            }
                            HStack{
                                Spacer()
                                Text("us_gbsw_hs_P")
                                    .padding(.trailing, 25.0)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        ZStack{
                            HStack{
                                Image("BlueTooth")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(1)
                                Spacer()
                                NavigationLink("Bluetooth"){
                                    OtherView()
                                        .navigationBarBackButtonHidden()
                                }
                            }
                            HStack{
                                Spacer()
                                Text("켬")
                                    .padding(.trailing, 25.0)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        HStack{
                            Image(systemName:"antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding(1)
                            Text("셀룰러")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"personalhotspot")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding(1)
                            Text("개인용 핫스팟")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"battery.100percent")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding(1)
                            Text("배터리")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                    }
                    Section{
                        HStack{
                            Image(systemName:"gear")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .padding(1)
                            Text("일반")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"accessibility")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(1)
                            Text("손쉬운 동작")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"magnifyingglass")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .padding(1)
                            Text("검색")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image("Action")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(1)
                            Text("동작 버튼")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"sun.max.fill")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(1)
                            Text("디스플레이 및 밝기")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image("Photo")
                                .resizable()
                                .frame(width:23,height: 23)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.blue.opacity(0.65))
                                .cornerRadius(10)
                                .padding(1)
                            Text("바탕화면")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image("StandBy")
                                    .resizable()
                                    .frame(width:26.25,height:20.5)
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                    .padding(.bottom, 3.0)
                            Text("스탠바이")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"switch.2")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("제어 센터")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"camera.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("카메라")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        
                        HStack{
                            Image(systemName:"apps.iphone")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("홈 화면 및 앱 보관함")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"apple.intelligence")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(
                                        AngularGradient(
                                            colors: [.red,
                                                     .purple.opacity(0.5),
                                                     .blue.opacity(0.5),
                                                     .orange,.red],
                                            center: .center,
                                            angle: Angle(degrees:-45)
                                        )
                                    )
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("Apple Intelligence 및 Siri")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                    }
                    Section{
                        HStack{
                            Image(systemName:"bell.badge.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.red)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("알림")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"speaker.wave.3.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.pink)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("사운드 및 햅틱")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"moon.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.darkpurple)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("집중 모드")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        
                        HStack{
                            Image(systemName:"hourglass")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(Color.darkpurple)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("스크린 타임")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        
                    }
                    Section{
                        HStack{
                            Image(systemName:"faceid")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.green)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("Face ID 및 암호")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"sos")
                                    .resizable()
                                    .frame(width: 20, height: 10)
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.red)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("긴급 구조 요청")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"hand.raised.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.blue)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("개인정보 보호 및 보안")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                    }
                    Section{
                        HStack{
                            Image("wallet")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.black)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("지갑 및 Apple Pay")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image("GameCenterIcon")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .frame(width: 31, height: 31)
                                    .background(.gray.opacity(0.1))
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("Game Center")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName:"icloud.fill")
                                    .frame(width: 15, height: 15)
                                    .foregroundStyle(
                                        LinearGradient(colors: [.blue.opacity(0.1), .blue], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: 30, height: 30)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .frame(width: 31, height: 31)
                                    .background(.gray.opacity(0.1))
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("iCloud")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }
                    }
                    Section{
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.darkpurple)
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(5)
                                VStack(alignment: .center, spacing: 2){
                                    HStack(alignment: .center, spacing: 2){
                                        Rectangle()
                                            .foregroundColor(.green)
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.yellow)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.orange)
                                    }
                                    .padding(.top, 5.0)

                                    HStack(alignment: .center, spacing: 2){
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.red)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.gray)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.red)
                                    }
                                    
                                    HStack(alignment: .center, spacing: 2){
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.purple)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.blue)
                                        Rectangle()
                                            .frame(width:5, height: 5)
                                            .cornerRadius(1)
                                            .foregroundColor(.mint)
                                    }
                                    .padding(.bottom, 5.0)
                                }
                            }
                            Text("앱")
                            Spacer()
                            Image(systemName:"greaterthan")
                                .foregroundColor(.gray)
                        }
                    }
                    Section {
                        HStack{
                            Image(systemName:"hammer.fill")
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.gray)
                                    .cornerRadius(10)
                                    .padding(1)
                                Text("개발자")
                                Spacer()
                                Image(systemName:"greaterthan")
                                    .foregroundColor(.gray)
                        }                    }
                }
                .navigationTitle("설정")
            }
        }
    }
    
}

#Preview {
    ContentView()
}
