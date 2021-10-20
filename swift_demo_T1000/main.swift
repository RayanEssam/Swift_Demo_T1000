

import Foundation



let myVideo1 = Video(1, "trip to dubai", 1, Category.Entertainment)
let myVideo2 = Video(2, "trip to jeddah", 2, Category.Entertainment)
let myVideo3 = Video(3, "trip to cairo", 3, Category.Entertainment)
let myVideo4 = Video(4, "Standup comedy ", 4, Category.Comedy)
let myVideo5 = Video(5, "how to make a soup ", 1, Category.Education)
let myVideo6 = Video(6, "life hacks p.6", 2, Category.Others)


var myPlayList = PlayList("rayan's Trips", true)
var myPlayList2 = PlayList("Random trips", true)

print("the outcome of adding the video with the ID \(myVideo1.id)  is : \(myPlayList.addVideo(myVideo1))")
print("the outcome of adding the video with the ID \(myVideo2.id)  is : \(myPlayList.addVideo(myVideo2))")
print("the outcome of adding the video with the ID \(myVideo3.id)  is : \(myPlayList.addVideo(myVideo3))")
print("the outcome of adding the video with the ID \(myVideo4.id)  is : \(myPlayList.addVideo(myVideo4))")
print("the outcome of adding the video with the ID \(myVideo5.id)  is : \(myPlayList2.addVideo(myVideo5))")
print("the outcome of adding the video with the ID \(myVideo6.id)  is : \(myPlayList2.addVideo(myVideo6))")
print()
print("================================")
print()

print("Play list number 1 : " , myPlayList)
print("Play list number 2 : " , myPlayList2)


print()
print("================================")
print()

print("Play list 1 Before removing the video from the playlist")
print(myPlayList)
print()
print("the outcome of removing the video with the id \(myVideo2.id)  from the playlist is : \(myPlayList.removeVideo(2))")
print()

print("after removing the video from the playlist")
print(myPlayList)


print()
print("================================")
print()


print("the number of videos that of type entertainment : " , myPlayList.countVideos(Category.Entertainment))
let x  = Category.Entertainment

print()
print("=============Creating a channel===================")
print()

var myChannel = Channel("Rayan Broadcasting Company")

print("the outcome of adding new playlist \(myPlayList.name) to the channel  \" \(myChannel.name) \"  is \(myChannel.addPlayList(myPlayList))  ")

print("the outcome of adding new playlist \(myPlayList2.name) to the channel  \" \(myChannel.name) \"  is \(myChannel.addPlayList(myPlayList2))  ")

print()
print("================================")
print()
print(myPlayList)
myChannel.flipSharedStatus(myPlayList)
print(myPlayList)

print()
print("================================")
print()

print()
myChannel.sortPlayList()


print()
let newPlayList = myChannel.getPlayList(Category.Entertainment)
print(newPlayList.videos)
//print("My channel before deleteing a play list : " ,myChannel)
//myChannel.deletePlayList("rayan's Trips")
//print()
//
//print("My channel after deleteing a play list : " ,myChannel)
//print()
