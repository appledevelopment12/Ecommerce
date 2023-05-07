//
//  Dataservices.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import Foundation



class DataService
{
    static let instance = DataService()
    private let categories =
    [
        Category(_title: "cat1", _imgName: "c1"),
        Category(_title: "dog2", _imgName: "d2"),
        Category(_title: "cat3", _imgName: "c3"),
        Category(_title: "cat4", _imgName: "c4"),
        Category(_title: "cat5", _imgName: "c5"),
        Category(_title: "cat6", _imgName: "c6"),
        Category(_title: "cat7", _imgName: "c1"),
        Category(_title: "cat8", _imgName: "d1"),
        Category(_title: "cat9", _imgName: "d2"),
        Category(_title: "cat10", _imgName: "d2"),
        Category(_title: "cat11", _imgName: "d3"),
        Category(_title: "cat12", _imgName: "d5"),
        Category(_title: "cat13", _imgName: "d5"),
        Category(_title: "cat14", _imgName: "d6"),
        Category(_title: "cat15", _imgName: "d1"),
        Category(_title: "cat16", _imgName: "c1"),
        Category(_title: "cat17", _imgName: "c3"),
        Category(_title: "cat18", _imgName: "c4"),
    ]
    
    func getCategoires() -> [Category]
    {
        return categories
    }
    
    
    private let cat1 = [
                     
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c1"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c2"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c2"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c3"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c4"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c5"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c3"),
              Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "c1")

                       ]
    
    private let cat2 = [
    
        Product(_productTitle: "T1 Product", _productPrice: "2300", _productImgname: "d1"),
        Product(_productTitle: "T2 Product", _productPrice: "2400", _productImgname: "d2"),
        Product(_productTitle: "T3 Product", _productPrice: "2200", _productImgname: "d3"),
        Product(_productTitle: "T4 Product", _productPrice: "2110", _productImgname: "d3"),
        Product(_productTitle: "T5 Product", _productPrice: "2303", _productImgname: "d5"),
        Product(_productTitle: "T6 Product", _productPrice: "2305", _productImgname: "d6"),
        Product(_productTitle: "T6 Product", _productPrice: "2305", _productImgname: "d2"),
        Product(_productTitle: "T6 Product", _productPrice: "2305", _productImgname: "d3"),


    ]
    
    private let cat3 = [
          Product(_productTitle: "ci product ", _productPrice: "434", _productImgname: "d1"),
          Product(_productTitle: "mi product ", _productPrice: "434", _productImgname: "d3")
    ]
    private let empty = [
                         Product(_productTitle: "nothing", _productPrice: "nothing", _productImgname: "nothing")
    ]
    private let allProducts = [Product]()
    
    func getProducts(Title:String) -> [Product]
    {
        switch Title
        {
        case "cat1":
            return getcat1()
            break
            
        case "dog2":
            return getCat2()
           break
            
        case "cat5":
            return getCat3()
        default:
            return empty
        }
    }
    func getcat1()-> [Product]
    {
        return cat1
    }
    func getCat2()->[Product]
    {
        return cat2
    }
    func getCat3()->[Product]
    {
        return cat3
    }
    func getcat4()->[Product]
    {
        return empty
    }
    
    
}

class Dataservice2
{

        static let instance2 = Dataservice2()
        private let categories2 =
        [
            Category2(_imgName2: "dog1"),
            Category2(_imgName2: "dog2"),
            Category2(_imgName2: "dog3"),
            Category2(_imgName2: "dog4"),
            Category2(_imgName2: "dog3"),
            Category2(_imgName2: "dog2")

            ]
    func getCategoires2() -> [Category2]
    {
        return categories2
    }
    
    
    
    
    
}

class Dataservice3
{
    static let instance3 = Dataservice3()
    private let categories3 =
    [
        Category3(_imgName3: "bike1"),
        Category3(_imgName3: "bike2"),
        Category3(_imgName3: "bike3"),
        Category3(_imgName3: "bike4"),
        Category3(_imgName3: "bike5"),
        Category3(_imgName3: "bike2")

    ]
    func getCategoires3() -> [Category3]
    {
        return categories3
    }
//
//
//    private let bike1 =
//    [
//       Product(_productTitle: "m1 bike", _productPrice: "200", _productImgname: "bike1")
//       Product(_productTitle: "m2 bike", _productPrice: "400", _productImgname: "bik2")
//       Product(_productTitle: "m3 bike", _productPrice: "500", _productImgname: "bike3")
//       Product(_productTitle: "m4 bike", _productPrice: "600", _productImgname: "bike4")
//    ]
}
