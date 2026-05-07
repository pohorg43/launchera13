.class public Lcom/android/keyguardservice/KeyGuardDismissedUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIM_DURATION:I = 0x104

.field private static final DISSMISS_ALPHA_DURATION:J = 0x1f4L

.field private static final DISSMISS_DRAGLAYER_SCALE:F = 0.95f

.field private static final DISSMISS_FIFTH_ROW:I = 0x5

.field private static final DISSMISS_FIFTH_ROW_ICONS_ANIMATION_DELAY:I = 0x84

.field private static final DISSMISS_FIFTH_ROW_ICONS_ANIMATION_TRANSLATE:F = 12.0f

.field private static final DISSMISS_FIRST_ROW:I = 0x1

.field private static final DISSMISS_FIRST_ROW_ICONS_ANIMATION_DELAY:I = 0x0

.field private static final DISSMISS_FIRST_ROW_ICONS_ANIMATION_TRANSLATE:F = 36.0f

.field private static final DISSMISS_FORTH_ROW:I = 0x4

.field private static final DISSMISS_FOURTH_ROW_ICONS_ANIMATION_DELAY:I = 0x63

.field private static final DISSMISS_FOURTH_ROW_ICONS_ANIMATION_TRANSLATE:F = 18.0f

.field private static final DISSMISS_HOTSEATE_TRANSLATE_DURATION:J = 0x12cL

.field private static final DISSMISS_HOTSEAT_ANIMATION_TRANSLATE:F = 100.0f

.field private static final DISSMISS_SCALE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISSMISS_SCALE_DURATION:J = 0x247L

.field private static final DISSMISS_SECOND_ROW:I = 0x2

.field private static final DISSMISS_SECOND_ROW_ICONS_ANIMATION_DELAY:I = 0x21

.field private static final DISSMISS_SECOND_ROW_ICONS_ANIMATION_TRANSLATE:F = 30.0f

.field private static final DISSMISS_SIXTH_ROW_ICONS_ANIMATION_DELAY:I = 0xa5

.field private static final DISSMISS_SIXTH_ROW_ICONS_ANIMATION_TRANSLATE:F = 6.0f

.field private static final DISSMISS_THIRD_ROW:I = 0x3

.field private static final DISSMISS_THIRD_ROW_ICONS_ANIMATION_DELAY:I = 0x42

.field private static final DISSMISS_THIRD_ROW_ICONS_ANIMATION_TRANSLATE:F = 24.0f

.field private static final DISSMISS_TRANSLATE_DURATION:J = 0x14dL

.field private static final DISSMISS_TRANSLATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISSMISS_ZERO_ROW:I = 0x0

.field private static final INT_2:I = 0x2

.field private static final LINE_POSITION_ANIM_COUNT:F = 4.0f

.field private static final POSITION_ANIM_START_INPUT:F = 0.4f

.field private static final WALLPAPER_SCALE:F = 0.5f

.field private static sKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_SCALE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3eae147b  # 0.34f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_TRANSLATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->overshoot(FF)F

    move-result p0

    return p0
.end method

.method public static addAnimByLine(Ljava/util/ArrayList;Landroid/view/ViewGroup;IFZII)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;",
            "Landroid/view/ViewGroup;",
            "IFZII)V"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    :goto_b
    if-ge v9, v8, :cond_5e

    move-object v10, p1

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_5a

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    move v11, p2

    if-ne v11, v3, :cond_5b

    const/high16 v0, 0x40000000  # 2.0f

    if-eqz p4, :cond_48

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v3

    invoke-static {v3, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->invertCellX(III)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v4, v4, -0x1

    int-to-float v3, v4

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000  # 4.0f

    move-object v0, v7

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V

    goto :goto_5b

    :cond_48
    int-to-float v2, v2

    add-int/lit8 v4, v4, -0x1

    int-to-float v3, v4

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000  # 4.0f

    move-object v0, v7

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V

    goto :goto_5b

    :cond_5a
    move v11, p2

    :cond_5b
    :goto_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_5e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object v1, p0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    return-void
.end method

.method private static addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "FFFII)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput p4, v4, v7

    const-string v8, "alpha"

    invoke-static {v0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x82

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v8, p5

    invoke-static {v1, v2, v8}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->computeTranslation(FFI)F

    move-result v8

    instance-of v9, v0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v9, :cond_39

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v9}, Lcom/android/launcher3/card/IAreaWidget;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v9

    if-eqz v9, :cond_39

    iget v9, v9, Landroid/graphics/PointF;->x:F

    goto :goto_3a

    :cond_39
    move v9, v6

    :goto_3a
    new-array v10, v3, [F

    aput v8, v10, v5

    aput v9, v10, v7

    const-string/jumbo v8, "translationX"

    invoke-static {v0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x104

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/keyguardservice/KeyGuardDismissedUtils$1;

    invoke-direct {v11}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$1;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v11, p6

    int-to-float v11, v11

    const/high16 v12, 0x40800000  # 4.0f

    div-float/2addr v11, v12

    instance-of v12, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v12, :cond_67

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v13, v13, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    if-eqz v13, :cond_67

    iget v6, v13, Landroid/graphics/PointF;->y:F

    :cond_67
    new-array v13, v3, [F

    aput v11, v13, v5

    aput v6, v13, v7

    const-string/jumbo v6, "translationY"

    invoke-static {v0, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/keyguardservice/KeyGuardDismissedUtils$2;

    invoke-direct {v11}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$2;-><init>()V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v12, :cond_8b

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v12

    goto :goto_8c

    :cond_8b
    move v12, v11

    :goto_8c
    const v13, 0x3f4ccccd  # 0.8f

    mul-float/2addr v13, v12

    mul-float/2addr v12, v11

    new-array v14, v3, [F

    aput v13, v14, v5

    aput v12, v14, v7

    const-string/jumbo v15, "scaleX"

    invoke-static {v0, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v15, v3, [F

    aput v13, v15, v5

    aput v12, v15, v7

    const-string/jumbo v12, "scaleY"

    invoke-static {v0, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v4, v10, v5

    aput-object v8, v10, v7

    aput-object v6, v10, v3

    const/4 v3, 0x3

    aput-object v14, v10, v3

    const/4 v3, 0x4

    aput-object v0, v10, v3

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit16 v1, v0, 0x104

    div-int/lit8 v1, v1, 0xf

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addUnLockAnim(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    sget v4, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    div-int/2addr v4, v2

    sget v5, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    div-int/2addr v5, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    fill-array-data v5, :array_10e

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x247

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_SCALE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p3

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    fill-array-data v5, :array_116

    invoke-static {p3, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v5, 0x1f4

    invoke-virtual {p3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4f
    const-wide/16 v3, 0x12c

    if-eqz p1, :cond_6c

    sget-object p3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    fill-array-data v5, :array_11e

    invoke-static {p1, p3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_TRANSLATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6c
    if-eqz p2, :cond_8b

    instance-of p1, p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_8b

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array p3, v2, [F

    fill-array-data p3, :array_126

    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_TRANSLATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    move v1, p2

    move v0, p3

    move v3, v0

    :goto_94
    if-ge v0, p1, :cond_10d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_10a

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_10a

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v6, v5

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    if-nez v7, :cond_b9

    const/high16 v1, 0x42100000  # 36.0f

    move v3, p3

    goto :goto_de

    :cond_b9
    if-ne v7, v5, :cond_c0

    const/high16 v1, 0x41f00000  # 30.0f

    const/16 v3, 0x21

    goto :goto_de

    :cond_c0
    if-ne v7, v2, :cond_c7

    const/high16 v1, 0x41c00000  # 24.0f

    const/16 v3, 0x42

    goto :goto_de

    :cond_c7
    const/4 v6, 0x3

    if-ne v7, v6, :cond_cf

    const/high16 v1, 0x41900000  # 18.0f

    const/16 v3, 0x63

    goto :goto_de

    :cond_cf
    const/4 v6, 0x4

    if-ne v7, v6, :cond_d7

    const/high16 v1, 0x41400000  # 12.0f

    const/16 v3, 0x84

    goto :goto_de

    :cond_d7
    const/4 v6, 0x5

    if-ne v7, v6, :cond_de

    const/high16 v1, 0x40c00000  # 6.0f

    const/16 v3, 0xa5

    :cond_de
    :goto_de
    instance-of v6, v4, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v6, :cond_ea

    new-instance v6, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;

    invoke-direct {v6, v4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {p4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_ea
    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v6, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v7, v2, [F

    aput v1, v7, p3

    aput p2, v7, v5

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_TRANSLATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_10a
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    :cond_10d
    return-void

    :array_10e
    .array-data 4
        0x3f733333  # 0.95f
        0x3f800000  # 1.0f
    .end array-data

    :array_116
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_11e
    .array-data 4
        0x42c80000  # 100.0f
        0x0
    .end array-data

    :array_126
    .array-data 4
        0x42c80000  # 100.0f
        0x0
    .end array-data
.end method

.method private static computeTranslation(FFI)F
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    add-float/2addr p0, v0

    sub-float/2addr p1, p0

    int-to-float p0, p2

    const/high16 p2, 0x41000000  # 8.0f

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public static invertCellX(III)I
    .registers 3

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    return p0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    sput-object p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    :cond_12
    sget-object p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private static overshoot(FF)F
    .registers 4

    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v1, v0

    return v1
.end method
