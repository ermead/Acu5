//
//  FormulasDictionaries.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/5/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation

class FormulaDictionaries: NSObject {
    
static let sharedController = FormulaDictionaries()
    /*
    Category 1:  Exterior-relieving formulae
    Category 2:  Purgative formulae
    Category 3:  Digestive formulae
    Category 4:  Harmonizing formulae
    Category 5:  Heat-clearing formulae
    Category 6:  Interior-warming formulae
    Category 7:  Tonic formulae
    Category 8:  Astringent formulae
    Category 9:  Calming formulae
    Category 10:  Orifice-opening formulae
    Category 11:  Qi-regulating formulae
    Category 12:  Blood-regulating formulae
    Category 13:  Dampness-dispelling formulae
    Category 14:  Phlegm-resolving formulae
    Category 15:  Wind-eliminating formulae
    Category 16:  Dryness-moistening formulae
    */
    
    let Category_1 : NSDictionary = ["1. Exterior-relieving formulae" : [
        [ "Cinnamon Twig Decoction " , " Gui Zhi Tang" , " 4"] ,
        [ "Ephedra Decoction " , " Ma Huang Tang" , " 3"] ,
        [ "Ginseng Powder to Overcome Pathogenic Influences " , " Ren Shen Bai Du San" , " 6"] ,
        [ "Great Burdock Fruit Decoction for Releasing Muscles " , " Niu Bang Jie Ji Tang" , " /exam/specialties_ext_formulae1"] ,
        [ "Half Ephedra and Half Cassia Twig  Decoction " , " Ma Gui Ge Ban Tang" , " 16"] ,
        [ "Honeysuckle and Forsythia Powder " , " Yin Qiao San" , " 1"] ,
        [ "Notopterygium Decoction to Remove Dampness " , " Qiang Huo Sheng Shi Tang" , " 3"] ,
        [ "Mosla Herb Powder " , " Xiang Ru San" , " 5"] ,
        [ "Mulberry Leaf and Chrysanthemum Decoction " , " Sang Ju Yin" , " 2"] ,
        [ "Regeneration Powder " , " Zeng  Ye Tang" , " 15"] ,
        [ "Sichuan Lovage, Dahurian Angelica and Gypsum Decoction " , " Xiong Zhi Shi Gao Tang" , " 2"] ,
        [ "Stop Coughing Powder " , " Zhi Sou San" , " 3"] ,
        [ "Tea-Blended Sichuan Lovage Powder" , " Chuan Xiong Cha Tiao San" , " 1"] ,
        [ "Three Abnormally Combined Decoction " , " San Ao Tang" , " 1"]] ]
    
    
    let Category_2 : NSDictionary = ["2. Purgative formulae" : [
        [ "Golden Thread Rhizome Decoction for Dispersion " , " Nei Shu Huang Lian Tang" , " /exam/specialties_ext_formulae2"] ,
        [ "Hemp Seed Pill " , " Ma Zi Ren Wan" , " 8"] ,
        [ "Major Purgative Decoction " , " Da Cheng Qi Tang" , " 7"]]]
    
    let Category_3 : NSDictionary = ["3. Digestive formulae" : [
        ["Kudzu Flower Decoction to Relieve Heavy Drinking " , " Ge Hua Jie Cheng Tang ", "7" ] ,
        ["Preserve Harmony Pill " , " Bao He Wan ", "9" ] ,
        ["Strengthen the Spleen Pill " , " Jian Pi Wan ", "/exam/formulae11" ]]]
    
    
    let Category_4 : NSDictionary = ["4. Harmonizing formulae" : [
        [ "Essential Formula for Diarrhea with Pain " , " Tong Xie Yao Fang" , " hmmmm"] ,
        [ "Free and Easy Wanderer Plus " , " Jia Wei Xiao Yao San" , " 5"] ,
        [ "" , " Xiao Yao San" , " 11"] ,
        [ "Minor Bupleurum Decoction " , " Xiao Chia Hu Tang" , " 10"] ]]
    
    let Category_5 : NSDictionary = ["5. Heat-clearing formulae" : [
        [ "Chinese Angelica and Six Yellow  Decoction " , " Dang Gu Liu Huang Tang" , " 3"] ,
        [ "Clear the Nutritive Level Decoction " , " Qing Ying Tang" , " 12"] ,
        [ "Five Flavors Drink to Expel Toxins " , " Wu Wei Xiao Du Yin" , " /exam/specialties_ext_formulae3"] ,
        [ "Gardenia fruit and Fermented Soybean  Decoction " , " Zhi Zi Chi Tang" , " 8"] ,
        [ "Gentian Liver-Purging Decoction " , " Long Dan Xie Gan Tang" , " 13"] ,
        [ "Guide Out the Red Powder " , " Dao  Chi San" , " 9"] ,
        [ "Indigo and Clam Shell Powder " , " Dai Ha San" , " 6"] ,
        [ "Peony Decoction " , " Shao Yao Tang" , " /health/uc_popup3"] ,
        [ "Pulsatilla Root Decoction " , " Bai Tou Weng Tong" , " /health/uc_popup1"] ,
        [ "Purging Lung Powder " , " Xie Bai San" , " 5"] ,
        [ "Rehmannia Root &amp; Dwarf  Lily-turf Tuber Drink " , " Shang Di Mai Dong Yin" , " 11"] ,
        [ "Wang's Clearing Summer Heat and  Replenishing Qi Decoction " , " Wang Shi Qing Shu Yi Qi Tang" , " 1"] ,
        [ "White Tiger Decoction " , " Bai Hu Tang" , " 2"] ,
        [ "Jade Woman Decoction " , " Yu Nu Jian" , " 1"] ,
        [ "Clear Liver and Regulate Menstruation Decoction " , " Qing Gan Yin Jing Tang" , " 2"] ,
        [ "Clear Stomach Powder " , " Qing Wei San" , " 4"] ,
        [ "Sweet Dew Drink " , " Gan Lu Yin" , " 5"] ,
        [ "Purge Epigastrium Decoction " , " Xie Xin Tang" , " 7"] ,
        [ "Rhinoceros Horn Rehmannia Decoction " , " Xi Jiao Di Huang Tang" , " 15"] ,
        [ "Clear Heat and Consolidate Menstruation Decoction " , " Qing Re Gu Jing Tang" , " 18"]]]
    
    let Category_6 : NSDictionary = ["6. Interior-warming formulae" : [
        ["Aconite Pill for Regulating the Middle" , "  Fu Zi Li Zhong Wan ", "2" ] ,
        ["Decoction for Harmonizing Yang " , " Yang He Tang ", "/exam/specialties_ext_formulae4" ] ,
        ["Regulate the Middle Pill " , " Li Zhong Wan ", "14" ] ,
        ["Aconiti Decoction " , " Wu Tou Tang ", "2" ] ,
        ["True Warrior Decoction " , " Zhen Wu Tang ", "7" ]]]
    
    let Category_7 : NSDictionary = ["7. Tonic formulae" : [
        ["All-inclusive Great Tonifying Decoction " , " Shi Quan Da Bu Tang ", "4" ] ,
        ["Costus and Amomum with Six Noble Ingredients Pill " , " Xiang Sha Liu Jun Zi Wan  ", "/exam/formulae6" ] ,
        ["Eight-treasure Decoction " , " Ba Zhen Tang ", "/exam/formulae3" ] ,
        ["Four-gentlemen Decoction " , " Si Jun Zi Tang ", "/exam/formulae1" ] ,
        ["Four-substance Decoction " , " Si Wu Tang ", "/exam/formulae2" ] ,
        ["Great Constitution Tonifying Decoction " , " Da Bu Yuan Jian ", "4" ] ,
        ["Great Tonify the Yin Pill " , " Da Bu Yin Wan ", "17" ] ,
        ["Honey Processed Liquorice Root Decoction " , " Zhi Gan Cao Tang ", "6" ] ,
        ["Jade Windscreen Powder " , " Yu Ping Feng San ", "/exam/formulae7" ] ,
        ["Kidney Qi Bolus " , " Shen Qi Wan ", "13" ] ,
        ["Linking Decoction " , " Yi Guan Jian ", "1" ] ,
        ["Powder for Promoting Pus Drainage " , " Tou Nong San ", "/exam/specialties_ext_formulae9" ] ,
        ["Powder of Ginseng, Poria &amp; Atractylodes " , " Shen Ling Bai Shu San ", "../health/uc_popup7" ] ,
        ["Promoting Yin and Yang Decoction " , " Er Xian Tang ", "7" ] ,
        ["Pulse-activating Powder " , " Sheng Mai San ", "4" ] ,
        ["Restore the Left kidney Pill " , " Zuo Gui Wan ", "22" ] ,
        ["Restore the Right kidney Pill " , " You Gui Wan ", "23" ] ,
        ["Restore the Spleen Decoction " , " Gui Pi Tang ", "/exam/formulae5" ] ,
        ["Sacred Healing Decoction " , " Sheng Yu Tang ", "/health/multiple_sclerosis_formulae3" ] ,
        ["Six-gentleman Decoction " , " Liu Jun Zi Tang ", "3" ] ,
        ["Six-ingredient Rehmannia Pill " , " Liu Wei Di Huang Tang ", "/exam/formulae4" ] ,
        ["Smooth Menstruation Decoction " , " Shun Jing Tang ", "3" ] ,
        ["Smooth Qi and Harmonize the Middle Decoction " , " Shun Qi He Zhong Tang ", "5" ] ,
        ["The Five Substances Decoction with Astragalus Root and Cassia twig " , " Huang Qi Gui Zhi Wu Wu Tang ", "5" ] ,
        ["Tonify the Middle &amp; Augment the Qi Decoction " , " Bu Zhong Yi Qi Tang ", "/exam/formulae10" ] ,
        ["Fleeceflower Root Anti-aging Pill " , " Shou Wu Yan Shou Dan ", "31" ] ,
        ["Seven Treasures Hair Beauty Pill " , " Qi Bao Mei Ran Dan ", "30" ]]]
    
    
    let Category_8 : NSDictionary = ["8. Astringent formulae" : [
        ["Consolidating Thoroughfare Vessel Decoction" , "  Gu Chong Tang ", "8" ] ,
        [ "Consolidating Thoroughfare Vessel Decoction" , "  Gu Chong Tang" , " 8"] ,
        [ "Immortal Organ-Nourishing Decoction " , " Zhen Ren Yang Zang Tang" , " /health/uc_popup8"] ,
        [ "Oyster Shell Powder " , " Mu Li San" , " 6"] ,
        [ "Peach Blossom Decoction " , " Tao Hua Tang" , " /health/uc_popup2"] ,
        [ "Vaginal Discharge Decoction " , " Wan Dai Tang" , " 15"]]]
    
    let Category_9 : NSDictionary = ["9. Calming formulae" : [
        [ "Cinnabar Pill to Calm the Spirit " , " Zhu Sha An Shen Wan" , " 16"] ,
        [ "Communicating and Tranquilizing Pill " , " Jiao Tai Wan" , " 4"] ,
        [ "Heaven King Heart-Nourish Pellets " , " Tian Wan Bu Xin Dan" , " /lifestyles/popup18"] ,
        [ "Lily Bulb and Rehmannia Decoction " , " Bai He Di Huang Tang" , " 6"] ,
        [ "Liquorice, Wheat &amp; Jujube Decoction " , " Gan Mai Da Cao Tang" , " /lifestyles/popup17"] ,
        [ "Sedative and Heart Invigorating Pill " , " An Shen Ding Zhi Wan" , " 3"] ,
        [ "Sore Jujube Seed Decoction " , " Suen Zao Ren Tang" , " /lifestyles/popup14"]]]
    
    let Category_10 : NSDictionary = ["10. Orifice-opening formulae" : [
        ["Peaceful Palace Bovine Gall-stone Bolus " , " An Gong Niu Huang Wan ", "17" ]]]
    
    let Category_11 : NSDictionary = ["11. Qi-regulating formulae" : [
        [ "Decoction for Clearing the Liver and Relieving Stagnation " , " Qing Gan Jie Yu Tang" , " /exam/specialties_ext_formulae7"] ,
        [ "Four Herbs Decoction for Clearing Stagnation " , " Si Qi Tang" , " 9"] ,
        [ "Inula &amp; Haematite Decoction " , " Xuan Fu Dai Zhe Tang" , " /exam/formulae8"] ,
        [ "Pinellia and Magnolia Decoction " , " Ban Xia Hou Po Tang" , " 18"] ]]
    
    let Category_12 : NSDictionary = ["12. Blood-regulating formulae" : [
        [ "Decoction for Activating Blood and Relieving Firmness " , " Huo Xue Hua Jian Tang" , " /exam/specialties_ext_formulae8"] ,
        [ "Decoction for Removing Blood Stasis in the Lower Abdomen " , " Shao Fu Zhu Yu Tang" , " /health/uc_popup5"] ,
        [ "Generation and Transformation Decoction " , " Sheng Hua Tang" , " 19"] ,
        [ "Peach Pit and Safflower with  Four-Substance Decoction " , " Tao Hong Si Wu Tang" , " 5"] ,
        [ "Unblock the Orifices and Invigorate the Blood Decoction " , " Tong Qiao Huo Xue Tang" , " 10"] ,
        [ "Remove Stasis in the Blood System Decoction " , " Xue Fu Zhu Yu Tang" , " 16"] ,
        [ "Resolve Stasis and Stop Menorrhagia Decoction " , " Zhu Yu Zhi Beng Tang" , " 19"] ,
        [ "Consolidation and Stop Menorrhagia Decoction " , " San Miao Hong Teng Tang" , " 21"] ,
        [ "Field Thirtle Decoction " , " Xiao Ji Yin Zi" , " 6"] ,
        [ "Ten Charred Herbs Powder " , " Shi Hui San" , " 8"] ,
        [ "Laughing Powder " , " Shi Siao San" , " 9"] ,
        [ "Restrain Blood Decoction " , " Yue Ying Jian" , " 10"] ,
        [ "Garden Burnet Root Powder " , " Di Yu San" , " 11"] ,
        [ "Pogada Tree Flower Powder " , " Huai Hua San" , " 12"] ,
        [ "Yellow Earth Decoction " , " Huang Tu Tang" , " 13"] ,
        [ "Effective and Miraculous Pills for Activating Collaterals " , " Huo Luo Ling Xiao Dan" , " 9"] ,
        [ "Removing Blood Stasis Decoction for Painful Body " , " Shen Tong Zhu Yu Tang" , " 8"] ]]
    
    let Category_13 : NSDictionary = ["13. Dampness-dispelling formulae" : [
        [ "Agastache Powder for Rectifying Healthy Qi " , " Huo Xiang Zheng Qi San" , " 21"] ,
        [ "Calm the Stomach Powder " , " Ping Wei San" , " 20"] ,
        [ "Coix Seed Decoction " , " Yi Yi Ren Tang" , " 11"] ,
        [ "Dispelling Painful Obstruction Decoction " , " Xuan Bi Tang" , " 14"] ,
        [ "Five Ingredients Powder with Poria " , " Wu  Ling San" , " 7"] ,
        [ "Five-God Decoction " , " Wu Shen Tang" , " /exam/specialties_ext_formulae6"] ,
        [ "Four-Wonder Pills " , " Si Miao Wan" , " 13"] ,
        [ "Liquorice, Ginger, Poria and Atractylodes Decoction " , " Gan Jiang Ling Zhu Tang" , " 12"] ,
        [ "Removing Painful Obstruction Decoction " , " Juan Bi Tang" , " 10"] ,
        [ "Rooster Crowing Powder " , " Ji Ming San" , " 1"] ,
        [ "Three Kernels Decoction " , " San  Ren Tang" , " 12"] ,
        [ "Three Wonders Sargentglory Vine-stem Decoction " , " San Miao Hong Teng Tang" , " 20"] ,
        [ "Weiling Decoction " , " Wei Ling Tang" , " /health/uc_popup4"] ,
        [ "Wormwood Decoction " , " Yin  Chen Hao Tang" , " 10"] ]]
    
    let Category_14 : NSDictionary = ["14. Phlegm-resolving formulae" : [
        [ "Citrus &amp; Pinellia Decoction " , " Er Chen Tang" , " /exam/formulae9"] ,
        [ "Clear Lung Heat and Resolve Phlegm  Decoction " , " Qing Jing Hau Tan Tang" , " 4"] ,
        [ "Cleansing Phlegm Decoction " , " Di Tan Tang" , " /health/multiple_sclerosis_formulae1"] ,
        [ "Coptis Decoction to Warm the Gallbladder " , " Huang Lian Wen Dan Tang" , " /lifestyles/popup19"] ,
        [ "Decoction of Nutgrass and Fritillary for Nourishing " , " Xiang Bei Yang Ying Tang" , " /exam/specialties_ext_formulae5"] ,
        [ "Pinellia, Atractylodes and Gastropdia Decoction " , " Ban Xia Bai Shu Tian Ma Tang" , " 6"] ,
        [ "Dispelling Phlegm Decoction " , " Dao Tan Tang" , " 28"] ]]
    
    let Category_15 : NSDictionary = ["15. Wind-eliminating formulae" : [
        [ "Gastrodia and Uncaria Decoction " , " Tian Ma Gou Teng Yin" , " 23"] ,
        [ "Pubescent Angelica and Loranthus Decoction " , " Du Huo Ji Sheng Tang" , " 22"] ,
        [ "Four Substances Disperse Wind Drink " , " Si Wu Xiao Feng Yin" , " 14"] ,
        [ "Calming Liver and Extinguishing Wind Decoction " , " Zhen Gan Xi Feng Tang" , " 27"] ,
        [ "Restoring Facial Distortion Powder " , " Qian Zheng San" , " 29"] ]]
    
    let Category_16 : NSDictionary = ["16. Dryness-moistening formulae" : [
        [ "Apricot Kernel and Perilla Leaf Powder " , " Xing Su San" , " 24"] ,
        [ "Glehnia Root and Dwarf Lily-turf Tuber  Decoction " , " Sha Shen Mai Dong Tang" , " 7"] ,
        [ "Increase the Fluids Decoction " , " Zeng  Ye Tang" , " 14"] ,
        [ "Jade Fluid Decoction " , " Yu Ye Tang" , " 26"] ,
        [ "Lily Bulb Decoction to Preserve the Lung " , " Bai He Gu Jin Tang" , " 25"] ,
        [ "Mulberry and Apricot Decoction " , " Shang Xing Tang" , " 2"] ]]

}