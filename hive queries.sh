
1. A list showing employee number, last name, first name, sex, and salary for each employee1.

SELECT t1.emp_no, t1.last_name, t1.first_name, t1.sex, t2.salary
FROM employees t1
JOIN salaries  t2
ON t1.emp_no = t2.emp_no;

t1.emp_no	t1.last_name	t1.first_name	t1.sex	t2.salary	
10001	Facello	Georgi	M	60117	
10002	Simmel	Bezalel	F	65828	
10003	Bamford	Parto	M	40006	
10004	Koblick	Chirstian	M	40054	
10005	Maliniak	Kyoichi	M	78228	
10006	Preusig	Anneke	F	40000	
10007	Zielinski	Tzvetan	F	56724	
10008	Kalloufi	Saniya	M	46671	
10009	Peac	Sumant	F	60929	
10010	Piveteau	Duangkaew	F	72488	
10011	Sluis	Mary	F	42365	
10012	Bridgland	Patricio	M	40000	
10013	Terkki	Eberhardt	M	40000	
10014	Genin	Berni	M	46168	
10015	Nooteboom	Guoxiang	M	40000	
10016	Cappelletti	Kazuhito	M	70889	
10017	Bouloucos	Cristinel	F	71380	
10018	Peha	Kazuhide	F	55881	
10019	Haddadi	Lillian	M	44276	
10020	Warwick	Mayuko	M	40000	
10021	Erde	Ramzi	M	55025	
10022	Famili	Shahaf	M	40000	
10023	Montemayor	Bojan	F	47883	
10024	Pettey	Suzette	F	83733	
10025	Heyers	Prasadram	M	40000	
10026	Berztiss	Yongqiao	M	47585	
10027	Reistad	Divier	F	40000	
10028	Tempesti	Domenick	M	48859	
10029	Herbst	Otmar	M	63163	
10030	Demeyer	Elvis	M	66956	
10031	Joslin	Karsten	M	40000	
10032	Reistad	Jeong	F	48426	
10033	Merlo	Arif	M	51258	
10034	Swan	Bader	M	47561	
10035	Chappelet	Alain	M	41538	
10036	Portugali	Adamantios	M	42819	
10037	Makrucki	Pradeep	M	40000	
10038	Lortz	Huan	M	40000	
10039	Brender	Alejandro	M	40000	
10040	Meriste	Weiyi	F	52153	
10041	Lenart	Uri	F	56893	
10042	Stamatiou	Magy	F	81662	
10043	Tzvieli	Yishay	M	49324	
10044	Casley	Mingsen	F	40919	
10045	Shanbhogue	Moss	M	41971	
10046	Rosenbaum	Lucien	M	40000	
10047	Nyanchama	Zvonko	M	54982	
10048	Syrotiuk	Florian	M	40000	
10049	Tramer	Basil	F	40000	
10050	Dredge	Yinghua	M	74366	
10051	Caine	Hidefumi	M	48817	
10052	Nitsch	Heping	M	57212	
10053	Zschoche	Sanjiv	F	67854	
10054	Schueller	Mayumi	M	40000	
10055	Dredge	Georgy	M	80024	
10056	Bernini	Brendon	F	48857	
10057	Callaway	Ebbe	F	49616	
10058	McFarlin	Berhard	M	52787	
10059	McAlpine	Alejandro	F	71218	
10060	Billingsley	Breannda	M	74686	
10061	Herber	Tse	M	68577	
10062	Peyn	Anoosh	M	55685	
10063	Leonhardt	Gino	F	40000	
10064	Jansch	Udi	M	40000	
10065	Awdeh	Satosi	M	40000	
10066	Schusler	Kwee	M	69736	
10067	Stavenow	Claudi	M	44642	
10068	Brattka	Charlene	M	87964	
10069	Bierman	Margareta	F	67932	
10070	Garigliano	Reuven	M	55999	
10071	Lipner	Hisao	M	40000	
10072	Sidou	Hironoby	F	40000	
10073	McClurg	Shir	M	56473	
10074	Bernatsky	Mokhtar	F	61714	
10075	Dolinsky	Gao	F	43815	
10076	Ritzmann	Erez	F	47319	
10077	Azuma	Mona	M	40000	
10078	Mondadori	Danel	F	47280	
10079	Gils	Kshitij	F	53492	
10080	Baek	Premal	M	54916	
10081	Rosen	Zhongwei	M	55786	
10082	Lortz	Parviz	M	48935	
10083	Zockler	Vishv	M	40000	
10084	Kalloufi	Tuval	M	69811	
10085	Malabarba	Kenroku	M	40000	
10086	Foote	Somnath	M	81613	
10087	Eugenio	Xinglin	F	96750	
10088	Syrzycki	Jungsoon	F	65957	
10089	Flasterstein	Sudharsan	F	56469	
10090	Hofting	Kendra	M	44978	
10091	Gomatam	Amabile	M	40000	
10092	Niizuma	Valdiodio	F	53977	
10093	Desikan	Sailaja	M	67856	
10094	Ossenbruggen	Arumugam	F	58001	
10095	Morton	Hilari	M	63668	
10096	Mandell	Jayson	M	61395	
10097	Waschkowski	Remzi	M	44886	
10098	Servieres	Sreekrishna	F	40000	
10099	Sullins	Valter	F	68781	
10100	Haraldson	Hironobu	F	54398	


2.A list showing the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT t1.dept_no, t1.dept_name, t2.emp_no, t3.last_name, t3.first_name
FROM department t1 
JOIN dept_manager t2
ON t1.dept_no = t2.dept_no
JOIN employees t3
ON t2.emp_no = t3.emp_no;

t1.dept_no	t1.dept_name	t2.emp_no	t3.last_name	t3.first_name	
d001	Marketing	110022	Markovitch	Margareta	
d001	Marketing	110039	Minakawa	Vishwani	
d002	Finance	110085	Alpin	Ebru	
d002	Finance	110114	Legleitner	Isamu	
d003	Human Resources	110183	Ossenbruggen	Shirish	
d003	Human Resources	110228	Sigstam	Karsten	
d004	Production	110303	Wegerle	Krassimir	
d004	Production	110344	Cools	Rosine	
d004	Production	110386	Kieras	Shem	
d004	Production	110420	Ghazalie	Oscar	
d005	development	110511	Hagimont	DeForest	
d005	development	110567	DasSarma	Leon	
d006	Quality Management	110725	Onuegbe	Peternela	
d006	Quality Management	110765	Hofmeyr	Rutger	
d006	Quality Management	110800	Quadeer	Sanjoy	
d006	Quality Management	110854	Pesch	Dung	
d007	Sales	111035	Kaelbling	Przemyslawa	
d007	Sales	111133	Zhang	Hauke	
d008	Research	111400	Staelin	Arie	
d008	Research	111534	Kambil	Hilary	
d009	Customer Service	111692	Butterworth	Tonny	
d009	Customer Service	111784	Giarratana	Marjo	
d009	Customer Service	111877	Spinelli	Xiaobin	
d009	Customer Service	111939	Weedman	Yuchang	





3.A list showing the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT t1.emp_no, t2.last_name, t2.first_name, t3.dept_name
FROM dept_emp t1
JOIN employees t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t1.dept_no = t3.dept_no;

t1.emp_no	t2.last_name	t2.first_name	t3.dept_name	
10001	Facello	Georgi	development	
10002	Simmel	Bezalel	Sales	
10003	Bamford	Parto	Production	
10004	Koblick	Chirstian	Production	
10005	Maliniak	Kyoichi	Human Resources	
10006	Preusig	Anneke	development	
10007	Zielinski	Tzvetan	Research	
10008	Kalloufi	Saniya	development	
10009	Peac	Sumant	Quality Management	
10010	Piveteau	Duangkaew	Production	
10010	Piveteau	Duangkaew	Quality Management	
10011	Sluis	Mary	Customer Service	
10012	Bridgland	Patricio	development	
10013	Terkki	Eberhardt	Human Resources	
10014	Genin	Berni	development	
10015	Nooteboom	Guoxiang	Research	
10016	Cappelletti	Kazuhito	Sales	
10017	Bouloucos	Cristinel	Marketing	
10018	Peha	Kazuhide	Production	
10018	Peha	Kazuhide	development	
10019	Haddadi	Lillian	Research	
10020	Warwick	Mayuko	Production	
10021	Erde	Ramzi	development	
10022	Famili	Shahaf	development	
10023	Montemayor	Bojan	development	
10024	Pettey	Suzette	Production	
10025	Heyers	Prasadram	development	
10026	Berztiss	Yongqiao	Production	
10027	Reistad	Divier	development	
10028	Tempesti	Domenick	development	
10029	Herbst	Otmar	Production	
10029	Herbst	Otmar	Quality Management	
10030	Demeyer	Elvis	Production	
10031	Joslin	Karsten	development	
10032	Reistad	Jeong	Production	
10033	Merlo	Arif	Quality Management	
10034	Swan	Bader	Sales	
10035	Chappelet	Alain	Production	
10036	Portugali	Adamantios	Human Resources	
10037	Makrucki	Pradeep	development	
10038	Lortz	Huan	Customer Service	
10039	Brender	Alejandro	Human Resources	
10040	Meriste	Weiyi	development	
10040	Meriste	Weiyi	Research	
10041	Lenart	Uri	Sales	
10042	Stamatiou	Magy	Finance	
10043	Tzvieli	Yishay	development	
10044	Casley	Mingsen	Production	
10045	Shanbhogue	Moss	Production	
10046	Rosenbaum	Lucien	Research	
10047	Nyanchama	Zvonko	Production	
10048	Syrotiuk	Florian	development	
10049	Tramer	Basil	Customer Service	
10050	Dredge	Yinghua	Finance	
10050	Dredge	Yinghua	Sales	
10051	Caine	Hidefumi	Production	
10052	Nitsch	Heping	Research	
10053	Zschoche	Sanjiv	Sales	
10054	Schueller	Mayumi	Human Resources	
10055	Dredge	Georgy	Marketing	
10056	Bernini	Brendon	development	
10057	Callaway	Ebbe	development	
10058	McFarlin	Berhard	Marketing	
10059	McAlpine	Alejandro	Finance	
10060	Billingsley	Breannda	Sales	
10060	Billingsley	Breannda	Customer Service	
10061	Herber	Tse	Sales	
10062	Peyn	Anoosh	development	
10063	Leonhardt	Gino	Production	
10064	Jansch	Udi	Research	
10065	Awdeh	Satosi	development	
10066	Schusler	Kwee	development	
10067	Stavenow	Claudi	Quality Management	
10068	Brattka	Charlene	Sales	
10069	Bierman	Margareta	Production	
10070	Garigliano	Reuven	development	
10070	Garigliano	Reuven	Research	
10071	Lipner	Hisao	Human Resources	
10072	Sidou	Hironoby	development	
10073	McClurg	Shir	Quality Management	
10074	Bernatsky	Mokhtar	development	
10075	Dolinsky	Gao	development	
10076	Ritzmann	Erez	development	
10077	Azuma	Mona	Human Resources	
10078	Mondadori	Danel	development	
10079	Gils	Kshitij	development	
10080	Baek	Premal	Finance	
10080	Baek	Premal	Human Resources	
10081	Rosen	Zhongwei	Production	
10082	Lortz	Parviz	Research	
10083	Zockler	Vishv	Production	
10084	Kalloufi	Tuval	Production	
10085	Malabarba	Kenroku	Production	
10086	Foote	Somnath	Human Resources	
10087	Eugenio	Xinglin	Sales	
10088	Syrzycki	Jungsoon	Sales	
10088	Syrzycki	Jungsoon	Customer Service	
10089	Flasterstein	Sudharsan	Sales	
10090	Hofting	Kendra	development	
10091	Gomatam	Amabile	development	


4. A list showing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B".

SELECT first_name, last_name,sex
FROM employees
WHERE first_name = 'Hercules' AND last_name Like 'B%'

first_name	last_name	sex	
Hercules	Benzmuller	M	
Hercules	Brendel	F	
Hercules	Baranowski	M	
Hercules	Barreiro	M	
Hercules	Baer	M	
Hercules	Bernardinello	F	
Hercules	Basagni	M	
Hercules	Biran	F	
Hercules	Bernatsky	M	
Hercules	Bail	F	
Hercules	Birge	F	
Hercules	Bisiani	F	
Hercules	Bodoff	M	
Hercules	Biron	F	
Hercules	Buchter	M	
Hercules	Bain	F	
Hercules	Bahr	M	
Hercules	Baak	M	
Hercules	Benantar	F	
Hercules	Berstel	F	

5. A list showing all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT t3.dept_name, t2.last_name, t2.first_name
FROM dept_emp t1
JOIN employees t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t1.dept_no = t3.dept_no
WHERE t3.dept_name = 'Sales';

t3.dept_name	t2.last_name	t2.first_name	
Sales	Simmel	Bezalel	
Sales	Cappelletti	Kazuhito	
Sales	Swan	Bader	
Sales	Lenart	Uri	
Sales	Dredge	Yinghua	
Sales	Zschoche	Sanjiv	
Sales	Billingsley	Breannda	
Sales	Herber	Tse	
Sales	Brattka	Charlene	
Sales	Eugenio	Xinglin	
Sales	Syrzycki	Jungsoon	
Sales	Flasterstein	Sudharsan	
Sales	Desikan	Sailaja	
Sales	Morton	Hilari	
Sales	Sullins	Valter	
Sales	Heyers	Perla	
Sales	Baca	Dung	
Sales	Hiltgen	Syozo	
Sales	Pintelas	Zissis	
Sales	Azumi	Douadi	
Sales	Perry	Xiadong	
Sales	Lichtner	Itzchak	
Sales	Khasidashvili	Debatosh	
Sales	Litvinov	Valery	
Sales	Sidhu	Duro	
Sales	Ranta	Kazuhisa	
Sales	Ellozy	Yolla	
Sales	Ciolek	Tadahiko	
Sales	Duclos	Xiaobin	
Sales	Plessier	Xinglin	
Sales	Cesareni	Karoline	
Sales	Auria	Marko	
Sales	Bakhtari	Arunachalam	
Sales	Bade	Susumu	
Sales	Mandell	Yannis	
Sales	Pouyioutas	Wonhee	
Sales	Tempesti	Frederique	
Sales	Salinas	Zsolt	
Sales	Brattka	Shen	
Sales	Radhakrishnan	Irene	
Sales	Maraist	Mahendra	
Sales	Hartvigsen	Bedir	
Sales	Lieblein	Baocai	
Sales	Schwartzbauer	Isaac	
Sales	Seghrouchni	Dipayan	
Sales	Ghelli	Yucel	
Sales	Lorho	Petter	
Sales	Stentiford	Ipke	
Sales	Baer	Faiza	
Sales	Erie	Bernt	
Sales	Kilgour	Heng	
Sales	Holburn	Dzung	
Sales	Apsitis	Christfried	
Sales	Miyakawa	Mechthild	
Sales	Stasinski	Uinam	
Sales	Ravishankar	Guenter	
Sales	Bellmore	Kasturi	
Sales	Binkley	Arto	
Sales	Bahi	Toshimori	
Sales	Radwan	Aamod	
Sales	Cochrane	Satyanarayana	
Sales	Sidou	Seshu	
Sales	Toyoshima	Qunsheng	
Sales	Fandrianto	Clyde	
Sales	Rosin	Willard	
Sales	Kalafatis	Dante	
Sales	Lichtner	Takahira	
Sales	Kamble	Alejandro	
Sales	Kaiser	Hironoby	
Sales	Escriba	Shooichi	
Sales	Marchegay	Guenter	
Sales	Nitto	Ortrud	
Sales	Mungall	Atreyi	
Sales	Siepmann	Ulf	
Sales	Kaiser	Martijn	
Sales	Gecsei	Takahito	
Sales	Klerer	Lidong	
Sales	Bakhtari	Bingning	
Sales	Sudbeck	Khosrow	
Sales	Bugrara	Patricio	
Sales	Unno	Volkmar	
Sales	Rosis	Kazuhira	
Sales	Oxenboll	Phule	
Sales	Sudkamp	Aleksandar	
Sales	Badr	Wonhee	
Sales	Streng	Sverrir	
Sales	Engelmann	Gina	
Sales	Karcich	Gal	
Sales	Zaiane	Ung	
Sales	Shobatake	Yoshimitsu	
Sales	Lodder	Salvador	
Sales	Vuskovic	Huiqun	
Sales	Haraldson	Maris	
Sales	Luft	Maik	
Sales	Varker	Xiong	
Sales	Auria	Isamu	
Sales	Riesenhuber	Abdelwaheb	
Sales	Slobodova	Keung	
Sales	Kirkerud	Raimond	
Sales	Speek	Tiina	


6. A list showing all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


SELECT t1.emp_no,t1.last_name,t1.first_name,t3.dept_name
from employees t1
JOIN dept_emp t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t2.dept_no = t3.dept_no
WHERE t3.dept_name = 'Sales' OR t3.dept_name = 'development'

t1.emp_no	t1.last_name	t1.first_name	t3.dept_name	
10001	Facello	Georgi	development	
10002	Simmel	Bezalel	Sales	
10006	Preusig	Anneke	development	
10008	Kalloufi	Saniya	development	
10012	Bridgland	Patricio	development	
10014	Genin	Berni	development	
10016	Cappelletti	Kazuhito	Sales	
10018	Peha	Kazuhide	development	
10021	Erde	Ramzi	development	
10022	Famili	Shahaf	development	
10023	Montemayor	Bojan	development	
10025	Heyers	Prasadram	development	
10027	Reistad	Divier	development	
10028	Tempesti	Domenick	development	
10031	Joslin	Karsten	development	
10034	Swan	Bader	Sales	
10037	Makrucki	Pradeep	development	
10040	Meriste	Weiyi	development	
10041	Lenart	Uri	Sales	
10043	Tzvieli	Yishay	development	
10048	Syrotiuk	Florian	development	
10050	Dredge	Yinghua	Sales	
10053	Zschoche	Sanjiv	Sales	
10056	Bernini	Brendon	development	
10057	Callaway	Ebbe	development	
10060	Billingsley	Breannda	Sales	
10061	Herber	Tse	Sales	
10062	Peyn	Anoosh	development	
10065	Awdeh	Satosi	development	
10066	Schusler	Kwee	development	
10068	Brattka	Charlene	Sales	
10070	Garigliano	Reuven	development	
10072	Sidou	Hironoby	development	
10074	Bernatsky	Mokhtar	development	
10075	Dolinsky	Gao	development	
10076	Ritzmann	Erez	development	
10078	Mondadori	Danel	development	
10079	Gils	Kshitij	development	
10087	Eugenio	Xinglin	Sales	
10088	Syrzycki	Jungsoon	Sales	
10089	Flasterstein	Sudharsan	Sales	
10090	Hofting	Kendra	development	
10091	Gomatam	Amabile	development	
10092	Niizuma	Valdiodio	development	
10093	Desikan	Sailaja	Sales	
10095	Morton	Hilari	Sales	
10099	Sullins	Valter	Sales	
10101	Heyers	Perla	Sales	
10103	Birch	Akemi	development	
10107	Baca	Dung	Sales	
10116	Czap	Dayanand	development	
10118	Zyda	Zhonghui	development	
10121	Ramsay	Guoxiang	development	
10122	Esposito	Ohad	development	
10125	Hiltgen	Syozo	Sales	
10127	Baja	Subir	development	
10129	Peir	Armond	development	
10134	Siprelle	Diederik	development	
10136	Pintelas	Zissis	Sales	
10139	Foong	Ewing	development	
10142	Hettesheimer	Tzvetan	development	
10143	Bakhtari	Sakthirel	development	
10145	Esposito	Akemi	development	
10148	Azumi	Douadi	Sales	
10149	Perry	Xiadong	Sales	
10150	Perng	Zhenbing	development	
10151	Lichtner	Itzchak	Sales	
10153	Majewski	Heekeun	development	
10157	Aloisi	Nigel	development	
10160	Khasidashvili	Debatosh	Sales	
10166	Siegrist	Samphel	development	
10169	Snedden	Sampalli	development	
10172	Matzen	Shigeu	development	
10178	Litvinov	Valery	Sales	
10179	Duclos	Deniz	development	
10181	Nooteboom	Sibyl	development	
10182	Merey	Moriyoshi	development	
10185	Sidhu	Duro	Sales	
10189	Erva	Khalid	development	
10191	Nastansky	Zdislav	development	
10193	Cheshire	Masaru	development	
10197	Krzyzanowski	Kasidit	development	
10198	Furedi	Pranav	development	
10199	Ranta	Kazuhisa	Sales	
10201	Kavraki	Idoia	development	
10202	Lichtner	Greger	development	
10204	Ritcey	Nevio	development	
10206	Iwayama	Alassane	development	
10207	Anandan	Girolamo	development	
10209	Ellozy	Yolla	Sales	
10211	Strehl	Vishu	development	
10212	Esteva	Divier	development	
10214	Ciolek	Tadahiko	Sales	
10215	Duclos	Xiaobin	Sales	
10219	Kolvik	Genta	development	
10223	Schmiedel	Carrsten	development	
10226	Plessier	Xinglin	Sales	
10227	Kaiser	Anneli	development	
10228	Cesareni	Karoline	Sales	
10232	Auria	Marko	Sales	



7. A list showing the frequency count of employee last names, in descending order. ( i.e., how many employees share each last name

SELECT last_name,COUNT(last_name) AS Frequency_Count
FROM employees
GROUP BY last_name
ORDER BY
FREQUENCY_Count DESC;

last_name	frequency_count	
Baba	226	
Coorg	223	
Gelosh	223	
Sudbeck	222	
Farris	222	
Adachi	221	
Osgood	220	
Masada	218	
Neiman	218	
Mandell	218	
Wendorf	217	
Boudaillier	217	
Solares	216	
Cummings	216	
Pettis	216	
Mahnke	216	
Maksimenko	215	
Kulisch	215	
Birjandi	215	
Emmart	215	
Collette	215	
Rosaz	214	
Pokrovskii	214	
Boguraev	214	
Scallan	214	
Siksek	213	
Wolniewicz	213	
Stifter	213	
Morrey	213	
Swen	212	
Siepmann	212	
Rabehasaina	212	
Garrabrants	212	
Taubman	212	
Rajcani	212	
Peek	212	
Herber	212	
Pramanik	212	
Cangellaris	211	
Ventosa	211	
Kamber	211	
Ghemri	211	
Kitsuregawa	211	
Asser	211	
Gente	211	
Barriga	211	
Redmiles	210	
Driscoll	210	
Luce	210	
Bolsens	210	
Schaaf	210	
Gerlach	209	
Lamparter	209	
Gewali	209	
Malabarba	209	
Flowers	209	
Zuberek	209	
Khasidashvili	209	
Serra	209	
Lunt	209	
Chenney	209	
Jenevein	208	
Panienski	208	
Cesareni	208	
Gecsei	208	
Aloia	208	
Lowrie	208	
Garnier	207	
Akazan	207	
Lamba	207	
Angelopoulos	207	
Bondorf	206	
Perng	206	
Hebert	206	
Braunmuhl	206	
Chimia	206	
Gaughan	206	
Foote	206	
Duclos	206	
Shimshoni	205	
Lanphier	205	
Bennet	205	
Siprelle	205	
Emden	205	
Ecklund	205	
Matzov	205	
Panangaden	205	
Ponthieu	205	
Marakhovsky	205	
Geffroy	205	
Garnham	205	
Aamodt	205	
Onuegbe	205	
Encarnacion	205	
DeMori	205	
Coors	204	
Luders	204	
Shrader	204	
Legleitner	204	
Shiratori	204	


9. Bar graph to show the Average salary per title (designation)

select t3.title, AVG(t1.salary) as avg_salary
            from anabig114216.salary t1
            join anabig114216.employees t2
            on t1.emp_no = t2.emp_no
            join anabig114216.titles t3
            on t2.emp_titles_id =t3.title_id
            group by t3.title;

t3.title	avg_salary	
Assistant Engineer	48564.43444730077	
Engineer	48535.336511426336	
Manager	51531.041666666664	
Senior Engineer	48506.79987109579	
Senior Staff	58550.17270435993	
Staff	58465.38285033152	
Technique Leader	48582.89609189332	


8. Histogram to show the salary distribution among the employees
CREATE view bin as
SELECT
    CASE 
        WHEN t1.salary >= 40000 and t1.salary < 60000 THEN '40000-60000'
        WHEN t1.salary >= 60000 and t1.salary <80000 THEN '60000-80000'
        WHEN t1.salary >= 80000 and t1.salary < 100000 THEN '80000-100000'
        WHEN t1.salary >= 100000 and t1.salary < 120000 THEN '100000-120000'
        WHEN t1.salary >= 120000 and t1.salary < 140000 THEN '120000-140000'
        ELSE 'Nothing'
        END as salary_range
FROM salary t1
JOIN employees t2
on t1.emp_no = t2.emp_no;

SELECT salary_range,count(salary_range) as salaries
from bin
GROUP BY salary_range
ORDER BY salaries DESC

salary_range	salaries	
40000-60000	216380	
60000-80000	66227	
80000-100000	16129	
100000-120000	1264	
120000-140000	24	


-> Top 10 employees whose average salary is greater than 100000
select avg(salary) as average_salary,emp_no
from salaries 
join employees
on salary.emp_no = employees.emp_no
order by avg_salary desc limit 10;

-> Provide the department name,deptartment number employee number whose firstname starts with 'B'
select t3.dept_name,t3.dept_no,t1.emp_no,t1.firstname
from employees t1
join dept_emp t2
on t1.emp_no = t2.emp_no
join departments t3
on t3.dept_no=t2.dept_no
where firstname like '%B'

->Retrieve the details of employees whose designation belongs to 
select t1.first_name,t1.last_name,t2.title,t1.emp_no
from employees t1
Join titles t2
on t1.emp_titles_id = t2.title_id
where title = ''

find average,minimum,maximum salary of employees.
->Select avg(salary) avg_salary,min(salary) min_salary,max(salary) max_salary
from salary
order by avg_salary,min_salary,max_salary

Select emp_no,last_name,extract(year from left)
from employee


spark.sql(
            """select t1.emp_no,t1.first_name,t2.salary
            from employees t1
            join salary t2
            on t1.emp_no=t2.emp_no
            where t2.salary between '40000' and '50000'""").show()




#Provide the department name,deptartment number employee number whose firstname starts with 'B'

spark.sql(
            """select t3.dept_name,t3.dept_no,t1.emp_no,t1.first_name
            from employees t1
            join dept_emp t2
            on t1.emp_no = t2.emp_no
            join departments t3
            on t3.dept_no=t2.dept_no
            where first_name like 'Be%' """).show()

# Top 10 employees whose average salary is greater than 100000
spark.sql(
            """select AVG(t1.salary) as average_salary,t2.emp_no,t2.first_name
            from salary t1
            join employees t2
            on t1.emp_no = t2.emp_no
            group by t2.emp_no,t2.first_name
            order by average_salary desc limit 10""").show()