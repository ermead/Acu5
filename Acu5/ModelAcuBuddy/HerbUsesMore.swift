//
//  HerbUsesMore.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/2/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation


import Foundation

class HerbUsesMore: NSObject {
    
    static let sharedController = HerbUsesMore()
    
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
    
    func getHerbUse(herb: HerbUsesMore.Herb) -> String {
        
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
    
    var shengDiHuang = "1. Exogenous heat invading at the nutritive and blood levels manifested as dry mouth and deep red tongue proper with scanty coating. Fresh rehmannia root (Shengdihuang) is used with Scrophularia (Xuanshen), Rhinoceros horn (Xijiao) and Ophiopogon root (Maidong).\n 2. Yin and body fluids consumed in the late stage of febrile diseases manifested as fever at night, and subsiding in the morning without presence of sweating. Fresh rehmannia root (Shengdihuang) is used with Anemarrhena rhizome (Zhimu), Sweet wormwood (Qinghao) and Turtle shell (Biejia).\n 3. Hemorrhaging due to extravasation of blood by heat manifested as vomiting with blood, epistaxis, blood in the urine, bloody stool and functional uterine bleeding. Fresh rehmannia root (Shengdihuang) is used with Biota tops (Cebaiye) and raw Lotus leaf (Heye).\n 4. Febrile disease with excessive toxic heat in the blood, epistaxis and maculopapule. Fresh rehmannia root (Shengdihuang) is used with Rhinoceros horn (Xijiao), Moutan bark (Mudanpi) and Red peony (Chishao).\n 5. Febrile disease with consumption of body fluids manifested as red tongue proper, dry mouth, thirst and excessive drinking. Fresh rehmannia root (Shengdihuang) is used with Fragrant solomonseal rhizome (Yuzhu), Ophiopogon root (Maidong), Glehnia root (Shashen) and Dendrobium (Shihu). If there is constipation, Fresh rehmannia root (Shengdihuang) is used with Scrophularia (Xuanshen) and Ophiopogon root (Maidong)."
    
    var muDanPi = "1. Febrile disease in which pathogenic heat enters the blood level manifested as fever, vomiting with blood, epistaxis, blood in the urine, maculopapule and deep red tongue proper. Moutan bark (Mudanpi) is used with Fresh rehmannia root (Shengdihuang), Rhinoceros horn (Xijiao) and Red peony (Chishao).\n 2. Late stage of febrile diseases with exhaustion of body fluids or yin deficiency manifested as fever at night, and subsiding in the morning, without presence of sweating, red tongue proper with scanty coating and thready, rapid pulse. Moutan bark (Mudanpi) is used with Anemarrhena rhizome (Zhimu), Fresh rehmannia root (Shengdihuang), Turtle shell (Biejia) and Sweet wormwood (Qinghao).\n 3. Blood stagnation manifested as amenorrhea, dysmenorrhea, hard masses, lumps, tumors and modules. Moutan bark (Mudanpi) is used with Peach seed (Taoren), Cinnamon twigs (Guizhi), Red peony (Chishao) and Poria (Fuling) in the formula Guizhi Fuling Wan.\n 4. Boil, carbuncles and furuncles. Moutan bark (Mudanpi) is used with Honeysuckle flower (Jinyinhua) and Forsythia fruit (Lianqiao)."
    
    var xuanShen = "1. Sore throat caused by exogenous pathogenic wind. Scrophularia (Xuanshen) is used with Arctium fruit (Niubangzi), Platycodon root (Jiegeng) and Mentha (Bohe).\n 2. Sore throat caused by excessive interior heat. Scrophularia (Xuanshen) is used with Ophiopogon root (Maidong), Platycodon root (Jiegeng) and raw Licorice root (Gancao).\n 3. Boils carbuncles and furuncles. Scrophularia (Xuanshen) is used with Honeysuckle flower (Jinyinhua) and raw Licorice root (Gancao).\n 4. Scrofula, goiter and subcutaneous nodules. Scrophularia (Xuanshen) is used with Tendrilled fritillary bulb (Chuanbeimu) and Oyster shell (Muli).\n 5. Febrile disease in which pathogenic factors attack the nutritive and blood levels : a) thirst, fever, insomnia and deep red tongue proper with scanty coatingScrophularia (Xuanshen) is used with Fresh rehmannia root (Shengdihuang) and Ophiopogon root (Maidong); b) high fever, unconsciousness and maculopapuleScrophularia (Xuanshen) is used with Anemarrhena rhizome (Zhimu), Gypsum (Shigao) and Rhinoceros horn (Xijiao).\n 6. Constipation due to dryness in the intestines. Scrophularia (Xuanshen) is used with Fresh rehmannia root (Shengdihuang) and Ophiopogon root (Maidong)."
    
    var huangQin = ""
    
    var huangLian = ""
    
    var huangBai = "1. Damp-heat syndrome : a) damp-heat accumulated in intestines manifested as diarrhea and dysenteryPhellodendron bark (Huangbai) is used with Pulsatilla root (Baitouweng), Coptis root (Huanglian) and Scutellaria root (Huangqin); b) internal accumulation of damp-heat manifested as jaundicePhellodendron bark (Huangbai) is used with Capejasmine (Zhizi) and Oriental wormwood (Yinchenhao); c) downward flowing of damp-heat, turbid urination and yellow, thick leukorrheaPhellodendron bark (Huangbai) is used with Plantain seed (Cheqianzi), Bamboo leaf (Zhuye) and Clematis stem (Mutong); d) boils caused by dampness in the lower part of the bodyPhellodendron bark (Huangbai) is used with Atractylodes rhizome (Cangzhu).\n 2. General boils, carbuncles, furuncles and eczema. Phellodendron bark (Huangbai) is used with Scutellaria root (Huangqin) and Capejasmine (Zhizi). For external use, Phellodendron bark (Huangbai) is pounded into a powder mixed with Talc (Huashi).\n 3. Deficiency of yin with heat manifested as noturnal emissions and night sweating. Phellodendron bark (Huangbai) is used with Anemarrhena rhizome (Zhimu) and Fresh rehmannia root (Shengdihuang)."
    
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
    
    var zeXie = "Dysuria, turbid urine, edema, diarrhea and profuse leukorrhea, or retention of phlegm and fluids, leading to dizziness, vertigo, palpitation and cough. Alismatis rhizome (Zexie) is used with Poria (Fuling), Umbellate pore-fungus (Zhuling) and White atractylodes (Baizhu) in the formula Wuling San."
    
    var yiYiRen = "1. Deficiency of spleen manifested as edema, dysuria and diarrhea. Coix seed (Yiyiren) is used with Alismatis rhizome (Zexie) and White atractylodes (Baizhu).\n 2. Beginning stage of damp-heat febrile diseases wh?? the pathogenic factor is at the qi level. Coix seed (Yiyiren) is used with Talc (Huashi), Bamboo leaf (Zhuye) and Rice paper pith (Tongcao) in the formula Sanren Tang.\n 3. Accumulation of damp-heat or stagnation of qi and blood manifested as lung abscess and intestinal abscess. Coix seed (Yiyiren), Reed stem (Weijing), Benincasa seed (Dongguaren) and Peach seed (Taoren) in the formula Qianjin Weijing Tang is used for lung abscess with cough, sputum and pus. Coix seed (Yiyiren) and Patrinia herb (Baijiangcao) in the formula Yiyi Fuzi Baijiang San is used for intestinal abscess."
    
    var duHuo = ""
    
    var muGua = ""
    
    var sangJiSheng = ""
    
    var sangZhi = ""
    
    var chuanBeiMu = ""
    
    var guaLuo = ""
    
    var banXia = ""
    
    var jieGeng = "1. Failure of lung qi to disperse due to invasion of exogenous pathogenic factors manifested as cough with profuse sputum or sputum that is difficult to expectorate, fullness and distension in the chest and hypochondriac region, sore throat and hoarse voice. Platycodon root (Jiegeng) is used with Apricot seed (Xingren), Perilla leaf (Zisuye) and Tangerine peel (Chenpi) for wind-cold cough. Platycodon root (Jiegeng) is used with Mulberry leaf (Sangye), Apricot seed (Xingren) and Trichosanthes fruit (Gualou) for wind-heat cough. Platycodon root (Jiegeng) is used with Scrophularia (Xuanshen), Licorice root (Gancao) and Arctium fruit (Niubangzi) for sore throat and hoarse voice.\n 2. Toxic heat accumulated in the lungs (lung abscess) manifested as cough with blood or pus, yellow and offensive smelling sputum and chest pain. Platycodon root (Jiegeng) is used with Houttuynia (Yuxingcao), Benincasa seed (Dongguaren) and Trichosanthes fruit (Gualou)."
    
    var xingRen = ""
    
    var piPaYe = ""
    
    var ziSuZi = ""
    
    var sangBaiPi = "1. Heat in the lungs manifested as cough with excessive sputum and asthma. Mulberry bark (Sangbaipi) is used with Wolfberry bark (Digupi) and Licorice root (Gancao) in the formula Xiebai San.\n 2. Dysuria or edema. Mulberry bark (Sangbaipi) is used with Areca nut shell (Dafupi) and Poria peel (Fulingpi) in the formula Wupi Yin."
    
    var huoPo = ""
    
    var cangZhu = ""
    
    var huoXiang = ""
    
    var shaRen = ""
    
    var shanZha = ""
    
    var shenQu = ""
    
    var maiYa = ""
    
    var laiFuZi = "1. Retention of food manifested as epigastric and abdominal distension and fullness, acid regurgitation, abdominal pain, diarrhea and tenesmus. Radish seed (Laifuzi) is used with Hawthorn fruit (Shanzha), Medicated leaven (Shenqu) and Tangerine peel (Chenpi) in the formula Baohe Wan.\n 2. Excessive phlegm manifested as cough with profuse sputum or asthma. Radish seed (Laifuzi) is used with White mustard seed (Baijiezi) and Perilla seed (Suzi) in the formula Sanzi Yangqing Tang."
    
    var chenPi = ""
    
    var xiangFu = "1. Qi stagnation in the liver manifested as costal pain and stifling sensation in the chest. Cyperus tuber (Xiangfu) is used with Bupleurum root (Chaihu), Curcuma root (Yujin) and White peony root (Baishao).\n 2. Liver qi attacking the stomach manifested as epigastric and abdominal distension and pain. Cyperus tuber (Xiangfu) is used with Costus root (Muxiang), Citron (Xiangyuan) and Finger citron (Foshou).\n 3. Cold and qi stagnation in the stomach. Cyperus tuber (Xiangfu) is used with Galangal rhizome (Gaoliangjiang) in the formula Liang Fu Wan.\n 4. Cold stagnation in the liver meridian manifested as painful swelling of testicles or scrotum, or hernia. Cyperus tuber (Xiangfu) is used with Fennel fruit (Xiaohuixiang) and Lindera root (Wuyao).\n 5. Qi stagnation in the liver manifested as irregular menstruation, dysmenorrhea and distension and pain in the breasts. Cyperus tuber (Xiangfu) is used with Bupleurum root (Chaihu), Chinese angelica root (Danggui) and Chuanxiong rhizome (Chuanxiong)."
    
    var wuYao = ""
    
    var chuanLianZi = ""
    
    var sanQi = "1. Hemorrhage in the interior or at the surface of the body. The powder of Notoginseng (Sanqi) is taken alone, or it may be used with Ophicalcite (Huaruishi) and Carbonized human hair (Xueyutan) in the formula Huaxue Dan.\n 2. Hemorrhages and swelling due to external injuries. Powdered Notoginseng (Sanqi) is used alone externally."
    
    var puHuang = ""
    
    var ceBaiYe = ""
    
    var aiYe = ""
    
    var chuanXiong = ""
    
    var danShen = ""
    
    var yanHuoSuo = ""
    
    var yuJin = "1. Qi and blood stagnation (a) pain in the chest, abdominal or hypochondriac\n regionsCurcuma root (Yujin) is used with Red sage root (Danshen), Cyperus tuber (Xiangfu),\n Bupleurum root (Chaihu) and Bitter orange (Zhiqiao); (b) dysmenorrhea due to qi and\n blood stagnation. Curcuma root (Yujin) is used with Bupleurum root (Chaihu), Cyperus\n tuber (Xiangfu), White peony root (Baishao) and Chinese angelica root (Danggui).\n 2. Mental derangement due to interior damp-warm attacking. Curcuma root (Yujin) is\n used with Grass-leaved sweetflag (Shichangpu) in the formula Changpu Yujin Tang.\n 3. Jaundice due to interior accumulation of damp-heat. Curcuma root (Yujin) is used\n with Oriental wormwood (Yinchenhao) and Capejasmine (Zhizi)."
    
    var taoRen = "1. Lower back pain and weakness of the legs due to deficient kidneys. Walnut seed (Hutaoren) is used with Eucommia bark (Duzhong) and Psoralea fruit (Buguzhi) in the formula Qing'e Wan.\n 2. Cough and asthma due to deficient lungs. Walnut seed (Hutaoren) is used with Ginseng (Renshen).\n 3. Constipation due to dryness in the intestines. Walnut seed (Hutaoren) is used with Hemp seed (Huomaren) and Cistanche (Roucongrong)."
    
    var hongHua = ""
    
    var moYao = ""
    
    var chiShao = "1. Febrile diseases in which exogenous pathogenic heat enters into the nutritive and blood levels manifested as maculopapule, vomiting with blood, epistaxis, and deep red tongue proper. Red peony (Chishao) is used with Fresh rehmannia root (Shengdihuang) and Moutan bark (Mudanpi).\n 2. Blood stagnation manifested as dysmenorrhea, amenorrhea, acute inflammation with red swelling and pain from external injury. Red peony (Chishao) is used with Chuanxiong rhizome (Chuanxiong), Chinese angelica root (Danggui), Peach seed (Taoren) and Safflower (Honghua).\n 3. Boils, carbuncles and furuncles. Red peony (Chishao) is used with Honeysuckle flower (Jinyinhua) and Forsythia fruit (Lianqiao)."
    
    var fuZi = ""
    
    var ganJiang = ""
    
    var rouGui = ""
    
    var huJiao = ""
    
    var xiaoHuiXiang = ""
    
    var renShen = ""
    
    var dangShen = ""
    
    var huangQi = "1. Deficient qi of the spleen and lungs manifested as poor appetite, loose stool, shortness of breath and lassitude. Astragalus root (Huangqi) is used with Ginseng (Renshen) and White atractylodes (Baizhu).\n 2. Deficient qi and weakened yang manifested as chills and sweating. Astragalus root (Huangqi) is used with Prepared aconite root (Fuzi).\n 3. Qi sinking in the middle jiao due to weakness of the spleen and stomach manifested as prolapsed anus, prolapsed uterus and gastroptosis. Astragalus root (Huangqi) is used with Ginseng (Renshen), White atractylodes (Baizhu) and Cimicifuga rhizome (Shengma) in the formula Buzhong Yiqi Tang.\n 4. Failure of deficient qi of the spleen in controlling blood manifested as blood in the stool and uterine bleeding. Astragalus root (Huangqi) is used with Ginseng (Renshen) and Chinese angelica root (Danggui) in the formula Guipi Tang.\n 5. Deficiency of qi and blood manifested as palpitations, anxiety, insomnia and forgetfulness. Astragalus root (Huangqi) is used with Longan aril (Longyanrou), Wild jujube seed (Suanzaoren) and Polygala root (Yuanzhi) in the formula Guipi Tang.\n 6. Spontaneous sweating due to exterior deficiency. Astragalus root (Huangqi) is used with Oyster shell (Muli), Light wheat (Fuxiaomai) and Ephedra root (Mahuanggen) in the formula Muli San.\n 7. Night sweating due to yin deficiency and excessive fire. Astragalus root (Huangqi) is used with Fresh rehmannia root (Shengdihuang) and Phellodendron bark (Huangbai) in the formula Danggui Liuhuang Tang.\n 8. Deficiency of the spleen leading to dysfunction in transportation and transformation of water manifested as edema and scanty urine. Astragalus root (Huangqi) is used with Tetrandra root (Fangji) and White atractylodes (Baizhu) in the formula Fangji Huangqi Tang.\n 9. Boils and ulcers due to qi and blood deficiency manifested as sores that have formed pus but have not drained or healed well. Astragalus root (Huangqi) is used with Cinnamon bark (Rougui), Chinese angelica root (Danggui) and Ginseng (Renshen).\n 10. Retardation of circulation of the blood due to deficiency of qi and blood manifested as hemiplegia. Astragalus root (Huangqi) is used with Chinese angelica root (Danggui), Chuanxiong rhizome (Chuanxiong) and Earthworm (Dilong) in the formula Buyang Huanwu Tang."
    
    var baiZhu = ""
    
    var ganCao = ""
    
    var daZao = ""
    
    var dangGui = ""
    
    var shuDiHuang = ""
    
    var baiShao = ""
    
    var sangShen = "1. Deficient yin and blood manifested as dizziness, vertigo, blurred vision, tinnitus, deafness, insomnia and early graying of hair. Mulberry (Sangshen) is used with Fleeceflower root (Heshouwu), Grossy privet fruit (Nuzhenzi) and Eclipta (Mohanlian) in the formula Shouwu Yanshou Dan.\n 2. Thirst and dry mouth due to deficient body fluids or diabetes manifested as thirst with desire to drink, profuse urine and lassitude. Mulberry (Sangshen) is used with Ophiopogon root (Maidong), Grossy privet fruit (Nuzhenzi) and Trichosanthes root (Tianhuafen).\n 3. Constipation due to dryness in the intestines. Mulberry (Sangshen) is used with Black sesame seed (Heizhima), raw Fleeceflower root (Heshouwu) and Hemp seed (Huomaren)."
    
    var yinYangHuo = ""
    
    var huTaoRen = "1. Lower back pain and weakness of the legs due to deficient kidneys. Walnut seed (Hutaoren) is used with Eucommia bark (Duzhong) and Psoralea fruit (Buguzhi) in the formula Qing'e Wan.\n 2. Cough and asthma due to deficient lungs. Walnut seed (Hutaoren) is used with Ginseng (Renshen).\n 3. Constipation due to dryness in the intestines. Walnut seed (Hutaoren) is used with Hemp seed (Huomaren) and Cistanche (Roucongrong)."
    
    var xuDuan = "1. Deficiency of the liver and kidneys manifested as soreness and pain in the lower back and knees or weakness of the legs. Teasel root (Xuduan) is used with Eucommia bark (Duzhong) and Cyathula root (Niuxi).\n 2. Derangement of Chong and Ren meridians due to deficient liver and kidneys manifested as profuse menstrual flow, uterine bleeding and threatened abortion (restless fetus). Teasel root (Xuduan) is used with Eucommia bark (Duzhong), Donkey hide gelatin (Ejiao), Mugwort leaf (Aiye), Astragalus root (Huangqi) and Chinese angelica root (Danggui).\n 3. External injury. Teasel root (Xuduan) is used with Drynaria (Gusuibu) and Dragon's blood (Xuejie) for reducing swelling and stopping pain."
    
    var baJiTian = ""
    
    var maiMenDong = ""
    
    var tianMenDong = ""
    
    var baiHe = ""
    
    var heiZhiMa = ""
    
    var wuWeiZi = ""
    
    var rouDouKou = "1. Chronic diarrhea. Nutmeg (Roudoukou) is used with Chebula fruit (Hezi), White atractylodes (Baizhu) and Pilose asiabell root (Dangshen).\n 2. Qi stagnation due to deficiency and cold in the spleen and stomach manifested as epigastric and abdominal pain, vomiting and nausea. Nutmeg (Roudoukou) is used with Costus root (Muxiang), Fresh ginger (Shengjiang) and Pinellia tuber (Banxia)."
    
    var wuMei = "1. Chronic cough due to deficiency of the lungs. Black plum (Wumei) is used with Poppy capsule (Yingsuqiao), Donkey hide gelatin (Ejiao) and Apricot seed (Xingren).\n 2. Chronic diarrhea or dysentery. Black plum (Wumei) is used with Nutmeg (Roudoukou), Chebula fruit (Hezi) and Poppy capsule (Yingsuqiao).\n 3. Acute dysentery. Black plum (Wumei) is used with Coptis root (Huanglian).\n 4. Diabetes. Black plum (Wumei) is used with Trichosanthes root (Tianhuafen), Ophiopogon root (Maidong), Ginseng (Renshen) and Pueraria root (Gegen).\n 5. Roundworms in the biliary tract manifested as abdominal pain, nausea and vomiting. Black plum (Wumei) is used with Asarum herb (Xixin) and Coptis root (Huanglian) in the formula Wumei Wan."
    
    var fuPenZi = ""
    
    var shanZhuYu = "1. Deficiency of the liver and kidneys manifested as dizziness, blurred vision, soreness in the lower back, weakness of the legs, seminal emissions and impotence. Dogwood fruit (Shanzhuyu) is used with Prepared rehmannia root (Shudihuang), Dadder seed (Tusizi), Wolfberry fruit (Gouqizi) and Eucommia bark (Duzhong).\n 2. Spontaneous sweating due to weakness of the body. Dogwood fruit (Shanzhuyu) is used with Ginseng (Renshen), Prepared aconite root (Fuzi) and Oyster shell (Muli)."
    
    var longGu = ""
    
    var muLi = ""
    
    var suanZaoRen = ""
    
    var baiZiRen = "1. Deficient blood of the heart manifested as irritability, insomnia, palpitations and anxiety. Arborvitae seed (Baiziren) is used with Wild jujube seed (Suanzaoren) and Schisandra fruit (Wuweizi).\n 2. Night sweating due to yin deficiency. Arborvitae seed (Baiziren) is used with Ginseng (Renshen), Oyster shell (Muli) and Schisandra fruit (Wuweizi).\n 3. Constipation due to dryness in the intestines. Arborvitae seed (Baiziren) is used with Apricot seed (Xingren), Bush-cherry seed (Yuliren) and Peach seed (Taoren) in the formula Wuren Wan."
    
    var gouTeng = ""
    
    var tianMa = ""
    
    
    
}