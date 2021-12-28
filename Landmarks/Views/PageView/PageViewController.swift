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
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
}



//  Контроллер представления страницы хранит массив Page экземпляров, который должен быть типа View. Это страницы, которые вы используете для прокрутки достопримечательностей.
