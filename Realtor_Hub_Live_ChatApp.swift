//
//  Realtor_Hub_Live_ChatApp.swift
//  Realtor Hub Live Chat
//
//  Created by Derrius Royster on 4/9/23.
//
import SwiftUI
import Socket.IO

class ViewController: UIViewController {
    
    @IBOutlet weak var messagesTextView: UITextView!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var socket: SocketIOClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        socket = SocketIOClient(socketURL: URL(string: "http://localhost:3000")!)
        socket.on(clientEvent: .connect) {data, ack in
            print("socket connected")
        }
        socket.on("message") {data, ack in
            guard let message = data[0] as? String else { return }
            self.addMessage(message: message)
        }
        socket.connect()
    }
    
    @IBAction func sendMessage() {
        guard let message = messageTextField.text else { return }
        if !message.isEmpty {
            socket.emit("message", message)
            addMessage(message: message, fromUser: true)
            messageTextField.text = ""
        }
    }
    
    func addMessage(message: String, fromUser: Bool = false) {
        messagesTextView.text = messagesTextView.text + "\n" + (fromUser ? "You: " : "Stranger: ") + message
    }
}
