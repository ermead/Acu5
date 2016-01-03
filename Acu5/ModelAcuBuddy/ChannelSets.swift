//
//  Point Combinations.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/7/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation


class ChannelSets {
    
    static let sharedController = ChannelSets()
    
    let moc = Stack.sharedStack.managedObjectContext

    
    func allCombos() -> [Channel] {
        
        let pointCombo1 = Channel(name: "Point Combination 1", uses: " Main effect and clinical purpose This points-combination is commonly used as a general tonic for Qi and Blood. It is therefore frequently used in cases of severe lassitude, anemia, impotence, spermatorrhea and the like. Because of this points-combination's main effect, it is used with a tonifying manipulation and/or moxa. ", simplePointsString: "1. SANYINJIAO (SP-6), GUANYUAN (CV-4), QIHAI (CV-6).", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo2 = Channel(name: "Point Combination 2", uses: " Main effect and linical purpose This is a points-combination based on the law &quot;one point above two points below&quot; (see previous chapter). Its purpose is to clear obstruction from the Yang-Ming system, mainly sinusitis. It has a clear sedating effect, and is therefore used for excess patterns, characterized by Heat and Damp. ", simplePointsString: "2. HEGU (LI-4), YINGXIANG (LI-20), ZUSANLI (ST-36), NEITING (ST-44), XIANGU (ST-43) [43]", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo3 = Channel(name: "Point Combination 3", uses: ") Main effect and clinical purpose The combination above is a points-cluster of the shoulder. It is frequently used to disperse stagnation in the shoulder joint, and to facilitate the flow of Qi there. The cluster is usually effective in Cold stagnation of the shoulder, or Damp Bi (cases of frozen shoulder, perifocal inflammation of the shoulder joint etc.). It may also be of value for traumatic pain from sport, or accident. ", simplePointsString: "3. JIANYU (LI-15), JIANEILING (EXTRA), JIANLIAO (T-14", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo4 = Channel(name: "Point Combination 4", uses: " Main effect and clinical purpose This points-combination works primarily on the Liver and Gallbladder channels, and has a strong Yang, or Fire-reducing action, as well as Wind clearing, especially Liver Wind from the head. As a result of these properties, the combination is widely used to treat hypertension of Liver Yang, or Liver Fire origin. It may also treat headaches, migraine, or pressure behind the eye (glaucoma) of the same etiology. ", simplePointsString: "4. FENGCHI (G-20), TAIYANG (EXTRA), XINJIAN (LIV-2), YANGLINGCHUAN (G-34)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo5 = Channel(name: "Point Combination 5", uses: " ", simplePointsString: "&nbsp;", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo6 = Channel(name: "Point Combination 6", uses: " Main effect and clinical purpose The above points-combination is widely used to treat skin disorders, mainly characterized by Heat and Wind, of either internal or external origin. These disorders Include allergic skin reactions, various types of eczema, rash, hives, and other conditions. With added points like Yinlingchuan (SP-9) , or Sanyinjiao (SP-6), it may also treat skin conditions in which Damp exists, i.e. weeping eczema, furunculosis, etc. ", simplePointsString: "5. QUCHI (LI-11), XUEHAI (SP-10), WAIGUAN (T-5)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo7 = Channel(name: "Point Combination 7", uses: " Main effect and clinical purpose This points-cluster helps facilitate the flow of Qi and blood to the palm and fingers. It is used in cases of Metacarpal Tunnel Syndrome, where Qi and Blood are blocked in the matacorpal joint vicinity, and the symptoms exhibit numbness and weakness of the fingers. ", simplePointsString: "6. NEIGUAN (P-6), TALING (P-7), LIEHCHUEH (L-7)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo8 = Channel(name: "Point Combination 8", uses: " Main effect and clinical purpose This very much used points-combination has been initiated in accord with the principle of choosing points on the same meridian, for mutual assistance. It is used in many different problems of the arm, involving the shoulder, arm, hand and fingers. Its main use, however, is to invigorate the flow of Qi and Blood in the upper limb, for problems such as Painful-Bi of different etiologies, or paralysis. The fact that all these points are situated only on the Large-Intestine meridian, and not on one or more of the other five meridians of the arm, is because this meridian is known to have the richest supply of Qi and Blood (together with its counterpart, the Stomach meridian). The Nei Jing states: &quot;When treating flaccidity of the limbs (Wei syndrome), use points only from Yangming&quot; (52). ", simplePointsString: "7. JIANYU (LI-15), OUCHI (LI-11), HEGU (LI-4)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo9 = Channel(name: "Point Combination 9", uses: " Main effect and clinical purpose This points-combination was mentioned in the &quot;Great Compendium of Acupuncture and Moxibustian&quot; (Zhenjiu Dacheng) written in 1601 in China during the Ming Dynasty, by Yang Jizhow (55). Since those ancient times the relevance of the combination has not changed a bit, and its validity serves us today equally well. The combination is suitable for all breast diseases, especially those of a Shi nature. It is used with great efficacy in cases of breast-abscess, mastitis, benign tumors of the breast, and the like. This same formula is also utilized in mastosis, or agalactia (insufficient lactation) which are primarily Xu conditions. ", simplePointsString: "8. SHAOZE (SI-1), TANZHONG (CV-17), RUGEN (ST-18)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo10 = Channel(name: "Point Combination 10", uses: " Main effect and clinical purpose The points-combination above is mainly used to treat conditions in which phlegm has accumulated in the throat region, giving rise to problems such as: hoarse voice, asthma with a sensation of blocked throat, lumps in the throat, goiter etc. ", simplePointsString: "9. HEGU (LI-4), TIANTU (CV-22), FUTU (LI-18)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo11 = Channel(name: "Point Combination 11", uses: " Main effect and clinical purpose This is another points-combination in existence for at least 400 years. This combination was first mentioned in the &quot;Great Compendium of Acupuncture and Moxibustion&quot;, written by Yang Jizhow in 1601, as was combination number 8, above (61). It is structured on the principle &quot;one point above - two points below, on the same meridian&quot; (see chapter B, number 6). It is perhaps the most popular combination to treat low back pain, of any etiology. it may definitely be of great value even in cases of middle and upper back pain, with the addition of some other local points. ", simplePointsString: "0. SHENSHU (B-23), WEIZHONG (B-54), KUNLUN (B-60)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo12 = Channel(name: "Point Combination 12", uses: " Main effect and clinical purpose The goal of this much used points-combination is to relieve wheezing, and to abate Phlegm from the chest and respiratory tract. It is therefore used in cases of asthma with excessive phlegm, or bronchitis, or any other lung disease, characterized by much Phlegm, and difficult breathing. ", simplePointsString: "11. DINGCHUAN (EXTRA), TIANTU (CV-22), TANZHONG (CV-17), NEIGUAN (P-6), FENGLONG (ST-40)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo13 = Channel(name: "Point Combination 13", uses: " Main effect and clinical purpose This points-combination is the basic, and most fundamental prescription for all stomach complaints. Its action is to regulate and harmonize Stomach-Qi, resolve gastric stagnation of any kind and redirect the rebellious Qi of the Stomach. It is therefore mainly used for gastric pain of different etiologies, nausea and vomiting, such as in the morning sickness syndrome. ", simplePointsString: "12. NEIGUAN (P-6), ZUSANLI (ST-36), ZHONGWAN (CV-12)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo14 = Channel(name: "Point Combination 14", uses: " Main effect and clinical purpose This points-combination has indeed a long history. The first two points, Changqiang and Chengshan, were already mentioned as a combination 500 years ago, in 1529, by the Physician Gao Wu, in his Bai Zheng Fu (ode of a Hundred syndromes) (71). This is the basic formula to treat hemorrhoids of any aetiology. This combination treats haemorrhoids symptomatically, including bleeding and prolapse, but it may need addition of points in order to effectively treat the underlying cause of the haemorrhoids. ", simplePointsString: "13. CHANGQIANG (GV-1), CHENGSHAN (B-57), PAIHUI (GV-20)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo15 = Channel(name: "Point Combination 15", uses: " Main effect and clininal purpose Many points and combinations exist in acupuncture for the purpose of relaxing the nervous system. This combination, however, is probably the most renowned for this purpose. It is used to relax the Heart and calm the Shen, relieve tension and anxiety, and treat insomnia. ", simplePointsString: "14. SHENMEN (H-7), NEIGUAN (P-6), YINTAMG (EXTRA), SANYINJIAO (SP-6)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo16 = Channel(name: "Point Combination 16", uses: " Main effect and clinical purpose This points-combination is used to regulate the Liver and Gallbladder meridians, to remove obstruction from their passages, and to resolve stagnation of Liver-Qi. Therefore it is often used in cases of flank pain, oppression and discomfort in the chest, and distension of the breasts. Besides this it may also treat sciatica which occurs along the route of the Gallbladder meridian, or paralysis of one side of the body associated with this meridian. ", simplePointsString: "15. ZHIGOU (T-6), QIMEN (LIV-14), YANGLINGQUAN (G-34), TAICHONG (LIV-3)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo17 = Channel(name: "Point Combination 17", uses: " Main effect and clinical purpose This combination of points has a special effect on regulating the function of the intestines, and eliminating constipation. ", simplePointsString: "16. ZHIGOU (T-6), ZHAOHAI (K-6), TIANSHSU (ST-25)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo18 = Channel(name: "Point Combination 18", uses: " Main effect and clinical purpose This combination has a strong effect on the blood. Most of the points here have a regulating effect on the blood, and as a whole, it is used for astringent purposes. It arrests bleeding from any of the body nine orifices, but particularly uterine bleeding, or bleeding of the digestive tract. ", simplePointsString: "17. YINBAI (SP-1), QIHAI (CV-6), XUEHAI (SP-10), SANYINJIAO (SP-6)", images: [], hasPoints: [], context: self.moc)
        
        
        let pointCombo19 = Channel(name: "Point Combination 19", uses: " Main effect and clinical purpose This combination is a classical points-combination to clear Damp and Heat from the intestines. It is therefore used to treat problems such as chronic diarrhea, dysentery, enteritis and colitis. ", simplePointsString: "18. TIANSHU (ST-25), SHANGJUXU (ST-37), SHANGQIU (SP-5), YINLINGQUAN (SP-9) ", images: [], hasPoints: [], context: self.moc)
        
        
        return [ pointCombo1, pointCombo2, pointCombo3, pointCombo4, pointCombo5, pointCombo6, pointCombo7, pointCombo8, pointCombo9, pointCombo10, pointCombo11, pointCombo12, pointCombo13, pointCombo14, pointCombo15, pointCombo16, pointCombo17, pointCombo18, pointCombo19 ]
        
}

}