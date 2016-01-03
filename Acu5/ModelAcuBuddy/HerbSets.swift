//
//  DefaultHerbs.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/14/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation


class HerbSets {
    
    static let sharedController = HerbSets()
    
    let moc = Stack.sharedStack.managedObjectContext
    
    var HerbSet = HerbSetType.DisperseWindCold
    var herbset: [Herb] = []
    
    var thisHerbSetType: HerbSetType?
    
    enum HerbSetType {
        case AllHerbs
        case DisperseWindCold
        case DisperseWindHeat
        case PurgeHeat
        case ClearBloodHeat
        case ClearDampHeat
        case ClearToxicHeat
        case ClearDeficiencyHeat
        case Laxatives
        case DrainDamp
        case DispelWindDamp
        case DissolveHotPhlegm
        case DissolveColdPhlegm
        case StopCough
        case AromaticsDispelDamp
        case Digestives
        case RegulateQi
        case StopBleeding
        case MoveBlood
        case WarmInterior
        case TonifyQi
        case TonifyBlood
        case TonifyYang
        case TonifyYin
        case Astringents
        case CalmShen
        case NourishShen
        case ExtinguishLiverWind
        case ExternalApplication
        
        
    }
    
    func getHerbSet(thisSetType: HerbSetType) -> [Herb]{
        //self.thisHerbSetType = thisSetType
        self.HerbSet = thisSetType
        print("this herb set I am trying to load is \(HerbSet)")
        switch thisSetType {
            
        case .DisperseWindCold: return windColdHerbs()
        case .DisperseWindHeat: return windHeatHerbs()
        case .PurgeHeat:        return purgeHeatHerbs()
        case .ClearBloodHeat:   return clearBloodHeatHerbs()
        case .ClearDampHeat:    return clearDampHeatHerbs()
        case .ClearToxicHeat:   return clearToxicHeatHerbs()
        case .ClearDeficiencyHeat: return clearDeficiencyHeatHerbs()
        case .Laxatives:        return laxativeHerbs()
        case .DrainDamp:        return drainDampHerbs()
        case .DispelWindDamp:   return dispelWindDampHerbs()
        case .DissolveHotPhlegm: return dissolveHotPhlegmHerbs()
        case .DissolveColdPhlegm: return dissolveColdPhlegmHerbs()
        case .StopCough:        return stopCoughHerbs()
        case .AromaticsDispelDamp: return aromaticDampResolvingHerbs()
        case .Digestives:       return digestiveHerbs()
        case .RegulateQi:       return regulateQiHerbs()
        case .StopBleeding:     return stopBleedingHerbs()
        case .MoveBlood:        return bloodMovingHerbs()
        case .WarmInterior:     return interiorWarmingHerbs()
        case .TonifyQi:         return qiTonicHerbs()
        case .TonifyBlood:      return bloodTonicHerbs()
        case .TonifyYang:       return yangTonicHerbs()
        case .TonifyYin:        return yinTonicHerbs()
        case .Astringents:      return astringentHerbs()
        case .CalmShen:         return shenCalmingHerbs()
        case .NourishShen:      return shenNourishingHerbs()
        case .ExtinguishLiverWind: return liverWindExtinguishingHerbs()
        //case .ExternalApplication: return externalApplicationHerbs()

            
        default: return []
            
        }
    }
    
    ///Need to update first two herb sections
    
    func windColdHerbs()->[Herb]{
        
        print("Wind-Cold herbs set")
        
        
        
        let guiZhi = Herb(pinyinName: "Gui Zhi", pharmName: "Ramulus Cinnamomi", commonName: "", botanicalName: "", englishName: "Cinnamon Twig", chineseCharacter: "桂枝", category: "Release Wind-Cold Exterior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GuiZhi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GuiZhi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GuiZhi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let ziSuYe = Herb(pinyinName: "Zi Su Ye", pharmName: "Folium Perillae", commonName: "", botanicalName: "", englishName: "Perilla Leaf", chineseCharacter: "紫苏叶", category: "Release Wind-Cold Exterior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ZiSuYe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ZiSuYe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ZiSuYe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let jingJie = Herb(pinyinName: "Jing Jie", pharmName: "Herba Schizonepetae", commonName: "", botanicalName: "", englishName: "All-Grass of Fineleaf Schizonepeta", chineseCharacter: "荆芥", category: "Release Wind-Cold Exterior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.JingJie), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.JingJie), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.JingJie) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let qiangHuo = Herb(pinyinName: "Qiang Huo", pharmName: "Radix Et Rhizoma Notopterygii", commonName: "", botanicalName: "", englishName: "Root And Rhizome of Incised Notoptergium", chineseCharacter: "羌活", category: "Release Wind-Cold Exterior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.QiangHuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.QiangHuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.QiangHuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let shengJiang = Herb(pinyinName: "Sheng Jiang", pharmName: "Rhizoma Zingiberis Recens", commonName: "Fresh ginger", botanicalName: "Zingiber officinale Willd. Rosc", englishName: "Fresh Ginger", chineseCharacter: "生姜", category: "Release Wind-Cold Exterior", temp: "Pungent and warm", meridians: "Lung, spleen and stomach", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShengJiang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShengJiang), earliestRecord: "Mingyi Bielu", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShengJiang) , dosage: "3-10 g",majorFormulas: " ", images: [], context: self.moc)
        

        
        return [guiZhi, ziSuYe, jingJie, qiangHuo, shengJiang]
        
        
    }
    
    func windHeatHerbs()->[Herb]{
        
        print("Wind-Heat herbs set")
      
        let boHe = Herb(pinyinName: "Bo He", pharmName: "" , commonName: "", botanicalName: "Herba Menthae", englishName: "Mentha, Peppermint", chineseCharacter: "薄荷", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BoHe), uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "", majorFormulas: " ", images: [], context: self.moc)
        
        let niuBangZi = Herb(pinyinName: "Niu Bang Zi", pharmName: "" , commonName: "", botanicalName: "Fructus Arctii Lappae", englishName: "Achene of Great Burdock", chineseCharacter: "牛蒡子", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.NiuBangZi),uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "",  majorFormulas: " ", images: [], context: self.moc)
        
        let sangYe = Herb(pinyinName: "Sang Ye", pharmName: "" , commonName: "", botanicalName: "Folium Mori", englishName: "Mulberry Leaf", chineseCharacter: "桑叶", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangYe), uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "", majorFormulas: " ", images: [], context: self.moc)
        
        let juHua = Herb(pinyinName: "Ju Hua", pharmName: "" , commonName: "", botanicalName: "Flos Chrysanthemi", englishName: "Chrysanthemum Flower", chineseCharacter: "菊花", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.JuHua), uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "", majorFormulas: " ", images: [], context: self.moc)
        
        let geGen = Herb(pinyinName: "Ge Gen",  pharmName: "" , commonName: "",botanicalName: "Radix Puerariae", englishName: "Root of Lobed Kudzuvine", chineseCharacter: "葛根", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GeGen), uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "", majorFormulas: " ", images: [], context: self.moc)
        
        let chaiHu = Herb(pinyinName: "Chai Hu",  pharmName: "" , commonName: "",botanicalName: "Radix Bupleuri", englishName: "Root of Chinese Thorowax", chineseCharacter: "柴胡", category: "Release Wind-Heat Exterior", temp: " ", meridians: " ", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChaiHu), uses1: "", earliestRecord: "", gatheringInfo: "", dosage: "", majorFormulas: " ", images: [], context: self.moc)
        
        return [boHe, niuBangZi, sangYe, juHua, geGen, chaiHu]
       
    }
    
    func purgeHeatHerbs() -> [Herb]{
        
        let shiGao = Herb(pinyinName: "Shi Gao", pharmName: "Gypsum Fibrosum Praeparata", commonName: "", botanicalName: "", englishName: "Calcined Gypsum", chineseCharacter: "煅石膏", category: "Purge Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShiGao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShiGao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShiGao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let zhiMu = Herb(pinyinName: "Zhi Mu", pharmName: "Rhizoma Anemarrhenae", commonName: "", botanicalName: "", englishName: "Rhizome of Common Anamarrhena", chineseCharacter: "知母", category: "Purge Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ZhiMu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ZhiMu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ZhiMu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let zhiZi = Herb(pinyinName: "Zhi Zi", pharmName: "Fructus Akebiae", commonName: "", botanicalName: "", englishName: "Akebia Fruit", chineseCharacter: "预知子", category: "Purge Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ZhiZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ZhiZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ZhiZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let xiaKuCao = Herb(pinyinName: "Xia Ku Cao", pharmName: "Herba Ajugae Ciliatae", commonName: "", botanicalName: "", englishName: "All-Grass of Decumbent Bugle", chineseCharacter: "白毛夏枯草", category: "Purge Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XiaKuCao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XiaKuCao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XiaKuCao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [shiGao, zhiMu, zhiZi, xiaKuCao]
    }
    
    func clearBloodHeatHerbs() -> [Herb]{
      
        let shengDiHuang = Herb(pinyinName: "Sheng Di Huang", pharmName: "Radix Rehmanniae", commonName: "Fresh rehmannia root", botanicalName: "Rehmannia gultinosa Libosch.", englishName: "Fresh Rehmannia Root", chineseCharacter: "生地黄", category: "Clear Blood Heat", temp: "Sweet, bitter and cold", meridians: "Heart, liver and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShengDiHuang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShengDiHuang), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShengDiHuang) , dosage: "9-30 g",majorFormulas: " ", images: [], context: self.moc)
        
        let muDanPi = Herb(pinyinName: "Mu Dan Pi", pharmName: "Cortex Moutan", commonName: "Moutan bark, Tree peony bark", botanicalName: "Paeonia suffruticosa Andr.", englishName: "Tree Peony Bark", chineseCharacter: "牡丹皮", category: "Clear Blood Heat", temp: "Bitter, pungent and slightly cold", meridians: "Heart, liver and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MuDanPi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MuDanPi), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MuDanPi) , dosage: "6-12 g",majorFormulas: " ", images: [], context: self.moc)
        
        let xuanShen = Herb(pinyinName: "Xuan Shen", pharmName: "Radix Scrophulariae", commonName: "Scrophularia root, Ningpo figwort root", botanicalName: "Scrophularia ningpoensiis Hemsl.", englishName: "Figwort Root", chineseCharacter: "玄参", category: "Clear Blood Heat", temp: "Bitter, sweet-salty and cold", meridians: "Lung, stomach and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XuanShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XuanShen), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XuanShen) , dosage: "10-15 g",majorFormulas: " ", images: [], context: self.moc)


  
        return [shengDiHuang, muDanPi, xuanShen]
        
    }
    
    func clearDampHeatHerbs() -> [Herb]{
        
        let huangQin = Herb(pinyinName: "Huang Qin", pharmName: "Radix Scutellariae", commonName: "", botanicalName: "", englishName: "Root of Baikal Skullcap", chineseCharacter: "黄芩", category: "Clear Damp-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuangQin), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuangQin), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuangQin) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huangLian = Herb(pinyinName: "Huang Lian", pharmName: "Rhizoma Coptidis", commonName: "", botanicalName: "", englishName: "Rhizome of Chinese Goldthread", chineseCharacter: "川黄连", category: "Clear Damp-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuangLian), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuangLian), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuangLian) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huangBai = Herb(pinyinName: "Huang Bai", pharmName: "Cortex Phellodendri", commonName: "Phellodendron bark", botanicalName: "1. Phellodendron amurense Rupr.; 2. Phellodendron chinense Schneid.", englishName: "Phellodendron Bark", chineseCharacter: "黄柏", category: "Clear Damp-Heat", temp: "Bitter and cold", meridians: "Kidney, urinary bladder and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuangBai), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuangBai), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuangBai) , dosage: "3-10 g",majorFormulas: " ", images: [], context: self.moc)
        
        let longDanCao = Herb(pinyinName: "Long Dan Cao", pharmName: "Radix Gentianae", commonName: "", botanicalName: "", englishName: "Root of Przewalsk Gentian", chineseCharacter: "龙胆草", category: "Clear Damp-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.LongDanCao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.LongDanCao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.LongDanCao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [huangQin, huangLian, huangBai, longDanCao]
        
    }
    
    func clearToxicHeatHerbs() -> [Herb]{
        
        
        let jinYinHua = Herb(pinyinName: "Jin Yin Hua", pharmName: "Flos Lonicerae", commonName: "", botanicalName: "", englishName: "Honeysuckle Flower", chineseCharacter: "金银花", category: "Clear Toxic Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.JinYinHua), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.JinYinHua), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.JinYinHua) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let lianQiao = Herb(pinyinName: "Lian Qiao", pharmName: "Hypericum Perforatum", commonName: "", botanicalName: "", englishName: "St John's Wort", chineseCharacter: "贯叶连翘", category: "Clear Toxic Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.LianQiao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.LianQiao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.LianQiao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let puGongYing = Herb(pinyinName: "Pu Gong Ying", pharmName: "Herba Taraxaci", commonName: "", botanicalName: "", englishName: "Dandelion", chineseCharacter: "蒲公英", category: "Clear Toxic Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.PuGongYing), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.PuGongYing), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.PuGongYing) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let tuFuLing = Herb(pinyinName: "Tu Fu Ling", pharmName: "Rhizoma Smilacis Glabrae", commonName: "", botanicalName: "", englishName: "Glabrous Greenbrier Rhizome", chineseCharacter: "土茯苓", category: "Clear Toxic Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TuFuLing), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TuFuLing), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TuFuLing) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        return [jinYinHua, lianQiao, puGongYing, tuFuLing]
        
    }
    
    func clearDeficiencyHeatHerbs() -> [Herb]{
     
        let qingHao = Herb(pinyinName: "Qing Hao", pharmName: "Herba Artemisiae Annuae", commonName: "", botanicalName: "", englishName: "Sweet Wormwood Herb", chineseCharacter: "青蒿", category: "Clear Deficiency-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.QingHao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.QingHao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.QingHao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let diGuPi = Herb(pinyinName: "Di Gu Pi", pharmName: "Cortex Lycii Radicis", commonName: "", botanicalName: "", englishName: "Root - Bark of Chinese Wolfberry", chineseCharacter: "地骨皮", category: "Clear Deficiency-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DiGuPi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DiGuPi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DiGuPi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baiWei = Herb(pinyinName: "Bai Wei", pharmName: "Radix Cynanchi Atrati", commonName: "", botanicalName: "", englishName: "Blackend Swallowwort Root", chineseCharacter: "白薇", category: "Clear Deficiency-Heat", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiWei), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiWei), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiWei) , dosage: "",majorFormulas: " ", images: [], context: self.moc)


        
        return [qingHao, diGuPi, baiWei]
    }
    

    
    func laxativeHerbs() -> [Herb]{
        
        
        let daHuang = Herb(pinyinName: "Da Huang", pharmName: "Radix Et Rhizoma Rhei", commonName: "", botanicalName: "", englishName: "Root And Rhizome of Sorrel Rhubarb", chineseCharacter: "大黄", category: "Laxative", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DaHuang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DaHuang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DaHuang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let mangXiao = Herb(pinyinName: "Mang Xiao", pharmName: "Natrii Sulfas", commonName: "", botanicalName: "", englishName: "Sodium Sulfate", chineseCharacter: "芒硝", category: "Laxative", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MangXiao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MangXiao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MangXiao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huoMaRen = Herb(pinyinName: "Huo Ma Ren", pharmName: "Semen Cannabis;Fructus Cannabis", commonName: "", botanicalName: "", englishName: "Hemp Seed", chineseCharacter: "火麻仁", category: "Laxative", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuoMaRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuoMaRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuoMaRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        

        return [daHuang, mangXiao, huoMaRen]
    }
    
    func drainDampHerbs() -> [Herb]{
        
        let fuLing = Herb(pinyinName: "Fu Ling", pharmName: "Poriae Alba", commonName: "", botanicalName: "", englishName: "White Indian Bread", chineseCharacter: "白茯苓", category: "Drain Dampness", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.FuLing), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.FuLing), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.FuLing) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let zeXie = Herb(pinyinName: "Ze Xie", pharmName: "Rhizoma Alismatis", commonName: "Alismatis rhizome, Water plantain tuber", botanicalName: "Alisma orientalis (Sam.) Juzep.", englishName: "Rhizome of Oriental Waterplantain", chineseCharacter: "泽泻", category: "Drain Dampness", temp: "Sweet or no taste and cold", meridians: "Kidney and urinary bladder", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ZeXie), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ZeXie), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ZeXie) , dosage: "5-10 g",majorFormulas: " ", images: [], context: self.moc)
        
        let yiYiRen = Herb(pinyinName: "Yi Yi Ren", pharmName: "Semen Coicis", commonName: "Coix seed, Job's tears seed", botanicalName: "Coix lachryma-jobi L. var. ma-yuen (Roman.) Stapf", englishName: "Seed of Jobstears", chineseCharacter: "薏苡仁", category: "Drain Dampness", temp: "Sweet or no taste and slightly cold", meridians: "Spleen, stomach and lung", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.YiYiRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.YiYiRen), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.YiYiRen) , dosage: "10-30 g",majorFormulas: " ", images: [], context: self.moc)

    
        return [fuLing, zeXie, yiYiRen]
    }
    
    func dispelWindDampHerbs() -> [Herb]{
        
        
        let duHuo = Herb(pinyinName: "Du Huo", pharmName: "Radix Heraclei Maximi", commonName: "", botanicalName: "", englishName: "Root of Laxflower Cowparsnip", chineseCharacter: "大独活", category: "Dispel Wind-Damp", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DuHuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DuHuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DuHuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let muGua = Herb(pinyinName: "Mu Gua", pharmName: "Fructus Chaenomelis", commonName: "", botanicalName: "", englishName: "Fruit of Common Floweringquince", chineseCharacter: "木瓜", category: "Dispel Wind-Damp", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MuGua), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MuGua), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MuGua) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let sangJiSheng = Herb(pinyinName: "Sang Ji Sheng", pharmName: "Herba Taxilli", commonName: "", botanicalName: "", englishName: "Chinese Taxillus Herb", chineseCharacter: "桑寄生", category: "Dispel Wind-Damp", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangJiSheng), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SangJiSheng), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SangJiSheng) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let sangZhi = Herb(pinyinName: "Sang Zhi", pharmName: "Ramulus Mori", commonName: "", botanicalName: "", englishName: "Mulberry Twig", chineseCharacter: "桑枝", category: "Dispel Wind-Damp", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangZhi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SangZhi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SangZhi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)


        return [duHuo, muGua, sangJiSheng, sangZhi]
    }
    
    func dissolveHotPhlegmHerbs() -> [Herb]{
        
        
        let chuanBeiMu = Herb(pinyinName: "Chuan Bei Mu", pharmName: "Bulbus Fritillariae Cirrhosae", commonName: "", botanicalName: "", englishName: "Bulb of Tendrilleaf Fritillary", chineseCharacter: "川贝母", category: "Dissolve Hot Phlegm", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChuanBeiMu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ChuanBeiMu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ChuanBeiMu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let guaLuo = Herb(pinyinName: "Gua Luo", pharmName: "Retinervus Luffae Fructus", commonName: "", botanicalName: "", englishName: "Luffa Vegetable Sponge", chineseCharacter: "丝瓜络", category: "Dissolve Hot Phlegm", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GuaLuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GuaLuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GuaLuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [chuanBeiMu, guaLuo]
    }
    
    func dissolveColdPhlegmHerbs() -> [Herb]{
        
        let banXia = Herb(pinyinName: "Ban Xia", pharmName: "Rhizoma Pinelliae", commonName: "", botanicalName: "", englishName: "Tuber of Pinellia", chineseCharacter: "半夏", category: "Dissolve Cold Phlegm", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BanXia), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BanXia), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BanXia) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let jieGeng = Herb(pinyinName: "Jie Geng", pharmName: "Radix Platycodi", commonName: "Platycodon root, Balloonflower root", botanicalName: "Platycodon grandiflorum (Jacq.) A. DC.", englishName: "Balloonflower Root", chineseCharacter: "白桔梗", category: "Dissolve Cold Phlegm", temp: "Bitter, pungent and neutral", meridians: "Lung", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.JieGeng), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.JieGeng), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.JieGeng) , dosage: "3-10 g",majorFormulas: " ", images: [], context: self.moc)

        
        return [banXia, jieGeng]
    }
    
    func stopCoughHerbs() -> [Herb]{
        
        
        let xingRen = Herb(pinyinName: "Xing Ren", pharmName: "Semen Armeniacae Amarum", commonName: "", botanicalName: "", englishName: "Bitter Apricot Seed", chineseCharacter: "苦杏仁", category: "Stop Cough", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XingRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XingRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XingRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let piPaYe = Herb(pinyinName: "Pi Pa Ye", pharmName: "Folium Eriobotryae", commonName: "", botanicalName: "", englishName: "Loquat Leaf", chineseCharacter: "枇杷叶", category: "Stop Cough", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.PiPaYe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.PiPaYe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.PiPaYe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let ziSuZi = Herb(pinyinName: "Zi Su Zi", pharmName: "Fructus Perillae", commonName: "", botanicalName: "", englishName: "Perilia Fruit", chineseCharacter: "紫苏子", category: "Stop Cough", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ZiSuZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ZiSuZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ZiSuZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let sangBaiPi = Herb(pinyinName: "Sang Bai Pi", pharmName: "Cortex Mori", commonName: "Mulberry bark, Morus bark", botanicalName: "Morus alba L.", englishName: "White Mulberry Root-Bark", chineseCharacter: "桑柏皮", category: "Stop Cough", temp: "Sweet and cold", meridians: "Lung", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangBaiPi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SangBaiPi), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SangBaiPi) , dosage: "10-15 g",majorFormulas: " ", images: [], context: self.moc)

     
        return [xingRen, piPaYe, ziSuZi, sangBaiPi]
    }
    
    func aromaticDampResolvingHerbs() -> [Herb]{
        
        
        let huoPo = Herb(pinyinName: "Huo Po", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: "Aromatics to Resolve Dampness", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuoPo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuoPo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuoPo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let cangZhu = Herb(pinyinName: "Cang Zhu", pharmName: "Rhizoma Atractylodis", commonName: "", botanicalName: "", englishName: "Rhizome of Swordlike Atractylodes", chineseCharacter: "苍术", category: "Aromatics to Resolve Dampness", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.CangZhu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.CangZhu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.CangZhu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huoXiang = Herb(pinyinName: "Huo Xiang", pharmName: "Herba Pogostemonis", commonName: "", botanicalName: "", englishName: "All-Grass of Cablin Potchouli", chineseCharacter: "广霍香", category: "Aromatics to Resolve Dampness", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuoXiang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuoXiang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuoXiang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let shaRen = Herb(pinyinName: "Sha Ren", pharmName: "Fructus Amomi", commonName: "", botanicalName: "Fructus alpiniae", englishName: "Villous Amomum Fruit", chineseCharacter: "砂仁", category: "Aromatics to Resolve Dampness", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShaRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShaRen), earliestRecord: " ", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShaRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [huoPo, cangZhu, huoXiang, shaRen]
    }
    
    func digestiveHerbs() -> [Herb]{
        
        
        let shanZha = Herb(pinyinName: "Shan Zha", pharmName: "Fructus Crataegi", commonName: "", botanicalName: "", englishName: "Hawthorn Fruit", chineseCharacter: "山楂", category: "Promote Digestion", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShanZha), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShanZha), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShanZha) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let shenQu = Herb(pinyinName: "Shen Qu", pharmName: "Massa Fermentata Medicinalis Praeparata", commonName: "", botanicalName: "", englishName: "Medicated Leaven", chineseCharacter: "炒神曲", category: "Promote Digestion", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShenQu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShenQu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShenQu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let maiYa = Herb(pinyinName: "Mai Ya", pharmName: "Fructus Hordei Germinatus Praeparata", commonName: "", botanicalName: "", englishName: "Prepared Germinated Barley", chineseCharacter: "炒麦芽", category: "Promote Digestion", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MaiYa), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MaiYa), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MaiYa) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let laiFuZi = Herb(pinyinName: "Lai Fu Zi", pharmName: "Semen Raphani", commonName: "Radish seed", botanicalName: "Raphanus sativus L.", englishName: "Radish Seed", chineseCharacter: "莱菔子", category: "Promote Digestion", temp: "Pungent, sweet and neutral", meridians: "Spleen, stomach and lung", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.LaiFuZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.LaiFuZi), earliestRecord: "Rihuazi Bencao", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.LaiFuZi) , dosage: "6-10 g",majorFormulas: " ", images: [], context: self.moc)

     
        
        return [shanZha, shenQu, maiYa, laiFuZi]
    }
    
    func regulateQiHerbs() -> [Herb]{
        
        
        let chenPi = Herb(pinyinName: "Chen Pi", pharmName: "Pericarpium Citri Reticulatae", commonName: "", botanicalName: "", englishName: "Dried Tangerine Peel", chineseCharacter: "陈皮", category: "Regulate Qi Flow", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChenPi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ChenPi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ChenPi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let xiangFu = Herb(pinyinName: "Xiang Fu", pharmName: "Rhizoma Cyperi", commonName: "Cyperus tuber, Nutgrass rhizome", botanicalName: "Cyperus rotundus L.", englishName: "Rhizome of Nutgrass Galingale", chineseCharacter: "香附", category: "Regulate Qi Flow", temp: "Pungent, slightly bitter, slightly sweet and neutral", meridians: "Liver and triple jiao", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XiangFu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XiangFu), earliestRecord: "Mingyi Bielu", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XiangFu) , dosage: "6-12 g",majorFormulas: " ", images: [], context: self.moc)
        
        let wuYao = Herb(pinyinName: "Wu Yao", pharmName: "Radix Linderae", commonName: "", botanicalName: "", englishName: "Combined Spicebush Root", chineseCharacter: "乌药", category: "Regulate Qi Flow", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.WuYao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.WuYao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.WuYao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let chuanLianZi = Herb(pinyinName: "Chuan Lian Zi", pharmName: "Fructus Meliae Toosendan", commonName: "", botanicalName: "", englishName: "Szechwan Chinaberry Fruit", chineseCharacter: "川楝子", category: "Regulate Qi Flow", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChuanLianZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ChuanLianZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ChuanLianZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)


        return [chenPi, xiangFu, wuYao, chuanLianZi]
    }
    
    func stopBleedingHerbs() -> [Herb]{
        
        
        let sanQi = Herb(pinyinName: "San Qi", pharmName: "Radix Notoginseng", commonName: "Pseudoginseng, Notoginseng", botanicalName: "Panax notoginseng (Burk.) F. H. Chen", englishName: "Sanchi", chineseCharacter: "汉三七", category: "Stop Bleeding", temp: "Sweet, bitter and warm", meridians: "Liver and stomach", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SanQi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SanQi), earliestRecord: "Bencao Gangmu", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SanQi) , dosage: "3-10 g; 1-1.5",majorFormulas: " ", images: [], context: self.moc)
        
        let puHuang = Herb(pinyinName: "Pu Huang", pharmName: "Pollen Typhae", commonName: "", botanicalName: "", englishName: "Pollen of Longbract Cattail", chineseCharacter: "蒲黄", category: "Stop Bleeding", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.PuHuang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.PuHuang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.PuHuang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let ceBaiYe = Herb(pinyinName: "Ce Bai Ye", pharmName: "Cacumen Et Folium Biotae", commonName: "", botanicalName: "", englishName: "Leafy Twigs of Oriental Arborvitae", chineseCharacter: "侧柏叶", category: "Stop Bleeding", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.CeBaiYe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.CeBaiYe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.CeBaiYe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let aiYe = Herb(pinyinName: "Ai Ye", pharmName: "Folium Artemisiae Argyi", commonName: "", botanicalName: "", englishName: "Leaf of Argy Wormwood", chineseCharacter: "艾叶", category: "Stop Bleeding", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.AiYe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.AiYe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.AiYe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        return [sanQi, puHuang, ceBaiYe, aiYe]
    }
    
    func bloodMovingHerbs() -> [Herb]{
        
        
        let chuanXiong = Herb(pinyinName: "Chuan Xiong", pharmName: "Radix Chuanxiong；Rhizoma Chuanxiong", commonName: "", botanicalName: "", englishName: "Chuanxiong Rhizome, Szechuan Lovage Root", chineseCharacter: "川芎", category: "Move the Blood", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChuanXiong), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ChuanXiong), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ChuanXiong) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let danShen = Herb(pinyinName: "Dan Shen", pharmName: "Radix Salviae Liguliobae", commonName: "", botanicalName: "", englishName: "Root of Ligulilobe Sage", chineseCharacter: "丹参", category: "Move the Blood", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DanShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DanShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DanShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let yanHuoSuo = Herb(pinyinName: "Yan Huo Suo", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: "Move the Blood", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.YanHuoSuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.YanHuoSuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.YanHuoSuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let yuJin = Herb(pinyinName: "Yu Jin", pharmName: "Radix Curcumae", commonName: "Curcuma root", botanicalName: "1. Curcuma longa L.; 2. C. aromatica salisb.; 3. Curcuma zedoaria Rosc.; 4. Curcuma kwangsiensis S. Lee et C. F. Liang", englishName: "Tuber - Root of Common Turmeric", chineseCharacter: "郁金", category: "Move the Blood", temp: "Pungent, bitter and cold", meridians: "Heart, liver and gall bladder", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.YuJin), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.YuJin), earliestRecord: "Xinxiu Bencao", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.YuJin) , dosage: "6-12 g",majorFormulas: " ", images: [], context: self.moc)
        
        let taoRen = Herb(pinyinName: "Tao Ren", pharmName: "Semen Juglandis", commonName: "Walnut seed, Walnut kernel", botanicalName: "Juglans regia L.", englishName: "English Walnut Seed", chineseCharacter: "核桃仁", category: "Move the Blood", temp: "Sweet and warm", meridians: "Kidney, lung and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TaoRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TaoRen), earliestRecord: "Kaibao Bencao", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TaoRen) , dosage: "10-30 g",majorFormulas: " ", images: [], context: self.moc)
        
        let hongHua = Herb(pinyinName: "Hong Hua", pharmName: "Flos Carthami", commonName: "", botanicalName: "", englishName: "Safflower", chineseCharacter: "红花", category: "Move the Blood", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HongHua), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HongHua), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HongHua) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let moYao = Herb(pinyinName: "Mo Yao", pharmName: "Resina Myrrhae;Myrrha", commonName: "", botanicalName: "", englishName: "Myrrh", chineseCharacter: "没药", category: "Move the Blood", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MoYao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MoYao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MoYao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let chiShao = Herb(pinyinName: "Chi Shao", pharmName: "Radix Paeoniae Rubra", commonName: "Red peony root", botanicalName: "1. Paeonia lactiflora pall.; 2. Paeonia veitchii Lynch", englishName: "Red Peony Root", chineseCharacter: "赤芍", category: "Move the Blood", temp: "Bitter and slightly cold", meridians: "Liver", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ChiShao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ChiShao), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ChiShao) , dosage: "3-10 g",majorFormulas: " ", images: [], context: self.moc)
        
        
        return [chuanXiong, danShen, yanHuoSuo, yuJin, taoRen, hongHua, moYao, chiShao]
        
    }
    
    func interiorWarmingHerbs() -> [Herb]{
        
        
        let fuZi = Herb(pinyinName: "Fu Zi", pharmName: "Rhizoma Typhonii", commonName: "", botanicalName: "", englishName: "Rhizome of Giant Typhonium", chineseCharacter: "白附子", category: "Warm the Interior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.FuZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.FuZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.FuZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let ganJiang = Herb(pinyinName: "Gan Jiang", pharmName: "Rhizoma Zingiberis", commonName: "", botanicalName: "", englishName: "Dried Ginger", chineseCharacter: "干姜", category: "Warm the Interior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GanJiang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GanJiang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GanJiang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let rouGui = Herb(pinyinName: "Rou Gui", pharmName: "Cortex Cinnamomi", commonName: "", botanicalName: "", englishName: "Cassia Bark", chineseCharacter: "肉桂", category: "Warm the Interior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.RouGui), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.RouGui), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.RouGui) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huJiao = Herb(pinyinName: "Hu Jiao", pharmName: "Fructus Piperis", commonName: "", botanicalName: "", englishName: "Pepper Fruit", chineseCharacter: "胡椒", category: "Warm the Interior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuJiao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuJiao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuJiao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let xiaoHuiXiang = Herb(pinyinName: "Xiao Hui Xiang", pharmName: "Fructus Foeniculi", commonName: "", botanicalName: "", englishName: "Fennel Fruit", chineseCharacter: "小茴香", category: "Warm the Interior", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XiaoHuiXiang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XiaoHuiXiang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XiaoHuiXiang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        

        
        return [fuZi, ganJiang, rouGui, huJiao, xiaoHuiXiang]
    }
    
    ///Replace Herbs Below
    
    func qiTonicHerbs() -> [Herb]{
        
        let renShen = Herb(pinyinName: "Ren Shen", pharmName: "Radix Ginseng", commonName: "", botanicalName: "", englishName: "Ginseng", chineseCharacter: "人参", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.RenShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.RenShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.RenShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let dangShen = Herb(pinyinName: "Dang Shen", pharmName: "Radix Codonopsis Pilosulae", commonName: "", botanicalName: "", englishName: "Root Pilose Asiabell", chineseCharacter: "党参", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DangShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DangShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DangShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huangQi = Herb(pinyinName: "Huang Qi", pharmName: "Radix Astragali", commonName: "", botanicalName: "", englishName: "Root of Membranous Milkvetch", chineseCharacter: "黄芪", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuangQi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuangQi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuangQi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baiZhu = Herb(pinyinName: "Bai Zhu", pharmName: "Rhizoma Atractylodis Macrocephalae", commonName: "", botanicalName: "", englishName: "Rhizome of Largehead Atractylodes", chineseCharacter: "白术", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiZhu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiZhu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiZhu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let ganCao = Herb(pinyinName: "Gan Cao", pharmName: "Radix Glycyrrhizae", commonName: "", botanicalName: "", englishName: "Root of Ural Licorice", chineseCharacter: "甘草", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GanCao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GanCao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GanCao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let daZao = Herb(pinyinName: "Da Zao", pharmName: "Fructus Zizyphi Jujubae", commonName: "", botanicalName: "", englishName: "Jujube Chinese Date", chineseCharacter: "大枣", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DaZao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DaZao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DaZao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        

        
        return [renShen, dangShen, huangQi, baiZhu, ganCao, daZao]
    }
    
    func bloodTonicHerbs() -> [Herb]{
        
        let dangGui = Herb(pinyinName: "Dang Gui", pharmName: "Radix Angelicae Sinensis", commonName: "", botanicalName: "", englishName: "Root of Chinese Angelica", chineseCharacter: "当归", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DangGui), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DangGui), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DangGui) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let shuDiHuang = Herb(pinyinName: "Shu Di Huang", pharmName: "Radix Rehmanniae Praeparata", commonName: "", botanicalName: "", englishName: "Prepared Rehmannia Root", chineseCharacter: "熟地黄", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShuDiHuang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShuDiHuang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShuDiHuang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baiShao = Herb(pinyinName: "Bai Shao", pharmName: "Radix Paeoniae Alba", commonName: "", botanicalName: "", englishName: "White Peony Root", chineseCharacter: "白芍", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiShao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiShao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiShao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let sangShen = Herb(pinyinName: "Sang Shen", pharmName: "Fructus Mori", commonName: "", botanicalName: "", englishName: "Mulberry Fruit", chineseCharacter: "桑椹", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SangShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SangShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        

        return [dangGui, shuDiHuang, baiShao, sangShen]
    }
    
    func yangTonicHerbs() -> [Herb]{
      
        let yinYangHuo = Herb(pinyinName: "Yin Yang Huo", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.YinYangHuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.YinYangHuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.YinYangHuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let huTaoRen = Herb(pinyinName: "Hu Tao Ren", pharmName: "Semen Juglandis", commonName: "", botanicalName: "", englishName: "Walnut Seed, Walnut Kernel", chineseCharacter: "胡桃仁", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuTaoRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuTaoRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuTaoRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let xuDuan = Herb(pinyinName: "Xu Duan", pharmName: "Radix Dipsaci", commonName: "", botanicalName: "", englishName: "Himalayan Teasel Root", chineseCharacter: "川续断", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XuDuan), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XuDuan), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XuDuan) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baJiTian = Herb(pinyinName: "Ba Ji Tian", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaJiTian), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaJiTian), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaJiTian) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

       
        return [yinYangHuo, huTaoRen, xuDuan, baJiTian]
    }
    
    func yinTonicHerbs() -> [Herb]{
       
        let maiMenDong = Herb(pinyinName: "Mai Men Dong", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MaiMenDong), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MaiMenDong), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MaiMenDong) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let tianMenDong = Herb(pinyinName: "Tian Men Dong", pharmName: "Radix Asparagi", commonName: "", botanicalName: "", englishName: "Asparagus Root", chineseCharacter: "天门冬", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TianMenDong), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TianMenDong), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TianMenDong) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baiHe = Herb(pinyinName: "Bai He", pharmName: "Bulbus Lilii", commonName: "", botanicalName: "", englishName: "Bulb of Greenish Lily", chineseCharacter: "百合", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiHe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiHe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiHe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let heiZhiMa = Herb(pinyinName: "Hei Zhi Ma", pharmName: "Semen Sesami Nigrum", commonName: "", botanicalName: "", englishName: "Black Sesame", chineseCharacter: "黑芝麻", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HeiZhiMa), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HeiZhiMa), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HeiZhiMa) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [maiMenDong, tianMenDong, baiHe, heiZhiMa]
    }
    
    func astringentHerbs() -> [Herb]{
        
        let wuWeiZi = Herb(pinyinName: "Wu Wei Zi", pharmName: "Fructus Schisandrae", commonName: "", botanicalName: "", englishName: "Chinese Magnoliavine Fruit", chineseCharacter: "五味子", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.WuWeiZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.WuWeiZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.WuWeiZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let rouDouKou = Herb(pinyinName: "Rou Dou Kou", pharmName: "Semen Myristicae", commonName: "", botanicalName: "", englishName: "Nutmeg", chineseCharacter: "肉豆蔻", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.RouDouKou), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.RouDouKou), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.RouDouKou) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let wuMei = Herb(pinyinName: "Wu Mei", pharmName: "Fructus Mume", commonName: "", botanicalName: "", englishName: "Smoked Plum", chineseCharacter: "乌梅", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.WuMei), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.WuMei), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.WuMei) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let fuPenZi = Herb(pinyinName: "Fu Pen Zi", pharmName: "Fructus Rubi", commonName: "", botanicalName: "", englishName: "Fruit of Palmleaf Raspberry", chineseCharacter: "复盆子", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.FuPenZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.FuPenZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.FuPenZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let shanZhuYu = Herb(pinyinName: "Shan Zhu Yu", pharmName: "Fructus Corni", commonName: "", botanicalName: "", englishName: "Asiatic Cornelian Cherry Fruit", chineseCharacter: "山茱萸", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShanZhuYu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShanZhuYu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShanZhuYu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

      

        
        return [wuWeiZi, rouDouKou, wuMei, fuPenZi, shanZhuYu ]
    }
    
    func shenCalmingHerbs() -> [Herb]{
       
        
        let longGu = Herb(pinyinName: "Long Gu", pharmName: "Os Draconis Praeparata", commonName: "", botanicalName: "", englishName: "Prepared Dragon's Bone, Fossilized Bone", chineseCharacter: "煅龙骨", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.LongGu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.LongGu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.LongGu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let muLi = Herb(pinyinName: "Mu Li", pharmName: "Concha Ostreae", commonName: "", botanicalName: "", englishName: "Oyster Shell", chineseCharacter: "牡蛎", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MuLi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MuLi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MuLi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [longGu, muLi]

    }
    
    func shenNourishingHerbs() -> [Herb]{
        
        
        let suanZaoRen = Herb(pinyinName: "Suan Zao Ren", pharmName: "Semen Ziziphi Spinosae", commonName: "", botanicalName: "", englishName: "Spine Date Seed", chineseCharacter: "酸枣仁", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SuanZaoRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SuanZaoRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SuanZaoRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let baiZiRen = Herb(pinyinName: "Bai Zi Ren", pharmName: "Semen Biotae", commonName: "", botanicalName: "", englishName: "Seed of Chinese Arborvitae", chineseCharacter: "柏子仁", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiZiRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiZiRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiZiRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        

        
        
        return [suanZaoRen, baiZiRen]
    }
    
    func liverWindExtinguishingHerbs() -> [Herb]{
        
        
        let gouTeng = Herb(pinyinName: "Gou Teng", pharmName: "Ramulus Uncariae Cum Uncis", commonName: "", botanicalName: "", englishName: "Gambir Plant", chineseCharacter: "钩藤", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GouTeng), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GouTeng), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GouTeng) , dosage: "",majorFormulas: " ", images: [], context: self.moc)
        
        let tianMa = Herb(pinyinName: "Tian Ma", pharmName: "Rhizoma Gastrodiae", commonName: "", botanicalName: "", englishName: "Tall Gastrodia Tuber", chineseCharacter: "天麻", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TianMa), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TianMa), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TianMa) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

        
        return [gouTeng, tianMa]
    }
    
//    func externalUseHerbs() -> [Herb]{
//        
//    }
    
  
//    Huo Po doesn't have any data
//    Yan Huo Suo doesn't have any data
//    Yin Yang Huo doesn't have any data
//    Ba Ji Tian doesn't have any data
//    Mai Men Dong doesn't have any data
//
    
}

/*

//MARK: Herbs
let renShen = Herb(pinyinName: "Ren Shen", pharmName: "Radix Ginseng", commonName: "", botanicalName: "", englishName: "Ginseng", chineseCharacter: "人参", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.RenShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.RenShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.RenShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let dangShen = Herb(pinyinName: "Dang Shen", pharmName: "Radix Codonopsis Pilosulae", commonName: "", botanicalName: "", englishName: "Root Pilose Asiabell", chineseCharacter: "党参", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DangShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DangShen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DangShen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let huangQi = Herb(pinyinName: "Huang Qi", pharmName: "Radix Astragali", commonName: "Astragalus root", botanicalName: "1. Astragalus membranaceus (Fisch.) Bge.; 2. Astragalus membranaceus Bge. var. mongolicus (Bge.) Hsiao", englishName: "Root of Membranous Milkvetch", chineseCharacter: "黄芪", category: " ", temp: "Sweet and slightly warm", meridians: "Spleen and lung", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuangQi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuangQi), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuangQi) , dosage: "10-15 g (The maximum dosage can be 30-60 g.)",majorFormulas: " ", images: [], context: self.moc)

let baiZhu = Herb(pinyinName: "Bai Zhu", pharmName: "Rhizoma Atractylodis Macrocephalae", commonName: "", botanicalName: "", englishName: "Rhizome of Largehead Atractylodes", chineseCharacter: "白术", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiZhu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiZhu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiZhu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let ganCao = Herb(pinyinName: "Gan Cao", pharmName: "Radix Glycyrrhizae", commonName: "", botanicalName: "", englishName: "Root of Ural Licorice", chineseCharacter: "甘草", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GanCao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GanCao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GanCao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let daZao = Herb(pinyinName: "Da Zao", pharmName: "Fructus Zizyphi Jujubae", commonName: "", botanicalName: "", englishName: "Jujube Chinese Date", chineseCharacter: "大枣", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DaZao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DaZao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DaZao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let dangGui = Herb(pinyinName: "Dang Gui", pharmName: "Radix Angelicae Sinensis", commonName: "", botanicalName: "", englishName: "Root of Chinese Angelica", chineseCharacter: "当归", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.DangGui), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.DangGui), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.DangGui) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let shuDiHuang = Herb(pinyinName: "Shu Di Huang", pharmName: "Radix Rehmanniae Praeparata", commonName: "", botanicalName: "", englishName: "Prepared Rehmannia Root", chineseCharacter: "熟地黄", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShuDiHuang), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShuDiHuang), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShuDiHuang) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let baiShao = Herb(pinyinName: "Bai Shao", pharmName: "Radix Paeoniae Alba", commonName: "", botanicalName: "", englishName: "White Peony Root", chineseCharacter: "白芍", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiShao), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiShao), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiShao) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let sangShen = Herb(pinyinName: "Sang Shen", pharmName: "Fructus Mori", commonName: "Mulberry, Morus fruit", botanicalName: "Morus alba L.", englishName: "Mulberry Fruit", chineseCharacter: "桑椹", category: " ", temp: "Sweet and cold", meridians: "Heart, liver and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SangShen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SangShen), earliestRecord: "Xinxiu Bencao", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SangShen) , dosage: "10-15 g",majorFormulas: " ", images: [], context: self.moc)

let yinYangHuo = Herb(pinyinName: "Yin Yang Huo", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.YinYangHuo), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.YinYangHuo), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.YinYangHuo) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let huTaoRen = Herb(pinyinName: "Hu Tao Ren", pharmName: "Semen Juglandis", commonName: "Walnut seed, Walnut kernel", botanicalName: "Juglans regia L.", englishName: "Walnut Seed, Walnut Kernel", chineseCharacter: "胡桃仁", category: " ", temp: "Sweet and warm", meridians: "Kidney, lung and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HuTaoRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HuTaoRen), earliestRecord: "Kaibao Bencao", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HuTaoRen) , dosage: "10-30 g",majorFormulas: " ", images: [], context: self.moc)

let xuDuan = Herb(pinyinName: "Xu Duan", pharmName: "Radix Dipsaci", commonName: "Dipsacus root, Teasel root", botanicalName: "1. Dipsacus asper Wall.", englishName: "Himalayan Teasel Root", chineseCharacter: "川续断", category: " ", temp: "Bitter, sweet, pungent and slightly warm", meridians: "Liver and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.XuDuan), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.XuDuan), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.XuDuan) , dosage: "10-20 g",majorFormulas: " ", images: [], context: self.moc)

let baJiTian = Herb(pinyinName: "Ba Ji Tian", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaJiTian), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaJiTian), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaJiTian) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let maiMenDong = Herb(pinyinName: "Mai Men Dong", pharmName: "", commonName: "", botanicalName: "", englishName: "", chineseCharacter: "", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MaiMenDong), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MaiMenDong), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MaiMenDong) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let tianMenDong = Herb(pinyinName: "Tian Men Dong", pharmName: "Radix Asparagi", commonName: "", botanicalName: "", englishName: "Asparagus Root", chineseCharacter: "天门冬", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TianMenDong), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TianMenDong), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TianMenDong) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let baiHe = Herb(pinyinName: "Bai He", pharmName: "Bulbus Lilii", commonName: "", botanicalName: "", englishName: "Bulb of Greenish Lily", chineseCharacter: "百合", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiHe), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiHe), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiHe) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let heiZhiMa = Herb(pinyinName: "Hei Zhi Ma", pharmName: "Semen Sesami Nigrum", commonName: "", botanicalName: "", englishName: "Black Sesame", chineseCharacter: "黑芝麻", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.HeiZhiMa), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.HeiZhiMa), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.HeiZhiMa) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let wuWeiZi = Herb(pinyinName: "Wu Wei Zi", pharmName: "Fructus Schisandrae", commonName: "", botanicalName: "", englishName: "Chinese Magnoliavine Fruit", chineseCharacter: "五味子", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.WuWeiZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.WuWeiZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.WuWeiZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let rouDouKou = Herb(pinyinName: "Rou Dou Kou", pharmName: "Semen Myristicae", commonName: "Nutmeg", botanicalName: "Myristica fragrans Houtt.", englishName: "Nutmeg", chineseCharacter: "肉豆蔻", category: " ", temp: "Pungent and warm", meridians: "Spleen, stomach and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.RouDouKou), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.RouDouKou), earliestRecord: "Yaoxing Lun", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.RouDouKou) , dosage: "3-10 g (1.5-3 g for pills or powder form)",majorFormulas: " ", images: [], context: self.moc)

let wuMei = Herb(pinyinName: "Wu Mei", pharmName: "Fructus Mume", commonName: "Black plum, Mume", botanicalName: "Prunus mume (Sieb.) Sieb. et Zucc.", englishName: "Smoked Plum", chineseCharacter: "乌梅", category: " ", temp: "Sour and neutral", meridians: "Spleen, lung and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.WuMei), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.WuMei), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.WuMei) , dosage: "3-30 g",majorFormulas: " ", images: [], context: self.moc)

let fuPenZi = Herb(pinyinName: "Fu Pen Zi", pharmName: "Fructus Rubi", commonName: "", botanicalName: "", englishName: "Fruit of Palmleaf Raspberry", chineseCharacter: "复盆子", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.FuPenZi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.FuPenZi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.FuPenZi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let shanZhuYu = Herb(pinyinName: "Shan Zhu Yu", pharmName: "Fructus Corni", commonName: "Cornus fruit, Dogwood fruit", botanicalName: "Cornus officinalis Sieb. et Zucc.", englishName: "Asiatic Cornelian Cherry Fruit", chineseCharacter: "山茱萸", category: " ", temp: "Sour and slightly warm", meridians: "Liver and kidney", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.ShanZhuYu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.ShanZhuYu), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.ShanZhuYu) , dosage: "5-10 g",majorFormulas: " ", images: [], context: self.moc)

let longGu = Herb(pinyinName: "Long Gu", pharmName: "Os Draconis Praeparata", commonName: "", botanicalName: "", englishName: "Prepared Dragon's Bone, Fossilized Bone", chineseCharacter: "煅龙骨", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.LongGu), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.LongGu), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.LongGu) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let muLi = Herb(pinyinName: "Mu Li", pharmName: "Concha Ostreae", commonName: "", botanicalName: "", englishName: "Oyster Shell", chineseCharacter: "牡蛎", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.MuLi), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.MuLi), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.MuLi) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let suanZaoRen = Herb(pinyinName: "Suan Zao Ren", pharmName: "Semen Ziziphi Spinosae", commonName: "", botanicalName: "", englishName: "Spine Date Seed", chineseCharacter: "酸枣仁", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.SuanZaoRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.SuanZaoRen), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.SuanZaoRen) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let baiZiRen = Herb(pinyinName: "Bai Zi Ren", pharmName: "Semen Biotae", commonName: "Biota seed, Arborvitae seed", botanicalName: "Biota orientalis (L.) Endl.", englishName: "Seed of Chinese Arborvitae", chineseCharacter: "柏子仁", category: " ", temp: "Sweet and neutral", meridians: "Heart, kidney and large intestine", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.BaiZiRen), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.BaiZiRen), earliestRecord: "Shennong Bencao Jing", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.BaiZiRen) , dosage: "10-18 g",majorFormulas: " ", images: [], context: self.moc)

let gouTeng = Herb(pinyinName: "Gou Teng", pharmName: "Ramulus Uncariae Cum Uncis", commonName: "", botanicalName: "", englishName: "Gambir Plant", chineseCharacter: "钩藤", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.GouTeng), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.GouTeng), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.GouTeng) , dosage: "",majorFormulas: " ", images: [], context: self.moc)

let tianMa = Herb(pinyinName: "Tian Ma", pharmName: "Rhizoma Gastrodiae", commonName: "", botanicalName: "", englishName: "Tall Gastrodia Tuber", chineseCharacter: "天麻", category: " ", temp: "", meridians: "", uses: HerbUses.sharedController.getHerbUse(HerbUses.Herb.TianMa), uses1: HerbUsesMore.sharedController.getHerbUse(HerbUsesMore.Herb.TianMa), earliestRecord: "", gatheringInfo: HerbGatheringInfo.sharedController.getHerbUse(HerbGatheringInfo.Herb.TianMa) , dosage: "",majorFormulas: " ", images: [], context: self.moc)


*/













