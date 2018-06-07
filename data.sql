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



INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7c6975fe-9df5-e711-9df1-eca86b85143b', N'Экскурсия в Испании', N'Льорет-де-Мар в Коста-Браве', N'costa', 3500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7f395c24-92f5-e711-9df1-eca86b8b143b', N'Star', N'Plauitum Hotel, Гагра', N'abhaz', 2100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7f394c74-92f5-e711-9df1-eca86b8b143b', N'Plauitum Hotel, Абхазия', N'Plauitum Hotel, Гагра', N'abhaz', 4100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7f395c74-92f5-e711-9df1-eca86b8b143b', N'Фестиваль в Абхазии', N'Plauitum Hotel, Гагра', N'abhaz', 2100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7f396c74-92f5-e711-9df1-eca86b8b143b', N'Экскурсия в Абхазии', N'Гагра', N'abhaz', 4100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7f996c74-92f5-e711-9df1-eca86b8b143b', N'Тур в Абхазию', N'Гагра, 350 метров до моря, песчано-галечный пляж, бесплатный Wi-Fi', N'abhaz', 11115, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'8ad65728-9bf5-e711-9df1-eca86b8b143b', N'Palace', N'Prime, Зелль в Тироле', N'zell', 2500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'8ad65798-9bf5-e711-9df1-eca86b8b143b', N'Восхождение на гору в Австрии', N'Prime, Зелль в Тироле', N'zell', 2500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'8a46e798-9bf5-e711-9df1-eca86b8b143b', N'Prime, Австрия', N'Prime, Зелль в Тироле', N'zell', 3500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'8ad6e798-9bf5-e711-9df1-eca86b8b143b', N'Экскурсия в Австрии', N'Зелль в Тироле', N'zell', 3500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'8adee798-9bf5-e711-9df1-eca86b8b143b', N'Тур в Австрию', N'Зелль в Тироле, бесплатный Wi-Fi', N'zell', 65000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7c63752e-9df5-e711-9df1-eca86b8b143b', N'Best, Испания', N'Best, Льорет-де-Мар в Коста-Браве', N'costa', 3500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7269423e-9df5-e711-9df1-eca86b8b143b', N'Taste', N'Best, Льорет-де-Мар в Коста-Браве', N'costa', 1500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7c6945fe-9df5-e711-9df1-eca86b8b143b', N'Коррида в Испании', N'Best, Льорет-де-Мар в Коста-Браве', N'costa', 1500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'7c6965fe-9df5-e711-9df1-eca86b8b143b', N'Тур в Испанию', N'Льорет-де-Мар в Коста-Браве, 600 м до моря, песчано-галечный пляж, есть Wi-Fi', N'costa', 45000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'2afd2323-9ef5-e711-9df1-eca86b8b143b', N'Kozel', N'Lavanda Hotel, Прага', N'czech', 1100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'2afd4523-9ef5-e711-9df1-eca86b8b143b', N'Выставка в Чехии', N'Lavanda Hotel, Прага', N'czech', 1100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'2afde523-9ef5-e711-9df1-eca86b8b143b', N'Экскурсия в Чехии', N'Lavanda Hotel, Прага', N'czech', 2100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'2afde923-9ef5-e711-9df1-eca86b8b143b', N'Lavanda Hotel, Чехия, Прага', N'Lavanda Hotel, Прага', N'czech', 2100, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'54352528-9ef5-e711-9df1-eca86b8b143b', N'Exotic', N'Gold, Патонг на Пхукете', N'thai', 4500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b132202a-9ef5-e711-9df1-eca86b8b143b', N'Shwartz', N'Wellcome, Берлин, бесплатный Wi-Fi', N'german', 1300, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'd33d4234-9ef5-e711-9df1-eca86b8b143b', N'Nice', N'Sea, Ялта в Крыму, 150 м до моря', N'crimea', 3000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'd33d4934-9ef5-e711-9df1-eca86b8b143b', N'Поход в Крыму', N'Sea, Ялта в Крыму, 150 м до моря', N'crimea', 3000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'd38d5934-9ef5-e711-9df1-eca86b8b143b', N'Sea, Крым', N'Sea, Ялта в Крыму, 150 м до моря', N'crimea', 4000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'd38d9934-9ef5-e711-9df1-eca86b8b143b', N'Экскурсия по России', N'Ялта в Крыму, 150 м до моря', N'crimea', 4000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'd38d9f34-9ef5-e711-9df1-eca86b8b143b', N'Тур по России', N'Ялта в Крыму, 150 м до моря, галечный пляж', N'crimea', 4000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'54344958-9ef5-e711-9df1-eca86b8b143b', N'Тур в Тайланд', N'Патонг на Пхукете,1500 м до моря, песчаный пляж, бесплатный Wi-Fi', N'thai', 65000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'54344968-9ef5-e711-9df1-eca86b8b143b', N'Экскурсия в Тайланде', N'Патонг на Пхукете', N'thai', 6500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'54384968-9ef5-e711-9df1-eca86b8b143b', N'Gold, Тайланд', N'Gold, Патонг на Пхукете', N'thai', 6500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'54345968-9ef5-e711-9df1-eca86b8b143b', N'Массаж в Тайланде', N'Gold, Патонг на Пхукете', N'thai', 4500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b43f2374-9ef5-e711-9df1-eca86b8b143b', N'Picanto', N'Paradise, Город Анталия в Анталии', N'turkey', 1500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b43f3374-9ef5-e711-9df1-eca86b8b143b', N'Шведский стол в Турции', N'Paradise, Город Анталия в Анталии', N'turkey', 1500, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 3)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b83f7074-9ef5-e711-9df1-eca86b8b143b', N'Paradise, Турция', N'Paradise, Город Анталия в Анталии', N'turkey', 18000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 4)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b83f9074-9ef5-e711-9df1-eca86b8b143b', N'Экскурсия в Турции', N'Город Анталия в Анталии', N'turkey', 18000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b13f407a-9ef5-e711-9df1-eca86b8b143b', N'Экскурсия в Германии', N'Берлин, бесплатный Wi-Fi', N'german', 3300, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 2)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b13f607a-9ef5-e711-9df1-eca86b8b143b', N'Wellcome, Германия', N'Wellcome, Берлин, бесплатный Wi-Fi', N'german', 3300, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 5)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b13f907a-9ef5-e711-9df1-eca86b8b143b', N'Тур в Германию', N'Берлин, бесплатный Wi-Fi', N'german', 33000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'b83f907a-9ef5-e711-9df1-eca86b8b143b', N'Тур в Турцию', N'Город Анталия в Анталии, бесплатный Wi-Fi', N'turkey', 18000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
INSERT INTO [dbo].[TouristicContents] ([ID], [Name], [Description], [LogicalTag], [Price], [PurchaseWayDescription], [TouristicContentType]) VALUES (N'2afde5a3-9ef5-e711-9df1-eca86b8b143b', N'Тур в Чехию', N'Lavanda Hotel, Прага, Бесплатный Wi-Fi', N'czech', 21000, N'Приобретение возможно через <a href=''https://www.s7.ru/''>S7</a>', 1)
