//
//  FormulaIngredientDictionaries.swift
//  testFormulaCodeWriter
//
//  Created by Eric Mead on 12/6/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation

class FormulaIngredientDictionaries {
    
    static let sharedInstance = FormulaIngredientDictionaries()
    
    
    enum ThisFormula {
        
        case  GuiZhiTang
        case  MaHuangTang
        case  RenShenBaiDuSan
        case  NiuBangJieJiTang
        case  MaGuiGeBanTang
        case  YinQiaoSan
        case  QiangHuoShengShiTang
        case  XiangRuSan
        case  SangJuYin
        case  ZengYeTang
        case  XiongZhiShiGaoTang
        case  ZhiSouSan
        case  ChuanXiongChaTiaoSan
        case  SanAoTang
        case  NeiShuHuangLianTang
        case  MaZiRenWan
        case  DaChengQiTang
        case  GeHuaJieChengTang
        case  BaoHeWan
        case  JianPiWan
        case  TongXieYaoFang
        case  JiaWeiXiaoYaoSan
        case  DangGuLiuHuangTang
        case  QingYingTang
        case  WuWeiXiaoDuYin
        case  ZhiZiChiTang
        case  LongDanXieGanTang
        case  DaoChiSan
        case  DaiHaSan
        case  ShaoYaoTang
        case  BaiTouWengTong
        case  XieBaiSan
        case  ShangDiMaiDongYin
        case  WangShiQingShuYiQiTang
        case  BaiHuTang
        case  YuNuJian
        case  QingGanYinJingTang
        case  QingWeiSan
        case  GanLuYin
        case  XieXinTang
        case  XiJiaoDiHuangTang
        case  QingReGuJingTang
        case  ShiQuanDaBuTang
        case  XiangShaLiuJunZiWan
        case  BaZhenTang
        case  SiJunZiTang
        case  SiWuTang
        case  DaBuYuanJian
        case  DaBuYinWan
        case  HuoXueHuaJianTang
        case  ShaoFuZhuYuTang
        case  ShengHuaTang
        case  TaoHongSiWuTang
        case  TongQiaoHuoXueTang
        case  HuoXiangZhengQiSan
        case  PingWeiSan
        case  TianMaGouTengYin
        case  DuHuoJiShengTang
        case  SiWuXiaoFengYin
        case  ZhenGanXiFengTang
        case  QianZhengSan
        case  XingSuSan
        case  ShaShenMaiDongTang
        case  YuYeTang
        case  BaiHeGuJinTang
        
    }
    
    var myFormula = ThisFormula.GuiZhiTang
    
    
    func getHerbsInSet(thisFormula: FormulaIngredientDictionaries.ThisFormula) -> NSSet {
        var thisSet: NSSet = []
        
        switch thisFormula {
            
        case .GuiZhiTang: thisSet = populateSet(C1_1)
        case .MaHuangTang: thisSet = populateSet(C1_2)
        case .RenShenBaiDuSan: thisSet = populateSet(C1_3)
        case .NiuBangJieJiTang: thisSet = populateSet(C1_4)
        case .MaGuiGeBanTang: thisSet = populateSet(C1_5)
        case .YinQiaoSan: thisSet = populateSet(C1_6)
        case .QiangHuoShengShiTang: thisSet = populateSet(C1_7)
        case .XiangRuSan: thisSet = populateSet(C1_8)
        case .SangJuYin: thisSet = populateSet(C1_9)
        case .ZengYeTang: thisSet = populateSet(C1_10)
        case .XiongZhiShiGaoTang: thisSet = populateSet(C1_11)
        case .ZhiSouSan: thisSet = populateSet(C1_12)
        case .ChuanXiongChaTiaoSan: thisSet = populateSet(C1_13)
        case .SanAoTang: thisSet = populateSet(C1_14)
            
        case .NeiShuHuangLianTang: thisSet = populateSet(C1_1)
        case .MaZiRenWan: thisSet = populateSet(C1_1)
        case .DaChengQiTang: thisSet = populateSet(C1_1)
            
        case .GeHuaJieChengTang: thisSet = populateSet(C1_1)
        case .BaoHeWan: thisSet = populateSet(C1_1)
        case .JianPiWan: thisSet = populateSet(C1_1)
            
        case .TongXieYaoFang: thisSet = populateSet(C1_1)
        case .JiaWeiXiaoYaoSan: thisSet = populateSet(C1_1)
            
        case .DangGuLiuHuangTang: thisSet = populateSet(C1_1)
        case .QingYingTang: thisSet = populateSet(C1_1)
        case .WuWeiXiaoDuYin: thisSet = populateSet(C1_1)
        case .ZhiZiChiTang: thisSet = populateSet(C1_1)
        case .LongDanXieGanTang: thisSet = populateSet(C1_1)
        case .DaoChiSan: thisSet = populateSet(C1_1)
        case .DaiHaSan: thisSet = populateSet(C1_1)
        case .ShaoYaoTang: thisSet = populateSet(C1_1)
        case .BaiTouWengTong: thisSet = populateSet(C1_1)
        case .XieBaiSan: thisSet = populateSet(C1_1)
        case .ShangDiMaiDongYin: thisSet = populateSet(C1_1)
        case .WangShiQingShuYiQiTang: thisSet = populateSet(C1_1)
        case .BaiHuTang: thisSet = populateSet(C1_1)
        case .YuNuJian: thisSet = populateSet(C1_1)
        case .QingGanYinJingTang: thisSet = populateSet(C1_1)
        case .QingWeiSan: thisSet = populateSet(C1_1)
        case .GanLuYin: thisSet = populateSet(C1_1)
        case .XieXinTang: thisSet = populateSet(C1_1)
        case .XiJiaoDiHuangTang: thisSet = populateSet(C1_1)
        case .QingReGuJingTang: thisSet = populateSet(C1_1)
            
        case .ShiQuanDaBuTang: thisSet = populateSet(C1_1)
        case .XiangShaLiuJunZiWan: thisSet = populateSet(C1_1)
        case .BaZhenTang: thisSet = populateSet(C1_1)
        case .SiJunZiTang: thisSet = populateSet(C1_1)
        case .SiWuTang: thisSet = populateSet(C1_1)
        case .DaBuYuanJian: thisSet = populateSet(C1_1)
        case .DaBuYinWan: thisSet = populateSet(C1_1)
            
        case .HuoXueHuaJianTang: thisSet = populateSet(C1_1)
        case .ShaoFuZhuYuTang: thisSet = populateSet(C1_1)
        case .ShengHuaTang: thisSet = populateSet(C1_1)
        case .TaoHongSiWuTang: thisSet = populateSet(C1_1)
        case .TongQiaoHuoXueTang: thisSet = populateSet(C1_1)
            
        case .HuoXiangZhengQiSan: thisSet = populateSet(C1_1)
        case .PingWeiSan: thisSet = populateSet(C1_1)
        case .TianMaGouTengYin: thisSet = populateSet(C1_1)
        case .DuHuoJiShengTang: thisSet = populateSet(C1_1)
        case .SiWuXiaoFengYin: thisSet = populateSet(C1_1)
        case .ZhenGanXiFengTang: thisSet = populateSet(C1_1)
        case .QianZhengSan: thisSet = populateSet(C1_1)
            
        case .XingSuSan: thisSet = populateSet(C1_1)
        case .ShaShenMaiDongTang: thisSet = populateSet(C1_1)
        case .ZengYeTang: thisSet = populateSet(C1_1)
        case .YuYeTang: thisSet = populateSet(C1_1)
        case .BaiHeGuJinTang: thisSet = populateSet(C1_1)
        }
        
        
        return thisSet  
    }
    
    func populateSet(formulaDict: NSDictionary) -> NSSet {
        let thisSet: NSSet = []
        
        /*let key: String = (formulaDict.allKeys).first as! String
        let entries: [AnyObject] = formulaDict[key] as! [AnyObject]
        let englishName = entries.first
        let uses = entries.last
        let count = entries.count
        var arrayOfIngredients: [Herb] = []
        var j = 0
        for var i = 1; i < count - 1; i++ {
            
            //print(entries[i])
            
            let searchTerm = entries[i][2] as! String
            let thisHerb = HerbsController.sharedController.herbs.filter({ $0.completeDetails().lowercaseString.containsString(searchTerm.lowercaseString) }).first
            if thisHerb != nil {
                arrayOfIngredients.append(thisHerb!)
            } else {
                kArrayOfTerms.append(searchTerm as! String)
            }
            
            j++
        }
        
        if arrayOfIngredients.count == j && arrayOfIngredients.count != 0
        {
            thisSet.setByAddingObjectsFromArray(arrayOfIngredients)

           print("Success! \(englishName) has all its ingredients already")
           print("\n")
            
        } else {
            print("\(englishName) needs to add its ingredients to its set")
            print("\n")
        }
        
        //thisSet = arrayOfIngredients
        */
        
        return thisSet
    }
    
        let C1_1 : NSDictionary = [" Gui Zhi Tang" : [
            ["Cinnamon Twig Decoction "],
            ["gui zhi " , "cassia twig", "Ramulus Cinnamomi"],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            ["Default" , "fresh ginger", "Rhizoma Zingiberis Recens"],
            ["Default" , "common jujube fruit", "Fructus Ziziphi Jujubae"],
            ["Default" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            [": Fever, headache, chills, sweating, runny  nose, nausea and a white moist tongue coating indicates that wind and cold evils have attacked a  weakened body. With appropriate modifications, this formula can be used in a  wide range of health conditions such as upper respiratory tract infections, influenza, low fever of unknown  origin, general aching in postpartum women, morning sickness, allergic  rhinitis, rheumatoid arthritis, puffiness or sweating caused by neurovascular  disorders, and many skin problems."]]]
        
        
        
        
        let C1_2 : NSDictionary = [" Ma Huang Tang" : [
            ["Ephedra Decoction "],
            ["ma huang " , "ephedra", "Herba Ephedrae"],
            ["Default" , "cassia twig", "Ramulus Cinnamomi"],
            ["Default" , "bitter apricot kernel", "Semen Armeniacae Amarum"],
            ["Default" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            [": Chills, mild fever, without sweating,  headache, generalized aching, wheezing caused by cold evils attacking the  superficial portion of the body. With appropriate modifications, this formula  can be used for the common  cold, influenza, acute bronchitis and asthma. "]]]
        
        
        
        
        let C1_3 : NSDictionary = [" Ren Shen Bai Du San" : [
            ["Ginseng Powder to Overcome Pathogenic Influences "],
            ["chai    hu " , "bupleurum    root", "Radix Bupleuri"],
            ["Default" , "hogfennel    root", "Radix Peucedani"],
            ["Default" , "sichuan lovage", "Rhizoma Ligustici Chuanxiong"],
            ["Default" , "bitter    orange peel", "Fructus Aurantii"],
            ["Default" , "notopterygium    root ", "Rhizoma seu Radix Notopterygii"],
            ["Default" , "double-teeth    pubescent angelica root ", "Radix Angelicae Pubescentis "],
            ["Default" , "poria", "Poria"],
            ["Default" , "balloonflower    root", "Radix Platycodi"],
            ["Default" , "ginseng", "Radix Ginseng"],
            ["Default" , "liquorice    root", "Radix Glycyrrhizae"],
            [": high fever, severe chills, headache, neck stiffness,  limb soreness, chest fullness, nasal congestion, a productive cough, and the  tongue coated with white greasy fur. With appropriate modifications, this  formula can be used to treat upper respiratory tract infections, influenza, bronchitis, contact  dermatitis, wheals, skin itchiness, early-stage measles, early-stage dysentery; its  also promotes surgical recovery. "]]]
        
        
        
        
        let C1_4 : NSDictionary = [" Niu Bang Jie Ji Tang" : [
            ["Great Burdock Fruit Decoction for Releasing Muscles "],
            ["Default" , " niu bang zi ", " Great burdock fruit&nbsp; "],
            ["Default" , " bo he ", " Pepper mint "],
            ["Default" , " jing jie ", " Fine-leaf schizonepeta herb "],
            ["Default" , " lian qiao ", " Weeping forsythia capsule "],
            ["Default" , " zhi zi ", " Gardenia fruit "],
            ["Default" , " dan pi ", " Peony tree root bark "],
            ["Default" , " shi hu ", " Dendrobium "],
            ["Default" , " yuan shen ", " Figwort root "],
            ["Default" , " xia ku cao ", " Selfheal fruit spike "],
            [": For early- stage infections in the head and neck regions or gum infections that appear as lumps with obvious redness, swelling, heat and pain. "]]]
        
        
        
        
        let C1_5 : NSDictionary = [" Ma Gui Ge Ban Tang" : [
            ["Half Ephedra and Half Cassia Twig  Decoction "]]]
        
        
        
        
        let C1_6 : NSDictionary = [" Yin Qiao San" : [
            ["Honeysuckle and Forsythia Powder "],
            ["lian qiao " , "weeping forsythia capsule", "Fructus Forsythiae"],
            ["jin yih hua" , "honeysuckle flower", "Flos Lonicerae"],
            ["jie geng" , "balloonflower root", "Radix Platycodi"],
            ["bo he" , "pepper mint", "Herba Menthae"],
            ["zhu ye" , "bamboo leaf ", "Herba Lophatheri"],
            ["gan cao" , "liquorice root", "Radix Glycyrrhizae"],
            ["jing jie sui" , "schizonepeta spica", "Spica Schizonepetae"],
            ["dan dou chi" , "fermented soybean", "Semen Sojae Preparata"],
            ["niu bang zi" , "great burdock fruit&nbsp;", "&nbsp;Fructus Arctii"],
            ["xian lu gen" , "fresh reed rhizome", "Rhizoma Phragmitis Recens"],
            [": fever, slight or no chills, headache, thirst,  cough, throat soreness and a red-tipped tongue, which are the typical early  signs in some acute febrile diseases. With appropriate modifications, this  formula is commonly used in the early stages of acute infectious diseases such  as upper respiratory tract infections, flu, acute bronchitis, pneumonia,  measles and mumps. "]]]
        
        
        
        
        let C1_7 : NSDictionary = [" Qiang Huo Sheng Shi Tang" : [
            ["Notopterygium Decoction to Remove Dampness "]]]
        
        
        
        
        let C1_8 : NSDictionary = [" Xiang Ru San" : [
            ["Mosla Herb Powder "],
            ["xiang ru " , "mosla herb", "Herba Elsholtziae seu Moslae"],
            ["Default" , "hyacinth bean", "Semen Lablab Album"],
            ["Default" , "Magnolia bark", "Cortex Magnoliae Officinalis "],
            [": aversion to cold, mild fever, headache, heavy  sensation in the head, tired body, chest oppression, nausea, or abdominal pain with  vomiting and diarrhea. The tongue is coated with white and greasy fur. These symptoms  usually appear in the summer due to wind and cold evils attacking the exterior while dampness  accumulates internally.  The formula is usually used in conditions like the common cold during summer season, acute  gastroenteritis, bacillary dysentery and cholera. "]]]
        
        
        
        
        let C1_9 : NSDictionary = [" Sang Ju Yin" : [
            ["Mulberry Leaf and Chrysanthemum Decoction "],
            ["sang yu " , "mulberry leaf", "Folium Mori Albae"],
            ["Default" , "chrysanthemum", "Flos Chrysanthemi"],
            ["Default" , "bitter apricot kernel", "Semen Armeniacae Amarum"],
            ["Default" , "weeping forsythia capsule", "Fructus Forsythiae"],
            ["Default" , "pepper mint", "Herba Ephedrae"],
            ["Default" , "balloonflower root", "Radix Platycodi"],
            ["Default" , "liquorice root", "Radix Glycyrrhizae"],
            ["Default" , "reed rhizome", "Rhizoma Phragmitis"],
            [": cough accompanied with a slight fever and thirst that is often seen at the beginning of acute  febrile diseases. With appropriate modifications, this formula can be used for  upper respiratory tract infections, influenza, early-stage acute bronchitis, acute tonsillitis and acute  conjunctivitis."]]]
        
        
        
        
        let C1_10 : NSDictionary = [" Zeng  Ye Tang" : [
            ["Regeneration Powder "]]]
        
        
        
        
        let C1_11 : NSDictionary = [" Xiong Zhi Shi Gao Tang" : [
            ["Sichuan Lovage, Dahurian Angelica and Gypsum Decoction "]]]
        
        
        
        
        let C1_12 : NSDictionary = [" Zhi Sou San" : [
            ["Stop Coughing Powder "]]]
        
        
        
        
        let C1_13 : NSDictionary = [" Chuan Xiong Cha Tiao San" : [
            ["Tea-Blended Sichuan Lovage Powder"]]]
        
        
        
        
        let C1_14 : NSDictionary = [" San Ao Tang" : [
            ["Three Abnormally Combined Decoction "]]]
        
        //////////////////////Category 2
        
        
        let C2_1 : NSDictionary = [" Nei Shu Huang Lian Tang" : [
            ["Golden Thread Rhizome Decoction for Dispersion "],
            ["Default" , " mu xiang ", " Costus root "],
            ["Default" , " huang lian ", " Golden thread rhizome "],
            ["Default" , " zhi zi ", " Gardenia fruit "],
            ["Default" , " dang gui ", " Angelica root "],
            ["Default" , " huang qin ", " Baical skullcap root&nbsp; "],
            ["Default" , " bai shao ", " White peony root "],
            ["Default" , " bo he ", " Pepper mint "],
            ["Default" , " bing lang ", " Areca seed "],
            ["Default" , " jie geng ", " Balloonflower root "],
            ["Default" , " lian qiao ", " Weeping forsythia capsule "],
            ["Default" , " gan cao ", " Liquorice root "],
            ["Default" , " da huang ", " Chinese rhubarb "],
            [""]]]
        
        
        
        
        let C2_2 : NSDictionary = [" Ma Zi Ren Wan" : [
            ["Hemp Seed Pill "],
            ["Default" , "hemp seed", "semen cannabis"],
            ["Default" , "bitter apricot kernel", "Semen Armeniacae Amarum"],
            ["Default" , "immature bitter orange ", "Fructus Aurantii Immaturus"],
            ["Default" , "Chinese rhubarb", "Radix et Rhizoma Rhei"],
            ["Default" , "Magnolia bark", "Cortex Magnoliae Officinalis "],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            [": constipation, dried stools and frequent urination. Modern TCM usually  uses this for  constipation in elderly or feeble persons with intestinal dryness as well as chronic constipation. "]]]
        
        
        
        
        let C2_3 : NSDictionary = [" Da Cheng Qi Tang" : [
            ["Major Purgative Decoction "],
            ["da    huang " , "Chinese    rhubarb", "Radix    et Rhizoma Rhei"],
            ["Default" , "Magnolia    bark", "Cortex    Magnoliae Officinalis "],
            ["Default" , "immature    bitter orange ", "Fructus    Aurantii Immaturus"],
            ["Default" , "mirabilite", "Natrii    Sulfas"],
            [": Severe constipation, flatulence, abdominal distention, focal pressure can further  aggravate abdominal discomfort, dry yellow tongue with prickles. In severe  cases, there may be remittent fever, mental confusion, profuse sweating in the limbs.  With appropriate modifications, this formula can be used in simple or early  stage abdominal conditions like appendicitis, pancreatitis, gallbladder stones,  intestinal obstruction, post surgical constipation and distention. "]]]
        
        //////////////////////Category 3
        
        
        let C3_1 : NSDictionary = [" Ge Hua Jie Cheng Tang" : [
            ["Kudzu Flower Decoction to Relieve Heavy Drinking "]]]
        
        
        let C3_2 : NSDictionary = [" Bao He Wan" : [
            ["Preserve Harmony Pill "],
            ["Default" , "hawthorn fruit", "Fructus Cartaegi"],
            ["Default" , "medicated leaven ", "Massa fermentata    medicinalis"],
            ["Default" , "pinellia tuber", "Rhizoma Pinelliae"],
            ["Default" , "poria", "Poria"],
            ["Default" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "weeping Forsythia capsule", "Fructus Forsythiae"],
            ["Default" , "radish seed", "Semen Raphani"],
            [": Food distention that is manifested by chest stuffiness,  fullness and distending pain in the gastric and abdominal regions, belching which has  a foul smell, acid  regurgitation, anorexia, nausea/vomiting or diarrhea. The tongue coating is thick and greasy. This  formula relieves food  stagnation and preserves the proper functioning of the digestive system. "]]]
        
        
        
        
        let C3_3 : NSDictionary = [" Jian Pi Wan" : [
            ["Strengthen the Spleen Pill "],
            ["bai shu" , "largehead atractylodes rhizome", "Rhizoma Atractylodis Macrocephalae"],
            ["Default" , "costus root", "Radix Aucklandiae"],
            ["Default" , "golden thread rhizome", "Rhizoma Coptidis"],
            ["gan cao" , "liquorice root", "Radix Glycyrrhizae"],
            ["fu ling" , "poria", "Poria"],
            ["Default" , "ginseng", "Radix Ginseng"],
            ["shen qu" , "medicated leaven", "Massa fermentata medicinalis"],
            ["Default" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "villous amomum fruit ", "Fructus Amomi"],
            ["mai ya" , "germinated barley ", "Fructus Hordei germinatus "],
            ["shan zha " , "hawthorn fruit", "Fructus Cartaegi"],
            ["Default" , "Chinese yam", "Rhizoma Dioscoreae"],
            ["Default" , "nutmeg", "Semen Myristicae"],
            [": Reduced appetite, indigestion, bloating, distention in the gastric and abdominal regions, loose and watery diarrhea, and the tongue coating is greasy and slightly yellow. With appropriate modifications, modern TCM uses the formula in conditions like chronic gastritis, peptic ulcer, chronic dysentery, ulcerative colitis, Crohnâs disease, or other dysfunction of the gastrointestinal tract. "]]]
        
        
        //////////////////////Category 4
        
        
        let C4_1 : NSDictionary = [" Tong Xie Yao Fang" : [
            ["Essential Formula for Diarrhea with Pain "]]]
        
        
        let C4_2 : NSDictionary = [" Jia Wei Xiao Yao San" : [
            ["Free and Easy Wanderer Plus "]]]
        
        
        //////////////////////Category 5
        
        
        
        let C5_1 : NSDictionary = [" Dang Gu Liu Huang Tang" : [["Chinese Angelica and Six Yellow  Decoction "]]]
        
        
        
        
        let C5_2 : NSDictionary = [" Qing Ying Tang" : [
            ["Clear the Nutritive Level Decoction "],
            ["shui niu jiao " , "buffalo horn", "Cornu Bubali"],
            ["Default" , "rhemannia root ", "Radix Rehmanniae Recens"],
            ["Default" , "figwort root", "Radix Scrophulariae"],
            ["Default" , "lophatherum herb", "Herba Lophatheri"],
            ["Default" , "dwarf lily-turf tuber", "Radix Ophiopogonis "],
            ["Default" , "red sage root", "Radix Salviae Miltiorrhizae"],
            ["Default" , "golden thread rhizome ", "Rhizoma Coptidis"],
            ["Default" , "honeysuckle flower", "Flos Lonicerae"],
            ["Default" , "weeping forsythia capsule", "Fructus Forsythiae"],
            [": fever which is  worse at night, severe irritability and restlessness, insomnia, occasional  mental confusion, dark-red tongue covered by dry yellowish fur. Some  individuals may appear faint and indistinct subcutaneous bleeding  spots. Modern TCM uses this formula in conditions such as  meningitis, septicemia, acute leukemia, hepatic coma, uremia or stroke."]]]
        
        
        
        
        let C5_3 : NSDictionary = [" Wu Wei Xiao Du Yin" : [
            ["Five Flavors Drink to Expel Toxins "],
            ["Default" , " jin yih hua ", " Honeysuckle flower "],
            ["Default" , " ju hua ", " Chrysanthemum "],
            ["Default" , " pu gong ying ", " Dandelion "],
            ["Default" , " zi hua di ding ", " Tokyo violet herb "],
            ["Default" , " tian kui zi ", " Semiaquilegia root "],
            [""]]]
        
        
        
        
        let C5_4 : NSDictionary = [" Zhi Zi Chi Tang" : [
            ["Gardenia fruit and Fermented Soybean  Decoction "]]]
        
        
        let C5_5 : NSDictionary = [" Long Dan Xie Gan Tang" : [
            ["Gentian Liver-Purging Decoction "],
            ["long dan cao " , "Chinese gentian root", "Radix Gentianae"],
            ["Default" , "bupleurum root", "Radix Bupleuri"],
            ["Default" , "baical skullcap root&nbsp;", "&nbsp;Radix Scutellariae "],
            ["Default" , "gardenia fruit", "Fructus Gardeniae"],
            ["Default" , "oriental water-plantain root", "Rhizoma Alismatis"],
            ["Default" , "plantain seed", "Semen Plantaginis"],
            ["Default" , "akebia stem", "Caulis Akebiae"],
            ["Default" , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "rhemannia root ", "Radix Rehmanniae Recens"],
            ["Default" , "liquorice root", "Radix Glycyrrhizae"],
            [": lower chest pain, headache, blood-shot eyes,  bitter taste in the mouth, decline in hearing or ringing ears, irritability, red tongue covered by yellowish  fur. Also indicated for urinary difficulty with burning and pain sensations,  swollen, damp and itchiness genitalia, or foul smelling vaginal discharge.  Modern TCM uses this formula in conditions such as stubborn migraines, eczema, intercostal neuralgia,  conjunctivitis, otitis, hypertension, herpes zoster, liver and gallbladder  diseases, and acute genital and urinary infections."]]]
        
        
        
        
        let C5_6 : NSDictionary = [" Dao  Chi San" : [
            ["Guide Out the Red Powder "]]]
        
        
        
        
        let C5_7 : NSDictionary = [" Dai Ha San" : [
            ["Indigo and Clam Shell Powder "]]]
        
        
        
        
        let C5_8 : NSDictionary = [" Shao Yao Tang" : [
            ["Peony Decoction "]]]
        
        
        
        
        let C5_9 : NSDictionary = [" Bai Tou Weng Tong" : [
            ["Pulsatilla Root Decoction "]]]
        
        
        
        
        let C5_10 : NSDictionary = [" Xie Bai San" : [
            ["Purging Lung Powder "]]]
        
        
        
        
        let C5_11 : NSDictionary = [" Shang Di Mai Dong Yin" : [
            ["Rehmannia Root &amp; Dwarf  Lily-turf Tuber Drink "]]]
        
        
        
        
        let C5_12 : NSDictionary = [" Wang Shi Qing Shu Yi Qi Tang" : [
            ["Wang's Clearing Summer Heat and  Replenishing Qi Decoction "]]]
        
        
        
        
        let C5_13 : NSDictionary = [" Bai Hu Tang" : [
            ["White Tiger Decoction "]]]
        
        
        
        
        let C5_14 : NSDictionary = [" Yu Nu Jian" : [
            ["Jade Woman Decoction "]]]
        
        
        
        
        let C5_15 : NSDictionary = [" Qing Gan Yin Jing Tang" : [
            ["Clear Liver and Regulate Menstruation Decoction "]]]
        
        
        
        
        let C5_16 : NSDictionary = [" Qing Wei San" : [
            ["Clear Stomach Powder "]]]
        
        
        
        
        let C5_17 : NSDictionary = [" Gan Lu Yin" : [
            ["Sweet Dew Drink "]]]
        
        
        
        
        let C5_18 : NSDictionary = [" Xie Xin Tang" : [
            ["Purge Epigastrium Decoction "]]]
        
        
        
        
        let C5_19 : NSDictionary = [" Xi Jiao Di Huang Tang" : [
            ["Rhinoceros Horn Rehmannia Decoction "]]]
        
        
        
        
        let C5_20 : NSDictionary = [" Qing Re Gu Jing Tang" : [
            ["Clear Heat and Consolidate Menstruation Decoction "]]]
        
        //////////////////////Category 6
        
        
        
        
        //////////////////////Category 7
        
        
        let C7_1 : NSDictionary = [" Shi Quan Da Bu Tang" : [
            ["All-inclusive Great Tonifying Decoction "]]]
        
        
        
        
        let C7_2 : NSDictionary = [" Xiang Sha Liu Jun Zi Wan " : [
            ["Costus and Amomum with Six Noble Ingredients Pill "],
            ["ren shen" , "ginseng", "Radix Ginseng"],
            ["Default" , "largehead atractylodes rhizome", "Rhizoma Atractylodis Macrocephalae"],
            ["Default" , "poria", "poria"],
            ["zhi gan cao" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            ["chen pi" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "Pinellia tuber", "Rhizoma Pinelliae"],
            ["Default" , "costus root", "Radix Aucklandiae"],
            ["sha ren" , "villous amomum fruit ", "Fructus Amomi"],
            [": Poor appetite, belching, distention or pain in the gastric and abdominal regions, and sometimes vomiting and diarrhea. With appropriate modifications, modern TCM uses the formula in conditions like gastritis, peptic ulcers, digestive tract dysfunction as well as to stimulate appetite."]]]
        
        
        
        
        let C7_3 : NSDictionary = [" Ba Zhen Tang" : [
            ["Eight-treasure Decoction "],
            ["dang gui" , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "Sichuan lovage", "Rhizoma Ligustici Chuanxiong"],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            ["shu di" , "processed rhemannia rhizome", "Rhizoma Rehmanniae Praeparatae"],
            ["ren shen" , "ginseng", "Radix Ginseng"],
            ["Default" , "largehead atractylodes rhizome", "Rhizoma Atractylodis Macrocephalae"],
            ["Default" , "poria", "poria"],
            ["zhi gan cao" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            [": Pallid or sallow complexion, dizziness, blurred vision, easily-fatigued limbs, shortness of breath, laconic speech, palpitations with anxiety, reduced appetite, a pale tongue and the pulse is weak and fine. With appropriate modifications, modern TCM uses the formula in conditions like general weakness after various diseases, anemia, lumbar pain in women, menstrual disorders, chronic gastritis, chronic hepatitis and alopecia areata."]]]
        
        
        
        
        let C7_4 : NSDictionary = [" Si Jun Zi Tang" : [
            ["Four-gentlemen Decoction "],
            ["ren shen" , "ginseng", "Radix Ginseng"],
            ["Default" , "largehead atractylodes rhizome", "Rhizoma Atractylodis Macrocephalae"],
            ["Default" , "poria", "poria"],
            ["zhi gan cao" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            [": Paleness, feeble voice, limb weakness, reduced appetite, loose stools, a pale tongue and the pulse is weak. With appropriate modifications, modern TCM uses the formula in conditions like nervous debility, chronic gastritis, peptic ulcers, irritable bowel syndrome as well as promoting recovery after major disease. "]]]
        
        
        
        
        let C7_5 : NSDictionary = [" Si Wu Tang" : [
            ["Four-substance Decoction "],
            ["dang gui" , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "Sichuan lovage", "Rhizoma Ligustici Chuanxiong"],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            ["shu di" , "processed rhemannia rhizome", "Rhizoma Rehmanniae Praeparatae"],
            [": Panic, dizziness, blurred vision, ear ringing, paleness of the lips and nails, scanty menses or missed periods in women accompanied with lower abdominal pain, a pale tongue, and the pulse is taut and fine. With appropriate modifications, modern TCM uses the formula in conditions like primary dysmenorrheal, irregular menstruation, anemia, weakness after delivery, urticaria and headaches."]]]
        
        
        
        
        let C7_6 : NSDictionary = [" Da Bu Yuan Jian" : [
            ["Great Constitution Tonifying Decoction "]]]
        
        
        
        
        let C7_7 : NSDictionary = [" Da Bu Yin Wan" : [
            ["Great Tonify the Yin Pill "]]]
        
        
        
        
        let C7_8 : NSDictionary = [" Zhi Gan Cao Tang" :[
            ["Honey Processed Liquorice Root Decoction "]]]
        
        
        
        
        let C7_9 : NSDictionary = [" Yu Ping Feng San" : [
            ["Jade Windscreen Powder "]]]
        
        
        
        
        let C7_10 : NSDictionary = [" Shen Qi Wan" : [
            ["Kidney Qi Bolus "]]]
        
        
        
        
        let C7_11 : NSDictionary = [" Yi Guan Jian" : [
            ["Linking Decoction "]]]
        
        
        //////////////////////Category 12
        
        
        
        
        let C12_1 : NSDictionary = [" Huo Xue Hua Jian Tang" : [
            ["Decoction for Activating Blood and Relieving Firmness "],
            ["Default" , " fang feng ", " Ledebouriella root "],
            ["Default" , " chi shao ", " Red peony root "],
            ["Default" , " dang gui ", " Angelica root "],
            ["Default" , " tian hua fen ", " Snakegourd root "],
            ["Default" , " jin yih hua ", " Honeysuckle flower "],
            ["Default" , " zhe bei mu ", " Thunberg fritillary bulb "],
            ["Default" , " chuan xiong ", " Sichuan lovage "],
            ["Default" , " zao jiao ci ", " Chinese honeylocust spine "],
            ["Default" , " jie geng ", " Balloonflower root "],
            ["Default" , " jiang can ", " Silkworm "],
            ["Default" , " hou po ", " Magnolia bark "],
            ["Default" , " wu ling zhi ", " Flying squirrel feces&nbsp; "],
            ["Default" , " chen pi ", " Dried tangerine peel "],
            ["Default" , " gan cao ", " Liquorice root "],
            ["Default" , " ru xiang ", " Frankincense "],
            ["Default" , " bai zhi ", " Dahurian Angelica root "],
            [" "]]]
        
        
        
        
        let C12_2 : NSDictionary = [" Shao Fu Zhu Yu Tang" : [
            ["Decoction for Removing Blood Stasis in the Lower Abdomen "]]]
        
        
        
        
        let C12_3 : NSDictionary = [" Sheng Hua Tang" : [
            ["Generation and Transformation Decoction "],
            ["dang gui " , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "Sichuan lovage", "Rhizoma Ligustici Chuanxiong"],
            ["Default" , "peach kernel", "Semen Persicae"],
            ["Default" , "processed ginger", "Rhizoma Zingiberis Praeparatae"],
            ["Default" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            [": After delivery, there is non-smooth flow of  the lochia and also cold pain in the lower abdominal region. The formula is usually used for  retention of placental fragments within the uterus, excessive vaginal discharge  or painful uterine contractions in post partum, and chronic endometriosis."]]]
        
        
        
        
        let C12_4 : NSDictionary = [" Tao Hong Si Wu Tang" : [
            ["Peach Pit and Safflower with  Four-Substance Decoction "]]]
        
        
        
        
        let C12_5 : NSDictionary = [" Tong Qiao Huo Xue Tang" : [
            ["Unblock the Orifices and Invigorate the Blood Decoction "]]]
        
        
        //////////////////////Category 13
        
        
        
        
        let C13_1 : NSDictionary = [" Huo Xiang Zheng Qi San" : [
            ["Agastache Powder for Rectifying Healthy Qi "],
            ["huo xiang " , "agastache", "Herba Agastachess seu Pogostemonis"],
            ["Default" , "betel nut coat", "Pericarpium Arecae"],
            ["Default" , "poria", "Poria"],
            ["Default" , "largehead atractylodes rhizome", "Rhizoma Atractylodis Macrocephalae"],
            ["Default" , "processed pinellia tuber", "Rhizoma Pinelliae Praeparata "],
            ["Default" , "Magnolia bark", "Cortex Magnoliae Officinalis "],
            ["Default" , "perilla leaf", "Folium Perillae"],
            ["Default" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "balloonflower root", "Radix Platycodi"],
            ["Default" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            ["Default" , "dahurian angelica root", "Radix Angelicae Dauhuicae"],
            [": Fever, chills, headache, nausea, vomiting,  feelings of fullness  and oppression in the cheat, pain and rambling sounds in the gastric and  abdominal regions, diarrhea, a bland taste in the mouth, and a white greasy  tongue coating. The formula is usually used for intestinal flu, acute  gastroenteritis and indigestion."]]]
        
        
        
        
        let C13_2 : NSDictionary = [" Ping Wei San" : [
            ["Calm the Stomach Powder "],
            ["cang zhu " , "atractylodes rhizome", "Rhizoma Atractylodis"],
            ["Default" , "Magnolia bark", "Cortex Magnoliae Officinalis "],
            ["Default" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "liquorice root", "Radix Glycyrrhizae"],
            [": distention and fullness in the gastric and  abdominal regions, lack of appetite, nausea, belching, acid regurgitation,  limbs heaviness, loose bowel or diarrhea, fatigue, sleepiness, and a white  greasy tongue coating. Modern TCM uses this formula for intestinal flu, nonspecific intestinal disorder,  indigestion and chronic gastritis."]]]
        
        
        
        
        let C13_3 : NSDictionary = [" Yi Yi Ren Tang" : [
            ["Coix Seed Decoction "]]]
        
        
        
        
        let C13_4 : NSDictionary = [" Xuan Bi Tang" : [
            ["Dispelling Painful Obstruction Decoction "]]]
        
        
        
        
        let C13_5 : NSDictionary = [" Wu  Ling San" : [
            ["Five Ingredients Powder with Poria "]]]
        
        
        
        
        let C13_6 : NSDictionary = [" Wu Shen Tang" : [
            ["Five-God Decoction "],
            ["Default" , " fu ling ", " Poria "],
            ["Default" , " jin yih hua ", " Honeysuckle flower "],
            ["Default" , " niu xi ", " Achyranthes root "],
            ["Default" , " che qian zi ", " Plantain seeds "],
            ["Default" , " zi hua di ding ", " Tokyo violet herb "],
            [""]]]
        
        
        
        
        let C13_7 : NSDictionary = [" Si Miao Wan" : [
            ["Four-Wonder Pills "]]]
        
        
        
        
        let C13_8 : NSDictionary = [" Gan Jiang Ling Zhu Tang" : [
            ["Liquorice, Ginger, Poria and Atractylodes Decoction "]]]
        
        
        
        
        let C13_9 : NSDictionary = [" Juan Bi Tang" : [
            ["Removing Painful Obstruction Decoction "]]]
        
        
        
        
        let C13_10 : NSDictionary = [" Ji Ming San" : [
            ["Rooster Crowing Powder "]]]
        
        
        
        
        let C13_11 : NSDictionary = [" San  Ren Tang" : [
            ["Three Kernels Decoction "]]]
        
        
        
        
        let C13_12 : NSDictionary = [" San Miao Hong Teng Tang" : [
            ["Three Wonders Sargentglory Vine-stem Decoction "]]]
        
        
        
        
        let C13_13 : NSDictionary = [" Wei Ling Tang" : [
            ["Weiling Decoction "]]]
        
        
        
        
        let C13_14 : NSDictionary = [" Yin  Chen Hao Tang" : [
            ["Wormwood Decoction "]]]
        
        
        //////////////////////Category 15
        
        
        
        
        let C15_1 : NSDictionary = [" Tian Ma Gou Teng Yin" : [
            ["Gastrodia and Uncaria Decoction "],
            ["tian ma " , "tall gastrodia tuber", "Rhizoma Gastrodiae"],
            ["Default" , "gambir vine stem ", "Ramulus cum Uncis Uncariae"],
            ["Default" , "abalone shell", "Concha Haliotidis"],
            ["Default" , "Gardenia fruit", "Fructus Gardeniae"],
            ["Default" , "baical skullcap root&nbsp;", "&nbsp;Radix Scutellariae "],
            ["Default" , "eucommia bark", "Cortex Eucommiae"],
            ["Default" , "cyathula root", "Radix Cyathulae Officinalis"],
            ["Default" , "motherwort herb", "Herba Leonuri"],
            ["Default" , "Chinese taxillus herb", "Ramulus Loranthi"],
            ["Default" , "tuber fleeceflower stem", "Caulis Polygoni Multiflori"],
            ["Default" , "poria processed by cinnabar", "Poria preparated with cinnabar"],
            [": headache, dizziness, vertigo, ear ringing,  blurred vision, insomnia, dream-disturbed sleep, a red tongue covered by  yellowish fur. In severe cases, there may also be numbness, twitching and  spasms in the limbs, and even paralysis. The formula is usually used for stroke and  hypertension that appear with previously mentioned symptoms."]]]
        
        
        
        
        let C15_2 : NSDictionary = [" Du Huo Ji Sheng Tang" : [
            ["Pubescent Angelica and Loranthus Decoction "],
            ["sang ji sheng " , "Chinese taxillus herb", "Ramulus Loranthi"],
            ["Default" , "double-teeth pubescent angelica root ", "Radix Angelicae Pubescentis "],
            ["Default" , "eucommia bark", "Cortex Eucommiae"],
            ["Default" , "achyranthes root", "Radix Achyranthis Bidentatae"],
            ["Default" , "manchurian wildginger", "Herba Asari"],
            ["Default" , "largeleaf gentian root", "Radix Gentianae Macrophyllae"],
            ["Default" , "poria", "Poria"],
            ["Default" , "cassia bark", "Cortex Cinnamomi"],
            ["Default" , "ledebouriella root", "Radix Ledebouriellae"],
            ["Default" , "Sichuan lovage", "Rhizoma Ligustici Chuanxiong"],
            ["Default" , "ginseng", "Radix Ginseng"],
            ["Default" , "roasted liquorice root", "Radix Glycyrrhizae Praeparata "],
            ["Default" , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            ["Default" , "rhemannia root ", "Radix Rehmanniae"],
            [": Pain in the back and lower limbs, difficulty in  joint movements, numbness or coldness of the limbs, palpitation and breath  shortness. This formula is usually used for rheumatoid arthritis,  osteoarthritis, chronic lumbar strain and sciatica."]]]
        
        
        
        
        let C15_3 : NSDictionary = [" Si Wu Xiao Feng Yin" : [
            ["Four Substances Disperse Wind Drink "]]]
        
        
        let C15_4 : NSDictionary = [" Zhen Gan Xi Feng Tang" : [ ["Calming Liver and Extinguishing Wind Decoction "]]]
        
        
        let C15_5 : NSDictionary = [" Qian Zheng San" : [["Restoring Facial Distortion Powder "]]]
        
        //////////////////////Category 16
        
        
        
        
        let C16_1 : NSDictionary = [" Xing Su San" : [
            ["Apricot Kernel and Perilla Leaf Powder "],
            ["zi su ye " , "perilla leaf", "Folium Perillae"],
            ["Default" , "bitter apricot kernel", "Semen Armeniacae Amarum"],
            ["Default" , "pinellia tuber", "Rhizoma Pinelliae"],
            ["Default" , "poria", "Poria"],
            ["Default" , "dried tangerine peel", "Pericarpium Citri Reticulatae"],
            ["Default" , "hogfennel root", "Radix Peucedani"],
            ["Default" , "balloonflower root", "Radix Platycodi"],
            ["Default" , "bitter orange peel", "Fructus Aurantii"],
            ["Default" , "liquorice root", "Radix Glycyrrhizae"],
            ["Default" , "fresh ginger", "Rhizoma Zingiberis Recens"],
            ["Default" , "common jujube fruit", "Fructus Ziziphi Jujubae"],
            [": slight headache, chills without sweating,  cough with watery sputum, stuffy nose and dry throat. The formula is usually used for upper respiratory  tract infections, chronic bronchitis and emphysema. "]]]
        
        
        
        
        let C16_2 : NSDictionary = [" Sha Shen Mai Dong Tang" : [
            ["Glehnia Root and Dwarf Lily-turf Tuber  Decoction "]]]
        
        
        
        
        let C16_3 : NSDictionary = [" Zeng  Ye Tang" : [
            ["Increase the Fluids Decoction "]]]
        
        
        let C16_4 : NSDictionary = [" Yu Ye Tang" : [
            ["Jade Fluid Decoction "],
            ["shan yao " , "Chinese yam", "Rhizoma Dioscoreae"],
            ["Default" , "astragalus ", "Radix Astragali"],
            ["Default" , "anemarrhena rhizome", "Rhizoma Anemarrhenae"],
            ["Default" , "chicken's gizzard-skin", "Endothelium Corneum Gigeriae Galli"],
            ["Default" , "kudzu root", "Radix Puerariae"],
            ["Default" , "schisandra fruit", "Fructus Schisandrae"],
            ["Default" , "snakegourd root", "Radix Trichosanthis"],
            [": diabetic symptoms like excessive thirst, profuse  turbid urination, lassitude and shortness of breath."]]]
        
        
        let C16_5 : NSDictionary = [" Bai He Gu Jin Tang" : [
            ["Lily Bulb Decoction to Preserve the Lung "],
            ["sheng di " , "rhemannia root ", "Radix Rehmanniae"],
            ["Default" , "processed rhemannia rhizome ", "Rhizoma Rehmanniae Praeparatae"],
            ["Default" , "dwarf lily-turf tuber", "Radix Ophiopogonis "],
            ["Default" , "lily bulb", "Bulbus Lilii"],
            ["Default" , "white peony root", "Radix Paeoniae Alba"],
            ["Default" , "figwort root", "Radix Scrophulariae"],
            ["Default" , "thunberg fritillary bulb", "Bulbus Fritillariae Thunbergii"],
            ["Default" , "balloonflower root", "Radix Platycodi"],
            ["Default" , "angelica root", "Radix Angelicae Sinensis"],
            ["Default" , "liquorice root", "Radix Glycyrrhizae"],
            [": Cough with blood stained sputum, wheezing,  throat dryness, hot palms and soles, night sweats, and a red tongue.  Clinically, the formula is usually for chronic bronchitis, pulmonary  tuberculosis, pharyngitis, and bronchiectasis. "]]]
        
        
        
        
        let C16_6 : NSDictionary = [" Shang Xing Tang" : [
            ["Mulberry and Apricot Decoction "]]]
        
        func getAllFormulas() -> [NSDictionary] {
            
            let allFormulas: [NSDictionary] = [
                C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8, C1_9, C1_10, C1_11, C1_12, C1_13, C1_14,
                C2_1, C2_2, C2_3,
                C3_1, C3_2, C3_3,
                C4_1, C4_2,
                C5_1, C5_2, C5_3, C5_4, C5_5, C5_6, C5_7, C5_8, C5_9, C5_10, C5_11, C5_12, C5_13, C5_14, C5_15, C5_16, C5_17, C5_18, C5_19, C5_20,
                C7_1, C7_2, C7_3, C7_4, C7_5, C7_6, C7_7,
                C12_1, C12_2, C12_3, C12_4, C12_5,
                C13_1, C13_2,
                C15_1, C15_2, C15_3, C15_4, C15_5,
                C16_1, C16_2, C16_3, C16_4, C16_5
            ]
            
            return allFormulas
        }
        
        func getHerbsInSet(){
            
            
        }
        
        
    }
    



