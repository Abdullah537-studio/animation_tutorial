/* 

Drawing-based 
 LottieFiles هي بتكون صور متحركة هاد الموقع بتلاقي فيه صور متحركة
 وفي الو package خاصة ب flutter 

code-based   
 1. Implicit Animations هي البسيط
هي عبارة عن widget انا فقد عند تغيير القيمة بشكل مباشر
1.1 AnimatedContainer هي نفس container العادي بس بتاخد duration زمن 
خاصية هامة جداً وهي ال curve  منحني الانتقال الحالة الافتراضية الو linear
بنفس السرعة من البداية للنهاية 
curves class  بتلاقي فيها الخواص يلي بدك روح على موقع flutter -> animation -> Curves class 
1.2. AnimatedOpacity تخفي العناصر بتاخد خاصيتين opacity and duration ك required وبتاخد curves
opacity  قيمتها بتتراوح بين 0 و 1 كل ما قربت من الصفر الشفافية بتزداد لحتى يختفي العنصر بشكل كامل 
وتصير قيمتها 0 
ملاحظة curves و  duration  هدول بكونوا موجودين بكل انواع ال  animation
1.3. animatedDefaultTextStyle  هي بتغير كل خواص الخط 
ملاحظة ال position بتكون موجودة بال stack 
1.4. AnimatedPositioned مثال 
AnimatedPositioned(
                duration: const Duration(seconds: 2),
                  انزياح من اليسار بمقدار 10
                left: lef,
                top: lef,
                child: Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
              ),
              
1.5. AnimatedPositionedDirectional الفرق بينها وبين AnimatedPositioned
بدال left , right في start , end مشان اللغات 

1.6. Animated Padding
1.7. AnimatedPhysicalModel ملاحظة ال shape لا تدعم ال animation 
خواصها duration shadowColor color elevation animateColor هي بتاخد قيمة bool 
اذا بدك ال color يتغير مع animation true والا false
 */