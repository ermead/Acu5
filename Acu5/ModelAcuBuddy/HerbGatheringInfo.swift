//
//  HerbGatheringInfo.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/2/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation


import Foundation

class HerbGatheringInfo: NSObject {
    
    static let sharedController = HerbGatheringInfo()
    
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
    
    func getHerbUse(herb: HerbGatheringInfo.Herb) -> String {
        
        let UseForHerb = herb
        
        switch UseForHerb {
            
        case .GuiZhi    : self.use = guiZhi
        case .ZiSuYe    : self.use = ziSuYe
        case .JingJie   : self.use = jingJie
        case .QiangHuo  : self.use = qiangHuo
        case .ShengJiang: self.use = shengJiang
//
//        case .BoHe      : self.use = boHe
//        case .NiuBangZi : self.use = niuBangZi
//        case .SangYe    : self.use = sangYe
//        case .JuHua     : self.use = juHua
//        case .GeGen     : self.use = geGen
//        case .ChaiHu    : self.use = chaiHu
            
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
    
    var guiZhi = ""
    var ziSuYe = ""
    var jingJie = ""
    var qiangHuo = ""
    var shengJiang = ""

    
    var shiGao = ""
    
    var zhiMu = ""
    
    var zhiZi = ""
    
    var xiaKuCao = ""
    
    var shengDiHuang = "The roots are dug in spring or autumn. After the fibrous roots have been removed, the roots are dried in the sun, and then cut into slices."
    
    var muDanPi = "The roots are dug and gathered in autumn. After the fibrous roots have been removed, the roots are dried in the sun."
    
    var xuanShen = "The roots are dug in the period at the Beginning of Winter (nineteenth solar term) and dried in the sun until they are black on the inside, then they are cut into slices."
    
    var huangQin = ""
    
    var huangLian = ""
    
    var huangBai = "The bark should be gathered during Pure Brightness (fifth solar term). After the coarse bark is peeled off, it is dried in the sun and cut into slices. The raw bark is used, or it can be fried with salt."
    
    var longDanCao = ""
    
    var jinYinHua = ""
    
    var lianQiao = ""
    
    var puGongYing = ""
    
    var tuFuLing = ""
    
    var qingHao = ""
    
    var diGuPi = ""
    
    var baiWei = ""
    
    var daHuang = ""
    
    var mangXiao = ""
    
    var huoMaRen = ""
    
    var fuLing = ""
    
    var zeXie = "The rhizomes are dug in winter. After the fibrous roots and bark have been removed, the rhizomes are soaked in water, cut into slices and dried in the sun."
    
    var yiYiRen = "The seeds are obtained by removing the hard husk of the fruit, which is gathered in autumn."
    
    var duHuo = ""
    
    var muGua = ""
    
    var sangJiSheng = ""
    
    var sangZhi = ""
    
    var chuanBeiMu = ""
    
    var guaLuo = ""
    
    var banXia = ""
    
    var jieGeng = "The Platycodon roots are dug in either spring or autumn, but the autumn roots are better quality. After the root bark has been removed, the roots are dried in the sun and cut into slices."
    
    var xingRen = ""
    
    var piPaYe = ""
    
    var ziSuZi = ""
    
    var sangBaiPi = "The bark of the root is collected in winter. It is cleaned, cut into pieces and dried in the sun."
    
    var huoPo = ""
    
    var cangZhu = ""
    
    var huoXiang = ""
    
    var shaRen = ""
    
    var shanZha = ""
    
    var shenQu = ""
    
    var maiYa = ""
    
    var laiFuZi = "The ripe seeds are gathered in the beginning of summer and dried in the sun."
    
    var chenPi = ""
    
    var xiangFu = "The rhizomes are dug in September or October. They are cleaned and dried in the sun. The fibrous roots are burned away, leaving the rhizomes ready for use."
    
    var wuYao = ""
    
    var chuanLianZi = ""
    
    var sanQi = "The roots are dug in spring or winter. The spring roots have a stronger pharmacological effect than winter roots. After cleaning, the roots are dried in the sun."
    
    var puHuang = ""
    
    var ceBaiYe = ""
    
    var aiYe = ""
    
    var chuanXiong = ""
    
    var danShen = ""
    
    var yanHuoSuo = ""
    
    var yuJin = "The tuberous roots are dug in autumn or winter. After removing the fibrous roots, the roots are cleaned, boiled, dried in the sun and cut into slices."
    
    var taoRen = "The ripe walnuts are gathered in the period from September to October, dried in the sun and shelled."
    
    var hongHua = ""
    
    var moYao = ""
    
    var chiShao = "The roots are dug in autumn. After the fibrous roots and rough bark have been removed, the roots are dried in the sun, soaked in water and cut into slices."
    
    var fuZi = ""
    
    var ganJiang = ""
    
    var rouGui = ""
    
    var huJiao = ""
    
    var xiaoHuiXiang = ""
    
    var renShen = ""
    
    var dangShen = ""
    
    var huangQi = "The four year old roots are dug in spring or autumn, but autumn ones are of better quality. After the fibrous roots are removed, the roots are dried in the sun, soaked again in water and cut into slices."
    
    var baiZhu = ""
    
    var ganCao = ""
    
    var daZao = ""
    
    var dangGui = ""
    
    var shuDiHuang = ""
    
    var baiShao = ""
    
    var sangShen = "The ripe fruit is gathered from April to June. It is cleaned and dried in the sun."
    
    var yinYangHuo = ""
    
    var huTaoRen = "The ripe walnuts are gathered in the period from September to October, dried in the sun and shelled."
    
    var xuDuan = "The roots are dug in the period from July to August. After the fibrous roots have been removed, the roots are cut into slices and dried in the sun."
    
    var baJiTian = ""
    
    var maiMenDong = ""
    
    var tianMenDong = ""
    
    var baiHe = ""
    
    var heiZhiMa = ""
    
    var wuWeiZi = ""
    
    var rouDouKou = "The seeds are removed from the ripe fruit and dried in the sun."
    
    var wuMei = "The unripe fruit is gathered in the period at the Beginning of Summer (seventh solar term). It is baked at a low temperature until the skins turn black. The plum stone is removed."
    
    var fuPenZi = ""
    
    var shanZhuYu = "The ripe fruit is gathered from October to November. The fruit is baked or boiled, after which the fruit pit is removed. The fruit is then dried in the sun or baked again."
    
    var longGu = ""
    
    var muLi = ""
    
    var suanZaoRen = ""
    
    var baiZiRen = "The fruit is gathered in autumn. After being shelled and dried in the shade, the seeds are broken into pieces."
    
    var gouTeng = ""
    
    var tianMa = ""
    
    
}