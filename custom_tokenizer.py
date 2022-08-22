import re
from typing import Any, List, Text

from rasa.nlu.components import Component
from rasa.nlu.config import RasaNLUModelConfig
from rasa.nlu.tokenizers.tokenizer import Token, Tokenizer
from rasa.shared.nlu.training_data.message import Message
from rasa.shared.nlu.training_data.training_data import TrainingData
from rasa.nlu.constants import TOKENS_NAMES, MESSAGE_ATTRIBUTES
from rasa.shared.nlu.constants import (
    INTENT,
    INTENT_RESPONSE_KEY,
    RESPONSE_IDENTIFIER_DELIMITER,
    ACTION_NAME,
)

from konlpy.tag import Mecab
from MeCab import Tagger
MeCab = Mecab(dicpath=r'C:/mecab/mecab-ko-dic')



class custom_tokenizer(Tokenizer, Component):
    
    defaults = {
        # Flag to check whether to split intents (인텐트 분할 여부를 확인하기위한 플래그)
         # == tokenizer __init__ 함수 내용 사용
        "intent_tokenization_flag": True,

        # Symbol on which intent should be split (인텐트가 분할해야하는 기호)
         #  == tokenizer __init__ 함수 내용 사용
        "intent_split_symbol": "+"

    }

    #name = "tokenizer_korean"
    provides = ["tokens"]
    #defaults =  {}
    #language_list = ["kr"]

    # *args : tuple용
    # **kwargs : dict용

    #    message.set("tokens", self.tokenize(message.text)) 수정 2022.07.29

    # 튜플 () : 순서가 있고, 내부는 콤마(,)로 구분한다 / 추가 수정 삭제 불가능(불변적)
    # 튜플[인덱스]로 인덱싱 및 슬라이싱 가능

    # 리스트 [] : 순서가 있고, 내부는 콤마(,)로 구분한다 / 추가 수정 삭제 가능(변화가능)
    # 리스트[인덱스]로 인덱싱 및 슬라이싱 가능

    # 딕셔너리 {Key: Value} : Key와 Value를 한쌍으로 갖는 자료형
    # Key는 수정 불가(불변적), Value는 수정 가능(변화가능)
    # 딕셔너리["Key"] or 딕셔너리.get("Key")로 value값 가져올수 있음
    # 차이점 : Key 값이 없을 경우 딕셔너리["Key"] : Key error 발생 / 딕셔너리.get("Key") : none 출력
    # 딕셔너리 Key 검색 : 딕셔너리.keys() / value 검색 : 딕셔너리.values()
    # *** for문 활용 key, value 값 출력하기
    # for key, value in dic.items():
    #   print(key, value)
    def train(
        # train 함수는 self, training_data, config, keywordargs(딕셔너리형태)를 매개변수로 사용하고 -> None(리턴값 없음)
        # config: RasaNLUModelConfig에서 RasaNLUModelConfig는 해당 매개변수 설명해주는 역할임
        self, training_data: TrainingData, config: RasaNLUModelConfig, **kwargs: Any) -> None:
        
        #for example in training_data.training_examples:
        #    example.set("tokens", self.tokenize(example.text))
        """Tokenize all training data."""

        for example in training_data.training_examples:
            for attribute in MESSAGE_ATTRIBUTES:
                if (
                    example.get(attribute) is not None
                    and not example.get(attribute) == ""
                ):
                    if attribute in [INTENT, ACTION_NAME, INTENT_RESPONSE_KEY]:
                        tokens = self._split_name(example, attribute)
                    else:
                        tokens = self.tokenize(self, example, attribute)
                    example.set(TOKENS_NAMES[attribute], tokens)

    
    def process(self, message: Message, **kwargs: Any) -> None:
        
        """Tokenize the incoming message."""
        for attribute in MESSAGE_ATTRIBUTES:
            if isinstance(message.get(attribute), str):
                if attribute in [INTENT, ACTION_NAME, RESPONSE_IDENTIFIER_DELIMITER]:
                    tokens = self._split_name(message, attribute)
                else:
                    tokens = self.tokenize(self, message, attribute)

                message.set(TOKENS_NAMES[attribute], tokens)
    # tokenize함수는 self, message(Message 타입), attribute(String과 유사한 Text 타입)를 매개변수로 갖고, 리턴 타입은 List[Token] 이다
    # Message 타입 : RASA에서 정의한 자료형
    @staticmethod
    def tokenize(self, message: Message, attribute: Text) -> List[Token]:
        
        # text = attribute  기존 코드에서 추가한 부분 - 2022.07.26 김준성
        text = message.get(attribute)
        
        # mecabsplit 함수는 mecab_tagger, text, pos를 매개변수로 사용함.
        def mecabsplit(mecab_tagger,text, pos): 

            r=[] # r 이라는 리스트를 생성
            inputs = mecab_tagger.parse(text)

            t = inputs.split('\n')[:-2]

            for i in t:
                field = i.split('\t')
                if field[1].split(',')[-1] is not '*':
                    r.extend( [ (x.split('/')[0],x.split('/')[1]) for x in field[1].split(',')[-1].split('+') ] )
                else:
                    r.append( (field[0],field[1].split(',')[0]) )
            if pos:
                return r
            else:
                return [ x[0] for x in r ]
        
        mecab_tagger = Tagger() # Mecab.Tagger()인식을 못해서 from Mecab import Tagger 선언 후 Tagger로 변경함. 2022.07.27
        
        a = mecab_tagger.parse(text)
        t = a.split('\n')[:-2]
        tokenpointer = []
        pointeroffset = 0

        for i in t:
            field = i.split('\t')
            if field[1].split(',')[-1] is not '*':
                currentptr = text.index(field[0], pointeroffset)
                for x in field[1].split(',')[-1].split('+'):
                    try:
                        w = x.split('/')[0]
                        temp = field[0].index(w)
                        tokenpointer.append((currentptr + temp, currentptr + temp +len(w)))
                    except:
                        tokenpointer.append((currentptr, currentptr + len(field[0])))
                pointeroffset = currentptr + len(field[0])
            else:
                currentptr = text.index(field[0], pointeroffset)
                tokenpointer.append( (currentptr, currentptr + len(field[0])) )
                pointeroffset = currentptr + len(field[0])
        words = mecabsplit(mecab_tagger, text, False)
        tokens = []
        offset = 0
        for word in words:
            word_offset = tokenpointer[words.index(word, offset)][0]
            tokens.append(Token(word, word_offset))
            offset +=1
        
        return tokens
