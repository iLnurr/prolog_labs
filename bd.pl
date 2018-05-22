find_by_family(X):- 
    st_table(student(X,Y,Z),PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,GROUP,COURSE,CURATOR,HOME,PHONE),
    write("Try to find student by family- "),
    write([X,Y,Z,PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,GROUP,COURSE,CURATOR,HOME,PHONE]).

find_by_course(X):- 
    st_table(STUDENT,PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,GROUP,course(X),CURATOR,HOME,PHONE),
    write([STUDENT,PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,GROUP,X,CURATOR,HOME,PHONE]).

find_same_group_students(X):- 
    st_table(STUDENT,PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,group(X,Y),COURSE,CURATOR,HOME,PHONE),
    write("Try to find students by group- "),
    write([STUDENT,PERIOD,ED_F,PAID,DEPARTMENT,DIRECTION,X,Y,COURSE,CURATOR,HOME,PHONE]).

find_by_department_and_course(X,Y):- 
    st_table(STUDENT,PERIOD,ED_F,PAID,department(X,D),DIRECTION,GROUP,course(Y),CURATOR,HOME,PHONE),
    write("Try to find students by department and course- "),
    write([STUDENT,PERIOD,ED_F,PAID,D,DIRECTION,GROUP,CURATOR,HOME,PHONE]).

find_by_name_and_course_and_form(X,Y,Z):- 
    st_table(student(F,X,_),PERIOD,education_form(Z),PAID,DEPARTMENT,DIRECTION,GROUP,course(Y),CURATOR,HOME,PHONE),
    write("Try to find student by name and course and education form- "),    
    write([F,X,PERIOD,Z,PAID,DEPARTMENT,DIRECTION,GROUP,CURATOR,HOME,PHONE]).

%find_by_family("петров").
%find_by_course("3").
%find_same_group_students("з-424-б").
%find_by_department_and_course("аои","3").
%find_by_name_and_course_and_form("ильнур","3","дистанционное обучение").

st_table(student("сербаев","ильнур","а."),
         period("2015","2019"),
         education_form("дистанционное обучение"),
         paid("да","Платная форма обучения"),
         department("аои","Кафедра автоматизации обработки информации (АОИ)"),
         direction("09.03.04","Программная инженерия"),
         group("з-424-б","поток 75"),
         course("3"),
         curator("nna","Новиченко Н.А."),
         home("450022","г.Уфа","ул.Строителей, 25-16"),
         phone("89872563892")
            ).
st_table(student("иванов","иван","и."),
         period("2015","2019"),
         education_form("дистанционное обучение"),
         paid("да","Платная форма обучения"),
         department("аои","Кафедра автоматизации обработки информации (АОИ)"),
         direction("09.03.04","Программная инженерия"),
         group("з-424-б","поток 75"),
         course("3"),
         curator("nna","Новиченко Н.А."),
         home("450022","г.Томск","ул.Строителей, 25-16"),
         phone("8999444555")
            ).

st_table(student("петров","петр","п."),
         period("2016","2020"),
         education_form("дистанционное обучение"),
         paid("да","Платная форма обучения"),
         department("аои","Кафедра автоматизации обработки информации (АОИ)"),
         direction("09.03.04","Программная инженерия"),
         group("з-425-б","поток 76"),
         course("2"),
         curator("nna","Новиченко Н.А."),
         home("450022","г.Тюмень","ул.Строителей, 25-16"),
         phone("8912333777")         
            ).

st_table(student("сидоров","с.","а."),
         period("2017","2021"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("асу","Кафедра автоматизированных систем управления (АСУ)"),
         direction("09.03.01","Информатика и вычислительная техника"),
         group("о-126-а","поток 12"),
         course("1"),
         curator("kll","К л л"),
         home("111000","г.Томск","ул.Строителей, 25-16"),
         phone("8999888777")
            ).
st_table(student("абдуллоев","а.","и."),
         period("2017","2021"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("асу","Кафедра автоматизированных систем управления (АСУ)"),
         direction("09.03.01","Информатика и вычислительная техника"),
         group("о-126-а","поток 12"),
         course("1"),
         curator("kll","К л л"),
         home("777000","г.Астана","ул.Строителей, 25-16"),
         phone("8722888999")
            ).

st_table(student("бормотов","владимир","п."),
         period("2017","2021"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("асу","Кафедра автоматизированных систем управления (АСУ)"),
         direction("09.03.01","Информатика и вычислительная техника"),
         group("о-126-а","поток 12"),
         course("1"),
         curator("kll","К л л"),
         home("111000","г.Москва","ул.Коммунаров, 25-16"),
         phone("8932444555")        
            ).

st_table(student("коростылев","в.","а."),
         period("2014","2018"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("тор","Кафедра телекоммуникаций и основ радиотехники"),
         direction("11.03.01","Радиотехника"),
         group("о-235-п","поток 34"),
         course("4"),
         curator("saa","С а а"),
         home("111000","г.Томск","ул.Строителей, 25-16"),
         phone("8999888777")
            ).
st_table(student("абдушев","а.","и."),
         period("2014","2018"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("тор","Кафедра телекоммуникаций и основ радиотехники"),
         direction("11.03.01","Радиотехника"),
         group("о-235-п","поток 34"),
         course("4"),
         curator("saa","С а а"),
         home("555000","г.Кустанай","ул.Строителей, 25-16"),
         phone("8722888999")
            ).

st_table(student("легкий","в.","п."),
         period("2014","2018"),
         education_form("очное обучение"),
         paid("да","Бюджетная форма обучения"),
         department("тор","Кафедра телекоммуникаций и основ радиотехники"),
         direction("11.03.01","Радиотехника"),
         group("о-235-п","поток 34"),
         course("4"),
         curator("saa","С а а"),
         home("444000","г.Мирный","ул.Ленина, 25-16"),
         phone("8944444555")        
            ).



st_table(student("патрушев","и.","а."),
         period("2018","2022"),
         education_form("дистанционное обучение"),
         paid("да","Платная форма обучения"),
         department("прэ","Кафедра промышленной электроники"),
         direction("11.03.04","Электроника и наноэлектроника"),
         group("з-333-в","поток 66"),
         course("1"),
         curator("bai","Б а и"),
         home("222000","г.Тверь","ул.Строителей, 25-16"),
         phone("8945666777")
            ).
st_table(student("молчанов","иван","и."),
        period("2018","2022"),
        education_form("дистанционное обучение"),
        paid("да","Платная форма обучения"),
        department("прэ","Кафедра промышленной электроники"),
        direction("11.03.04","Электроника и наноэлектроника"),
        group("з-333-в","поток 66"),
        course("1"),
        curator("bai","Б а и"),
        home("345000","г.Стерлитамак","ул.Строителей, 25-16"),
        phone("8976666777")
            ).

st_table(student("важный","петр","п."),
        period("2018","2022"),
        education_form("дистанционное обучение"),
        paid("да","Платная форма обучения"),
        department("прэ","Кафедра промышленной электроники"),
        direction("11.03.04","Электроника и наноэлектроника"),
        group("з-333-в","поток 66"),
        course("1"),
        curator("bai","Б а и"),
        home("467000","г.Киров","ул.Строителей, 25-16"),
        phone("8933666777")     
            ).

st_table(student("войнов","с.","а."),
        period("2018","2022"),
        education_form("дистанционное обучение"),
        paid("да","Платная форма обучения"),
        department("прэ","Кафедра промышленной электроники"),
        direction("11.03.04","Электроника и наноэлектроника"),
        group("з-333-в","поток 66"),
        course("1"),
        curator("bai","Б а и"),
        home("321000","г.Волгоград","ул.Строителей, 25-16"),
        phone("8954666777")
            ).
st_table(student("плотник","а.","и."),
        period("2018","2022"),
        education_form("дистанционное обучение"),
        paid("да","Платная форма обучения"),
        department("прэ","Кафедра промышленной электроники"),
        direction("11.03.04","Электроника и наноэлектроника"),
        group("з-333-в","поток 66"),
        course("1"),
        curator("bai","Б а и"),
        home("134000","г.Королев","ул.Строителей, 25-16"),
        phone("8914666777")
            ).
