/* 

Drawing-based 
 LottieFiles هي بتكون صور متحركة هاد الموقع بتلاقي فيه صور متحركة
 وفي الو package خاصة ب flutter 

code-based   
?-------------------------------------------------------------------------------
! 1. Implicit Animations هي البسيط
هي عبارة عن widget انا فقد عند تغيير القيمة بشكل مباشر
! widgets
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
1.8. AnimatedSize  بتأثر على حجم ال child فيك تجربها مع container
1.9. AnimatedAlign  في خاصية align 
! TweenAnimationBuilder  
اول ما تنبني الصفحة بياخد begin لل end  حسب ال  duration
فيك تستعمل مع اي widget  الخواص جواتها 
duration
builder context,value,child بما ان فيها builder فما بدها setState لحالها بتتغير القيمة 
tween  يلي نضيف القيمة النهائية والبدائية -> Tween(begin , end) 
فيك تستعمل ColorTween, sizeTween, borderTween ........... 
اذا ما بدك ال animation يتغير مع بداية الصفحة حط ال start وال end نفس القيمة 

?-------------------------------------------------------------------------------
! 2. Explicit Animations 
بهاد النوع بتحسن تساوي انيمشن معقد ما بكون محدود متل النوع الأول
بالخواص يلي عطونا ياها height, width, ...... 
بحتى احسن استملها لازم استخدم AnimationController 
ولأحسن بلش استخدموا لازم ضيف SingleTickerProviderStateMixin أو TickerProviderStateMixing 
to stateFullWidget
? class _TestAnimationPageState extends State<TestAnimationPage>with SingleTickerProviderStateMixin
من اسمهم اذا عندي AnimationController واحد بستعمل -> SingleTickerProviderStateMixin
اذا اكتر من AnimationController بستعمل -> TickerProviderStateMixing
يلي بدك تستعمل عليهم ال animationController لازم تحطهم داخل AnimatedBuilder هي متل استعمال ال setState بس لل animatoin 
? late AnimationController animation;
  @override
  void initState() {
  commit: vsync ويلي هو التزامن العمودي حطيت this لأشر ل SingleTickerProviderStateMixin
    animation = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        lowerBound: 100,
        upperBound: 300);
    super.initState();
  }
 ? المكان يلي لازم تتفعل فيه 
  AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              alignment: Alignment.center,
              color: Colors.red,
              width: animation.value,
              height: animation.value,
            );
          },
        ),
        ال child فيك تستعملو لشي انت ما بدك بنعملو انميشن 
        child: حط يلي بدك ياه وجوات ال builder بتستدعي ال child 
        هي مشان تحسين الاداء 
? لتتفعل وتنتقل من القيمة الابتدايئة للقيمة النهائية بستعمل 
          animation.forward();
As a result, with the AnimationController, you can:

call forward() to play the animation forward
call reverse() to play the animation in reverse
call stop() to stop the animation
call repeat() to repeat the animation as long as it’s visible
call reset() to reset the animation to lowerBound
set it’s value
Access various getters to know the state of the animation like: isAnimating , isCompleted , isDismissed , …etc.
?Transfrom
? Transfrom.rotate لتحسن تعمل تدورير ل widget بزاوية محددة 
بس بدون انيمشن بس فيك تحطها ب Tween
Transfrom.rotate(
angle:الزارية بالراديان,
child: ....,
);
? Transfrom.translate انزياح
Transfrom.rotate(
offset:Offset(x,y),
child: ....,
);
? Transfrom.sacle تزيد الحجم او تكبروا
scale: 1 normall , 0 delete 
فيك تغير ال origin مركز الاحداثيات
?-------------------------------------------------------------------------------
widgets جاهزة للاستعمال مع ال  Explicit Animations
Here’s a full list of available FooTransition widgets:

AlignTransition

DecoratedBoxTransition

DefaultTextStyleTransition

FadeTransition

PositionedTransition

RelativePositionedTransition

RotationTransition

ScaleTransition

ScaleTransition

SizeTransition

SlideTransition

StatusTransitionWidget
*/