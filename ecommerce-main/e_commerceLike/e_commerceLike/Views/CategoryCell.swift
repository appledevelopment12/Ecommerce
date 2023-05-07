//
//  CategoryCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    @IBOutlet weak var categoryImage2: UIImageView!
    
    @IBOutlet weak var categoryImage3: UIImageView!

    @IBOutlet weak var mainImage: UIImageView!
    
    override func awakeFromNib() {
        SetViewCell()
        setvalueCell2()
    }
    
    func setupCell(_Category:Category)
    {
        categoryImage.image = UIImage(named: _Category.imgName)
        categoryTitle.text = _Category.title
        
    }
    
    func setupCell2(_Category2:Category2)
    {
        categoryImage2.image = UIImage(named: _Category2.imgName2)
    }
    
    func setupCell3(_Category3:Category3)
    {
        categoryImage3.image = UIImage(named: _Category3.imgName3)
    }
    
    func setvalueCell2()
    {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
    func SetViewCell()
    {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
    
}
