import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        'The most common COVID-19 symptoms are fever, dry cough and tiredness',
        true),
    Question(
        'Other less common symptom that might appear is loss of taste, smell and rash on skin',
        true),
    Question(
        'It is a scientific consensus that hydroxychloroquine cures Coronavirus disease',
        false),
    Question(
        'COVID-19 symptoms are different in children, when compared to an adult',
        false),
    Question(
        'It is possible to have the flu and COVID-19 at the same time', true),
    Question(
        'People with a BMI of 19 are included in the risk group for COVID-19',
        false),
    Question(
        'Solutions with minimum 45% of alcohol are alreadyh effective to kill to virus',
        false),
    Question(
        'SARS-CoV-1 is the strain of Coronavires that causes COVID-19', false),
    Question(
        'The number of infections that each virus host is expected to generate varys between 1.4 and 3.9',
        true),
    Question('The first COVID-19 infection was reported in Wuhan, China', true),
    Question(
        'Human-to-Human transmission happens primarily via respiratory droplets that travel about 1.8m',
        true),
    Question(
        'The virus can just remain viable for a few minutes outside the human body',
        false),
    Question(
        'Coronaviruses were dicovered in the 1930s, when it was causing chicken to die',
        true),
    Question(
        'In 2012, countries such as Saudi Arabia and South Korea also faced an virus outbreak caused by a Coronavirus family member',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
//Li Q, Guan X, Wu P, Wang X, Zhou L, Tong Y, et al. (January 2020). "Early Transmission Dynamics in Wuhan, China, of Novel Coronavirus-Infected Pneumonia".
// The New England Journal of Medicine. 382 (13): 1199–1207. doi:10.1056/NEJMoa2001316. PMC 7121484. PMID 31995857. -> New infections
//Zhou P, Yang XL, Wang XG, Hu B, Zhang L, Zhang W, et al. (February 2020). "A pneumonia outbreak associated with a new coronavirus of probable bat origin".
// Nature. 579 (7798): 270–273. doi:10.1038/s41586-020-2012-7. PMC 7095418. PMID 32015507. ->First Infection
//Edwards E (25 January 2020). "How does coronavirus spread?". NBC News.
// Archived from the original on 28 January 2020. Retrieved 13 March 2020. -> Droplets Distance
//van Doremalen N, Bushmaker T, Morris DH, Holbrook MG, Gamble A, Williamson BN, et al. (17 March 2020). "Correspondence: Aerosol and Surface Stability of SARS-CoV-2 as Compared with SARS-CoV-1".
// The New England Journal of Medicine. 382 (16): 1564–1567. doi:10.1056/NEJMc2004973. PMC 7121658. PMID 32182409. -> Virus Viability
//Estola T (1970). "Coronaviruses, a New Group of Animal RNA Viruses". Avian Diseases. 14 (2): 330–336. doi:10.2307/1588476. ISSN 0005-2086. JSTOR 1588476.-> 1930s discovery
//"Case‐control study to assess potential risk factors related to human illness caused by the Middle East Respiratory Syndrome Coronavirus (MERS-CoV)".
// World Health Organization. 28 March 2014. Retrieved 24 April 2014.-> 2012 virus outbreak
//https://www.cdc.gov/coronavirus/2019-ncov/faq.html#How-COVID-19-Spreads -> other information
