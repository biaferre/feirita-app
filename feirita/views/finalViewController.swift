//
//  finalViewController.swift
//  feirita
//
//  Created by Bof on 20/05/22.
//

import Foundation
import MessageUI

class finalViewController: ViewController, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendSMS(_ sender: UIButton!) {
        if (MFMessageComposeViewController.canSendText()){
            let controller = MFMessageComposeViewController()
            controller.body = "Bora feirar? Tô livre!"
            controller.recipients = [String("81989293780")]
            controller.messageComposeDelegate = self
            self.present(controller, animated:true, completion: nil)
        }
    }
}
