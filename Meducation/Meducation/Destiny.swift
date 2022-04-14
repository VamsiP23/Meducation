import Foundation
struct Destiny {
    var currentStory : Int = 1
    let stories = [
    //construct Story objects inside the list
        Story(title: "You have been rushed to the ER.", choice1: "Try Again?", choice1index: 1, choice2: "One more chance?", choice2index: 1),
        Story(title: "You have severe ASTHMA, what do you want to do today?", choice1: "Eat an apple", choice1index: 2, choice2: "Go running", choice2index: 3),
        Story(title: "You eat the apple, but you have DIABETES.", choice1: "Keep eating. It's just a little sugar.", choice1index: 0, choice2: "Take an INSULIN injection.", choice2index: 4),
        Story(title: "At the track, you have difficulty breathing.", choice1: "Keep pushing yourself.", choice1index: 0, choice2: "Opt out and take an INHALER.", choice2index: 4),
        Story(title: "Later today, you go out to eat lunch but you are ALLERGIC to peanuts. However, peanuts are the only food available.", choice1: "Skip lunch. Eat a snack for today.", choice1index: 5, choice2: "Eat the peanuts. It's just a little.", choice2index: 0),
        Story(title: "After lunch, you go biking. Do you need a helmet?", choice1: "No, you're too cool for it.", choice1index: 0, choice2: "Yes, I want to prevent a CONCUSSION.", choice2index: 6),
        Story(title: "After biking, you are tired so you go home and eat some chips. But suddenly, you can't breathe.", choice1: "ABDOMINAL THRUST yourself.", choice1index: 7, choice2: "Chug water.", choice2index: 0),
        Story(title: "After eating a small snack you go for a walk, but it's 100 degrees outside and you get a SUNBURN on your back.", choice1: "Pour cool water on your back to prevent a SHOCK.", choice1index: 8, choice2: "Pour the coldest water you can find on your back for a quick heal.", choice2index: 0),
        Story(title: "Now it's time for dinner. But you get FOOD POISONING from the suspicious food.", choice1: "Try to excrete the food out in the bathroom.", choice1index: 9, choice2: "Call the poison control center and try to make a natural REMEDY at home.", choice2index: 10),
        Story(title: "While you're in the bathroom, you start vomiting.", choice1: "Go back to eating your dinner.", choice1index: 0, choice2: "Take deep breaths and drink lots of water.", choice2index: 10),
        Story(title: "Yay! You have successfully avoided injury!", choice1: "Restart", choice1index: 1, choice2: "Play Again", choice2index: 1)
    ]
    
    func getTitle() -> String {
        return stories[currentStory].title
    }
    func getChoice1() -> String {
        return stories[currentStory].choice1
    }
    func getChoice2() -> String {
        return stories[currentStory].choice2
    }
}
