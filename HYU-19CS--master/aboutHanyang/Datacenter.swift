//
//  Model.swift
//  aboutHanyang
//
//  Created by th on 18/04/2019.
//  Copyright © 2019 TaeHyeong97HYU. All rights reserved.
//

import Foundation
import UIKit

struct pos_data{
    var xpos : float_t
    var ypos : float_t
}

struct Content {
    var string_list : Array<String>?
    var image_list : Array<String>?
}


class Admin {
    var name : String
    var phone_number : String?
    var email : String?
    var department : String?
    init(name_ :String) {
        name = name_
        phone_number = nil
        email = nil
        department = nil
    }
}

class Category {
    let type :String
    var list_type : Array<Info>?
    init(type_ : String) {
        type = type_
        list_type = nil
    }
    func addList(oneOfCategory : Info) {
        self.list_type?.append(oneOfCategory)
    }
}

//content 를 Content 배열로 바꾸고 class Content의 엘리먼트를 리스트에서 단일 정보로 변경하자
class Info {
    var category : Category
    var content : Content?
    init(category_ : Category) {
        category = category_
        content = nil
    }
    init(category_ : Category, content_ : Content) {
        category = category_
        content = content_
    }
}

class Building {
    let name : String
    let pos : pos_data
    var place_list : Array<Place>?
    var info : Info
    init(name_ : String, pos_ : pos_data, info_ : Info) {
        name = name_
        pos = pos_
        place_list = nil
        info = info_
    }
    func addPlace(place : Place) {
        self.place_list?.append(place)
    }
}


class Place {
    let id : double_t
    var name : String
    var admin : Admin
    var internal_map : Info
    var info : Info
    var building_matched : Building
    init(id_ : double_t,  name_ : String, admin_ : Admin, map_info : Info, info_ : Info, building_ : Building ){
        id = id_
        name = name_
        admin = admin_
        internal_map = map_info
        info = info_
        building_matched = building_
    }
}

var categoryBuilding = Category(type_: "Builiding")
var categoryPlace = Category(type_: "Place")
let somepos = pos_data(xpos : 0.0, ypos: 0.0)

let img_list : [String] = ["itbt.png"]
var somecontent = Content(string_list: ["info"], image_list: img_list)
let img_list1 : [String] = ["1.png"]
var somecontent1 = Content(string_list: ["info"], image_list: img_list1)
let img_list2 : [String] = ["2.png"]
var somecontent2 = Content(string_list: ["info"], image_list: img_list2)
let img_list3 : [String] = ["3.png"]
var somecontent3 = Content(string_list: ["info"], image_list: img_list3)
let img_list4 : [String] = ["4.png"]
var somecontent4 = Content(string_list: ["info"], image_list: img_list4)
let img_list5 : [String] = ["5.png"]
var somecontent5 = Content(string_list: ["info"], image_list: img_list5)
let img_list6 : [String] = ["6.png"]
var somecontent6 = Content(string_list: ["info"], image_list: img_list6)
let img_list7 : [String] = ["7.png"]
var somecontent7 = Content(string_list: ["info"], image_list: img_list7)
let img_list8 : [String] = ["8.png"]
var somecontent8 = Content(string_list: ["info"], image_list: img_list8)

let simple_info = Info(category_: categoryBuilding, content_ : somecontent)
let simple_info1 = Info(category_: categoryBuilding, content_ : somecontent1)
let simple_info2 = Info(category_: categoryBuilding, content_ : somecontent2)
let simple_info3 = Info(category_: categoryBuilding, content_ : somecontent3)
let simple_info4 = Info(category_: categoryBuilding, content_ : somecontent4)
let simple_info5 = Info(category_: categoryBuilding, content_ : somecontent5)
let simple_info6 = Info(category_: categoryBuilding, content_ : somecontent6)
let simple_info7 = Info(category_: categoryBuilding, content_ : somecontent7)
let simple_info8 = Info(category_: categoryBuilding, content_ : somecontent8)

var building = Building(name_ : "ITBT",pos_ : pos_data(xpos : 0.0, ypos: 0.0), info_ : simple_info)
var building1 = Building(name_ : "제1 공학관",pos_ : pos_data(xpos : 1.0, ypos: 1.0), info_ : simple_info1)
var building2 = Building(name_ : "제2 공학관",pos_ : pos_data(xpos : 2.0, ypos: 2.0), info_ : simple_info2)
var building3 = Building(name_ : "올림픽체육관",pos_ : pos_data(xpos : 3.0, ypos: 3.0), info_ : simple_info3)
var building4 = Building(name_ : "경영대",pos_ : pos_data(xpos : 4.0, ypos: 4.0), info_ : simple_info4)
var building5 = Building(name_ : "I-cafe",pos_ : pos_data(xpos : 5.0, ypos: 5.0), info_ : simple_info5)
var building6 = Building(name_ : "인문대",pos_ : pos_data(xpos : 6.0, ypos: 6.0), info_ : simple_info6)
var building7 = Building(name_ : "사범대",pos_ : pos_data(xpos : 7.0, ypos: 7.0), info_ : simple_info7)
var building8 = Building(name_ : "한양플라자",pos_ : pos_data(xpos : 8.0, ypos: 8.0), info_ : simple_info8)

var Buildings : [Building] = [building, building1, building2, building3, building4, building5, building6, building7, building8]

