//
//  Constants.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/9/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import Foundation

//These are Identifiers for indicating which day and block was selected for when you want to edit a certain days class. They are not a neccessity to the functionality of the app but they help to clean it up and make it look nice and pretty on the inside

//Green Day
let GRB1 = "Green Day Block 1"
let GRB2 = "Green Day Block 2"
let GRB3 = "Green Day Block 3"
let GRB4 = "Green Day Block 4"

//Gold Day
let GOB1 = "Gold Day Block 1"
let GOB2 = "Gold Day Block 2"
let GOB3 = "Gold Day Block 3"
let GOB4 = "Gold Day Block 4"


//Class Keys

//Green Day
let GRB1_TEACHER = "Green Block 1 Teacher Name"
let GRB1_ROOM = "Green Block 1 Room Number"
let GRB1_CLASS = "Green Block 1 Class Name"

let GRB2_TEACHER = "Green Block 2 Teacher Name"
let GRB2_ROOM = "Green Block 2 Room Number"
let GRB2_CLASS = "Green Block 2 Class Name"

let GRB3_TEACHER = "Green Block 3 Teacher Name"
let GRB3_ROOM = "Green Block 3 Room Number"
let GRB3_CLASS = "Green Block 3 Class Name"

let GRB4_TEACHER = "Green Block 4 Teacher Name"
let GRB4_ROOM = "Green Block 4 Room Number"
let GRB4_CLASS = "Green Block 4 Class Name"

//Gold Day
let GOB1_TEACHER = "Gold Block 1 Teacher Name"
let GOB1_ROOM = "Gold Block 1 Room Number"
let GOB1_CLASS = "Gold Block 1 Class Name"

let GOB2_TEACHER = "Gold Block 2 Teacher Name"
let GOB2_ROOM = "Gold Block 2 Room Number"
let GOB2_CLASS = "Gold Block 2 Class Name"

let GOB3_TEACHER = "Gold Block 3 Teacher Name"
let GOB3_ROOM = "Gold Block 3 Room Number"
let GOB3_CLASS = "Gold Block 3 Class Name"

let GOB4_TEACHER = "Gold Block 4 Teacher Name"
let GOB4_ROOM = "Gold Block 4 Room Number"
let GOB4_CLASS = "Gold Block 4 Class Name"

//Segues
let TO_INPUT_VC = "toInputVC"
let INPUT_UNWIND = "InputUnwind"
let TO_EDIT_SCHEDULE = "toEditSchedule"
let TO_ADD_HOMEWORK = "toAddHomeworkVC"
let TO_VIEW_HOMEWORK = "toViewHomework"
let TO_VIEW_HOMEWORK_DETAILED = "toViewHomeworkDetailed"
let FROM_SETTINGS_TO_DIRECTORY = "fromSettingsToDirectory"
let FROM_DIRECTORY_TO_SETTINGS = "fromDirectoryToSettings"

//Notifications
let USER_DATA_HAS_CHANGED = Notification.Name("NotifUserDataChanged")

// Teacher List
let TEACHER_LIST =
[
    //A
    Teacher(name:"Ms. Andrews", email: "SAndrews@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Ascoli", email: "JAscoli@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mr-ascoli-s-home-page/"),
    Teacher(name:"Mr. Augusto", email: "VAugusto@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //B
    Teacher(name:"Ms. Beckett", email: "KBeckett@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/msbeckett/"),
    Teacher(name:"Mr. Boisvert", email: "SBoisvert@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Mr. Botelho", email:"JBotelho@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Mr. Boutin", email: "ABoutin@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. Brasier", email: "CBrasier@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Bruce", email: "VBruce@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. Burnham", email: "HBurnham@drregional.org", roomNumber: "", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //C
    Teacher(name:"Ms. Carroll", email:"KCarroll@drregional.org", roomNumber:"TBD", website:"http://mscarroll301.blogspot.com"),
    Teacher(name:"Ms. Cartin", email: "HCartin@drregional.org", roomNumber:"TBD", website:"https://sites.google.com/a/drregional.org/dighton-rehoboth-regional-preschool/"),
    Teacher(name:"Mr. Cooke", email: "MCooke@drregional.org", roomNumber: "TBD", website:"http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Mr. Cowgill", email: "BCowgill@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //D
    Teacher(name:"Ms. Dailey", email: "DDailey@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. DeLano", email:"BDelano@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Mr. Demers", email: "DDemers@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Deschenes", email: "MDeschenes@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. deAguiar", email: "MdeAguiar@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. Donahue", email: "LDonahue@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. DuBois", email: "LDuBois@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //E
    Teacher(name:"Ms. Enos", email: "KEnos@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //F
    Teacher(name:"Ms. Feeley", email: "CFeeley@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mrs-feeley/"),
    
    //G
    Teacher(name:"Mr. Garcia", email: "WGarcia@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Gouveia", email: "SGouveia@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Greenlees", email: "JGreenlees@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Mr. Grover", email: "CGrover@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Guay", email: "JGuay@drregional.org", roomNumber: "TBD", website: "TBD"),
    
    //H
    Teacher(name:"Ms. Harwood", email: "JHarwood@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Hatch", email: "MHatch@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Hopkins", email: "DHopkins@drregional.org", roomNumber: "227", website: "Honors Biology: http://www.livebinders.com/play/play_or_edit?id=185886 \nHonors Anatomy and Physiology: http://www.livebinders.com/play/play_or_edit?id=186579 \nFoundations of Biology I: http://www.livebinders.com/play/play?id=2041545"),
    Teacher(name:"Ms. Hughes", email: "KHughes@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Mr. Hurley", email: "KHurley@drregional.org", roomNumber: "TBD", website: "TBD"),
    
    //I
    
    //J
    Teacher(name:"Ms. Janove", email: "KJanove@drregional.org", roomNumber: "TBD", website: "https://msjanove.blogspot.com/"),
    Teacher(name:"Mr. Justus", email: "DJustus@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //K
    Teacher(name: "Ms. Karantonakis", email: "LKarantonakis@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. King", email: "AKing@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/ms-king/"),
    Teacher(name:"Mr. Kulpa", email: "SKulpa@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //L
    Teacher(name:"Mr. LaSalle", email: "CLaSalle@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. LaSalle", email: "ELaSalle@drregional.org", roomNumber: "TBD", website: "British Literature and Language: http://www.livebinders.com/play/play?id=501094 \nSpeech Communications: http://www.livebinders.com/play/play?id=394354 \n10th Grade Honors English: http://www.livebinders.com/play/play?id=890646"),
    Teacher(name: "Mr. Levesque", email: "GLevesque@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    Teacher(name:"Mr. Loell", email: "KLoell@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mr-loell-s-dr-website/"),
    Teacher(name:"Ms. Loell", email: "HLoell@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/magistra-madame-loell/"),
    Teacher(name:"Ms. Lomba", email: "MLomba@drregional.org", roomNumber: "TBD", website: "Spanish 4: http://www.livebinders.com/play/play?present=true&id=532218 \nAP Spanish: http://www.livebinders.com/play/play?id=1368070"),
    Teacher(name:"Mr. Lovejoy", email: "SLovejoy@drregional.org", roomNumber: "TBD", website: "Biology: https://docs.google.com/document/d/1u-ZeZkDCErkOytKPhgTz2gRevdqg4uJxkrMOw5ZqYuw/edit \nOceanography: https://docs.google.com/document/d/1xfUfJNikUHSyGL__vWxudzUWIpVPc8vZWvgZo26bLsI/edit \nSenior Honors Research: https://docs.google.com/document/d/15n2l51pIvVhn7csBNLzavH5Ex9UW6h5AtChrE14JHAM/edit"),
    
    //M
    Teacher(name:"Ms. Madsen", email: "PMadsen@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Maguire", email: "SMaguire@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. Maidment", email: "LMaidment@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Mathias", email: "AMathias@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. McCabe", email: "CMcCabe@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Morrison", email: "JMorrison@drregional.org", roomNumber: "TBD", website: "AP English Literature and Composition (Green 2): https://docs.google.com/document/d/1C72ZQxtLl9NNkk_t2TFr4CYj7hB8hzLqMjCVlJgN3XE/edit \nSenior College English (Green 3): https://docs.google.com/document/d/11vXgOuetY1WSSUtKDobAHttMrDJCKBZHJcFTKhZwpeg/edit \nSenior College English (Green 4): https://docs.google.com/document/d/12ApgryGRo4v9oeJp3BRDRQKejnOh3q0KMXlhMdtxW80/edit \nSenior College English (Gold 1): https://docs.google.com/document/d/1371lPWqFkiLx8eQe5XzOI4QBnZox8_7ckToB51Kqj94/edit \nMCAS English Prep (Gold 3): https://docs.google.com/document/d/18hHcI7fI27mUKRtiGKCvSK1Pk9eX-Im0Sx5k5MoUMks/edit \nAP English Literature and Composition (Gold 4): https://docs.google.com/document/d/1jbKtbi3jxs_bhxfNN-gR2pP5DDdtAtj41xPr6iIBTQA/edit"),
    Teacher(name:"Mr. Moura", email: "DMoura@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mr-moura-s-website/home"),
    
    //N
    Teacher(name:"Mr. Nardozzi", email: "ANardozzi@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //O
    Teacher(name:"Ms. O’Gara", email: "COGara@drregional.org", roomNumber: "TBD", website: "College Chemistry: https://www.livebinders.com/play/play_shared_binder/509782?play_view=play \nHonors Chemistry: http://www.livebinders.com/play/play_shared_binder/1008599?play_view=play \nPhysical Science: http://www.livebinders.com/play/play_shared_binder/1419153?play_view=play"),
    Teacher(name:"Mr. O’Leary", email: "KOLeary@drregional.org", roomNumber: "TBD", website: "http://www.livebinders.com/play/present?id=507187"),
    
    //P
    Teacher(name:"Mr. Pacheco", email: "JPacheco@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Payne", email: "JPayne@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Mr. Pease", email: "BPease@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Mr. Perry", email: "EPerry@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. Pimento", email: "APimento@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. Provonsil", email: "AProvonsil@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //Q
    
    //R
    Teacher(name: "Ms. Rose", email: "KRose@drregional.org", roomNumber: "TBD", website: "AP Environmental Science: http://www.livebinders.com/play/play?id=1786850"),
    Teacher(name:"Ms. Rozzero", email: "JRozzero@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Rutkowski", email: "WRutowski@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //S
    Teacher(name:"Ms. Saxon", email: "JSaxon@drregional.org", roomNumber: "TBD", website: "Chemistry: http://www.livebinders.com/play/play_shared_binder/560300?play_view=play"),
    Teacher(name:"Ms. Siachos", email: "ASiachos@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/siachos/"),
    Teacher(name:"Ms. Smith", email: "NSmith@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/ms-smith-s-math-class/"),
    Teacher(name: "Mr. Souza", email: "DSouza@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //T
    Teacher(name:"Ms. Tache", email: "ETache@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    Teacher(name:"Ms. Tella", email: "CTella@drregional.org", roomNumber: "TBD", website: "N/A"),
    Teacher(name:"Ms. Tremblett", email: "JTremblett@drregional.org", roomNumber: "TBD", website: "N/A"),
    
    //U
    Teacher(name:"Mrs. Udelle", email: "SUdell@drregional.org", roomNumber: "GYM", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //V
    Teacher(name:"Ms. Vander Kaaden", email: "JVanderKaaden@drregional.org", roomNumber: "TBD", website: "Spanish 3: http://www.livebinders.com/play/play_shared_binder/494393?play_view=play \nSpanish 4: http://www.livebinders.com/play/play_shared_binder/1436306?play_view=play"),
    Teacher(name: "Ms. Vaughn", email: "NVaughn@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name:"Ms. Voccio", email: "KVoccio@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
    
    //W
    Teacher(name:"Ms. Walsh", email: "EWalsh@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/ewalsh/documents"),
    Teacher(name: "Mr. C Warren", email: "CWarren@drregional.org", roomNumber: "TBD", website: "TBD"),
    Teacher(name: "Mr. T Warren", email: "TWarren@drregional.org", roomNumber: "TBD", website: "TBD"),
    
    //X
    
    //Y
    Teacher(name: "Ms. Yeager", email: "TYeager@drregional.org", roomNumber: "TBD", website: "TBD")
    
    //Z
]











