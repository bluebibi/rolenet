 # -*- coding: utf-8 -*-
import mysql.connector
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
###############################################################################
#---insert into movies , charactors , charactor_scenes 부분은 수동으로 바꿔주어야 한다---#
###############################################################################

print"*********insert into charactors table **************"
cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
#-----------bring movies top id -----------------
select_max = ("SELECT MAX(id) FROM userMovies")
cursor.execute(select_max)
maxId = cursor.fetchall()
print maxId[0][0]
a = int(maxId[0][0])
#-------------------end-----------------------
moviePath = sys.argv[1] + '%s.txt' % a
print moviePath
f=open(moviePath,'r')
f.seek(0)
lista = []
#bring only actor's name _part
for line in f.xreadlines():
    #line에 : 이 없지 않다면 == 있따면
    if(line.find(':') != -1):
        line = line[:(line.index(':'))].strip()
        lista.append(line)
#bring shown actor's name in list
actor_diction = {}
for actor_key in lista:
    #if already words in actor_diction
    if(actor_key in actor_diction):
        actor_diction[actor_key] = actor_diction[actor_key]+1
    #if words not in actor_diction 
    else:
        actor_diction[actor_key] = 1
actor_diction_plus=[]
i=0
while (i<len(actor_diction)):
   actor_diction_plus.append(actor_diction.items()[i])
   i=i+1
def mycmp(a1,a2):
    return cmp(a2[1],a1[1])
actor_diction_plus.sort(mycmp)
#----등장횟수도 구햇으나 디비엔 넣지 않음       
#show the simple dictionary_items 
for k,v in actor_diction_plus:
	k.encode('utf-8')
	if (v <= 3):
            continue
        else:
        	data_charactor = (k,a)
        	add_charactor = ("INSERT INTO user_charactors(name,movie_id) VALUES(%s,%s)")
        	print add_charactor
        	cursor.execute(add_charactor,data_charactor)
print"*********insert into scenes table **************"
f.seek(0)
s=f.read()
len_s = len(s)
print "len(s) = ",len(s)
f.close()
i = 0
count = 0
while(i<len_s):
    if(s[i] == '#'):
        count = count + 1
    i = i + 1
print "# 개수 : ", count
print a
i = 0
movies_id = (a)
while(i < count):
    add_scenes = ("INSERT INTO user_scenes(movie_id)" "VALUES(%s)" %(a))
    cursor.execute(add_scenes)
    i = i + 1
cnx.commit()
cursor.close()
cnx.close()
print"*********insert into relations table **************"
cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
select_id = ("SELECT id FROM user_scenes WHERE movie_id = %s" % (a))
cursor.execute(select_id)
maxId = cursor.fetchall()
maxIdInt = int(maxId[0][0])
print "------",maxIdInt,"------"
i=0
values = []
new_s = ''
#--------씬 자르기---------
while(i<len_s):
    flag = 0
    if (s[i] == '#'):
        j = i + 1;
        while(j<len_s):
            if(s[j] == '#'):
                new_s = s[i:j]
                s=s[j:]
                values.append(new_s)
                flag = 1;
                break
            j = j+1
        
    i = i+1     
    if(flag == 1): 
        i=0
        len_s = len(s)
values.append(s)
#-----각 씬마다 등장인물 뽑고 가중치 부여

scene = 0

while(scene < len(values)):
    print "-------scene : %d----" % (scene + 1)
    i=0
    startPoint = 0
    lineList = []
    while( i < len(values[scene]) ):
        startPoint += 1
        if(values[scene][i] == '\n'):
            lineList.append(values[scene][(i-startPoint)+1:i])
            startPoint = 0
        i = i + 1
    nameList = []
    t=0
    
#----한 씬에 있는 줄 개수 만큼 돔 
    for line in lineList:
#---한 줄에 있는 문자열 개수 만큼 돔
        while( t<len(line) ):
            if(line[t] == ':'):
                nameList.append(line[:t].strip())
            t = t + 1
        t = 0

#---리스트 중복 제거 
    nameList = list(set(nameList))
#----encoding----
    i = 0
    while(i < len(nameList)):
        nameList[i].encode('utf-8')
        i = i + 1

    i = 0
    j = 0
    while(i < len(nameList)):
        j = i + 1
        while(j < len(nameList)):
            select_charac = ("SELECT id FROM user_charactors WHERE name = '%s' and movie_id = %s" % (nameList[i],a))
            select_charac2 = ("SELECT id FROM user_charactors WHERE name = '%s' and movie_id = %s" % (nameList[j],a))
            cursor.execute(select_charac)
            name1 = cursor.fetchall()
            cursor.execute(select_charac2)
            name2 = cursor.fetchall()
            if(len(name1) == 0 or len(name2) == 0):
                j = j + 1
                continue
            charac1 = str(name1[0][0])
            charac2 = str(name2[0][0])

            print "----a : %s , b : %s----" %(charac1,charac2)
            check = ("SELECT id,weight FROM user_relations WHERE charactor1_id = '%s' and charactor2_id = '%s'" % (charac1,charac2))
            cursor.execute(check)
            checkId = cursor.fetchall()
            #---이미 추가 되었으면 update, 비어있으면 insert
            if(len(checkId) == 0):
                data = (charac1,charac2,1)
                add_scenes = ("INSERT INTO user_relations(charactor1_id,charactor2_id,weight) VALUES(%s,%s,%s)")
                cursor.execute(add_scenes,data)
            else:
                weightPlus = checkId[0][1] + 1
                update_relation = ("UPDATE user_relations set weight = %s WHERE id = %s" % (weightPlus,checkId[0][0]))
                cursor.execute(update_relation)
                weightPlus = 0
            j = j + 1
        i = i + 1
    scene = scene + 1
    

cnx.commit()
cursor.close()
cnx.close()
print"*********insert into relation_scenes table **************"
cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
#-----------bring scenes top id -----------------
print "------a = ",a,"------"
scene2 = 0
print "--len(values) : %d" % len(values)
while(scene2 < len(values)):
    print "\n-----scene %s : " % scene2
    i=0
    startPoint = 0
    lineList2 = []
    while( i < len(values[scene2]) ):
        startPoint += 1
        if(values[scene2][i] == '\n'):
            lineList2.append(values[scene2][(i-startPoint)+1:i])
            startPoint = 0
        i = i + 1
    t=0
    nameList2 = []
#----한 씬에 있는 줄 개수 만큼 돔 
    for line in lineList2:
#---한 줄에 있는 문자열 개수 만큼 돔
        while( t<len(line) ):
            if(line[t] == ':'):
                nameList2.append(line[:t].strip())
            t = t + 1
        t = 0

#---리스트 중복 제거 
    nameList2 = list(set(nameList2))
#----encoding----
    i = 0
    while(i < len(nameList2)):
        nameList2[i].encode('utf-8')
        i = i + 1

    i = 0
    j = 0
    while(i < len(nameList2)):
        j = i + 1
        while(j < len(nameList2)):
            select_charac = ("SELECT id FROM user_charactors WHERE name = '%s' and movie_id = %s" % (nameList2[i],a))
            select_charac2 = ("SELECT id FROM user_charactors WHERE name = '%s' and movie_id = %s" % (nameList2[j],a))

            cursor.execute(select_charac)
            name3 = cursor.fetchall()
            cursor.execute(select_charac2)
            name4 = cursor.fetchall()
            
            if(len(name3) == 0 or len(name4) == 0):
                j = j + 1
                continue
            charac1 = str(name3[0][0])
            charac2 = str(name4[0][0])
            
            select_relation_id = ("SELECT id FROM user_relations WHERE charactor1_id = '%s' and charactor2_id = '%s'" % (charac1,charac2))
            cursor.execute(select_relation_id)
            relationId = cursor.fetchall()
            relationIdStr = str(relationId[0][0])

            print "====relationIdStr : %s ======" % relationIdStr
            add_relationScene = ("INSERT INTO user_relation_scenes(relation_id,scene_id) VALUES('%s',%s)" % (relationIdStr,maxIdInt + scene2))
            cursor.execute(add_relationScene)
    
            j = j + 1
        i = i + 1
    scene2 = scene2 + 1
cnx.commit()
cursor.close()
cnx.close()

print"*********insert into insertCharactor_Scenes table **************"

cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
print "--------a = ", a , "--------"



select_allScenes_query = ("SELECT id FROM user_scenes WHERE movie_id = %s" % a)
cursor.execute(select_allScenes_query)
select_allScenes = cursor.fetchall()

print select_allScenes  # 두번째 신 넘버 프린트해봄

select_id = ("SELECT id FROM user_scenes WHERE movie_id = %s" % (a))
cursor.execute(select_id)
maxId = cursor.fetchall()
maxIdInt = int(maxId[0][0])
print "------",maxIdInt,"------"


f=open(moviePath,'r')
s = f.read()
len_s = len(s)
f.close()

i=0
values = []
new_s = ''
scene_number = []
# --------  씬 별로 자르기  ---------
# values 리스트에는 영화 대본이 씬별로 들어가있다.
while(i<len_s):
    flag = 0
    if (s[i] == '#'):
        j = i + 1;
        while(j<len_s):
            if(s[j] == '#'):
                new_s = s[i:j]
                s=s[j:]
                values.append(new_s)
                flag = 1;
                break
            j = j+1
    i = i+1    
    if(flag == 1): 
        i=0
        len_s = len(s)

values.append(s)

#print values[49]  #첫번째 씬 내용 출력해봄

# - - - - - - - 씬 별로 자르기 END ------------

scenesCount_query = ("SELECT COUNT(id) FROM user_scenes WHERE movie_id = %s" % a)
cursor.execute(scenesCount_query)
scenesCount = cursor.fetchall()  #영화 아이디에 대한 씬의 개수 추출


#첫번째 영화일때만 밑에 문장이 실행안되게 


if(a == 1):
    tt =0
else:
    scenesCountBefore_query = ("SELECT MAX(id) FROM user_scenes WHERE movie_id = %s" % (a - 1))  ##여기만 바로 이전 영화!!!
    cursor.execute(scenesCountBefore_query)
    scenesCountBefore = cursor.fetchall()
    tt = scenesCountBefore[0][0]
#-----각 씬마다 등장인물 뽑움-------
i = 1
print 'scount',scenesCount[0][0]

print "~!~!~! tt ~!~! : ",tt
while( i < scenesCount[0][0] ):  #한 영화의 전체 씬 개수만큼 돌림.
    print "====Scene : %d ========" % i
    ii=0
    startPoint = 0
    lineList = [] #한 씬 내용을 한줄 씩 리스트
    #print i,'len',values[select_allScenes[i-1][0]]
    
    while( ii < len(values[select_allScenes[i-1][0]-tt]) ):
        startPoint += 1
        if(values[select_allScenes[i-1][0]-tt][ii] == '\n'):
            lineList.append(values[select_allScenes[i-1][0]-tt][(ii-startPoint)+1:ii])
            
            startPoint = 0
        ii = ii + 1
    t=0

    nameList = []  # 한 씬에 등장한 배우들의 이름 리스트

    #----한 씬에 있는 줄 개수 만큼 돔 
    for line in lineList:
    #---한 줄에 있는 문자열 개수 만큼 돔
        while( t<len(line) ):
            if(line[t] == ':'):
                nameList.append(line [:t].strip())  #이름을 추출해냄
            t = t + 1

        t = 0
    #---리스트 중복 제거
    nameList = list(set(nameList))
    
    #-----각 씬마다 등장인물 뽑움 END-------

    #-------- 캐릭터 테이블과 신 테이블 동기화시켜서 캐릭_씬테이블에 삽입.------
    k=0
    while(k<len(nameList)):
        charactors_tableName = ("SELECT id FROM  user_charactors WHERE name='%s' and movie_id= %s" % (nameList[k],a) )
        cursor.execute(charactors_tableName)
        charactors_id_var = cursor.fetchall()
        if(len(charactors_id_var) == 0): #3번 이하등장인물들은 버림.
            k=k+1
            continue
        
        data = (charactors_id_var[0][0] , i+maxIdInt-1)  #캐릭터id, 씬 id 
        add_charactor_scenes = ("INSERT INTO user_charactor_scenes(charactor_id,scene_id) VALUES(%s,%s)")
        cursor.execute(add_charactor_scenes,data)
        k=k+1
    i=i+1
#-------- 캐릭터 테이블과 신 테이블 동기화시켜서 캐릭_씬테이블에 삽입. END------


#----------close----------------
cnx.commit()
cursor.close()
cnx.close()
print ("hoho")
#------------/test----------------------------
