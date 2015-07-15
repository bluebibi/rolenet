#-*- coding: utf-8 -*-
import random
import math
import mysql.connector
import sys
reload(sys)
sys.setdefaultencoding('utf-8')


####DB CONNECT####
cnx=mysql.connector.connect(user='root',password='link#1234',database='9th',host='218.150.181.131',port=3306)
cursor = cnx.cursor()
select = ("SELECT  spectators,name,id,pathlength,clustering,density FROM movies ORDER BY spectators DESC")
cursor.execute(select)
movieTuple = cursor.fetchall()


movieListAtList = []
i=0
while(i<len(movieTuple)):
    movieList = list(movieTuple[i])
    movieListAtList.append(movieList)
    i=i+1
i=0
cnx.commit()
cursor.close()
cnx.close()
#####################


NUM_CLUSTERS = 5
TOTAL_DATA = len(movieTuple)
LOWEST_SAMPLE_POINT = 0 #element 0 of movieListAtList.
HIGHEST_SAMPLE_POINT = 63 #element 3 of movieListAtList.
MID_SAMPLE_POINT = 128
MID2 = 23
MID3 = 80
BIG_NUMBER = math.pow(10, 10)


data = []
centroids = []

class DataPoint:
    def __init__(self,spectators, name,idx,x, y,z):
        self.spectators = spectators
        self.name = name
        self.id = idx
        self.x = x
        self.y = y
        self.z = z
    def set_spectators(self, spectators):
        self.spectators = spectators
    
    def get_spectators(self):
        return self.spectators
    def set_name(self, name):
        self.name = name
    
    def get_name(self):
        return self.name

    def set_id(self, idx):
        self.id = idx
    
    def get_id(self):
        return self.id
    
    def set_x(self, x):
        self.x = x
    
    def get_x(self):
        return self.x
    
    def set_y(self, y):
        self.y = y
    
    def get_y(self):
        return self.y

    def set_z(self, z):
        self.z = z
    
    def get_z(self):
        return self.z
    
    def set_cluster(self, clusterNumber):
        self.clusterNumber = clusterNumber
    
    def get_cluster(self):
        return self.clusterNumber

class Centroid:
    def __init__(self, x, y,z):

        self.x = x
        self.y = y
        self.z = z
    
    def set_x(self, x):
        self.x = x
    
    def get_x(self):
        return self.x
    
    def set_y(self, y):
        self.y = y
    
    def get_y(self):
        return self.y

    def set_z(self, z):
        self.z = z
    
    def get_z(self):
        return self.z

def initialize_centroids():
    # Set the centoid coordinates to match the data points furthest from each other.
    # In this example, (1.0, 1.0) and (5.0, 7.0)
    centroids.append(Centroid(movieListAtList[LOWEST_SAMPLE_POINT][3], movieListAtList[LOWEST_SAMPLE_POINT][4], movieListAtList[LOWEST_SAMPLE_POINT][5]))
    centroids.append(Centroid(movieListAtList[HIGHEST_SAMPLE_POINT][3], movieListAtList[HIGHEST_SAMPLE_POINT][4], movieListAtList[HIGHEST_SAMPLE_POINT][5]))

    centroids.append(Centroid(movieListAtList[MID_SAMPLE_POINT][3], movieListAtList[MID_SAMPLE_POINT][4], movieListAtList[MID_SAMPLE_POINT][5]))
    centroids.append(Centroid(movieListAtList[MID2][3], movieListAtList[MID2][4], movieListAtList[MID2][5]))
    centroids.append(Centroid(movieListAtList[MID3][3], movieListAtList[MID3][4], movieListAtList[MID3][5]))

    return

def initialize_datapoints():
    # DataPoint objects' x and y values are taken from the SAMPLE array.
    # The DataPoints associated with LOWEST_SAMPLE_POINT and HIGHEST_SAMPLE_POINT are initially
    # assigned to the clusters matching the LOWEST_SAMPLE_POINT and HIGHEST_SAMPLE_POINT centroids.
    for i in range(TOTAL_DATA):
        newPoint = DataPoint(movieListAtList[i][0],movieListAtList[i][1], movieListAtList[i][2],movieListAtList[i][3],movieListAtList[i][4],movieListAtList[i][5])

        
        if(i == LOWEST_SAMPLE_POINT):
            newPoint.set_cluster(0)
        elif(i == HIGHEST_SAMPLE_POINT):
            newPoint.set_cluster(1)
        elif(i == MID_SAMPLE_POINT):
            newPoint.set_cluster(2)
        elif(i == MID2):
            newPoint.set_cluster(3)
        elif(i == MID3):
            newPoint.set_cluster(4)
        else:
            newPoint.set_cluster(None)
            
        data.append(newPoint)
       

    
    return

def get_distance(dataPointX, dataPointY, dataPointZ, centroidX, centroidY, centroidZ):
    # Calculate Euclidean distance.
    return math.sqrt(math.pow((centroidY - dataPointY), 2) + math.pow((centroidX - dataPointX), 2) + math.pow((centroidZ - dataPointZ), 2))

def recalculate_centroids():
    totalX = 0
    totalY = 0
    totalZ = 0
    totalInCluster = 0
    
    for j in range(NUM_CLUSTERS):
        for k in range(len(data)):
            if(data[k].get_cluster() == j):
                totalX += data[k].get_x()
                totalY += data[k].get_y()
                totalZ += data[k].get_z()
                totalInCluster += 1
        
        if(totalInCluster > 0):
            centroids[j].set_x(totalX / totalInCluster)
            centroids[j].set_y(totalY / totalInCluster)
            centroids[j].set_z(totalZ / totalInCluster)
    
    return

def update_clusters():
    isStillMoving = 0
    
    for i in range(TOTAL_DATA):
        bestMinimum = BIG_NUMBER
        currentCluster = 0
        
        for j in range(NUM_CLUSTERS):
            distance = get_distance(data[i].get_x(), data[i].get_y(),  data[i].get_z(), centroids[j].get_x(), centroids[j].get_y(), centroids[j].get_z() )
            if(distance < bestMinimum):
                bestMinimum = distance
                currentCluster = j
        
        data[i].set_cluster(currentCluster)
        
        if(data[i].get_cluster() is None or data[i].get_cluster() != currentCluster):
            data[i].set_cluster(currentCluster)
            isStillMoving = 1
    
    return isStillMoving

def perform_kmeans():
    isStillMoving = 1
    
    initialize_centroids()
    
    initialize_datapoints()
    
    while(isStillMoving):
        recalculate_centroids()
        isStillMoving = update_clusters()
    
    return

def print_results():
    for i in range(NUM_CLUSTERS):
        print("Cluster ", i, " includes:")
        for j in range(TOTAL_DATA):
            if(data[j].get_cluster() == i):
                print data[j].get_name().encode('utf-8'), ",", data[j].get_spectators()
        print()    
    
    return

perform_kmeans()
print_results()