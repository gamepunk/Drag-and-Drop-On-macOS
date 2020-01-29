//
//  ViewController.swift
//  Demo
//
//  Created by Billow on 2020/1/28.
//  Copyright © 2020 Billow Wang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var dragableView: DragableView!
    
    @IBOutlet weak var textFieldCell: NSTextFieldCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dragableView.delegate = self
        dragableView.window?.backgroundColor = NSColor.clear
        dragableView.window?.isOpaque = false
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: DragableViewDelegate {
    func getFileURL(_ url: URL?){
        textFieldCell.title = url!.absoluteString.removingPercentEncoding!
        view.window?.title = textFieldCell.title.components(separatedBy: "/").last!
        print("\(url!.absoluteString)")
    }
}
