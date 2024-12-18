//소민2
import SwiftUI

struct HomeView: View {
    
    // InfoRegistrationView에서 선택한 학교 이름을 받기 위한 변수를 선언
    var schoolName: String = "한양대학교 서울캠" // 임시로 학교 이름 설정
    
    var body: some View {
        NavigationView { // NavigationView 추가
            VStack {
                // 광고 배너
                Text("여기에 광고 배너 들어가기")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .padding()
                
                HStack {
                    Text(">  \(schoolName)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                }
                
                NavigationLink(destination: ContentView()) { // 공구 버튼을 NavigationLink로 변경
                    Text("공구")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 270, height: 90)
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {
                    // 나눔 버튼 눌렀을 때 이동 로직
                }) {
                    Text("나눔")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 270, height: 90)
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {
                    // 채팅 버튼 눌렀을 때 이동 로직
                }) {
                    Text("채팅")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 270, height: 90)
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: MyHome()) { // 마이홈 버튼을 NavigationLink로 변경
                    Text("마이홈")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 270, height: 90)
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("홈")
        }
    }
}

#Preview {
    HomeView()
}
