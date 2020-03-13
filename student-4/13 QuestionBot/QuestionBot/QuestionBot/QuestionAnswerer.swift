struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        if question.hasPrefix("hello"){
            return("Why hello there!")
        }
        else if question.hasPrefix("cookies"){
            return ("In my mouth!")
        }
        else if question.hasPrefix("Where"){
            return ("To Canada!")
        }
        else if question.hasPrefix ("where"){
            return ("Look on Google Maps!")
        }
        return question
    }
}
