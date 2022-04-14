//
//  QuestionsViewController.swift
//  Meducation
//
//  Created by Vamsi Putti on 4/11/22.
//

import UIKit

class QuestionsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var bank = [

            "Human Body" :

            [

            Trivia(q: "Which of the following organ system helps in protecting internal organs and gives support to the body?", correct: "Skeletal", incorrect: ["Digestive", "Nervous", "Excretory"]),

                Trivia(q: "Which of the following bones is not in the leg?", correct: "Radius", incorrect: ["Patella", "Tibia", "Fibula "]),

                Trivia(q: "Which of these bones is hardest to break?", correct: "Femur", incorrect: ["Cranium", "Humerus", "Tibia"]),

                Trivia(q: "What is the colour of unoxidized blood?", correct: "Red", incorrect: ["Blue", "Purple", "Green"]),

                Trivia(q: "What does DNA stand for?", correct: "Deoxyribonucleic Acid", incorrect: ["Deoxyribogenetic Acid", "Deoxyribogenetic Atoms", "Detoxic Acid"]),

                Trivia(q: "What nucleotide pairs with guanine?", correct: "Cytosine", incorrect: ["Thymine", "Adenine", "Uracil"]),

                Trivia(q: "Muscle fiber is constructed of bundles small long organelles called what?", correct: "Myofibrils", incorrect: ["Epimysium", "Myofiaments", "Myocardium"]),

                Trivia(q: "What are human nails made of?", correct: "Keratin", incorrect: ["Bone", "Chitin", "Calcium"]),

                Trivia(q: "What part of the brain takes its name from the Greek for seahorse?", correct: "Hippocampus", incorrect: ["Cerebellum", "Thalamus", "Amygdala"]),

                Trivia(q: "Down Syndrome is usually caused by an extra copy of which chromosome?", correct: "21", incorrect: ["23", "15", "24"]),

                Trivia(q: "What is the scientific term for 'taste'?", correct: "Gustatory Perception", incorrect: ["Olfaction", "Somatosensation", "Auditory Perception"]),

                Trivia(q: "What is the name of the cognitive bias wherein a person with low ability in a particular skill mistake themselves as being superior?", correct: "Dunning-Kruger effect", incorrect: ["Meyers-Briggs effect", "Müller-Lyer effect", "Freud-Hall effect"]),

                Trivia(q: "What is the scientific name for modern day humans?", correct: "Homo Sapiens", incorrect: ["Homo Ergaster", "Homo Erectus", "Homo Neanderthalensis"]),

                Trivia(q: "What is the common term for bovine spongiform encephalopathy (BSE)?", correct: "Mad Cow disease", incorrect: ["Weil\'s disease", "Milk fever", "Foot-and-mouth disease"]),

                Trivia(q: "What is the largest organ of the human body?", correct: "Skin", incorrect: ["Heart", "large Intestine", "Liver"]),

                Trivia(q: "Sciophobia is the fear of what?", correct: "Shadows", incorrect: ["Eating", "Bright lights", "Transportation"]),

                Trivia(q: "Nephelococcygia is the practice of doing what?", correct: "Finding shapes in clouds", incorrect: ["Sleeping with your eyes open", "Breaking glass with your voice", "Swimming in freezing water"]),

                Trivia(q: "Which of the following blood component forms a plug at the site of injuries?", correct: "Platelets", incorrect: ["Red blood cells", "White blood cells", "Blood plasma"]),

                ],

            "Food and Health" : [

                Trivia(q: "What is the primary addictive substance found in tobacco?", correct: "Nicotine", incorrect: ["Cathinone", "Ephedrine", "Glaucine"]),

                Trivia(q: "Botanically speaking, which of these fruits is NOT a berry?", correct: "Strawberry", incorrect: ["Blueberry", "Banana", "Concord Grape"]),

                Trivia(q: "Which of the following is not another name for the eggplant?", correct: "Potimarron", incorrect: ["Brinjal", "Guinea Squash", "Melongene"]),

                Trivia(q: "Scurvy is a disease caused due to deficiency of", correct: "vitamin C.", incorrect: ["vitamin A.", "vitamin B.", "vitamin D."]),

                Trivia(q: "Ghee and butter are rich in", correct: "fats", incorrect: ["protein", "vitamins", "minerals"]),

                Trivia(q: "The disease called anaemia is caused due to the deficiency of which of the following?", correct: "iron", incorrect: ["calcium", "phosphrous", "vitamin A"]),

                Trivia(q: "Which one of the following minerals is needed for the proper functioning of thyroid gland?", correct: "iodine", incorrect: ["iron", "calcium", "phosphoros"]),

                Trivia(q: "Stunted growth, swelling efface, discolouration of hair, skin diseases and diarrhoea are the symptoms of", correct: "protein deficiency", incorrect: ["fat deficiency", "coronavirus", "flu"]),

                Trivia(q: "Swollen glands in neck, mental disability in children are the symptoms of deficiency of a mineral which is present in", correct: "salt", incorrect: ["pepper", "sugar", "lemon"]),

                Trivia(q: "What is the proper response to an asthma attack?", correct: "inhaler", incorrect: ["exercise", "sleep", "drink lots of water"]),
                        
                        Trivia(q: "What is the right response to too much sugar if diabetic?", correct: "insulin injection", incorrect: ["glucagon injection", "eat salt", "glycogen injection"]),

                        Trivia(q: "What can't cause a concussion?", correct: "Doing homework", incorrect: ["Biking without a helmet", "car crash", "playing football"]),

                        Trivia(q: "What can not help cure cough?", correct: "pain killers", incorrect: ["salt water", "honey", "marshmallow"]),

                        Trivia(q: "How can you reduce the risk of heart disease if it's hereditary?", correct: "Drug-free lifestyle", incorrect: ["gender", "age", "genetics"]),

                        Trivia(q: "What is not a way to improve your health?", correct: "avoid eating", incorrect: ["exercise", "managing stress", "sleep"]),

                        Trivia(q: "Which of the following isn't a symptom of a cold?", correct: "fever", incorrect: ["runny nose", "cough", "stuffy nose"]),

                        Trivia(q: "Which of the following is a type of the Flu virus?", correct: "Type C", incorrect: ["Delta variant", "Type Alpha", "Flu 2.0"]),

                        Trivia(q: "What is a croup?", correct: "infection causing the windpipe to swell", incorrect: ["a type of fruit", "a yoga position", "name for a broken ankle"]),

                        Trivia(q: "What is the flu categorized as?", correct: "virus", incorrect: ["bacteria", "temperature caused disease", "fungus"]),
            ],

            ]
    var categories : [String] = []
    var numQs = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    var currentCat = ""
    var currentNum = 0
    var username = ""
    @IBOutlet var numPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        numPicker.delegate = self
        numPicker.dataSource = self
        let tabbar = tabBarController as! Tab
        username = tabbar.username
       
        // Do any additional setup after loading the view.
        
        for (category, _) in bank {
            if category.contains("Entertainment: ") {
                let temp = category
                categories.append(temp.replacingOccurrences(of: "Entertainment: ", with: ""))
                continue
            }
            
            categories.append(category)
        }
    }
    // Number of columns of data
       func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       // The number of rows of data
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return categories.count
        }
        return numQs.count
       }
       
       // The data to return fopr the row and component (column) that's being passed in
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            currentCat = categories[row]
            return categories[row]
        }
        currentNum = numQs[row]
        return "\(numQs[row])"
           
       }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is GameViewController {
            let vc = segue.destination as? GameViewController
            vc?.username = username
            vc?.numQuestions =  numQs[numPicker.selectedRow(inComponent: 0)]
            vc?.qBank = bank
        }
    }
    @IBAction func unwindToHomeScreen(unwindSegue: UIStoryboardSegue) {
        
    }    
}
    

    


