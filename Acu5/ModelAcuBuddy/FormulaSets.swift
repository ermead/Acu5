//
//  FormulaSets.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/6/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation

class FormulaSets {
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
    static let sharedController = FormulaSets()
    
    let moc = Stack.sharedStack.managedObjectContext
    
    let fid = FormulaIngredientDictionaries()
    
    var FormulaSet = FormulaSetType.ReleaseTheExterior
    var formulaset: [Formula] = []
    
    var thisFormulaSetType: FormulaSetType?
    
    enum FormulaSetType {
        case AllFormulas
        case ReleaseTheExterior
        case Purgatives
        case Digestives
        case Harmonizing
        case HeatClearing
        case InteriorWarming
        case Tonic
        case Astringents
        case Calming
        case OrificeOpening
        case QiRegulating
        case BloodRegulating
        case DampnessDispelling
        case PhlegmResolving
        case WindEliminating
        case DrynessMoistening
    }
    
    func getFormulaSet(thisSetType: FormulaSetType) -> [Formula]{
        
        self.FormulaSet = thisSetType
        
        print("this formula set I am trying to load is \(FormulaSet)")
        
        switch thisSetType {
        
        case .AllFormulas : return allFormulas()
        case .ReleaseTheExterior : return ReleaseTheExterior()
        case .Purgatives : return Purgatives()
        case .Digestives : return Digestives()
        case .Harmonizing : return Harmonizing()
        case .HeatClearing : return HeatClearing()
        case .InteriorWarming : return InteriorWarming()
        case .Tonic : return Tonic()
        case .Astringents : return Astringents()
        case .Calming : return Calming()
        case .OrificeOpening : return OrificeOpening()
        case .QiRegulating : return QiRegulating()
        case .BloodRegulating : return BloodRegulating()
        case .DampnessDispelling : return DampnessDispelling()
        case .PhlegmResolving : return PhlegmResolving()
        case .WindEliminating : return WindEliminating()
        case .DrynessMoistening : return DrynessMoistening()

        default: return []
            
        }
    }
    
    func ReleaseTheExterior()->[Formula]{
        let GuiZhiTang = Formula(pinyinName: " Gui Zhi Tang", englishName: "Cinnamon Twig Decoction  ", uses: ": Fever, headache, chills, sweating, runny  nose, nausea and a white moist tongue coating indicates that wind and cold evils have attacked a  weakened body. With appropriate modifications, this formula can be used in a  wide range of health conditions such as upper respiratory tract infections, influenza, low fever of unknown  origin, general aching in postpartum women, morning sickness, allergic  rhinitis, rheumatoid arthritis, puffiness or sweating caused by neurovascular  disorders, and many skin problems.", simpleIngredientsString: " (split) gui zhi , cassia twig, Ramulus Cinnamomi (split) Default, white peony root, Radix Paeoniae Alba (split) Default, fresh ginger, Rhizoma Zingiberis Recens (split) Default, common jujube fruit, Fructus Ziziphi Jujubae (split) Default, roasted liquorice root, Radix Glycyrrhizae Praeparata ", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.GuiZhiTang), images: [], context: self.moc)
        
        
        let MaHuangTang = Formula(pinyinName: " Ma Huang Tang", englishName: "Ephedra Decoction  ", uses: ": Chills, mild fever, without sweating,  headache, generalized aching, wheezing caused by cold evils attacking the  superficial portion of the body. With appropriate modifications, this formula  can be used for the common  cold, influenza, acute bronchitis and asthma. ", simpleIngredientsString: " (split) ma huang , ephedra, Herba Ephedrae (split) Default, cassia twig, Ramulus Cinnamomi (split) Default, bitter apricot kernel, Semen Armeniacae Amarum (split) Default, roasted liquorice root, Radix Glycyrrhizae Praeparata ", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.MaHuangTang), images: [], context: self.moc)
        
        
        let RenShenBaiDuSan = Formula(pinyinName: " Ren Shen Bai Du San", englishName: "Ginseng Powder to Overcome Pathogenic Influences  ", uses: ": high fever, severe chills, headache, neck stiffness,  limb soreness, chest fullness, nasal congestion, a productive cough, and the  tongue coated with white greasy fur. With appropriate modifications, this  formula can be used to treat upper respiratory tract infections, influenza, bronchitis, contact  dermatitis, wheals, skin itchiness, early-stage measles, early-stage dysentery; its  also promotes surgical recovery. ", simpleIngredientsString: " (split) chai    hu , bupleurum    root, Radix Bupleuri (split) Default, hogfennel    root, Radix Peucedani (split) Default, sichuan lovage, Rhizoma Ligustici Chuanxiong (split) Default, bitter    orange peel, Fructus Aurantii (split) Default, notopterygium    root , Rhizoma seu Radix Notopterygii (split) Default, double-teeth    pubescent angelica root , Radix Angelicae Pubescentis  (split) Default, poria, Poria (split) Default, balloonflower    root, Radix Platycodi (split) Default, ginseng, Radix Ginseng (split) Default, liquorice    root, Radix Glycyrrhizae", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.RenShenBaiDuSan), images: [], context: self.moc)
        
        
        let NiuBangJieJiTang = Formula(pinyinName: " Niu Bang Jie Ji Tang", englishName: "Great Burdock Fruit Decoction for Releasing Muscles  ", uses: ": For early- stage infections in the head and neck regions or gum infections that appear as lumps with obvious redness, swelling, heat and pain. ", simpleIngredientsString: " (split) Default,  niu bang zi ,  Great burdock fruit&nbsp;  (split) Default,  bo he ,  Pepper mint  (split) Default,  jing jie ,  Fine-leaf schizonepeta herb  (split) Default,  lian qiao ,  Weeping forsythia capsule  (split) Default,  zhi zi ,  Gardenia fruit  (split) Default,  dan pi ,  Peony tree root bark  (split) Default,  shi hu ,  Dendrobium  (split) Default,  yuan shen ,  Figwort root  (split) Default,  xia ku cao ,  Selfheal fruit spike ", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.NiuBangJieJiTang), images: [], context: self.moc)
        
        
        let MaGuiGeBanTang = Formula(pinyinName: " Ma Gui Ge Ban Tang", englishName: " ", uses: "Half Ephedra and Half Cassia Twig  Decoction ", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.MaGuiGeBanTang), images: [], context: self.moc)
        
        
        let YinQiaoSan = Formula(pinyinName: " Yin Qiao San", englishName: "Honeysuckle and Forsythia Powder  ", uses: ": fever, slight or no chills, headache, thirst,  cough, throat soreness and a red-tipped tongue, which are the typical early  signs in some acute febrile diseases. With appropriate modifications, this  formula is commonly used in the early stages of acute infectious diseases such  as upper respiratory tract infections, flu, acute bronchitis, pneumonia,  measles and mumps. ", simpleIngredientsString: " (split) lian qiao , weeping forsythia capsule, Fructus Forsythiae (split) jin yih hua, honeysuckle flower, Flos Lonicerae (split) jie geng, balloonflower root, Radix Platycodi (split) bo he, pepper mint, Herba Menthae (split) zhu ye, bamboo leaf , Herba Lophatheri (split) gan cao, liquorice root, Radix Glycyrrhizae (split) jing jie sui, schizonepeta spica, Spica Schizonepetae (split) dan dou chi, fermented soybean, Semen Sojae Preparata (split) niu bang zi, great burdock fruit&nbsp;, &nbsp;Fructus Arctii (split) xian lu gen, fresh reed rhizome, Rhizoma Phragmitis Recens", category: "Release Wind-Heat Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.YinQiaoSan), images: [], context: self.moc)
        
        
        let QiangHuoShengShiTang = Formula(pinyinName: " Qiang Huo Sheng Shi Tang", englishName: " ", uses: "Notopterygium Decoction to Remove Dampness ", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QiangHuoShengShiTang), images: [], context: self.moc)
        
        
        let XiangRuSan = Formula(pinyinName: " Xiang Ru San", englishName: "Mosla Herb Powder  ", uses: ": aversion to cold, mild fever, headache, heavy  sensation in the head, tired body, chest oppression, nausea, or abdominal pain with  vomiting and diarrhea. The tongue is coated with white and greasy fur. These symptoms  usually appear in the summer due to wind and cold evils attacking the exterior while dampness  accumulates internally.  The formula is usually used in conditions like the common cold during summer season, acute  gastroenteritis, bacillary dysentery and cholera. ", simpleIngredientsString: " (split) xiang ru , mosla herb, Herba Elsholtziae seu Moslae (split) Default, hyacinth bean, Semen Lablab Album (split) Default, Magnolia bark, Cortex Magnoliae Officinalis ", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XiangRuSan), images: [], context: self.moc)
        
        
        let SangJuYin = Formula(pinyinName: " Sang Ju Yin", englishName: "Mulberry Leaf and Chrysanthemum Decoction  ", uses: ": cough accompanied with a slight fever and thirst that is often seen at the beginning of acute  febrile diseases. With appropriate modifications, this formula can be used for  upper respiratory tract infections, influenza, early-stage acute bronchitis, acute tonsillitis and acute  conjunctivitis.", simpleIngredientsString: " (split) sang yu , mulberry leaf, Folium Mori Albae (split) Default, chrysanthemum, Flos Chrysanthemi (split) Default, bitter apricot kernel, Semen Armeniacae Amarum (split) Default, weeping forsythia capsule, Fructus Forsythiae (split) Default, pepper mint, Herba Ephedrae (split) Default, balloonflower root, Radix Platycodi (split) Default, liquorice root, Radix Glycyrrhizae (split) Default, reed rhizome, Rhizoma Phragmitis", category: "Release Wind-Heat Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.SangJuYin), images: [], context: self.moc)
        
        
        let ZengYeTang = Formula(pinyinName: " Zeng  Ye Tang", englishName: " ", uses: "Regeneration Powder ", simpleIngredientsString: "", category: " ", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ZengYeTang), images: [], context: self.moc)
        
        
        let XiongZhiShiGaoTang = Formula(pinyinName: " Xiong Zhi Shi Gao Tang", englishName: " ", uses: "Sichuan Lovage, Dahurian Angelica and Gypsum Decoction ", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XiongZhiShiGaoTang), images: [], context: self.moc)
        
        
        let ZhiSouSan = Formula(pinyinName: " Zhi Sou San", englishName: " ", uses: "Stop Coughing Powder ", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ZhiSouSan), images: [], context: self.moc)
        
        
        let ChuanXiongChaTiaoSan = Formula(pinyinName: " Chuan Xiong Cha Tiao San", englishName: " ", uses: "Tea-Blended Sichuan Lovage Powder", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ChuanXiongChaTiaoSan), images: [], context: self.moc)
        
        
        let SanAoTang = Formula(pinyinName: " San Ao Tang", englishName: " ", uses: "Three Abnormally Combined Decoction ", simpleIngredientsString: "", category: "Release Wind-Cold Exterior", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.SanAoTang), images: [], context: self.moc)
        
        
        return [GuiZhiTang, MaHuangTang, RenShenBaiDuSan, NiuBangJieJiTang, MaGuiGeBanTang, YinQiaoSan, QiangHuoShengShiTang, XiangRuSan, SangJuYin, ZengYeTang, XiongZhiShiGaoTang, ZhiSouSan, ChuanXiongChaTiaoSan, SanAoTang]
    }
    
    func Purgatives()->[Formula]{
        
        let NeiShuHuangLianTang = Formula(pinyinName: " Nei Shu Huang Lian Tang", englishName: "Golden Thread Rhizome Decoction for Dispersion  ", uses: "", simpleIngredientsString: " (split) Default,  mu xiang ,  Costus root  (split) Default,  huang lian ,  Golden thread rhizome  (split) Default,  zhi zi ,  Gardenia fruit  (split) Default,  dang gui ,  Angelica root  (split) Default,  huang qin ,  Baical skullcap root&nbsp;  (split) Default,  bai shao ,  White peony root  (split) Default,  bo he ,  Pepper mint  (split) Default,  bing lang ,  Areca seed  (split) Default,  jie geng ,  Balloonflower root  (split) Default,  lian qiao ,  Weeping forsythia capsule  (split) Default,  gan cao ,  Liquorice root  (split) Default,  da huang ,  Chinese rhubarb ", category: "Purgatives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.NeiShuHuangLianTang), images: [], context: self.moc)
        
        
        let MaZiRenWan = Formula(pinyinName: " Ma Zi Ren Wan", englishName: "Hemp Seed Pill  ", uses: ": constipation, dried stools and frequent urination. Modern TCM usually  uses this for  constipation in elderly or feeble persons with intestinal dryness as well as chronic constipation. ", simpleIngredientsString: " (split) Default, hemp seed, semen cannabis (split) Default, bitter apricot kernel, Semen Armeniacae Amarum (split) Default, immature bitter orange , Fructus Aurantii Immaturus (split) Default, Chinese rhubarb, Radix et Rhizoma Rhei (split) Default, Magnolia bark, Cortex Magnoliae Officinalis  (split) Default, white peony root, Radix Paeoniae Alba", category: "Purgatives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.MaZiRenWan), images: [], context: self.moc)
        
        
        let DaChengQiTang = Formula(pinyinName: " Da Cheng Qi Tang", englishName: "Major Purgative Decoction  ", uses: ": Severe constipation, flatulence, abdominal distention, focal pressure can further  aggravate abdominal discomfort, dry yellow tongue with prickles. In severe  cases, there may be remittent fever, mental confusion, profuse sweating in the limbs.  With appropriate modifications, this formula can be used in simple or early  stage abdominal conditions like appendicitis, pancreatitis, gallbladder stones,  intestinal obstruction, post surgical constipation and distention. ", simpleIngredientsString: " (split) da    huang , Chinese    rhubarb, Radix    et Rhizoma Rhei (split) Default, Magnolia    bark, Cortex    Magnoliae Officinalis  (split) Default, immature    bitter orange , Fructus    Aurantii Immaturus (split) Default, mirabilite, Natrii    Sulfas", category: "Purgatives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DaChengQiTang), images: [], context: self.moc)
        
        
        return [NeiShuHuangLianTang, MaZiRenWan, DaChengQiTang]
    }
    func Digestives ()->[Formula]{
        
        
        let GeHuaJieChengTang = Formula(pinyinName: " Ge Hua Jie Cheng Tang", englishName: " ", uses: "Kudzu Flower Decoction to Relieve Heavy Drinking ", simpleIngredientsString: "", category: "Digestives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.GeHuaJieChengTang), images: [], context: self.moc)
        
        
        let BaoHeWan = Formula(pinyinName: " Bao He Wan", englishName: "Preserve Harmony Pill  ", uses: ": Food distention that is manifested by chest stuffiness,  fullness and distending pain in the gastric and abdominal regions, belching which has  a foul smell, acid  regurgitation, anorexia, nausea/vomiting or diarrhea. The tongue coating is thick and greasy. This  formula relieves food  stagnation and preserves the proper functioning of the digestive system. ", simpleIngredientsString: " (split) Default, hawthorn fruit, Fructus Cartaegi (split) Default, medicated leaven , Massa fermentata    medicinalis (split) Default, pinellia tuber, Rhizoma Pinelliae (split) Default, poria, Poria (split) Default, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, weeping Forsythia capsule, Fructus Forsythiae (split) Default, radish seed, Semen Raphani", category: "Digestives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.BaoHeWan), images: [], context: self.moc)
        
        
        let JianPiWan = Formula(pinyinName: " Jian Pi Wan", englishName: "Strengthen the Spleen Pill  ", uses: ": Reduced appetite, indigestion, bloating, distention in the gastric and abdominal regions, loose and watery diarrhea, and the tongue coating is greasy and slightly yellow. With appropriate modifications, modern TCM uses the formula in conditions like chronic gastritis, peptic ulcer, chronic dysentery, ulcerative colitis, Crohnâs disease, or other dysfunction of the gastrointestinal tract. ", simpleIngredientsString: " (split) bai shu, largehead atractylodes rhizome, Rhizoma Atractylodis Macrocephalae (split) Default, costus root, Radix Aucklandiae (split) Default, golden thread rhizome, Rhizoma Coptidis (split) gan cao, liquorice root, Radix Glycyrrhizae (split) fu ling, poria, Poria (split) Default, ginseng, Radix Ginseng (split) shen qu, medicated leaven, Massa fermentata medicinalis (split) Default, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, villous amomum fruit , Fructus Amomi (split) mai ya, germinated barley , Fructus Hordei germinatus  (split) shan zha , hawthorn fruit, Fructus Cartaegi (split) Default, Chinese yam, Rhizoma Dioscoreae (split) Default, nutmeg, Semen Myristicae", category: "Digestives", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.JianPiWan), images: [], context: self.moc)
        
        return [GeHuaJieChengTang, BaoHeWan, JianPiWan]
    }
    func Harmonizing()->[Formula]{
        
        
        let TongXieYaoFang = Formula(pinyinName: " Tong Xie Yao Fang", englishName: " ", uses: "Essential Formula for Diarrhea with Pain ", simpleIngredientsString: "", category: "Harmonizers", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.TongXieYaoFang), images: [], context: self.moc)
        
        
        let JiaWeiXiaoYaoSan = Formula(pinyinName: " Jia Wei Xiao Yao San", englishName: " ", uses: "Free and Easy Wanderer Plus ", simpleIngredientsString: "", category: "Harmonizers", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.JiaWeiXiaoYaoSan), images: [], context: self.moc)
        return [ TongXieYaoFang, JiaWeiXiaoYaoSan ]
    }
    
    func HeatClearing()->[Formula]{
        
        let DangGuLiuHuangTang = Formula(pinyinName: " Dang Gu Liu Huang Tang", englishName: " ", uses: "Chinese Angelica and Six Yellow  Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DangGuLiuHuangTang), images: [], context: self.moc)
        
        
        let QingYingTang = Formula(pinyinName: " Qing Ying Tang", englishName: "Clear the Nutritive Level Decoction  ", uses: ": fever which is  worse at night, severe irritability and restlessness, insomnia, occasional  mental confusion, dark-red tongue covered by dry yellowish fur. Some  individuals may appear faint and indistinct subcutaneous bleeding  spots. Modern TCM uses this formula in conditions such as  meningitis, septicemia, acute leukemia, hepatic coma, uremia or stroke.", simpleIngredientsString: " (split) shui niu jiao , buffalo horn, Cornu Bubali (split) Default, rhemannia root , Radix Rehmanniae Recens (split) Default, figwort root, Radix Scrophulariae (split) Default, lophatherum herb, Herba Lophatheri (split) Default, dwarf lily-turf tuber, Radix Ophiopogonis  (split) Default, red sage root, Radix Salviae Miltiorrhizae (split) Default, golden thread rhizome , Rhizoma Coptidis (split) Default, honeysuckle flower, Flos Lonicerae (split) Default, weeping forsythia capsule, Fructus Forsythiae", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QingYingTang), images: [], context: self.moc)
        
        
        let WuWeiXiaoDuYin = Formula(pinyinName: " Wu Wei Xiao Du Yin", englishName: "Five Flavors Drink to Expel Toxins  ", uses: "", simpleIngredientsString: " (split) Default,  jin yih hua ,  Honeysuckle flower  (split) Default,  ju hua ,  Chrysanthemum  (split) Default,  pu gong ying ,  Dandelion  (split) Default,  zi hua di ding ,  Tokyo violet herb  (split) Default,  tian kui zi ,  Semiaquilegia root ", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.WuWeiXiaoDuYin), images: [], context: self.moc)
        
        
        let ZhiZiChiTang = Formula(pinyinName: " Zhi Zi Chi Tang", englishName: " ", uses: "Gardenia fruit and Fermented Soybean  Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ZhiZiChiTang), images: [], context: self.moc)
        
        
        let LongDanXieGanTang = Formula(pinyinName: " Long Dan Xie Gan Tang", englishName: "Gentian Liver-Purging Decoction  ", uses: ": lower chest pain, headache, blood-shot eyes,  bitter taste in the mouth, decline in hearing or ringing ears, irritability, red tongue covered by yellowish  fur. Also indicated for urinary difficulty with burning and pain sensations,  swollen, damp and itchiness genitalia, or foul smelling vaginal discharge.  Modern TCM uses this formula in conditions such as stubborn migraines, eczema, intercostal neuralgia,  conjunctivitis, otitis, hypertension, herpes zoster, liver and gallbladder  diseases, and acute genital and urinary infections.", simpleIngredientsString: " (split) long dan cao , Chinese gentian root, Radix Gentianae (split) Default, bupleurum root, Radix Bupleuri (split) Default, baical skullcap root&nbsp;, &nbsp;Radix Scutellariae  (split) Default, gardenia fruit, Fructus Gardeniae (split) Default, oriental water-plantain root, Rhizoma Alismatis (split) Default, plantain seed, Semen Plantaginis (split) Default, akebia stem, Caulis Akebiae (split) Default, angelica root, Radix Angelicae Sinensis (split) Default, rhemannia root , Radix Rehmanniae Recens (split) Default, liquorice root, Radix Glycyrrhizae", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.LongDanXieGanTang), images: [], context: self.moc)
        
        
        let DaoChiSan = Formula(pinyinName: " Dao  Chi San", englishName: " ", uses: "Guide Out the Red Powder ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DaoChiSan), images: [], context: self.moc)
        
        
        let DaiHaSan = Formula(pinyinName: " Dai Ha San", englishName: " ", uses: "Indigo and Clam Shell Powder ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DaiHaSan), images: [], context: self.moc)
        
        
        let ShaoYaoTang = Formula(pinyinName: " Shao Yao Tang", englishName: " ", uses: "Peony Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShaoYaoTang), images: [], context: self.moc)
        
        
        let BaiTouWengTong = Formula(pinyinName: " Bai Tou Weng Tong", englishName: " ", uses: "Pulsatilla Root Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.BaiTouWengTong), images: [], context: self.moc)
        
        
        let XieBaiSan = Formula(pinyinName: " Xie Bai San", englishName: " ", uses: "Purging Lung Powder ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XieBaiSan), images: [], context: self.moc)
        
        
        let ShangDiMaiDongYin = Formula(pinyinName: " Shang Di Mai Dong Yin", englishName: " ", uses: "Rehmannia Root &amp; Dwarf  Lily-turf Tuber Drink ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShangDiMaiDongYin), images: [], context: self.moc)
        
        
        let WangShiQingShuYiQiTang = Formula(pinyinName: " Wang Shi Qing Shu Yi Qi Tang", englishName: " ", uses: "Wang's Clearing Summer Heat and  Replenishing Qi Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.WangShiQingShuYiQiTang), images: [], context: self.moc)
        
        
        let BaiHuTang = Formula(pinyinName: " Bai Hu Tang", englishName: " ", uses: "White Tiger Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.BaiHuTang), images: [], context: self.moc)
        
        
        let YuNuJian = Formula(pinyinName: " Yu Nu Jian", englishName: " ", uses: "Jade Woman Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.YuNuJian), images: [], context: self.moc)
        
        
        let QingGanYinJingTang = Formula(pinyinName: " Qing Gan Yin Jing Tang", englishName: " ", uses: "Clear Liver and Regulate Menstruation Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QingGanYinJingTang), images: [], context: self.moc)
        
        
        let QingWeiSan = Formula(pinyinName: " Qing Wei San", englishName: " ", uses: "Clear Stomach Powder ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QingWeiSan), images: [], context: self.moc)
        
        
        let GanLuYin = Formula(pinyinName: " Gan Lu Yin", englishName: " ", uses: "Sweet Dew Drink ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.GanLuYin), images: [], context: self.moc)
        
        
        let XieXinTang = Formula(pinyinName: " Xie Xin Tang", englishName: " ", uses: "Purge Epigastrium Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XieXinTang), images: [], context: self.moc)
        
        
        let XiJiaoDiHuangTang = Formula(pinyinName: " Xi Jiao Di Huang Tang", englishName: " ", uses: "Rhinoceros Horn Rehmannia Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XiJiaoDiHuangTang), images: [], context: self.moc)
        
        
        let QingReGuJingTang = Formula(pinyinName: " Qing Re Gu Jing Tang", englishName: " ", uses: "Clear Heat and Consolidate Menstruation Decoction ", simpleIngredientsString: "", category: "Heat Clearing", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QingReGuJingTang), images: [], context: self.moc)
        

        return [DangGuLiuHuangTang, QingYingTang, WuWeiXiaoDuYin, ZhiZiChiTang, LongDanXieGanTang, DaoChiSan, DaiHaSan, ShaoYaoTang, BaiTouWengTong, XieBaiSan, ShangDiMaiDongYin, WangShiQingShuYiQiTang, BaiHuTang, YuNuJian, QingGanYinJingTang, QingWeiSan, GanLuYin, XieXinTang, XiJiaoDiHuangTang, QingReGuJingTang]
    }
    func InteriorWarming()->[Formula]{
        
        
        return []
    }
    func Tonic()->[Formula]{
        
        let ShiQuanDaBuTang = Formula(pinyinName: " Shi Quan Da Bu Tang", englishName: " ", uses: "All-inclusive Great Tonifying Decoction ", simpleIngredientsString: "", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShiQuanDaBuTang), images: [], context: self.moc)
        
        
        let XiangShaLiuJunZiWan = Formula(pinyinName: " Xiang Sha Liu Jun Zi Wan ", englishName: "Costus and Amomum with Six Noble Ingredients Pill  ", uses: ": Poor appetite, belching, distention or pain in the gastric and abdominal regions, and sometimes vomiting and diarrhea. With appropriate modifications, modern TCM uses the formula in conditions like gastritis, peptic ulcers, digestive tract dysfunction as well as to stimulate appetite.", simpleIngredientsString: " (split) ren shen, ginseng, Radix Ginseng (split) Default, largehead atractylodes rhizome, Rhizoma Atractylodis Macrocephalae (split) Default, poria, poria (split) zhi gan cao, roasted liquorice root, Radix Glycyrrhizae Praeparata  (split) chen pi, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, Pinellia tuber, Rhizoma Pinelliae (split) Default, costus root, Radix Aucklandiae (split) sha ren, villous amomum fruit , Fructus Amomi", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XiangShaLiuJunZiWan), images: [], context: self.moc)
        
        
        let BaZhenTang = Formula(pinyinName: " Ba Zhen Tang", englishName: "Eight-treasure Decoction  ", uses: ": Pallid or sallow complexion, dizziness, blurred vision, easily-fatigued limbs, shortness of breath, laconic speech, palpitations with anxiety, reduced appetite, a pale tongue and the pulse is weak and fine. With appropriate modifications, modern TCM uses the formula in conditions like general weakness after various diseases, anemia, lumbar pain in women, menstrual disorders, chronic gastritis, chronic hepatitis and alopecia areata.", simpleIngredientsString: " (split) dang gui, angelica root, Radix Angelicae Sinensis (split) Default, Sichuan lovage, Rhizoma Ligustici Chuanxiong (split) Default, white peony root, Radix Paeoniae Alba (split) shu di, processed rhemannia rhizome, Rhizoma Rehmanniae Praeparatae (split) ren shen, ginseng, Radix Ginseng (split) Default, largehead atractylodes rhizome, Rhizoma Atractylodis Macrocephalae (split) Default, poria, poria (split) zhi gan cao, roasted liquorice root, Radix Glycyrrhizae Praeparata ", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.BaZhenTang), images: [], context: self.moc)
        
        
        let SiJunZiTang = Formula(pinyinName: " Si Jun Zi Tang", englishName: "Four-gentlemen Decoction  ", uses: ": Paleness, feeble voice, limb weakness, reduced appetite, loose stools, a pale tongue and the pulse is weak. With appropriate modifications, modern TCM uses the formula in conditions like nervous debility, chronic gastritis, peptic ulcers, irritable bowel syndrome as well as promoting recovery after major disease. ", simpleIngredientsString: " (split) ren shen, ginseng, Radix Ginseng (split) Default, largehead atractylodes rhizome, Rhizoma Atractylodis Macrocephalae (split) Default, poria, poria (split) zhi gan cao, roasted liquorice root, Radix Glycyrrhizae Praeparata ", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.SiJunZiTang), images: [], context: self.moc)
        
        
        let SiWuTang = Formula(pinyinName: " Si Wu Tang", englishName: "Four-substance Decoction  ", uses: ": Panic, dizziness, blurred vision, ear ringing, paleness of the lips and nails, scanty menses or missed periods in women accompanied with lower abdominal pain, a pale tongue, and the pulse is taut and fine. With appropriate modifications, modern TCM uses the formula in conditions like primary dysmenorrheal, irregular menstruation, anemia, weakness after delivery, urticaria and headaches.", simpleIngredientsString: " (split) dang gui, angelica root, Radix Angelicae Sinensis (split) Default, Sichuan lovage, Rhizoma Ligustici Chuanxiong (split) Default, white peony root, Radix Paeoniae Alba (split) shu di, processed rhemannia rhizome, Rhizoma Rehmanniae Praeparatae", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.SiWuTang), images: [], context: self.moc)
        
        
        let DaBuYuanJian = Formula(pinyinName: " Da Bu Yuan Jian", englishName: " ", uses: "Great Constitution Tonifying Decoction ", simpleIngredientsString: "", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DaBuYuanJian), images: [], context: self.moc)
        
        
        let DaBuYinWan = Formula(pinyinName: " Da Bu Yin Wan", englishName: " ", uses: "Great Tonify the Yin Pill ", simpleIngredientsString: "", category: "Tonics", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DaBuYinWan), images: [], context: self.moc)
        

        return [ShiQuanDaBuTang, XiangShaLiuJunZiWan, BaZhenTang, SiJunZiTang, SiWuTang, DaBuYuanJian, DaBuYinWan]
    }
    func Astringents()->[Formula]{
        
        
        return []
    }
    
    func Calming()->[Formula]{
        
        
        return []
    }
    func OrificeOpening()->[Formula]{
        
        
        return []
    }
    func QiRegulating()->[Formula]{
        
        
        return []
    }
    func BloodRegulating()->[Formula]{
        
        
        
        let HuoXueHuaJianTang = Formula(pinyinName: " Huo Xue Hua Jian Tang", englishName: "Decoction for Activating Blood and Relieving Firmness  ", uses: " ", simpleIngredientsString: " (split) Default,  fang feng ,  Ledebouriella root  (split) Default,  chi shao ,  Red peony root  (split) Default,  dang gui ,  Angelica root  (split) Default,  tian hua fen ,  Snakegourd root  (split) Default,  jin yih hua ,  Honeysuckle flower  (split) Default,  zhe bei mu ,  Thunberg fritillary bulb  (split) Default,  chuan xiong ,  Sichuan lovage  (split) Default,  zao jiao ci ,  Chinese honeylocust spine  (split) Default,  jie geng ,  Balloonflower root  (split) Default,  jiang can ,  Silkworm  (split) Default,  hou po ,  Magnolia bark  (split) Default,  wu ling zhi ,  Flying squirrel feces&nbsp;  (split) Default,  chen pi ,  Dried tangerine peel  (split) Default,  gan cao ,  Liquorice root  (split) Default,  ru xiang ,  Frankincense  (split) Default,  bai zhi ,  Dahurian Angelica root ", category: "Blood Regulating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.HuoXueHuaJianTang), images: [], context: self.moc)
        
        
        let ShaoFuZhuYuTang = Formula(pinyinName: " Shao Fu Zhu Yu Tang", englishName: " ", uses: "Decoction for Removing Blood Stasis in the Lower Abdomen ", simpleIngredientsString: "", category: "Blood Regulating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShaoFuZhuYuTang), images: [], context: self.moc)
        
        
        let ShengHuaTang = Formula(pinyinName: " Sheng Hua Tang", englishName: "Generation and Transformation Decoction  ", uses: ": After delivery, there is non-smooth flow of  the lochia and also cold pain in the lower abdominal region. The formula is usually used for  retention of placental fragments within the uterus, excessive vaginal discharge  or painful uterine contractions in post partum, and chronic endometriosis.", simpleIngredientsString: " (split) dang gui , angelica root, Radix Angelicae Sinensis (split) Default, Sichuan lovage, Rhizoma Ligustici Chuanxiong (split) Default, peach kernel, Semen Persicae (split) Default, processed ginger, Rhizoma Zingiberis Praeparatae (split) Default, roasted liquorice root, Radix Glycyrrhizae Praeparata ", category: "Blood Regulating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShengHuaTang), images: [], context: self.moc)
        
        
        let TaoHongSiWuTang = Formula(pinyinName: " Tao Hong Si Wu Tang", englishName: " ", uses: "Peach Pit and Safflower with  Four-Substance Decoction ", simpleIngredientsString: "", category: "Blood Regulating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.TaoHongSiWuTang), images: [], context: self.moc)
        
        
        let TongQiaoHuoXueTang = Formula(pinyinName: " Tong Qiao Huo Xue Tang", englishName: " ", uses: "Unblock the Orifices and Invigorate the Blood Decoction ", simpleIngredientsString: "", category: "Blood Regulating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.TongQiaoHuoXueTang), images: [], context: self.moc)
        

        
        return [HuoXueHuaJianTang, ShaoFuZhuYuTang, ShengHuaTang, TaoHongSiWuTang, TongQiaoHuoXueTang]
    }
    
    func DampnessDispelling()->[Formula]{
        
        
        let HuoXiangZhengQiSan = Formula(pinyinName: " Huo Xiang Zheng Qi San", englishName: "Agastache Powder for Rectifying Healthy Qi  ", uses: ": Fever, chills, headache, nausea, vomiting,  feelings of fullness  and oppression in the cheat, pain and rambling sounds in the gastric and  abdominal regions, diarrhea, a bland taste in the mouth, and a white greasy  tongue coating. The formula is usually used for intestinal flu, acute  gastroenteritis and indigestion.", simpleIngredientsString: " (split) huo xiang , agastache, Herba Agastachess seu Pogostemonis (split) Default, betel nut coat, Pericarpium Arecae (split) Default, poria, Poria (split) Default, largehead atractylodes rhizome, Rhizoma Atractylodis Macrocephalae (split) Default, processed pinellia tuber, Rhizoma Pinelliae Praeparata  (split) Default, Magnolia bark, Cortex Magnoliae Officinalis  (split) Default, perilla leaf, Folium Perillae (split) Default, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, balloonflower root, Radix Platycodi (split) Default, roasted liquorice root, Radix Glycyrrhizae Praeparata  (split) Default, dahurian angelica root, Radix Angelicae Dauhuicae", category: "Dampness Dispelling", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.HuoXiangZhengQiSan), images: [], context: self.moc)
        
        
        let PingWeiSan = Formula(pinyinName: " Ping Wei San", englishName: "Calm the Stomach Powder  ", uses: ": distention and fullness in the gastric and  abdominal regions, lack of appetite, nausea, belching, acid regurgitation,  limbs heaviness, loose bowel or diarrhea, fatigue, sleepiness, and a white  greasy tongue coating. Modern TCM uses this formula for intestinal flu, nonspecific intestinal disorder,  indigestion and chronic gastritis.", simpleIngredientsString: " (split) cang zhu , atractylodes rhizome, Rhizoma Atractylodis (split) Default, Magnolia bark, Cortex Magnoliae Officinalis  (split) Default, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, liquorice root, Radix Glycyrrhizae", category: "Dampness Dispelling", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.PingWeiSan), images: [], context: self.moc)
        

        return [HuoXiangZhengQiSan, PingWeiSan]
    }
    
    func WindEliminating()->[Formula]{
        let TianMaGouTengYin = Formula(pinyinName: " Tian Ma Gou Teng Yin", englishName: "Gastrodia and Uncaria Decoction  ", uses: ": headache, dizziness, vertigo, ear ringing,  blurred vision, insomnia, dream-disturbed sleep, a red tongue covered by  yellowish fur. In severe cases, there may also be numbness, twitching and  spasms in the limbs, and even paralysis. The formula is usually used for stroke and  hypertension that appear with previously mentioned symptoms.", simpleIngredientsString: " (split) tian ma , tall gastrodia tuber, Rhizoma Gastrodiae (split) Default, gambir vine stem , Ramulus cum Uncis Uncariae (split) Default, abalone shell, Concha Haliotidis (split) Default, Gardenia fruit, Fructus Gardeniae (split) Default, baical skullcap root&nbsp;, &nbsp;Radix Scutellariae  (split) Default, eucommia bark, Cortex Eucommiae (split) Default, cyathula root, Radix Cyathulae Officinalis (split) Default, motherwort herb, Herba Leonuri (split) Default, Chinese taxillus herb, Ramulus Loranthi (split) Default, tuber fleeceflower stem, Caulis Polygoni Multiflori (split) Default, poria processed by cinnabar, Poria preparated with cinnabar", category: "Wind Eliminating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.TianMaGouTengYin), images: [], context: self.moc)
        
        
        let DuHuoJiShengTang = Formula(pinyinName: " Du Huo Ji Sheng Tang", englishName: "Pubescent Angelica and Loranthus Decoction  ", uses: ": Pain in the back and lower limbs, difficulty in  joint movements, numbness or coldness of the limbs, palpitation and breath  shortness. This formula is usually used for rheumatoid arthritis,  osteoarthritis, chronic lumbar strain and sciatica.", simpleIngredientsString: " (split) sang ji sheng , Chinese taxillus herb, Ramulus Loranthi (split) Default, double-teeth pubescent angelica root , Radix Angelicae Pubescentis  (split) Default, eucommia bark, Cortex Eucommiae (split) Default, achyranthes root, Radix Achyranthis Bidentatae (split) Default, manchurian wildginger, Herba Asari (split) Default, largeleaf gentian root, Radix Gentianae Macrophyllae (split) Default, poria, Poria (split) Default, cassia bark, Cortex Cinnamomi (split) Default, ledebouriella root, Radix Ledebouriellae (split) Default, Sichuan lovage, Rhizoma Ligustici Chuanxiong (split) Default, ginseng, Radix Ginseng (split) Default, roasted liquorice root, Radix Glycyrrhizae Praeparata  (split) Default, angelica root, Radix Angelicae Sinensis (split) Default, white peony root, Radix Paeoniae Alba (split) Default, rhemannia root , Radix Rehmanniae", category: "Wind Eliminating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.DuHuoJiShengTang), images: [], context: self.moc)
        
        
        let SiWuXiaoFengYin = Formula(pinyinName: " Si Wu Xiao Feng Yin", englishName: " ", uses: "Four Substances Disperse Wind Drink ", simpleIngredientsString: "", category: "Wind Eliminating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.SiWuXiaoFengYin), images: [], context: self.moc)
        
        
        let ZhenGanXiFengTang = Formula(pinyinName: " Zhen Gan Xi Feng Tang", englishName: " ", uses: "Calming Liver and Extinguishing Wind Decoction ", simpleIngredientsString: "", category: "Wind Eliminating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ZhenGanXiFengTang), images: [], context: self.moc)
        
        
        let QianZhengSan = Formula(pinyinName: " Qian Zheng San", englishName: " ", uses: "Restoring Facial Distortion Powder ", simpleIngredientsString: "", category: "Wind Eliminating", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.QianZhengSan), images: [], context: self.moc)
        

        
        return [ TianMaGouTengYin, DuHuoJiShengTang, SiWuXiaoFengYin, ZhenGanXiFengTang, QianZhengSan]
    }
    
    func PhlegmResolving()->[Formula]{
        
        
        return []
    }
    
    func DrynessMoistening()->[Formula]{
        
        
        
        let XingSuSan = Formula(pinyinName: " Xing Su San", englishName: "Apricot Kernel and Perilla Leaf Powder  ", uses: ": slight headache, chills without sweating,  cough with watery sputum, stuffy nose and dry throat. The formula is usually used for upper respiratory  tract infections, chronic bronchitis and emphysema. ", simpleIngredientsString: " (split) zi su ye , perilla leaf, Folium Perillae (split) Default, bitter apricot kernel, Semen Armeniacae Amarum (split) Default, pinellia tuber, Rhizoma Pinelliae (split) Default, poria, Poria (split) Default, dried tangerine peel, Pericarpium Citri Reticulatae (split) Default, hogfennel root, Radix Peucedani (split) Default, balloonflower root, Radix Platycodi (split) Default, bitter orange peel, Fructus Aurantii (split) Default, liquorice root, Radix Glycyrrhizae (split) Default, fresh ginger, Rhizoma Zingiberis Recens (split) Default, common jujube fruit, Fructus Ziziphi Jujubae", category: "Dryness Moistening", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.XingSuSan), images: [], context: self.moc)
        
        
        let ShaShenMaiDongTang = Formula(pinyinName: " Sha Shen Mai Dong Tang", englishName: " ", uses: "Glehnia Root and Dwarf Lily-turf Tuber  Decoction ", simpleIngredientsString: "", category: "Dryness Moistening", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.ShaShenMaiDongTang), images: [], context: self.moc)
        
        
        let YuYeTang = Formula(pinyinName: " Yu Ye Tang", englishName: "Jade Fluid Decoction  ", uses: ": diabetic symptoms like excessive thirst, profuse  turbid urination, lassitude and shortness of breath.", simpleIngredientsString: " (split) shan yao , Chinese yam, Rhizoma Dioscoreae (split) Default, astragalus , Radix Astragali (split) Default, anemarrhena rhizome, Rhizoma Anemarrhenae (split) Default, chicken's gizzard-skin, Endothelium Corneum Gigeriae Galli (split) Default, kudzu root, Radix Puerariae (split) Default, schisandra fruit, Fructus Schisandrae (split) Default, snakegourd root, Radix Trichosanthis", category: "Dryness Moistening", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.YuYeTang), images: [], context: self.moc)
        
        
        let BaiHeGuJinTang = Formula(pinyinName: " Bai He Gu Jin Tang", englishName: "Lily Bulb Decoction to Preserve the Lung  ", uses: ": Cough with blood stained sputum, wheezing,  throat dryness, hot palms and soles, night sweats, and a red tongue.  Clinically, the formula is usually for chronic bronchitis, pulmonary  tuberculosis, pharyngitis, and bronchiectasis. ", simpleIngredientsString: " (split) sheng di , rhemannia root , Radix Rehmanniae (split) Default, processed rhemannia rhizome , Rhizoma Rehmanniae Praeparatae (split) Default, dwarf lily-turf tuber, Radix Ophiopogonis  (split) Default, lily bulb, Bulbus Lilii (split) Default, white peony root, Radix Paeoniae Alba (split) Default, figwort root, Radix Scrophulariae (split) Default, thunberg fritillary bulb, Bulbus Fritillariae Thunbergii (split) Default, balloonflower root, Radix Platycodi (split) Default, angelica root, Radix Angelicae Sinensis (split) Default, liquorice root, Radix Glycyrrhizae", category: "Dryness Moistening", hasContents: self.fid.getHerbsInSet(FormulaIngredientDictionaries.ThisFormula.BaiHeGuJinTang), images: [], context: self.moc)
        

        return [XingSuSan, ShaShenMaiDongTang, YuYeTang, BaiHeGuJinTang]
    }
    
    func allFormulas() -> [Formula] {
        
        let allFormulas = [ ReleaseTheExterior(), Purgatives(), Digestives(), Harmonizing(), HeatClearing(), InteriorWarming(), Tonic(), Astringents(), Calming(), OrificeOpening(), QiRegulating(), BloodRegulating(), DampnessDispelling(), WindEliminating(), PhlegmResolving(),  DrynessMoistening() ]
        
        let allFormulas1 = allFormulas.flatMap{$0}
        
        return  allFormulas1
    }

}