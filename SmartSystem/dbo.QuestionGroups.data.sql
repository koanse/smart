INSERT INTO [dbo].[QuestionGroups] ([ID], [Name], [Description], [RulesXml], [QuestionsXml]) VALUES (N'ead88d20-0cf4-e711-9df1-eca86b8b143b', N'Подбор тура', N'Smart-подбор тура', N'<?xml version="1.0"?>
<ArrayOfRule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>abhaz</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
<Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>crimea</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClimate</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>costa</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeCorrida</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>thai</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>zell</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeCold</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClassics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>czech</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>german</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
</ArrayOfRule>', N'<?xml version="1.0"?>
<ArrayOfQuestion xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Question>
    <QuestionText>Какой	температурный режим Вы предпочитаете?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Жаркий</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeHeat</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Умеренный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeMiddle</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Холодный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCold</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  <Question>
    <QuestionText>Нравится ли Вам отдых в России или в других странах?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Предпочитаю отдых в России</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Хотелось бы выехать за границу</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравится ли Вам экзотика?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да, нравится экзотика</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeExotics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Предпочитаю что-то классическое</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Стоит ли уровень сервиса на первом месте для Вас во время отдыха?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравятся ли Вам многолюдные шумные события?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Важен ли для Вас комфортный климат?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  

</ArrayOfQuestion>')
INSERT INTO [dbo].[QuestionGroups] ([ID], [Name], [Description], [RulesXml], [QuestionsXml]) VALUES (N'd8f359ce-2df4-e711-9df1-eca86b8b143b', N'Подбор экскурсии', N'Smart-подбор эскурсии', N'<?xml version="1.0"?>
<ArrayOfRule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>abhaz</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
<Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>crimea</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClimate</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>costa</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeCorrida</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>thai</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>zell</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeCold</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClassics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>czech</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>german</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
</ArrayOfRule>', N'<?xml version="1.0"?>
<ArrayOfQuestion xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Question>
    <QuestionText>Вы предпочитаете экскурсии в России или в других странах?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Предпочитаю экскурсии в России</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Хотелось бы выехать за границу</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Во время прогулок какой	температурный режим Вы предпочитаете?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Жаркий</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeHeat</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Умеренный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeMiddle</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Холодный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCold</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>


  <Question>
    <QuestionText>Нравится ли Вам экзотические экскурсии?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да, нравится экзотика</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeExotics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Предпочитаю что-то классическое</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Стоит ли уровень сервиса на первом месте для Вас во время экскурсий?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравятся ли Вам многолюдные шумные события?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Важен ли для Вас комфортный климат во время экскурсии?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  

</ArrayOfQuestion>')
INSERT INTO [dbo].[QuestionGroups] ([ID], [Name], [Description], [RulesXml], [QuestionsXml]) VALUES (N'5242fdb0-d2f4-e711-9df1-eca86b8b143b', N'Подбор мероприятия', N'Smart-подбор мероприятия', N'<?xml version="1.0"?>
<ArrayOfRule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>abhaz</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
<Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>crimea</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClimate</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>costa</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeCorrida</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>thai</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>zell</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeCold</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClassics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>czech</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>german</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
</ArrayOfRule>', N'<?xml version="1.0"?>
<ArrayOfQuestion xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Question>
    <QuestionText>Нравится ли Вам классическая музыка?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  


  <Question>
    <QuestionText>Во время мероприятия какой	температурный режим Вы предпочитаете?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Жаркий</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeHeat</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Умеренный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeMiddle</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Холодный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCold</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  <Question>
    <QuestionText>Нравится ли Вам мероприятия в России или в других странах?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Предпочитаю в России</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Хотелось бы выехать за границу</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравится ли Вам экзотика?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да, нравится экзотика</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeExotics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Предпочитаю что-то классическое</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Стоит ли уровень сервиса на первом месте для Вас во время отдыха?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>


  
  <Question>
    <QuestionText>Нравятся ли Вам многолюдные шумные события?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Важен ли для Вас комфортный климат?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  



</ArrayOfQuestion>')
INSERT INTO [dbo].[QuestionGroups] ([ID], [Name], [Description], [RulesXml], [QuestionsXml]) VALUES (N'92fa7627-69f5-e711-9df1-eca86b8b143b', N'Подбор ресторана', N'Smart-подбор ресторана', N'<?xml version="1.0"?>
<ArrayOfRule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>abhaz</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
<Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>crimea</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClimate</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>costa</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeCorrida</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>thai</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>zell</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeCold</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClassics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>czech</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>german</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
</ArrayOfRule>', N'<?xml version="1.0"?>
<ArrayOfQuestion xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Question>
    <QuestionText>В каком температурном режиме Вам комфортно питаться?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Жаркий</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeHeat</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Умеренный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeMiddle</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Холодный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCold</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  <Question>
    <QuestionText>Нравится ли Вам рестораны в России или в других странах?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Предпочитаю в России</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Хотелось бы выехать за границу</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравится ли Вам экзотика?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да, нравится экзотика</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeExotics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Предпочитаю что-то классическое</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Стоит ли уровень сервиса на первом месте для Вас во время отдыха?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>


  
  <Question>
    <QuestionText>Нравятся ли Вам многолюдность и шум?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Важна ли для Вас комфортная температура?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  

  <Question>
    <QuestionText>Нравится ли Вам классическая архитектура?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  


</ArrayOfQuestion>')
INSERT INTO [dbo].[QuestionGroups] ([ID], [Name], [Description], [RulesXml], [QuestionsXml]) VALUES (N'90588a6d-69f5-e711-9df1-eca86b8b143b', N'Подбор гостиницы', N'Smart-подбор гостиницы', N'<?xml version="1.0"?>
<ArrayOfRule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>abhaz</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
<Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>crimea</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClimate</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>costa</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeCorrida</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>thai</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeExotics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>turkey</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeHeat</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeService</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>zell</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeCold</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeClassics</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>czech</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
  
  <Rule>
    <Consequent xsi:type="IsClause">
      <Variable>result</Variable>
      <Value>german</Value>
    </Consequent>
    <Antecedents>
      <Clause xsi:type="IsClause">
        <Variable>likeMiddle</Variable>
        <Value>true</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeRussia</Variable>
        <Value>false</Value>
      </Clause>
      <Clause xsi:type="IsClause">
        <Variable>likeUniversity</Variable>
        <Value>true</Value>
      </Clause>
    </Antecedents>
  </Rule>
</ArrayOfRule>', N'<?xml version="1.0"?>
<ArrayOfQuestion xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Question>
    <QuestionText>В каком температурном режиме Вам комфортно проживать?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Жаркий</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeHeat</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Умеренный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeMiddle</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Холодный</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCold</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  <Question>
    <QuestionText>Нравится ли Вам гостиницы в России или в других странах?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Предпочитаю в России</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Хотелось бы выехать за границу</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeRussia</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Нравится ли Вам экзотика?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да, нравится экзотика</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeExotics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Предпочитаю что-то классическое</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Стоит ли уровень сервиса на первом месте для Вас во время отдыха?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeService</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>


  
  <Question>
    <QuestionText>Нравятся ли Вам многолюдность и шумность?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeCorrida</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>
  
  <Question>
    <QuestionText>Важен ли для Вас комфортный климат?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClimate</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  

  <Question>
    <QuestionText>Нравится ли Вам классическая архитектура?</QuestionText>
    <Answers>
      <Answer>
        <AnswerText>Да</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>true</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
      <Answer>
        <AnswerText>Нет</AnswerText>
        <AnswerFactsList>
          <Clause xsi:type="IsClause">
            <Variable>likeClassics</Variable>
            <Value>false</Value>
          </Clause>
        </AnswerFactsList>
      </Answer>
    </Answers>
  </Question>  


</ArrayOfQuestion>')
