.class public Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

.field public static final MIN_ALPHA:F = 0.0f

.field public static final MIN_SCALE:F = 0.7f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 4

    if-nez p2, :cond_16

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2b

    :cond_16
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    const v0, 0x3f333333  # 0.7f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2b
    new-instance p1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "if (!isReverse) {\n      …eInterpolator()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_45

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4a

    :cond_45
    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_4a
    return-object p0
.end method

.method private final createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 4

    if-nez p2, :cond_12

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_20

    :cond_12
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_20
    new-instance p1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "if (!isReverse) {\n      …eInterpolator()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3a

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3f

    :cond_3a
    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_3f
    return-object p0
.end method

.method public static synthetic invokeTransformAction$suspendImpl(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 6

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method


# virtual methods
.method public final getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;
    .registers 3

    const-string p0, "iAreaWidget"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    check-cast p1, Landroid/view/View;

    goto :goto_e

    :cond_d
    move-object p1, v0

    :goto_e
    if-nez p1, :cond_11

    goto :goto_2c

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_1c

    check-cast p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_1d

    :cond_1c
    move-object p0, v0

    :goto_1d
    if-nez p0, :cond_21

    move-object p0, v0

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_25
    instance-of p1, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p1, :cond_2c

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    move-object v0, p0

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->invokeTransformAction$suspendImpl(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final prepareForBind(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    sget-object p0, Lq3/q0;->c:Lq3/b0;

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$prepareForBind$2;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p4, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$prepareForBind$2;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)V

    invoke-static {p0, p1, p5}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_14

    return-object p0

    :cond_14
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const-string/jumbo p1, "resetAfterBindFailed"

    invoke-virtual {p0, p4, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v4, p0

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p6

    instance-of v0, v9, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_158

    instance-of v0, v2, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v0, :cond_11

    goto/16 :goto_158

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1e

    :cond_1d
    move-object v0, v3

    :goto_1e
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_38

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_43

    :cond_38
    instance-of v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_43

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_43
    :goto_43
    if-nez v0, :cond_46

    goto :goto_51

    :cond_46
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    :goto_51
    if-nez v3, :cond_58

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_58
    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_126

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v3, v9, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/4 v5, 0x4

    const/4 v11, 0x0

    const v12, 0x3f333333  # 0.7f

    const/4 v13, 0x0

    if-eqz v3, :cond_88

    move-object v3, v9

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v3, v11}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    invoke-virtual {v3, v12}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    invoke-virtual {v3, v12}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-direct {p0, v3, v13}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_88
    instance-of v3, v9, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v3, :cond_bd

    move-object v3, v9

    check-cast v3, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v3}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_96

    goto :goto_a9

    :cond_96
    invoke-virtual {v14, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v14, v13}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a9
    invoke-virtual {v3}, Lcom/android/launcher3/card/TitleCardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    if-nez v3, :cond_b0

    goto :goto_bd

    :cond_b0
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v3, v13}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    :goto_bd
    instance-of v3, v2, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v3, :cond_d4

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    invoke-virtual {v3, v13}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_d4
    instance-of v3, v2, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v3, :cond_103

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v3}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_e2

    goto :goto_ef

    :cond_e2
    invoke-virtual {v11, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ef
    invoke-virtual {v3}, Lcom/android/launcher3/card/TitleCardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    if-nez v3, :cond_f6

    goto :goto_103

    :cond_f6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_103
    :goto_103
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v11, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;

    move-object v0, v11

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Landroid/view/View;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnStart$1;

    invoke-direct {v0, v9}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnStart$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_132

    :cond_126
    const-string/jumbo v1, "transform theme area widget without anim"

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    if-nez v6, :cond_135

    :goto_132
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_135
    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;

    iget v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string/jumbo v10, "transform success without anim"

    move-object v7, v0

    move v8, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p7

    invoke-interface {v6, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lc3/a;->a:Lc3/a;

    if-ne v0, v1, :cond_155

    return-object v0

    :cond_155
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_158
    :goto_158
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0
.end method
