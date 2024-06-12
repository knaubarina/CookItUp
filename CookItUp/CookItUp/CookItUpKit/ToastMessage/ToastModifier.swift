//  Created by Arina Knaub on 12/06/2024.

import SwiftUI

struct Toast: Equatable {
    var style: ToastStyle
    var message: String
    var duration: Double = 3
    var width: Double = .infinity
}

struct ToastModifier: ViewModifier {
    
    @Binding var toast: Toast?
    @State private var workItem: DispatchWorkItem?
    
    func body(content: Content) -> some View {
        content
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .overlay(
            ZStack {
              mainToastView()
                .offset(y: 32)
            }.animation(.spring(), value: toast)
          )
          .onChange(of: toast) {
            showToast()
          }
      }
      
      @ViewBuilder func mainToastView() -> some View {
        if let toast = toast {
          VStack {
            ToastView(
              style: toast.style,
              message: toast.message,
              width: toast.width
            ) {
              dismissToast()
            }
            Spacer()
          }
        }
      }
      
      private func showToast() {
        guard let toast = toast else { return }
        
        UIImpactFeedbackGenerator(style: .light)
          .impactOccurred()
        
        if toast.duration > 0 {
          workItem?.cancel()
          
          let task = DispatchWorkItem {
            dismissToast()
          }
          
          workItem = task
          DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration, execute: task)
        }
      }
      
      private func dismissToast() {
        withAnimation {
          toast = nil
        }
        
        workItem?.cancel()
        workItem = nil
      }
    }
