//
//  SubAdvancedViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class SubAdvancedViewController: BaseClassViewController {
    
     @IBOutlet weak var navigaion_collection_view:UICollectionView!
    
    @IBOutlet weak var total_collection_view:UICollectionView!
    
    var selected_index = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupCollectionView(collectionView:total_collection_view)
        
        let selectedIndexPath = NSIndexPath(item: 0, section: 0)
        navigaion_collection_view.selectItem(at: selectedIndexPath as IndexPath, animated: true, scrollPosition:.init(rawValue: 0))
        
        
        total_collection_view.selectItem(at: selectedIndexPath as IndexPath, animated: true, scrollPosition:.init(rawValue: 0))
        
        setupCollectionView(collectionView:total_collection_view)
        
        total_collection_view.isScrollEnabled = false

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        self.navigationController?.navigationBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
    }

    func setupCollectionView(collectionView:UICollectionView) {
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            // flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
            
        }
        
        collectionView.isPagingEnabled = true
    }
    
    func scrollToMenuIndex(menuIndex: Int) {
        let indexPath = NSIndexPath(item: 0, section: menuIndex)
        
        total_collection_view.scrollToItem(at: indexPath as IndexPath, at: .init(rawValue: 0), animated: true)
        
        
    }
 
    
}

extension SubAdvancedViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == navigaion_collection_view{
            return 1
        }else{
            return 3
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == navigaion_collection_view{
            return 3
        }else{
            return 1
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == navigaion_collection_view{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NavigationSubAdvancedCollectionViewCell", for: indexPath) as? NavigationSubAdvancedCollectionViewCell
            
            if indexPath.row == selected_index{
            
                cell?.lbl_bottom_bar.alpha = 1.0
            }else{
                cell?.lbl_bottom_bar.alpha = 0.0
            }
            
            
            return cell!
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalSubAdvancedCollectionViewCell", for: indexPath) as? TotalSubAdvancedCollectionViewCell
            
            
            
            return cell!
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == navigaion_collection_view{
            let indexpath = NSIndexPath.init(item: selected_index, section: 0)
            selected_index = indexPath.row
            
            navigaion_collection_view.reloadItems(at: [indexPath,indexpath as IndexPath])
           
            scrollToMenuIndex(menuIndex: indexPath.item)
           
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == navigaion_collection_view{
            
            let width = UI_estimateFrameForText(text: "Smoking : FACTS").width
            
            return CGSize(width:(width + 16),height:60)
        }else{
            
            
            var guide = UILayoutGuide()
            if #available(iOS 11.0, *) {
                guide = view.safeAreaLayoutGuide
            } else {
                guide = view.layoutMarginsGuide
                // Fallback on earlier versions
            }
            let height = guide.layoutFrame.size.height
            
            //  hieght_total_collection_view.constant = height
            // let height = total_card_view.frame.height
            print(".......179")
            print(height - 100)
            return CGSize(width:collectionView.frame.width ,height:height - 60)
        }
        
    }
    
}
