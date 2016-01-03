//
//  HerbUses.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/14/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation

class HerbUses: NSObject {
    
    static let sharedController = HerbUses()
    
    var thisHerb: Herb? = nil
    var needUse: Bool? = true
    var use: String?
    
    enum Herb {
        case GuiZhi, ZiSuYe, JingJie, QiangHuo, ShengJiang
        case BoHe, NiuBangZi, SangYe, JuHua, GeGen, ChaiHu
        case ShiGao, ZhiMu, ZhiZi, XiaKuCao
        case ShengDiHuang, MuDanPi, XuanShen
        case HuangQin, HuangLian, HuangBai, LongDanCao
        case JinYinHua, LianQiao, PuGongYing, TuFuLing
        case QingHao, DiGuPi, BaiWei
        case DaHuang, MangXiao, HuoMaRen
        case FuLing, ZeXie, YiYiRen
        case DuHuo, MuGua, SangJiSheng, SangZhi
        case ChuanBeiMu, GuaLuo
        case BanXia, JieGeng
        case XingRen, PiPaYe, ZiSuZi, SangBaiPi
        case HuoPo, CangZhu, HuoXiang, ShaRen
        case ShanZha, ShenQu, MaiYa, LaiFuZi
        case ChenPi, XiangFu, WuYao, ChuanLianZi
        case SanQi, PuHuang, CeBaiYe, AiYe
        case ChuanXiong, DanShen, YanHuoSuo, YuJin, TaoRen, HongHua, MoYao, ChiShao
        case FuZi, GanJiang, RouGui, HuJiao, XiaoHuiXiang
        case RenShen, DangShen, HuangQi, BaiZhu, GanCao, DaZao
        case DangGui, ShuDiHuang, BaiShao, SangShen
        case YinYangHuo, HuTaoRen, XuDuan, BaJiTian
        case MaiMenDong, TianMenDong, BaiHe, HeiZhiMa
        case WuWeiZi, RouDouKou, WuMei, FuPenZi, ShanZhuYu
        case LongGu, MuLi
        case SuanZaoRen, BaiZiRen
        case GouTeng, TianMa
    }
    
    func getHerbUse(herb: HerbUses.Herb) -> String {
        
        let UseForHerb = herb
        
        switch UseForHerb {
            
        case .GuiZhi    : self.use = guiZhi
        case .ZiSuYe    : self.use = ziSuYe
        case .JingJie   : self.use = jingJie
        case .QiangHuo  : self.use = qiangHuo
        case .ShengJiang: self.use = shengJiang
            
        case .BoHe      : self.use = boHe
        case .NiuBangZi : self.use = niuBangZi
        case .SangYe    : self.use = sangYe
        case .JuHua     : self.use = juHua
        case .GeGen     : self.use = geGen
        case .ChaiHu    : self.use = chaiHu
            
        case .ShiGao : self.use = shiGao
        case .ZhiMu : self.use = zhiMu
        case .ZhiZi : self.use = zhiZi
        case .XiaKuCao : self.use = xiaKuCao
        case .ShengDiHuang : self.use = shengDiHuang
        case .MuDanPi : self.use = muDanPi
        case .XuanShen : self.use = xuanShen
        case .HuangQin : self.use = huangQin
        case .HuangLian : self.use = huangLian
        case .HuangBai : self.use = huangBai
        case .LongDanCao : self.use = longDanCao
        case .JinYinHua : self.use = jinYinHua
        case .LianQiao : self.use = lianQiao
        case .PuGongYing : self.use = puGongYing
        case .TuFuLing : self.use = tuFuLing
        case .QingHao : self.use = qingHao
        case .DiGuPi : self.use = diGuPi
        case .BaiWei : self.use = baiWei
        case .DaHuang : self.use = daHuang
        case .MangXiao : self.use = mangXiao
        case .HuoMaRen : self.use = huoMaRen
        case .FuLing : self.use = fuLing
        case .ZeXie : self.use = zeXie
        case .YiYiRen : self.use = yiYiRen
        case .DuHuo : self.use = duHuo
        case .MuGua : self.use = muGua
        case .SangJiSheng : self.use = sangJiSheng
        case .SangZhi : self.use = sangZhi
        case .ChuanBeiMu : self.use = chuanBeiMu
        case .GuaLuo : self.use = guaLuo
        case .BanXia : self.use = banXia
        case .JieGeng : self.use = jieGeng
        case .XingRen : self.use = xingRen
        case .PiPaYe : self.use = piPaYe
        case .ZiSuZi : self.use = ziSuZi
        case .SangBaiPi : self.use = sangBaiPi
        case .HuoPo : self.use = huoPo
        case .CangZhu : self.use = cangZhu
        case .HuoXiang : self.use = huoXiang
        case .ShaRen : self.use = shaRen
        case .ShanZha : self.use = shanZha
        case .ShenQu : self.use = shenQu
        case .MaiYa : self.use = maiYa
        case .LaiFuZi : self.use = laiFuZi
        case .ChenPi : self.use = chenPi
        case .XiangFu : self.use = xiangFu
        case .WuYao : self.use = wuYao
        case .ChuanLianZi : self.use = chuanLianZi
        case .SanQi : self.use = sanQi
        case .PuHuang : self.use = puHuang
        case .CeBaiYe : self.use = ceBaiYe
        case .AiYe : self.use = aiYe
        case .ChuanXiong : self.use = chuanXiong
        case .DanShen : self.use = danShen
        case .YanHuoSuo : self.use = yanHuoSuo
        case .YuJin : self.use = yuJin
        case .TaoRen : self.use = taoRen
        case .HongHua : self.use = hongHua
        case .MoYao : self.use = moYao
        case .ChiShao : self.use = chiShao
        case .FuZi : self.use = fuZi
        case .GanJiang : self.use = ganJiang
        case .RouGui : self.use = rouGui
        case .HuJiao : self.use = huJiao
        case .XiaoHuiXiang : self.use = xiaoHuiXiang
        case .RenShen : self.use = renShen
        case .DangShen : self.use = dangShen
        case .HuangQi : self.use = huangQi
        case .BaiZhu : self.use = baiZhu
        case .GanCao : self.use = ganCao
        case .DaZao : self.use = daZao
        case .DangGui : self.use = dangGui
        case .ShuDiHuang : self.use = shuDiHuang
        case .BaiShao : self.use = baiShao
        case .SangShen : self.use = sangShen
        case .YinYangHuo : self.use = yinYangHuo
        case .HuTaoRen : self.use = huTaoRen
        case .XuDuan : self.use = xuDuan
        case .BaJiTian : self.use = baJiTian
        case .MaiMenDong : self.use = maiMenDong
        case .TianMenDong : self.use = tianMenDong
        case .BaiHe : self.use = baiHe
        case .HeiZhiMa : self.use = heiZhiMa
        case .WuWeiZi : self.use = wuWeiZi
        case .RouDouKou : self.use = rouDouKou
        case .WuMei : self.use = wuMei
        case .FuPenZi : self.use = fuPenZi
        case .ShanZhuYu : self.use = shanZhuYu
        case .LongGu : self.use = longGu
        case .MuLi : self.use = muLi
        case .SuanZaoRen : self.use = suanZaoRen
        case .BaiZiRen : self.use = baiZiRen
        case .GouTeng : self.use = gouTeng
        case .TianMa : self.use = tianMa
            
        default : self.use = "default"
            
        }
        
        
        return self.use!
    }
   
   
//    Huo Po doesn't have any data
//    Yan Huo Suo doesn't have any data
//    Yin Yang Huo doesn't have any data
//    Ba Ji Tian doesn't have any data
//    Mai Men Dong doesn't have any data
    
    var guiZhi = "To induce perspiration, to warm the channels and stimulate menstrual discharge, to reinforce yang, to relieve palpitation, and to promote the descending of qi."
    
    var ziSuYe = "To induce perspiration and dispel cold, and to regulate the stomach function."
    
    var jingJie = "To induce diaphoresis, to dispel wind, and to promote eruptions."
    
    var qiangHuo = "To relieve pain and rheumatic conditions."
    
    var shengJiang = "To induce perspiration and dispel cold, to warm the stomach and arret vomiting, and to resolve phlegm and relieve cough."
    
    
    var boHe = "To dispel wind-heat from the head and eyes, and to promote eruption."
    
    var niuBangZi = "To dispel wind-heat and relieve cough, to promote eruption, to counteract toxicity, and to soothe sore throat."
    
    var sangYe = "To dispel <i>wind-heat</i> and to remove heat from the lung, to subdue hyperactivity of the liver and improve eyesight."
    
    var juHua = "To dispel wind-heat, to subdue hyperactivity of the liver, and improve eyesight."
    
    var chaiHu = "To relieve fever, to soothe the liver, and to cure drooping of the eyelid and ptosis."
    
    var geGen = "To relieve fever, to promote the production of body fluid, to facilitate eruption, and to arrest diarrhea."
    
    
    var shiGao = "To dispel dampness, to replenish muscle, curing sore, to stop bleeding."
    
    var zhiMu = "To remove heat and quench fire, and to promote the production of body fluid and relieve dryness syndromes."
    
    var zhiZi = "To regulate the flow of the liver qi, to promote blood circulation and relieve pain, and to promote diuresis."
    
    var xiaKuCao = "1. To clear lung-heat, eliminate phlegm and relieve cough; 2. to clear heat and toxic material, and relieve carbuncle; 3. Clear heat to cool the blood; 4. To lower blood pressure."
    
    var shengDiHuang = "1. To clear heat and cool blood; 2. To nourish yin and promote the production of body fluids"
    
    var muDanPi = "To remove heat from blood, to activate blood circulation and eliminate blood stasis."
    
    var xuanShen = "To reduce heat from blood, to nourish yin, to quench fire, and to counteract toxicity."
    
    var huangQin = "To remove damp-heat, to quench fire and counteract toxicity, to arrest bleeding, and to prevent abortion."
    
    var huangLian = "To remove damp-heat, quench fire and counteract toxicity."
    
    var huangBai = "1. To clear heat and dry dampness; 2. To reduce fire and release toxins"
    
    var longDanCao = "1. To clear heat and dry dampness; 2. To reduce fire in the liver"
    
    var jinYinHua = "To remove toxic heat and dispel wind-heat."
    
    var lianQiao = "~"
    
    var puGongYing = "To remove toxic heat, to promote subsidence of swelling and modulation, and to relieve dysuria."
    
    var tuFuLing = "To remove damp, to counteract toxicity, and to improve the mobility of joints."
    
    var qingHao = "To remove summer-heat, to relieve consumptive fever,and to stop malarial attacks."
    
    var diGuPi = "To reduce heat in blood, to relieve consumptive fever, and to remove heat from the lung."
    
    var baiWei = "To remove heat from blood, to relieve dysuria, and to counteract toxicity and cure sores."
    
    var daHuang = "to promote catharsis and purge away heat, to reduce heat in blood and counteract toxicity, and to eliminate blood stasis and stimulate menstrual discharge."
    
    var mangXiao = "To soften dry feces, to relax the bowels and purge off heat, and to remove fire and promote subsidence of swelling."
    
    var huoMaRen = "To relieve taxation."
    
    var fuLing = "To promote diuresis, to invigorate the spleen function, and to calm the mind."
    
    var zeXie = "To promote diuresis, and to remove damp-heat. To transform dampness and promote water metabolism."
    
    var yiYiRen = "1. To transform dampness and promote water metabolism; 2. To strengthen the spleen; 3. To clear heat and eliminate pus"
    
    var duHuo = "To relieve rheumatic conditions, and to remove obstruction from the channels and relieve pain."
    
    var muGua = "To lessen contracture, regulate stomach function, and dispel damp."
    
    var sangJiSheng = "To replenish the liver and the kidney, to strengthen the tendons and bones, to relieve rheumatic conditions, and to prevent abortion."
    
    var sangZhi = "To relieve rheumatic arthralgia."
    
    var chuanBeiMu = "To remove heat, moisten the lung, resolve phlegm and relieve cough."
    
    var guaLuo = "To remove obstruction from the collaterals, to promote blood circulation, and to dispel wind."
    
    var banXia = "To remove damp and phlegm, to relieve nausea and vomiting, and to eliminate stuffiness in the chest and the epigastrium."
    
    var jieGeng = "To relieve cought, to soothe sore throat, and to promote expectoration and discharge of pus."
    
    var xingRen = "To relieve cough and asthma, and to relax bowels."
    
    var piPaYe = "To remove heat from the lung and the stomach, and to relieve cough and vomiting."
    
    var ziSuZi = "To relieve dyspnea and cough, to eliminate phlegm , and to relax bowels."
    
    var sangBaiPi = "To remove heat from the lung, to relieve asthma, and to induce diuresis."
    
    var huoPo = ""
    
    var cangZhu = "To remove damp and invigorate the function of the spleen, to dispel wind-cold, and to improve eyesight."
    
    var huoXiang = "To resolve turbid damp, improve appetite, arrest vomiting and to dispel smmer-heat or summer-damp."
    
    var shaRen = "To eliminate damp and improve appetite, to warm the spleen and check diarrhea, and to prevent abortion."
    
    var shanZha = "To stimulate digestion and promote the functional activity of the stomach; to improve the normal flow of qi and dissipate blood stasis."
    
    var shenQu = "~"
    
    var maiYa = "To invigo rate the function of the spleen, to regulate the function of the stomach, and to promote the flow of milk."
    
    var laiFuZi = "To promote digestion and relieve abdominal distension, and to relieve cough and resolve phlegm."
    
    var chenPi = "To regulate the flow of qi, to invigorate the spleen function, to eliminate damp, and to resolve phlegm."
    
    var xiangFu = "1. To promote the free flow of qi in the liver; 2. To regulate menstruation and stop pain"
    
    var wuYao = "1. To regulate qi and stop pain; 2. To warm the kidneys and dispel cold"
    
    var chuanLianZi = "To relieve pain by smoothing the flow of the liver qi and to repel worms."
    
    var sanQi = "To eliminate blood stasis, arrest bleeding, promote subsidence of swelling and alleviate pain."
    
    var puHuang = "To arrest bleeding, to remove blood stasis, and to relieve dysuria."
    
    var ceBaiYe = "To arrest bleeding by removing heat from blood, and to promote the growth of black hair."
    
    var aiYe = "1. To warm the channels and stop bleeding; \n 2. To dispel cold and stop pain"
    
    var chuanXiong = "1. To invigorate blood and promote qi circulation; 2. To expel wind and stop pain"
    
    var danShen = "To remove blood stasis and relieve pain, to promote the flow of blood and stimulate menstrual discharge, and to ease the mind."
    
    var yanHuoSuo = ""
    
    var yuJin = "1. To invigorate blood and stop pain; 2. To promote qi circulation and release stagnation; 3. To cool blood and clear heat in the heart; 4. To relieve jaundice and facilitate gall bladder function"
    
    var taoRen = "To tonify the kidney, to warm the lung, and to relax the bowels."
    
    var hongHua = "To activate blood circulation and stimulate menstrual discharge, and to remove blood stasis and relieve pain."
    
    var moYao = "1. To invigorate blood and stop pain; 2. To reduce swelling and promote healing"
    
    var chiShao = "To remove heat from blood, to eliminate blood stasis, and to relieve pain."
    
    var fuZi = "To dispel wind-phlegm, to check convulsions, and to counteract toxicity, promote subsidence of modulation and relieve pain."
    
    var ganJiang = "To dispel cold from the spleen and the stomach, to promote recovery from collapse, and to eliminate damp and phlegm."
    
    var rouGui = "To supplement body fire, reinforce yang, and lead the fire back to the kidney, to dispel cold and relieve pain, and to activate blood circulation and stimulate menstrual discharge."
    
    var huJiao = "To dispel cold from the stomach, and to eliminate phlegm."
    
    var xiaoHuiXiang = "1. To dispel cold and stop pain; 2. To regulate qi and harmonize the stomach"
    
    var renShen = "To reinforce the vital energy, to remedy collapse and restore the normal pulse, to benefit the spleen and lung, to promote the production of body fluid, and to calm the nerves."
    
    var dangShen = "To reinforce qi and invigorate the function of the spleen and the lung."
    
    var huangQi = "To reinoforce qi and invigorate the function of the spleen."
    
    var baiZhu = "To invigorate the function of the spleen and replenish qi, to eliminate damp by causing diuresis, to arrest excesssive perspiration, and to prevent miscarriage."
    
    var ganCao = "To reinforce the function of the spleen and replenish qi, to remove heat and counteract toxicity, to dispel phlegm and relieve cough, to alleviate spasmodic pain, and to moderate drug actions."
    
    var daZao = "To tonify the spleen and replenish qi, to nourish blood, and to ease the mind."
    
    var dangGui = "To enrich blood, activate blood circulation, regulate menstruation, relieve pain, and relax bowels."
    
    var shuDiHuang = "To nourish n and replenish blood, reinforce the essence of life and marrow."
    
    var baiShao = "1. To nourish blood and consolidate the yin; 2. To pacify the liver and stop pain; 3. To soothe liver yang"
    
    var sangShen = "To nourish yin and blood and promote the production of body fluids."
    
    var yinYangHuo = ""
    
    var huTaoRen = "1. To tonify the lungs and kidneys; 2. To moisten the intestines and move feces"
    
    var xuDuan = "For tonifying yang"
    
    var baJiTian = ""
    
    var maiMenDong = ""
    
    var tianMenDong = "1. To clear the lungs and descend fire; 2. To nourish the yin and moisten dryness"
    
    var baiHe = "To nourish yin and moisten the lung, and to tranquilize the mind."
    
    var heiZhiMa = "To tonify the liver and the kidney, to replenish vital essence and blood, and to relax the bowels."
    
    var wuWeiZi = "To arrest discharges, replenish qi, promote fluid secretion, tonify the kidney, and induce sedation."
    
    var rouDouKou = "To warm the spleen and stomach and promote the flow of qi , to arrest diarrhea as an astringent."
    
    var wuMei = "To arrest persistent cough, to relieve diarrhea by astringing the intestines, to promote the production of body fluid, and to relieve colic promoted by ascaris."
    
    var fuPenZi = "To benefit the kidney, and arrest seminal discharge and excessive urination."
    
    var shanZhuYu = "To replenish the liver and kidney, restrain seminal discharge and relieve collapse."
    
    var longGu = "1. To pacify the liver and subdue the yang; 2. To calm the heart and soothe the mind; 3. To relieve leukorrhea and arrest seminal emissions or sweating"
    
    var muLi = "To nourish yin and subdue the overflowing of yang, to induce sedation, to soften hard masses and eliminate modulation, and to arrest discharges."
    
    var suanZaoRen = "To replenish the liver, to promote tranquilization to arrest excessive perspiration, and to promote the production of body fluid."
    
    var baiZiRen = "To calm the nerves, to check excessive perspiration, and to relax the bowels."
    
    var gouTeng = "To remove heat, subdue hyperactivity of the liver, and arrest convulsions."
    
    var tianMa = "To subdue the liver-wind and arrest convulsions."
        
    
}



