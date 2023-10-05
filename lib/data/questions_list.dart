import 'package:flutter/material.dart';

List<String> QuestionLists = [
'What is the oldest flag in the world?',
'What is the most common color on world flags?',
'What is the rarest color on national flags?',
'Which of these countries has the most colors on their flag?',
'Which country\’s flag contains an image of the country?',
'Which country features a shipwreck on it\’s national flag?',
'What colours is the flag of the United Nations?',
'Whose flag is known as \‘Il Tricolore\’?',
'What do the 13 stripes on the US flag represent?',
'How many coloured rings does the Olympic flag have?'
];
    
var OptionLists = {
1: {"a": 'Italy',         "b" : 'Denmark',        "c" : 'Switzerland',           "d": 'Finland',},
2: {"a": 'Red',           "b" : 'Orange',         "c" : 'Black',                 "d" : 'Blue',},
3: {"a": 'Red',           "b" : 'Orange',         "c" : 'Purple',                "d" : 'Black',},
4: {"a": 'South Korea',   "b" : 'France',         "c" : 'Switzerland',           "d" : 'Finland',},
5: {"a": 'Italy',         "b" : 'Bermuda',        "c" : 'USA',                   "d" : 'Cyprus',},
6: {"a": 'Italy',         "b" : 'Cyprus',         "c" : 'USA',                   "d" : 'Bermuda',},
7: {"a": 'Blue and White',"b" : 'Blue and Gold',  "c" : 'White and Gold',        "d" : 'Blue and Black',},
8: {"a": 'Italy',         "b" : 'Bermuda',        "c" : 'Cyprus',                "d" : 'Finland',},
9: {"a": 'The States',    "b" : 'The Area 51',    "c" : 'The Original Colonies', "d" : 'The Number of Presidents',},
10:{"a": '2',             "b" : '5',              "c" : '8',                     "d" : '10',},
};

List<String> AnswerLists = ['B','A','C','A','D','D','A','A','C','B'];
List<String> MessageList=["You Failed.", "Thats Good.", "Perfect!"];
