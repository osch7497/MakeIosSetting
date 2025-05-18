//
//  OtherView.swift
//  MakeIosSetting
//
//  Created by 초천재귀요미크리쳐 on 5/8/25.
//
import SwiftUI

struct OtherView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("전으로 넘어갑니다")
                .onTapGesture {
                    dismiss()
                }
        }
    }
}
#Preview {
    OtherView()
}
