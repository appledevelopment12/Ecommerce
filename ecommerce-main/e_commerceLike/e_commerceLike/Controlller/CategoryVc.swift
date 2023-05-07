//
//  ViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryVc: UIViewController{
  
    
    
    var a = ["sin","p1","p2","p3","p4","p5"]
    
    
    @IBOutlet weak var categoryColllectionn2: UICollectionView!
    @IBOutlet weak var categoryColllectionn: UICollectionView!
    
    @IBOutlet weak var categoryColllectionn3: UICollectionView!
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryColllectionn.delegate = self
        categoryColllectionn.dataSource = self
        categoryColllectionn2.delegate = self
        categoryColllectionn2.dataSource = self
        categoryColllectionn3.delegate = self
        categoryColllectionn3.dataSource = self
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
    }


}
extension CategoryVc:UICollectionViewDelegate,UICollectionViewDataSource
{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoryColllectionn
        {
            return DataService.instance.getCategoires().count
        }
        else if(collectionView == self.categoryColllectionn2)
        {
            return Dataservice2.instance2.getCategoires2().count
        }
        else if(collectionView == self.categoryColllectionn3)
        {
            return Dataservice3.instance3.getCategoires3().count
        }
        else
        {
            return a.count
        }
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.categoryColllectionn
        {
            if let cell = categoryColllectionn.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as?
                CategoryCell
            {
                let category_indexpath = DataService.instance.getCategoires()[indexPath.row]
                cell.setupCell(_Category: category_indexpath)
                cell.categoryImage.layer.cornerRadius = 15
                cell.layer.borderWidth = 2
                cell.layer.borderColor = UIColor.white.cgColor
                
                return cell
            }
            
            return CategoryCell()
        }
        else if(collectionView == self.categoryColllectionn2)
        {
            if let cell2 = categoryColllectionn2.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
            {
                let category_indexpath2 = Dataservice2.instance2.getCategoires2()[indexPath.row]
                // cell2.setupCell(_Category: category_indexpath2)
                cell2.setupCell2(_Category2: category_indexpath2)
                cell2.categoryImage2.layer.cornerRadius = 15
                cell2.layer.borderWidth = 2
                cell2.layer.borderColor = UIColor.white.cgColor
                return cell2
            }
            return CategoryCell()
        }
        else if(collectionView == self.categoryColllectionn3)
        {
            if let cell3 = categoryColllectionn3.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
            {
                let category_indexpath3 = Dataservice3.instance3.getCategoires3()[indexPath.row]
                cell3.setupCell3(_Category3: category_indexpath3)
                cell3.categoryImage3.layer.cornerRadius = 15
                cell3.layer.borderWidth = 2
                cell3.layer.borderColor = UIColor.white.cgColor
                return cell3
            }
            return CategoryCell()
        }
        else
        {
            let cell4 = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "mainVc", for: indexPath) as? CategoryCell
            cell4?.mainImage.image = UIImage(named: a[indexPath.row])
            cell4?.layer.cornerRadius = 20
            cell4?.layer.borderColor = UIColor.white.cgColor
            cell4?.layer.borderWidth = 5
            return cell4!
        }
       // return CategoryCell()
    }
            
            
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = DataService.instance.getCategoires()[indexPath.row]
        performSegue(withIdentifier: "TopProductVc", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? productVc
        {
            productVC.Products(_Category: sender as!  Category)
            
        }
    }
}

