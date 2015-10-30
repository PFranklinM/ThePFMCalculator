//
//  ViewController.swift
//  Calculator
//
//  Created by Paul Mallon on 9/24/15.
//  Copyright © 2015 Paul Frank Mallon. All rights reserved.
//

import UIKit
import AVFoundation

let mySpeechSynth = AVSpeechSynthesizer()
var myRate: Float = 0.50
var myPitch: Float = 1.15
var myVolume: Float = 1

//var myUtterance = AVSpeechUtterance(string: "Test")

//var langSelect: Int = 0

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var Languages: UIPickerView!
    
//    var pickerData: [String] = [String]()
    
    
    //MARK: 3 color modes
    
    @IBAction func Day(sender: UIButton) {

        speakThisString("Day Mode")
        
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        
        label.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        label.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)

        colorChanger.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        colorChanger.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)

        CSDay.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        CSDay.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
       
        CSNight.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        CSNight.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
       
        CSFun.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        CSFun.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        Languages.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

        plusMinus.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        plusMinus.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)

        Clear.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Clear.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Zero.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Zero.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        One.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        One.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Two.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Two.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Three.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Three.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Four.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Four.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Five.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Five.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Six.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Six.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Seven.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Seven.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Eight.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Eight.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Nine.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Nine.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Addition.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 0/255, alpha: 1)
        Addition.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Subtract.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 0/255, alpha: 1)
        Subtract.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Multiply.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 0/255, alpha: 1)
        Multiply.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Divide.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 0/255, alpha: 1)
        Divide.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Equals.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 0/255, alpha: 1)
        Equals.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    @IBAction func Night(sender: UIButton) {

        speakThisString("Night Mode")
        
        view.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        label.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        label.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        colorChanger.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        colorChanger.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        
        CSDay.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        CSDay.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        CSNight.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        CSNight.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        CSFun.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        CSFun.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Languages.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        
        plusMinus.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        plusMinus.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Clear.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        Clear.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Zero.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Zero.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        One.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        One.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Two.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Two.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Three.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Three.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Four.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Four.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Five.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Five.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Six.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Six.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Seven.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Seven.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Eight.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Eight.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Nine.backgroundColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)
        Nine.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Addition.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
        Addition.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Subtract.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
        Subtract.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Multiply.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
        Multiply.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Divide.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
        Divide.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Equals.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
        Equals.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)

    }
    
    @IBAction func Fun(sender: UIButton) {

        speakThisString("Fun Mode")
        
        view.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        
        label.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        label.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        colorChanger.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        colorChanger.textColor = UIColor(red: 102/255, green: 204/255, blue: 255/255, alpha: 1)
        
        CSDay.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        CSDay.setTitleColor(UIColor.cyanColor(), forState: UIControlState.Normal)
        
        CSNight.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        CSNight.setTitleColor(UIColor.cyanColor(), forState: UIControlState.Normal)
        
        CSFun.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        CSFun.setTitleColor(UIColor.cyanColor(), forState: UIControlState.Normal)
        
        Languages.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1)
        
        plusMinus.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        plusMinus.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Clear.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        Clear.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Zero.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Zero.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        One.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        One.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Two.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Two.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Three.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Three.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Four.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Four.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Five.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Five.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Six.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Six.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Seven.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Seven.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Eight.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Eight.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Nine.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 255/255, alpha: 1)
        Nine.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        Addition.backgroundColor = UIColor(red: 204/255, green: 102/255, blue: 255/255, alpha: 1)
        Addition.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Subtract.backgroundColor = UIColor(red: 255/255, green: 204/255, blue: 102/255, alpha: 1)
        Subtract.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Multiply.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
        Multiply.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Divide.backgroundColor = UIColor(red: 0/255, green: 128/255, blue: 64/255, alpha: 1)
        Divide.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        Equals.backgroundColor = UIColor(red: 102/255, green: 255/255, blue: 204/255, alpha: 1)
        Equals.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    //MARK: Voice Behaviour
    
//    func speakThisString(myString: String){
//        myUtterance = AVSpeechUtterance(string: myString)
//        
//        if(langSelect == 1){
//            myUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
//        }
//        
//        if(langSelect == 2){
//            myUtterance.voice = AVSpeechSynthesisVoice(language: "tr")
//        }
//        
//        if(langSelect == 3){
//            myUtterance.voice = AVSpeechSynthesisVoice(language: "zh-HK")
//        }
//        
//        mySpeechSynth.speakUtterance(myUtterance)
//    }
    
    
    func speakThisString(passedString: String){
        
        mySpeechSynth.stopSpeakingAtBoundary(AVSpeechBoundary.Immediate)
        
        let myUtterance = AVSpeechUtterance(string: passedString)
        
        myUtterance.rate = myRate
        myUtterance.pitchMultiplier = myPitch
        myUtterance.volume = myVolume
        
        myUtterance.voice = AVSpeechSynthesisVoice(language: currentLang.0)

        
        mySpeechSynth.speakUtterance(myUtterance)
    }
    
    //MARK: - variables
    
    var total: Float = 0.0
    var actualTotal: Float = 0.0
    var mode: Int = 3
    
    var valueString: String! = ""
    var lastButtonWasMode: Bool = false
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var colorChanger: UILabel!
    
    @IBOutlet weak var plusMinus: UIButton!
    
    @IBOutlet weak var CSDay: UIButton!
    
    @IBOutlet weak var CSNight: UIButton!
    
    @IBOutlet weak var CSFun: UIButton!
    
    @IBOutlet weak var Equals: UIButton!
    
    @IBOutlet weak var Divide: UIButton!
    
    @IBOutlet weak var Multiply: UIButton!
    
    @IBOutlet weak var Subtract: UIButton!
    
    @IBOutlet weak var Addition: UIButton!
    
    @IBOutlet weak var Zero: UIButton!
    
    @IBOutlet weak var Clear: UIButton!
    
    @IBOutlet weak var One: UIButton!
    
    @IBOutlet weak var Two: UIButton!
    
    @IBOutlet weak var Three: UIButton!
    
    @IBOutlet weak var Four: UIButton!
    
    @IBOutlet weak var Five: UIButton!
    
    @IBOutlet weak var Six: UIButton!
    
    @IBOutlet weak var Seven: UIButton!
    
    @IBOutlet weak var Eight: UIButton!
    
    @IBOutlet weak var Nine: UIButton!
   
//    @IBOutlet weak var Point: UIButton!
    
    //MARK: - Language variables
    
    var currentLang = ("en-US", "English","United States","American English ","🇺🇸")
    
    var langCodeAll38 = [
        ("en-US",  "English", "United States", "American English","🇺🇸"),
        ("ar-SA","Arabic","Saudi Arabia","العربية","🇸🇦"),
        ("cs-CZ", "Czech", "Czech Republic","český","🇨🇿"),
        ("da-DK", "Danish","Denmark","Dansk","🇩🇰"),
        ("de-DE",       "German", "Germany", "Deutsche","🇩🇪"),
        ("el-GR",      "Modern Greek",        "Greece","ελληνική","🇬🇷"),
        ("en-AU",     "English",     "Australia","Aussie","🇦🇺"),
        ("en-GB",     "English",     "United Kingdom", "Queen's English","🇬🇧"),
        ("en-IE",      "English",     "Ireland", "Irish English","🇮🇪"),
        ("en-ZA",       "English",     "South Africa", "South African English","🇿🇦"),
        ("es-ES",       "Spanish",     "Spain", "Español","🇪🇸"),
        ("es-MX",       "Spanish",     "Mexico", "Español de México","🇲🇽"),
        ("fi-FI",       "Finnish",     "Finland","Suomi","🇫🇮"),
        ("fr-CA",       "French",      "Canada","Français du Canada","🇨🇦" ),
        ("fr-FR",       "French",      "France", "Français","🇫🇷"),
        ("he-IL",       "Hebrew",      "Israel","עברית","🇮🇱"),
        ("hi-IN",       "Hindi",       "India", "हिन्दी","🇮🇳"),
        ("hu-HU",       "Hungarian",    "Hungary", "Magyar","🇭🇺"),
        ("id-ID",       "Indonesian",    "Indonesia","Bahasa Indonesia","🇮🇩"),
        ("it-IT",       "Italian",     "Italy", "Italiano","🇮🇹"),
        ("ja-JP",       "Japanese",     "Japan", "日本語","🇯🇵"),
        ("ko-KR",       "Korean",      "Republic of Korea", "한국어","🇰🇷"),
        ("nl-BE",       "Dutch",       "Belgium","Nederlandse","🇧🇪"),
        ("nl-NL",       "Dutch",       "Netherlands", "Nederlands","🇳🇱"),
        ("no-NO",       "Norwegian",    "Norway", "Norsk","🇳🇴"),
        ("pl-PL",       "Polish",      "Poland", "Polski","🇵🇱"),
        ("pt-BR",       "Portuguese",      "Brazil","Portuguese","🇧🇷"),
        ("pt-PT",       "Portuguese",      "Portugal","Portuguese","🇵🇹"),
        ("ro-RO",       "Romanian",        "Romania","Română","🇷🇴"),
        ("ru-RU",       "Russian",     "Russian Federation","русский","🇷🇺"),
        ("sk-SK",       "Slovak",      "Slovakia", "Slovenčina","🇸🇰"),
        ("sv-SE",       "Swedish",     "Sweden","Svenska","🇸🇪"),
        ("th-TH",       "Thai",        "Thailand","ภาษาไทย","🇹🇭"),
        ("tr-TR",       "Turkish",     "Turkey","Türkçe","🇹🇷"),
        ("zh-CN",       "Chinese",     "China","漢語/汉语","🇨🇳"),
        ("zh-HK",       "Chinese",   "Hong Kong","漢語/汉语","🇭🇰"),
        ("zh-TW",       "Chinese",     "Taiwan","漢語/汉语","🇹🇼")
    ]
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        langSelect = 1
        
        label.text = "Welcome!"
        
        Languages.dataSource = self
        Languages.delegate = self
        
        Languages.showsSelectionIndicator = true
        Languages.selectRow(0, inComponent: 0, animated: true)
        
        speakThisString("Welcome!")
    }

    //MARK: - didReceiveMemoryWarning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Language picker functions
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return langCodeAll38.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        pickerView.showsSelectionIndicator = true
        
        let myString = "\(langCodeAll38[row].4) \(langCodeAll38[row].3)"
        
        return myString
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentLang = langCodeAll38[row]
        speakThisString(currentLang.3)
    }
    
    //MARK: - Numbers Pressed
    
    @IBAction func tappedNum(sender: UIButton) {
        var str: String! = sender.titleLabel!.text
        
        var num = Int(str)
        
            speakThisString("\(num!)")
        
        if(num == 0 && total == 0){
            return
        }
        
        if(lastButtonWasMode == true){
            lastButtonWasMode = false
            valueString = ""
        }
        
        if(mode == 0 && total != 0){
            total = 0
            mode = 3
            valueString = ""
            label.text = "0"
            lastButtonWasMode = false
        }
        
        valueString = valueString.stringByAppendingString(str)
        
        //formatting numbers with commas
        var formatter: NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var n: NSNumber = formatter.numberFromString(valueString)!
        
        
        
        actualTotal = Float(n)
        
        label.text = formatter.stringFromNumber(n)
        
        if(total == 0){
        total = Float(valueString)!
        }
        
    }
    
    //MARK: - Math Functions
    
    @IBAction func tappedPlus(sender: AnyObject) {
        self.SetMode(1)
        
//        print(actualTotal)
        
        speakThisString("Plus")
    }
    
    @IBAction func tappedMinus(sender: AnyObject) {
        self.SetMode(-1)
        
        speakThisString("Minus")
    }
    
    @IBAction func tappedMultiply(sender: AnyObject) {
        self.SetMode(2)
        
        speakThisString("Multiply")
    }
    
    @IBAction func tappedDivide(sender: AnyObject) {
        self.SetMode(-2)
        
        speakThisString("Divide")
    }
    
    @IBAction func tappedEquals(sender: AnyObject) {
        
        speakThisString("Equals")
        
        
        if(mode == 0){
            return
        }
        
        let iNum: Float = Float(valueString)!
        
        if(mode == 1){
            total += iNum
        }
        
        if(mode == -1){
            total -= iNum
        }
        
        if(mode == 2){
            total *= iNum
        }
        
        if(mode == -2){
            total /= iNum
        }
        if(mode == 3){
            total = iNum
        }
        
        valueString = ("\(total)")
        
        
        
        //formatting numbers with commas
        var formatter: NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var n: NSNumber = formatter.numberFromString(valueString)!
        
        var intTotal:Int = Int(total)
        
        
        label.text = formatter.stringFromNumber(n)
        
        mode = 0
        
        if(total % 1 == 0){
            speakThisString("\(intTotal)")
        }else{
            speakThisString(valueString)
        }
        
        if(total == 1337 || total == -1337){
            speakThisString("I M LEET HAXOR, I WILL POWN U NUB")
        }
    }
    
    //MARK: - Change between Positive and nagative
    
    @IBAction func tappedPlusMinus(sender: AnyObject) {
        
        if(mode == 3){
            actualTotal = -actualTotal
            
            valueString = ("\(actualTotal)")
            
            var intTotal:Int = Int(actualTotal)
            
            label.text = ("\(intTotal)")
            
            if(actualTotal % 1 == 0){
                speakThisString("\(intTotal)")
            }else{
                speakThisString(valueString)
            }
            
            print(actualTotal)

        }else{
        
        total = -total
        
        valueString = ("\(total)")
        
        var intTotal:Int = Int(total)
        
        if(total % 1 == 0){
            speakThisString("\(intTotal)")
        }else{
//            speakThisString("\(actualTotal)")
            speakThisString(valueString)
        }
        
        //formatting numbers with commas
        var formatter: NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var n: NSNumber = formatter.numberFromString(valueString)!
        
        label.text = formatter.stringFromNumber(n)
        
        print(total)
            
        }
    }
   
    //MARK: - Clear
    
    @IBAction func tappedClear(sender: AnyObject) {
        
        speakThisString("Clear")
        
        total = 0
        mode = 3
        valueString = ""
        label.text = "0"
        lastButtonWasMode = false
    }
    
    //MARK: - Decimal
//    @IBAction func tappedDecimal(sender: AnyObject) {
//        
//        
//    }
    
    //MARK: - SetMode
    
    func SetMode(m:Int){
        
        if(total == 0){
            return
        }
        
        mode = m
        lastButtonWasMode = true
        total = Float(valueString)!
        
    }

}

