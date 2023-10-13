//
//  ProductCell.swift
//  UICollectionView
//
//  Created by Dasha Rahman on 28.07.23.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var nameProduct: UILabel!
    
    @IBOutlet weak var priceProduct: UILabel!
    
    @IBOutlet weak var productImage: UIImageView! // Объявляем слабую ссылку на UIImageView для отображения изображения товара
    
    override func awakeFromNib() {
        super.awakeFromNib() // Вызываем метод родительского класса для инициализации ячейки после загрузки из Interface Builder
    }
    
    override func prepareForReuse() {
        super.prepareForReuse() // Вызываем метод родительского класса для подготовки ячейки к повторному использованию
        self.productImage.image = nil // Очищаем изображение ячейки перед повторным использованием, чтобы избежать мигания старого изображения
    }
    
    func setupCell(product:Product) {
        self.productImage.image = product.image // Заполняем ячейку данными товара, передаваемыми в метод
        self.nameProduct.text = product.name
        self.priceProduct.text = "\(product.price)"
    }
    
}
