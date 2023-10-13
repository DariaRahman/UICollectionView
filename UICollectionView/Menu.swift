//
//  Menu.swift
//  UICollectionView
//
//  Created by Dasha Rahman on 28.07.23.
//

import Foundation
import UIKit

struct Group {
    var groups:[Group]?
    var name:String
    var products:[Product]?
    var image:UIImage
}
struct Product {
    var name:String
    var price:Float
    var image:UIImage
}

class Menu {
    
    var groups = [Group]()
    
    init() {
        setup()
    }
    
    func setup(){
        
        //Пиццы
        let p1 = Product(name: "Пицца Жюльен", price: 20.99, image: UIImage(named: "Жюльен 25")!)
        let p2 = Product(name: "Пицца от шефа", price: 22.90, image: UIImage(named: "От шефа 25")!)
        let p3 = Product(name: "Бургер-пицца", price: 18.99, image: UIImage(named: "Бургер 25")!)
        
        let p4 = Product(name: "Пицца Жюльен", price: 28.99, image: UIImage(named: "Жюльен 30")!)
        let p5 = Product(name: "Пицца от шефа", price: 30.99, image: UIImage(named: "От шефа 30")!)
        let p6 = Product(name: "Бургер-пицца", price: 25.99, image: UIImage(named: "Бургер 30")!)
        
        let p7 = Product(name: "Пицца Жюльен", price: 33.99, image: UIImage(named: "Жюльен 35")!)
        let p8 = Product(name: "Пицца от шефа", price: 34.99, image: UIImage(named: "От шефа 35")!)
        let p9 = Product(name: "Бургер-пицца", price: 30.99, image: UIImage(named: "Бургер 35")!)
        
        let pizzaGroupIn1 = Group(groups: nil, name: "Пицца 25см", products: [p1,p2,p3], image: UIImage(named: "Заставка пицца")!)
        let pizzaGroupIn2 = Group(groups: nil, name: "Пицца 30см", products: [p4,p5,p6], image: UIImage(named: "Заставка пицца")!)
        let pizzaGroupIn3 = Group(groups: nil, name: "Пицца 35см", products: [p7,p8,p9], image: UIImage(named: "Заставка пицца")!)
        
        
        let pizzaGroup = Group(groups: [pizzaGroupIn1,pizzaGroupIn2,pizzaGroupIn3], name: "Пицца", products: nil, image: UIImage(named: "Заставка пицца")!)
        
        //Десерты
        let d1 = Product(name: "Мороженое пломбир на сливках", price: 4.29, image: UIImage(named: "Пломбир")!)
        let d2 = Product(name: "Мороженое клубника-смородина", price: 4.46, image: UIImage(named: "Клубника-смородина")!)
        let d3 = Product(name: "Мороженое карамель-арахис", price: 4.46, image: UIImage(named: "Карамель-арахис")!)
        
        let d4 = Product(name: "Слоеные палочки манго-ананас", price: 8.99, image: UIImage(named: "Манго-ананас")!)
        let d5 = Product(name: "Слоеные палочки с брусникой", price: 8.99, image: UIImage(named: "Брусника")!)
        let d6 = Product(name: "Слоеные палочки с ананасами", price: 8.99, image: UIImage(named: "Ананас-брусника")!)
        
        let d7 = Product(name: "Графские Развалины", price: 7.59, image: UIImage(named: "Развалины")!)
        let d8 = Product(name: "Чизкейк Нью-Йорк", price: 6.99, image: UIImage(named: "Чизкейк")!)
        let d9 = Product(name: "Красный бархат", price: 6.99, image: UIImage(named: "Бархат")!)
        
        let desertsGroupIn1 = Group(groups: nil, name: "Мороженое", products: [d1,d2,d3], image: UIImage(named: "Заставка десерты")!)
        let desertsGroupIn2 = Group(groups: nil, name: "Слоеные палочки", products: [d4,d5,d6], image: UIImage(named: "Заставка десерты")!)
        let desertsGroupIn3 = Group(groups: nil, name: "Торты", products: [d7,d8,d9], image: UIImage(named: "Заставка десерты")!)
        
        
        
        let desertsGroup = Group(groups: [desertsGroupIn1,desertsGroupIn2,desertsGroupIn3], name: "Десерты", products: nil, image: UIImage(named: "Заставка десерты")!)
       
        //Закуски
        let s1 = Product(name: "Паста Карбонара", price: 13.99, image: UIImage(named: "Карбонара")!)
        let s2 = Product(name: "Паста Мясная", price: 13.99, image: UIImage(named: "Мясная")!)
        let s3 = Product(name: "Паста Песто", price: 13.99, image: UIImage(named: "Песто")!)
        
        let s4 = Product(name: "Сэндвич ветчина и сыр", price: 9.99, image: UIImage(named: "Ветчина и сыр")!)
        let s5 = Product(name: "Сэндвич чоризо барбекю", price: 9.99, image: UIImage(named: "Чоризо барбекю")!)
        
        let s6 = Product(name: "Греческий салат с соусом бальзамик", price: 8.49, image: UIImage(named: "Греческий")!)
        let s7 = Product(name: "Салат Цезарь", price: 9.99, image: UIImage(named: "Цезарь")!)
        
        let snacksGroupIn1 = Group(groups: nil, name: "Паста", products: [s1,s2,s3], image: UIImage(named: "Заставка закуски")!)
        let snacksGroupIn2 = Group(groups: nil, name: "Сэндвичи", products: [s4,s5], image: UIImage(named: "Заставка закуски")!)
        let snacksGroupIn3 = Group(groups: nil, name: "Салаты", products: [s6,s7], image: UIImage(named: "Заставка закуски")!)
        
        
        let snacksGroup = Group(groups: [snacksGroupIn1,snacksGroupIn2,snacksGroupIn3], name: "Закуски", products: nil, image: UIImage(named: "Заставка закуски")!)
        //
        //Напитки
        let dr1 = Product(name: "Сок Я Апельсин", price: 4.15, image: UIImage(named: "Апельсин")!)
        let dr2 = Product(name: "Сок Я Вишня", price: 4.15, image: UIImage(named: "Вишня")!)
        let dr3 = Product(name: "Сок Я Яблоко", price: 4.15, image: UIImage(named: "Яблоко")!)
        
        let dr4 = Product(name: "Кофе Американо", price: 4.79, image: UIImage(named: "Американо")!)
        let dr5 = Product(name: "Кофе Капучино", price: 5.0, image: UIImage(named: "Капучино")!)
        let dr6 = Product(name: "Кофе Латте", price: 5.0, image: UIImage(named: "Латте")!)
        
        let dr7 = Product(name: "Морс Клюква", price: 3.20, image: UIImage(named: "Клюква")!)
        let dr8 = Product(name: "Морс Черная смородина", price: 3.47, image: UIImage(named: "Смородина")!)
        let dr9 = Product(name: "Морс Вишня", price: 3.38, image: UIImage(named: "Морс вишня")!)
        
        let drinksGroupIn1 = Group(groups: nil, name: "Сок", products: [dr1,dr2,dr3], image: UIImage(named: "Заставка напитки")!)
        let drinksGroupIn2 = Group(groups: nil, name: "Кофе", products: [dr4,dr5,dr6], image: UIImage(named: "Заставка напитки")!)
        let drinksGroupIn3 = Group(groups: nil, name: "Морс", products: [dr7,dr8,dr9], image: UIImage(named: "Заставка напитки")!)
        
        
        let drinksGroup = Group(groups: [drinksGroupIn1,drinksGroupIn2,drinksGroupIn3], name: "Напитки", products: nil, image: UIImage(named: "Заставка напитки")!)
        
        
        groups.append(pizzaGroup)
        groups.append(desertsGroup)
        groups.append(snacksGroup)
        groups.append(drinksGroup)
        
    }
}

extension String{
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}
