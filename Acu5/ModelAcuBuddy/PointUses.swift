//
//  PointUses.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/30/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation

class PointUses: NSObject {
    
    static let sharedController = PointUses()
    
    var thisPoint: Point? = nil
    var needUse: Bool? = true
    var use: String?
    
    enum Point {
        case LU1,LU2,LU3,LU4,LU5,LU6,LU7,LU8,LU9,LU10,LU11
        case LI1,LI2,LI3,LI4,LI5,LI6,LI7,LI8,LI9,LI10,LI11,LI12,LI13,LI14,LI15,LI16,LI17,LI18,LI19,LI20
        case ST1,ST2,ST3,ST4,ST5,ST6,ST7,ST8,ST9,ST10,ST11,ST12,ST13,ST14,ST15,ST16,ST17,ST18,ST19,ST20,ST21,ST22,ST23,ST24,ST25,ST26,ST27,ST28,ST29,ST30,ST31,ST32,ST33,ST34,ST35,ST36,ST37,ST38,ST39,ST40,ST41,ST42,ST43,ST44,ST45
        case SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8,SP9,SP10,SP11,SP12,SP13,SP14,SP15,SP16,SP17,SP18,SP19,SP20,SP21
        case HT1,HT2,HT3,HT4,HT5,HT6,HT7,HT8,HT9
        case SI1,SI2,SI3,SI4,SI5,SI6,SI7,SI8,SI9,SI10,SI11,SI12,SI13,SI14,SI15,SI16,SI17,SI18,SI19
        case BL1,BL2,BL3,BL4,BL5,BL6,BL7,BL8,BL9,BL10,BL11,BL12,BL13,BL14,BL15,BL16,BL17,BL18,BL19,BL20,BL21,BL22,BL23,BL24,BL25,BL26,BL27,BL28,BL29,BL30,BL31,BL32,BL33,BL34,BL35,BL36,BL37,BL38,BL39,BL40,BL41,BL42,BL43,BL44,BL45,BL46,BL47,BL48,BL49,BL50,BL51,BL52,BL53,BL54,BL55,BL56,BL57,BL58,BL59,BL60,BL61,BL62,BL63,BL64,BL65,BL66,BL67
        case KI1,KI2,KI3,KI4,KI5,KI6,KI7,KI8,KI9,KI10,KI11,KI12,KI13,KI14,KI15,KI16,KI17,KI18,KI19,KI20,KI21,KI22,KI23,KI24,KI25,KI26,KI27
        case PC1,PC2,PC3,PC4,PC5,PC6,PC7,PC8,PC9
        case SJ1,SJ2,SJ3,SJ4,SJ5,SJ6,SJ7,SJ8,SJ9,SJ10,SJ11,SJ12,SJ13,SJ14,SJ15,SJ16,SJ17,SJ18,SJ19,SJ20,SJ21,SJ22,SJ23
        case GB1,GB2,GB3,GB4,GB5,GB6,GB7,GB8,GB9,GB10,GB11,GB12,GB13,GB14,GB15,GB16,GB17,GB18,GB19,GB20,GB21,GB22,GB23,GB24,GB25,GB26,GB27,GB28,GB29,GB30,GB31,GB32,GB33,GB34,GB35,GB36,GB37,GB38,GB39,GB40,GB41,GB42,GB43,GB44
        case LR1,LR2,LR3,LR4,LR5,LR6,LR7,LR8,LR9,LR10,LR11,LR12,LR13,LR14
        case REN1,REN2,REN3,REN4,REN5,REN6,REN7,REN8,REN9,REN10,REN11,REN12,REN13,REN14,REN15,REN16,REN17,REN18,REN19,REN20,REN21,REN22,REN23,REN24
        case DU1,DU2,DU3,DU4,DU5,DU6,DU7,DU8,DU9,DU10,DU11,DU12,DU13,DU14,DU15,DU16,DU17,DU18,DU19,DU20,DU21,DU22,DU23,DU24,DU25,DU26,DU27,DU28
    }
    
    
    
    
    func getPointUse(point: PointUses.Point) -> String {
        
        
        let UseForPoint = point
        
        switch UseForPoint {
        case .LU1   :  self.use = LU1
        case .LU2   :  self.use = LU2
        case .LU3   :  self.use = LU3
        case .LU4   :  self.use = LU4
        case .LU5   :  self.use = LU5
        case .LU6   :  self.use = LU6
        case .LU7   :  self.use = LU7
        case .LU8   :  self.use = LU8
        case .LU9   :  self.use = LU9
        case .LU10   :  self.use = LU10
        case .LU11   :  self.use = LU11
            
        case .LI1   :  self.use = LI1
        case .LI2   :  self.use = LI2
        case .LI3   :  self.use = LI3
        case .LI4   :  self.use = LI4
        case .LI5   :  self.use = LI5
        case .LI6   :  self.use = LI6
        case .LI7   :  self.use = LI7
        case .LI8   :  self.use = LI8
        case .LI9   :  self.use = LI9
        case .LI10   :  self.use = LI10
        case .LI11   :  self.use = LI11
        case .LI12   :  self.use = LI12
        case .LI13   :  self.use = LI13
        case .LI14   :  self.use = LI14
        case .LI15   :  self.use = LI15
        case .LI16   :  self.use = LI16
        case .LI17   :  self.use = LI17
        case .LI18   :  self.use = LI18
        case .LI19   :  self.use = LI19
        case .LI20   :  self.use = LI20
            
        case .ST1   :  self.use = ST1
        case .ST2   :  self.use = ST2
        case .ST3   :  self.use = ST3
        case .ST4   :  self.use = ST4
        case .ST5   :  self.use = ST5
        case .ST6   :  self.use = ST6
        case .ST7   :  self.use = ST7
        case .ST8   :  self.use = ST8
        case .ST9   :  self.use = ST9
        case .ST10   :  self.use = ST10
        case .ST11   :  self.use = ST11
        case .ST12   :  self.use = ST12
        case .ST13   :  self.use = ST13
        case .ST14   :  self.use = ST14
        case .ST15   :  self.use = ST15
        case .ST16   :  self.use = ST16
        case .ST17   :  self.use = ST17
        case .ST18   :  self.use = ST18
        case .ST19   :  self.use = ST19
        case .ST20   :  self.use = ST20
        case .ST21   :  self.use = ST21
        case .ST22   :  self.use = ST22
        case .ST23   :  self.use = ST23
        case .ST24   :  self.use = ST24
        case .ST25   :  self.use = ST25
        case .ST26   :  self.use = ST26
        case .ST27   :  self.use = ST27
        case .ST28   :  self.use = ST28
        case .ST29   :  self.use = ST29
        case .ST30   :  self.use = ST30
        case .ST31   :  self.use = ST31
        case .ST32   :  self.use = ST32
        case .ST33   :  self.use = ST33
        case .ST34   :  self.use = ST34
        case .ST35   :  self.use = ST35
        case .ST36   :  self.use = ST36
        case .ST37   :  self.use = ST37
        case .ST38   :  self.use = ST38
        case .ST39   :  self.use = ST39
        case .ST40   :  self.use = ST40
        case .ST41   :  self.use = ST41
        case .ST42   :  self.use = ST42
        case .ST43   :  self.use = ST43
        case .ST44   :  self.use = ST44
        case .ST45   :  self.use = ST45
            
        case .SP1   :  self.use = SP1
        case .SP2   :  self.use = SP2
        case .SP3   :  self.use = SP3
        case .SP4   :  self.use = SP4
        case .SP5   :  self.use = SP5
        case .SP6   :  self.use = SP6
        case .SP7   :  self.use = SP7
        case .SP8   :  self.use = SP8
        case .SP9   :  self.use = SP9
        case .SP10   :  self.use = SP10
        case .SP11   :  self.use = SP11
        case .SP12   :  self.use = SP12
        case .SP13   :  self.use = SP13
        case .SP14   :  self.use = SP14
        case .SP15   :  self.use = SP15
        case .SP16   :  self.use = SP16
        case .SP17   :  self.use = SP17
        case .SP18   :  self.use = SP18
        case .SP19   :  self.use = SP19
        case .SP20   :  self.use = SP20
        case .SP21   :  self.use = SP21
            
        case .HT1   :  self.use = HT1
        case .HT2   :  self.use = HT2
        case .HT3   :  self.use = HT3
        case .HT4   :  self.use = HT4
        case .HT5   :  self.use = HT5
        case .HT6   :  self.use = HT6
        case .HT7   :  self.use = HT7
        case .HT8   :  self.use = HT8
        case .HT9   :  self.use = HT9
            
        case .SI1   :  self.use = SI1
        case .SI2   :  self.use = SI2
        case .SI3   :  self.use = SI3
        case .SI4   :  self.use = SI4
        case .SI5   :  self.use = SI5
        case .SI6   :  self.use = SI6
        case .SI7   :  self.use = SI7
        case .SI8   :  self.use = SI8
        case .SI9   :  self.use = SI9
        case .SI10   :  self.use = SI10
        case .SI11   :  self.use = SI11
        case .SI12   :  self.use = SI12
        case .SI13   :  self.use = SI13
        case .SI14   :  self.use = SI14
        case .SI15   :  self.use = SI15
        case .SI16   :  self.use = SI16
        case .SI17   :  self.use = SI17
        case .SI18   :  self.use = SI18
        case .SI19   :  self.use = SI19
            
        case .BL1   :  self.use = BL1
        case .BL2   :  self.use = BL2
        case .BL3   :  self.use = BL3
        case .BL4   :  self.use = BL4
        case .BL5   :  self.use = BL5
        case .BL6   :  self.use = BL6
        case .BL7   :  self.use = BL7
        case .BL8   :  self.use = BL8
        case .BL9   :  self.use = BL9
        case .BL10   :  self.use = BL10
        case .BL11   :  self.use = BL11
        case .BL12   :  self.use = BL12
        case .BL13   :  self.use = BL13
        case .BL14   :  self.use = BL14
        case .BL15   :  self.use = BL15
        case .BL16   :  self.use = BL16
        case .BL17   :  self.use = BL17
        case .BL18   :  self.use = BL18
        case .BL19   :  self.use = BL19
        case .BL20   :  self.use = BL20
        case .BL21   :  self.use = BL21
        case .BL22   :  self.use = BL22
        case .BL23   :  self.use = BL23
        case .BL24   :  self.use = BL24
        case .BL25   :  self.use = BL25
        case .BL26   :  self.use = BL26
        case .BL27   :  self.use = BL27
        case .BL28   :  self.use = BL28
        case .BL29   :  self.use = BL29
        case .BL30   :  self.use = BL30
        case .BL31   :  self.use = BL31
        case .BL32   :  self.use = BL32
        case .BL33   :  self.use = BL33
        case .BL34   :  self.use = BL34
        case .BL35   :  self.use = BL35
        case .BL36   :  self.use = BL36
        case .BL37   :  self.use = BL37
        case .BL38   :  self.use = BL38
        case .BL39   :  self.use = BL39
        case .BL40   :  self.use = BL40
        case .BL41   :  self.use = BL41
        case .BL42   :  self.use = BL42
        case .BL43   :  self.use = BL43
        case .BL44   :  self.use = BL44
        case .BL45   :  self.use = BL45
        case .BL46   :  self.use = BL46
        case .BL47   :  self.use = BL47
        case .BL48   :  self.use = BL48
        case .BL49   :  self.use = BL49
        case .BL50   :  self.use = BL50
        case .BL51   :  self.use = BL51
        case .BL52   :  self.use = BL52
        case .BL53   :  self.use = BL53
        case .BL54   :  self.use = BL54
        case .BL55   :  self.use = BL55
        case .BL56   :  self.use = BL56
        case .BL57   :  self.use = BL57
        case .BL58   :  self.use = BL58
        case .BL59   :  self.use = BL59
        case .BL60   :  self.use = BL60
        case .BL61   :  self.use = BL61
        case .BL62   :  self.use = BL62
        case .BL63   :  self.use = BL63
        case .BL64   :  self.use = BL64
        case .BL65   :  self.use = BL65
        case .BL66   :  self.use = BL66
        case .BL67   :  self.use = BL67
            
        case .KI1   :  self.use = KI1
        case .KI2   :  self.use = KI2
        case .KI3   :  self.use = KI3
        case .KI4   :  self.use = KI4
        case .KI5   :  self.use = KI5
        case .KI6   :  self.use = KI6
        case .KI7   :  self.use = KI7
        case .KI8   :  self.use = KI8
        case .KI9   :  self.use = KI9
        case .KI10   :  self.use = KI10
        case .KI11   :  self.use = KI11
        case .KI12   :  self.use = KI12
        case .KI13   :  self.use = KI13
        case .KI14   :  self.use = KI14
        case .KI15   :  self.use = KI15
        case .KI16   :  self.use = KI16
        case .KI17   :  self.use = KI17
        case .KI18   :  self.use = KI18
        case .KI19   :  self.use = KI19
        case .KI20   :  self.use = KI20
        case .KI21   :  self.use = KI21
        case .KI22   :  self.use = KI22
        case .KI23   :  self.use = KI23
        case .KI24   :  self.use = KI24
        case .KI25   :  self.use = KI25
        case .KI26   :  self.use = KI26
        case .KI27   :  self.use = KI27
            
        case .PC1   :  self.use = PC1
        case .PC2   :  self.use = PC2
        case .PC3   :  self.use = PC3
        case .PC4   :  self.use = PC4
        case .PC5   :  self.use = PC5
        case .PC6   :  self.use = PC6
        case .PC7   :  self.use = PC7
        case .PC8   :  self.use = PC8
        case .PC9   :  self.use = PC9
            
        case .SJ1   :  self.use = SJ1
        case .SJ2   :  self.use = SJ2
        case .SJ3   :  self.use = SJ3
        case .SJ4   :  self.use = SJ4
        case .SJ5   :  self.use = SJ5
        case .SJ6   :  self.use = SJ6
        case .SJ7   :  self.use = SJ7
        case .SJ8   :  self.use = SJ8
        case .SJ9   :  self.use = SJ9
        case .SJ10   :  self.use = SJ10
        case .SJ11   :  self.use = SJ11
        case .SJ12   :  self.use = SJ12
        case .SJ13   :  self.use = SJ13
        case .SJ14   :  self.use = SJ14
        case .SJ15   :  self.use = SJ15
        case .SJ16   :  self.use = SJ16
        case .SJ17   :  self.use = SJ17
        case .SJ18   :  self.use = SJ18
        case .SJ19   :  self.use = SJ19
        case .SJ20   :  self.use = SJ20
        case .SJ21   :  self.use = SJ21
        case .SJ22   :  self.use = SJ22
        case .SJ23   :  self.use = SJ23
            
        case .GB1   :  self.use = GB1
        case .GB2   :  self.use = GB2
        case .GB3   :  self.use = GB3
        case .GB4   :  self.use = GB4
        case .GB5   :  self.use = GB5
        case .GB6   :  self.use = GB6
        case .GB7   :  self.use = GB7
        case .GB8   :  self.use = GB8
        case .GB9   :  self.use = GB9
        case .GB10   :  self.use = GB10
        case .GB11   :  self.use = GB11
        case .GB12   :  self.use = GB12
        case .GB13   :  self.use = GB13
        case .GB14   :  self.use = GB14
        case .GB15   :  self.use = GB15
        case .GB16   :  self.use = GB16
        case .GB17   :  self.use = GB17
        case .GB18   :  self.use = GB18
        case .GB19   :  self.use = GB19
        case .GB20   :  self.use = GB20
        case .GB21   :  self.use = GB21
        case .GB22   :  self.use = GB22
        case .GB23   :  self.use = GB23
        case .GB24   :  self.use = GB24
        case .GB25   :  self.use = GB25
        case .GB26   :  self.use = GB26
        case .GB27   :  self.use = GB27
        case .GB28   :  self.use = GB28
        case .GB29   :  self.use = GB29
        case .GB30   :  self.use = GB30
        case .GB31   :  self.use = GB31
        case .GB32   :  self.use = GB32
        case .GB33   :  self.use = GB33
        case .GB34   :  self.use = GB34
        case .GB35   :  self.use = GB35
        case .GB36   :  self.use = GB36
        case .GB37   :  self.use = GB37
        case .GB38   :  self.use = GB38
        case .GB39   :  self.use = GB39
        case .GB40   :  self.use = GB40
        case .GB41   :  self.use = GB41
        case .GB42   :  self.use = GB42
        case .GB43   :  self.use = GB43
        case .GB44   :  self.use = GB44
            
        case .LR1   :  self.use = LR1
        case .LR2   :  self.use = LR2
        case .LR3   :  self.use = LR3
        case .LR4   :  self.use = LR4
        case .LR5   :  self.use = LR5
        case .LR6   :  self.use = LR6
        case .LR7   :  self.use = LR7
        case .LR8   :  self.use = LR8
        case .LR9   :  self.use = LR9
        case .LR10   :  self.use = LR10
        case .LR11   :  self.use = LR11
        case .LR12   :  self.use = LR12
        case .LR13   :  self.use = LR13
        case .LR14   :  self.use = LR14
            
        case .REN1   :  self.use = REN1
        case .REN2   :  self.use = REN2
        case .REN3   :  self.use = REN3
        case .REN4   :  self.use = REN4
        case .REN5   :  self.use = REN5
        case .REN6   :  self.use = REN6
        case .REN7   :  self.use = REN7
        case .REN8   :  self.use = REN8
        case .REN9   :  self.use = REN9
        case .REN10   :  self.use = REN10
        case .REN11   :  self.use = REN11
        case .REN12   :  self.use = REN12
        case .REN13   :  self.use = REN13
        case .REN14   :  self.use = REN14
        case .REN15   :  self.use = REN15
        case .REN16   :  self.use = REN16
        case .REN17   :  self.use = REN17
        case .REN18   :  self.use = REN18
        case .REN19   :  self.use = REN19
        case .REN20   :  self.use = REN20
        case .REN21   :  self.use = REN21
        case .REN22   :  self.use = REN22
        case .REN23   :  self.use = REN23
        case .REN24   :  self.use = REN24
            
        case .DU1   :  self.use = DU1
        case .DU2   :  self.use = DU2
        case .DU3   :  self.use = DU3
        case .DU4   :  self.use = DU4
        case .DU5   :  self.use = DU5
        case .DU6   :  self.use = DU6
        case .DU7   :  self.use = DU7
        case .DU8   :  self.use = DU8
        case .DU9   :  self.use = DU9
        case .DU10   :  self.use = DU10
        case .DU11   :  self.use = DU11
        case .DU12   :  self.use = DU12
        case .DU13   :  self.use = DU13
        case .DU14   :  self.use = DU14
        case .DU15   :  self.use = DU15
        case .DU16   :  self.use = DU16
        case .DU17   :  self.use = DU17
        case .DU18   :  self.use = DU18
        case .DU19   :  self.use = DU19
        case .DU20   :  self.use = DU20
        case .DU21   :  self.use = DU21
        case .DU22   :  self.use = DU22
        case .DU23   :  self.use = DU23
        case .DU24   :  self.use = DU24
        case .DU25   :  self.use = DU25
        case .DU26   :  self.use = DU26
        case .DU27   :  self.use = DU27
        case .DU28   :  self.use = DU28
            
        default : self.use = "default"
            
        }
        
        return self.use!
            
        }
        
        
        var  LU1 = " "
        var  LU2 = " "
        var  LU3 = " "
        var  LU4 = " "
        var  LU5 = " "
        var  LU6 = " "
        var  LU7 = " "
        var  LU8 = " "
        var  LU9 = " "
        var  LU10 = " "
        var  LU11 = " "
        
        var  LI1 = " "
        var  LI2 = " "
        var  LI3 = " "
        var  LI4 = " "
        var  LI5 = " "
        var  LI6 = " "
        var  LI7 = " "
        var  LI8 = " "
        var  LI9 = " "
        var  LI10 = " "
        var  LI11 = " "
        var  LI12 = " "
        var  LI13 = " "
        var  LI14 = " "
        var  LI15 = " "
        var  LI16 = " "
        var  LI17 = " "
        var  LI18 = " "
        var  LI19 = " "
        var  LI20 = " "
        
        var  ST1 = " "
        var  ST2 = " "
        var  ST3 = " "
        var  ST4 = " "
        var  ST5 = " "
        var  ST6 = " "
        var  ST7 = " "
        var  ST8 = " "
        var  ST9 = " "
        var  ST10 = " "
        var  ST11 = " "
        var  ST12 = " "
        var  ST13 = " "
        var  ST14 = " "
        var  ST15 = " "
        var  ST16 = " "
        var  ST17 = " "
        var  ST18 = " "
        var  ST19 = " "
        var  ST20 = " "
        var  ST21 = " "
        var  ST22 = " "
        var  ST23 = " "
        var  ST24 = " "
        var  ST25 = " "
        var  ST26 = " "
        var  ST27 = " "
        var  ST28 = " "
        var  ST29 = " "
        var  ST30 = " "
        var  ST31 = " "
        var  ST32 = " "
        var  ST33 = " "
        var  ST34 = " "
        var  ST35 = " "
        var  ST36 = " "
        var  ST37 = " "
        var  ST38 = " "
        var  ST39 = " "
        var  ST40 = " "
        var  ST41 = " "
        var  ST42 = " "
        var  ST43 = " "
        var  ST44 = " "
        var  ST45 = " "
        
        var  SP1 = " "
        var  SP2 = " "
        var  SP3 = " "
        var  SP4 = " "
        var  SP5 = " "
        var  SP6 = " "
        var  SP7 = " "
        var  SP8 = " "
        var  SP9 = " "
        var  SP10 = " "
        var  SP11 = " "
        var  SP12 = " "
        var  SP13 = " "
        var  SP14 = " "
        var  SP15 = " "
        var  SP16 = " "
        var  SP17 = " "
        var  SP18 = " "
        var  SP19 = " "
        var  SP20 = " "
        var  SP21 = " "
        
        var  HT1 = " "
        var  HT2 = " "
        var  HT3 = " "
        var  HT4 = " "
        var  HT5 = " "
        var  HT6 = " "
        var  HT7 = " "
        var  HT8 = " "
        var  HT9 = " "
        
        var  SI1 = " "
        var  SI2 = " "
        var  SI3 = " "
        var  SI4 = " "
        var  SI5 = " "
        var  SI6 = " "
        var  SI7 = " "
        var  SI8 = " "
        var  SI9 = " "
        var  SI10 = " "
        var  SI11 = " "
        var  SI12 = " "
        var  SI13 = " "
        var  SI14 = " "
        var  SI15 = " "
        var  SI16 = " "
        var  SI17 = " "
        var  SI18 = " "
        var  SI19 = " "
        
        var  BL1 = " "
        var  BL2 = " "
        var  BL3 = " "
        var  BL4 = " "
        var  BL5 = " "
        var  BL6 = " "
        var  BL7 = " "
        var  BL8 = " "
        var  BL9 = " "
        var  BL10 = " "
        var  BL11 = " "
        var  BL12 = " "
        var  BL13 = " "
        var  BL14 = " "
        var  BL15 = " "
        var  BL16 = " "
        var  BL17 = " "
        var  BL18 = " "
        var  BL19 = " "
        var  BL20 = " "
        var  BL21 = " "
        var  BL22 = " "
        var  BL23 = " "
        var  BL24 = " "
        var  BL25 = " "
        var  BL26 = " "
        var  BL27 = " "
        var  BL28 = " "
        var  BL29 = " "
        var  BL30 = " "
        var  BL31 = " "
        var  BL32 = " "
        var  BL33 = " "
        var  BL34 = " "
        var  BL35 = " "
        var  BL36 = " "
        var  BL37 = " "
        var  BL38 = " "
        var  BL39 = " "
        var  BL40 = " "
        var  BL41 = " "
        var  BL42 = " "
        var  BL43 = " "
        var  BL44 = " "
        var  BL45 = " "
        var  BL46 = " "
        var  BL47 = " "
        var  BL48 = " "
        var  BL49 = " "
        var  BL50 = " "
        var  BL51 = " "
        var  BL52 = " "
        var  BL53 = " "
        var  BL54 = " "
        var  BL55 = " "
        var  BL56 = " "
        var  BL57 = " "
        var  BL58 = " "
        var  BL59 = " "
        var  BL60 = " "
        var  BL61 = " "
        var  BL62 = " "
        var  BL63 = " "
        var  BL64 = " "
        var  BL65 = " "
        var  BL66 = " "
        var  BL67 = " "
        
        var  KI1 = " "
        var  KI2 = " "
        var  KI3 = " "
        var  KI4 = " "
        var  KI5 = " "
        var  KI6 = " "
        var  KI7 = " "
        var  KI8 = " "
        var  KI9 = " "
        var  KI10 = " "
        var  KI11 = " "
        var  KI12 = " "
        var  KI13 = " "
        var  KI14 = " "
        var  KI15 = " "
        var  KI16 = " "
        var  KI17 = " "
        var  KI18 = " "
        var  KI19 = " "
        var  KI20 = " "
        var  KI21 = " "
        var  KI22 = " "
        var  KI23 = " "
        var  KI24 = " "
        var  KI25 = " "
        var  KI26 = " "
        var  KI27 = " "
        
        var  PC1 = " "
        var  PC2 = " "
        var  PC3 = " "
        var  PC4 = " "
        var  PC5 = " "
        var  PC6 = " "
        var  PC7 = " "
        var  PC8 = " "
        var  PC9 = " "

        
        var  SJ1 = " "
        var  SJ2 = " "
        var  SJ3 = " "
        var  SJ4 = " "
        var  SJ5 = " "
        var  SJ6 = " "
        var  SJ7 = " "
        var  SJ8 = " "
        var  SJ9 = " "
        var  SJ10 = " "
        var  SJ11 = " "
        var  SJ12 = " "
        var  SJ13 = " "
        var  SJ14 = " "
        var  SJ15 = " "
        var  SJ16 = " "
        var  SJ17 = " "
        var  SJ18 = " "
        var  SJ19 = " "
        var  SJ20 = " "
        var  SJ21 = " "
        var  SJ22 = " "
        var  SJ23 = " "
        
        var  GB1 = " "
        var  GB2 = " "
        var  GB3 = " "
        var  GB4 = " "
        var  GB5 = " "
        var  GB6 = " "
        var  GB7 = " "
        var  GB8 = " "
        var  GB9 = " "
        var  GB10 = " "
        var  GB11 = " "
        var  GB12 = " "
        var  GB13 = " "
        var  GB14 = " "
        var  GB15 = " "
        var  GB16 = " "
        var  GB17 = " "
        var  GB18 = " "
        var  GB19 = " "
        var  GB20 = " "
        var  GB21 = " "
        var  GB22 = " "
        var  GB23 = " "
        var  GB24 = " "
        var  GB25 = " "
        var  GB26 = " "
        var  GB27 = " "
        var  GB28 = " "
        var  GB29 = " "
        var  GB30 = " "
        var  GB31 = " "
        var  GB32 = " "
        var  GB33 = " "
        var  GB34 = " "
        var  GB35 = " "
        var  GB36 = " "
        var  GB37 = " "
        var  GB38 = " "
        var  GB39 = " "
        var  GB40 = " "
        var  GB41 = " "
        var  GB42 = " "
        var  GB43 = " "
        var  GB44 = " "
        
        var  LR1 = " "
        var  LR2 = " "
        var  LR3 = " "
        var  LR4 = " "
        var  LR5 = " "
        var  LR6 = " "
        var  LR7 = " "
        var  LR8 = " "
        var  LR9 = " "
        var  LR10 = " "
        var  LR11 = " "
        var  LR12 = " "
        var  LR13 = " "
        var  LR14 = " "
        
        var  REN1 = " "
        var  REN2 = " "
        var  REN3 = " "
        var  REN4 = " "
        var  REN5 = " "
        var  REN6 = " "
        var  REN7 = " "
        var  REN8 = " "
        var  REN9 = " "
        var  REN10 = " "
        var  REN11 = " "
        var  REN12 = " "
        var  REN13 = " "
        var  REN14 = " "
        var  REN15 = " "
        var  REN16 = " "
        var  REN17 = " "
        var  REN18 = " "
        var  REN19 = " "
        var  REN20 = " "
        var  REN21 = " "
        var  REN22 = " "
        var  REN23 = " "
        var  REN24 = " "
        
        var  DU1 = " "
        var  DU2 = " "
        var  DU3 = " "
        var  DU4 = " "
        var  DU5 = " "
        var  DU6 = " "
        var  DU7 = " "
        var  DU8 = " "
        var  DU9 = " "
        var  DU10 = " "
        var  DU11 = " "
        var  DU12 = " "
        var  DU13 = " "
        var  DU14 = " "
        var  DU15 = " "
        var  DU16 = " "
        var  DU17 = " "
        var  DU18 = " "
        var  DU19 = " "
        var  DU20 = " "
        var  DU21 = " "
        var  DU22 = " "
        var  DU23 = " "
        var  DU24 = " "
        var  DU25 = " "
        var  DU26 = " "
        var  DU27 = " "
        var  DU28 = " "
    
}


