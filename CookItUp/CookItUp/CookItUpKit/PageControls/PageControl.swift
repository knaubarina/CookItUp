//  Created by Arina Knaub on 31/05/2024.

import SwiftUI

struct PageControl: UIViewRepresentable {
    @Binding var currentPage: Tab
    var numberOfPages: Int

    typealias UIViewType = UIPageControl

    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()

        pageControl.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged(_:)),
            for: .valueChanged
        )

        pageControl.numberOfPages = numberOfPages
        pageControl.currentPageIndicatorTintColor = .primary02
        pageControl.pageIndicatorTintColor = .primary02.withAlphaComponent(0.3)

        return pageControl
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        let currentIndex = currentPage.rawValue
        if uiView.currentPage != currentIndex {
            uiView.currentPage = currentIndex
        }
        if uiView.numberOfPages != numberOfPages {
            uiView.numberOfPages = numberOfPages
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(value: $currentPage)
    }

    class Coordinator: NSObject {
        var currentPage: Binding<Tab>

        init(value: Binding<Tab>) {
            self.currentPage = value
        }

        @objc func valueChanged(_ pageControl: UIPageControl) {
            if let newTab = Tab(rawValue: pageControl.currentPage) {
                self.currentPage.wrappedValue = newTab
            }
        }
    }
}
