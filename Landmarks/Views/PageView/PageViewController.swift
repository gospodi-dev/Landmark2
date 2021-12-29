//
//  PageViewController.swift
//  Landmarks
//
//  Created by Gospodi on 28.12.2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject {
        var parent: PageViewController
        
        init(_ pageViewController: PageViewController) {
            parent = pageViewController
        }
    }
}



//  Контроллер представления страницы хранит массив Page экземпляров, который должен быть типа View. Это страницы, которые вы используете для прокрутки достопримечательностей.
