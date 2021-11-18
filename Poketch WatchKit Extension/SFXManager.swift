//
//  SFXManager.swift
//  Poketch WatchKit Extension
//
//  Created by Tomas Martins on 17/11/21.
//

import AVFoundation

enum SoundEffect {
    case changeComplication
    case buttonPress
    
    var fileName: String {
        switch self {
        case .changeComplication:
            return "change"
        case .buttonPress:
            return "button"
        }
    }
}

class SFXManager {
    var audioPlayer: AVAudioPlayer?
    
    func play(sound: SoundEffect) {
        guard let url = Bundle.main.url(forResource: sound.fileName, withExtension: "m4a") else { return }
        print(url)
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }
}
