.class public final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

.field private static final TAG:Ljava/lang/String; = "AreaWidgetReplaceStrategy"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->findItemByReplaceActions$lambda-3$lambda-2$lambda-1(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$prepareWidgetInfoWithInvalidLocation(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Ljava/lang/String;Landroid/view/View;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectStrategyAndStartTransform(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transferReplaceResultToThemeStore(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->transferReplaceResultToThemeStore(ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;)V

    return-void
.end method

.method private final findItemByReplaceActions(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_46

    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_46

    :cond_13
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz2/q;

    invoke-direct {v0, p2}, Lz2/q;-><init>(Ljava/lang/Iterable;)V

    sget-object p2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;->INSTANCE:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;

    invoke-static {v0, p2}, Lo3/l;->s(Lo3/e;Lkotlin/jvm/functions/Function1;)Lo3/e;

    move-result-object p2

    check-cast p2, Lo3/m;

    iget-object v0, p2, Lo3/m;->a:Lo3/e;

    invoke-interface {v0}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p2, Lo3/m;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/theme/data/SrcDescription;

    new-instance v2, Lcom/android/launcher/x;

    invoke-direct {v2, v1, p0}, Lcom/android/launcher/x;-><init>(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    goto :goto_2b

    :cond_46
    :goto_46
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private static final findItemByReplaceActions$lambda-3$lambda-2$lambda-1(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 8

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$originView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getItemInfoId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_21

    :cond_1f
    :goto_1f
    move v2, v3

    goto :goto_81

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appwidget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5e

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getProviderName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_81

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_1f

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getCardType()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_79

    goto :goto_1f

    :cond_79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_1f

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_81
    return v2
.end method

.method private final prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MODEL_EXECUTOR"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq3/b1;

    invoke-direct {v0, p0}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;-><init>(Landroid/view/View;Ljava/lang/String;Lb3/d;)V

    invoke-static {v0, p0, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    instance-of v0, p6, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    if-eqz v0, :cond_13

    move-object v0, p6

    check-cast v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    iget v1, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    invoke-direct {v0, p0, p6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lb3/d;)V

    :goto_18
    iget-object p6, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4a

    if-eq v2, v5, :cond_3c

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p6}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_f8

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p6}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_c4

    :cond_3c
    iget-object p0, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    move-object p5, p0

    check-cast p5, Lkotlin/jvm/functions/Function2;

    iget-object p0, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-static {p6}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_a4

    :cond_4a
    invoke-static {p6}, Lq/d;->p(Ljava/lang/Object;)V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v7, "getDefault()"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "appwidget#appwidget"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8c

    move p2, v5

    goto :goto_92

    :cond_8c
    const-string p3, "card#appwidget"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_92
    if-eqz p2, :cond_ae

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    iput-object p1, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    invoke-direct {p0, p4, p2, v0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Lb3/d;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_a4

    return-object v1

    :cond_a4
    :goto_a4
    check-cast p6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    invoke-direct {p0}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;-><init>()V

    move-object p4, p5

    move-object p2, p6

    goto :goto_b1

    :cond_ae
    move-object p4, p5

    move-object p0, v6

    move-object p2, p0

    :goto_b1
    if-eqz p0, :cond_c7

    if-eqz p2, :cond_c7

    const/4 p3, 0x1

    iput-object v6, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    move-object p5, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c4

    return-object v1

    :cond_c4
    :goto_c4
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_c7
    if-nez p4, :cond_cc

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_cc
    new-instance p1, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "can not find transform strategy or targetInfo, "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, v4, v6}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    invoke-interface {p4, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f8

    return-object v1

    :cond_f8
    :goto_f8
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final transferReplaceResultToThemeStore(ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;)V
    .registers 7

    const-string p0, "AreaWidgetReplaceStrategy"

    :try_start_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/android/launcher3/card/theme/data/TransformResponse;

    invoke-static {p2}, Li1/j;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/card/theme/data/TransformResponse;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "transferReplaceResultToThemeStore arg:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "partner_theme"

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_66

    const-string/jumbo v0, "onCardSwitchResult"

    const/4 v1, 0x0

    if-nez p3, :cond_31

    move-object v2, v1

    goto :goto_3f

    :cond_31
    :try_start_31
    const-string/jumbo v2, "transferReplaceResultToThemeStore authority: partner_theme"

    invoke-static {p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_5f

    :try_start_3c
    invoke-static {p3, v1}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_3f
    if-nez v2, :cond_71

    const-string/jumbo p3, "partner_theme.basic"

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_66

    if-nez p2, :cond_4b

    goto :goto_71

    :cond_4b
    :try_start_4b
    const-string/jumbo p3, "transferReplaceResultToThemeStore authority: partner_theme.basic"

    invoke-static {p0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_58

    :try_start_54
    invoke-static {p2, v1}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_66

    goto :goto_71

    :catchall_58
    move-exception p1

    :try_start_59
    throw p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p3

    :try_start_5b
    invoke-static {p2, p1}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_66

    :catchall_5f
    move-exception p1

    :try_start_60
    throw p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p2

    :try_start_62
    invoke-static {p3, p1}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p1

    const-string/jumbo p2, "transferReplaceResultToThemeStore:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method public final jumpToThemeStore(Landroid/content/Context;Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;)V
    .registers 7

    const-string p0, "jumpToThemeStore, extra: "

    const-string v0, "AreaWidgetReplaceStrategy"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oplus.themestore.action.widgetcard_switch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_data_for_start_theme_store"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_28
    const-string v2, "com.heytap.themestore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3a

    goto :goto_3f

    :catchall_3a
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_3f
    instance-of v3, v2, Ly2/j$a;

    if-eqz v3, :cond_44

    const/4 v2, 0x0

    :cond_44
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_6f

    :try_start_48
    const-string v2, "com.oplus.themestore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_59
    .catchall {:try_start_48 .. :try_end_59} :catchall_5a

    goto :goto_5f

    :catchall_5a
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_5f
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_66

    goto :goto_6f

    :cond_66
    const-string p1, "jumpToThemeStore failed, e: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final prepareCardInfoWithInvalidLocation(I)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 3

    const-string/jumbo p0, "tryAddCardByStore, cardType = "

    const-string v0, "AreaWidgetReplaceStrategy"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "tryAddCardByStore failed, cardType = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public final replaceLauncherCardOrWidget(Ljava/lang/String;Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    if-eqz v2, :cond_19

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    iget v3, v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_19

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lb3/d;)V

    :goto_1e
    move-object v8, v2

    iget-object v1, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->result:Ljava/lang/Object;

    sget-object v9, Lc3/a;->a:Lc3/a;

    iget v2, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x1

    const-string/jumbo v11, "replaceLauncherCardOrWidget finally: "

    const v12, 0x7f0a0566

    const/4 v13, 0x0

    const-string v14, "AreaWidgetReplaceStrategy"

    if-eqz v2, :cond_78

    if-eq v2, v7, :cond_61

    if-eq v2, v3, :cond_51

    if-ne v2, v10, :cond_49

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_43
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_74
    .catchall {:try_start_43 .. :try_end_46} :catchall_70

    move-object v12, v13

    goto/16 :goto_240

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_5b
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_74
    .catchall {:try_start_5b .. :try_end_5e} :catchall_70

    move-object v12, v13

    goto/16 :goto_231

    :cond_61
    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_6b
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_74
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    goto/16 :goto_122

    :catchall_70
    move-exception v0

    move-object v12, v13

    goto/16 :goto_2ab

    :catch_74
    move-exception v0

    move-object v12, v13

    goto/16 :goto_27f

    :cond_78
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_80
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getReplaceActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_99} :catch_27b
    .catchall {:try_start_80 .. :try_end_99} :catchall_276

    if-eq v2, v7, :cond_c5

    :try_start_9b
    const-string/jumbo v0, "replaceLauncherCardOrWidget, multi request actions is not support"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_c0
    .catchall {:try_start_9b .. :try_end_a3} :catchall_bb

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v1, :cond_aa

    goto :goto_b3

    :cond_aa
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v1

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_b3
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_bb
    move-exception v0

    move-object v3, v13

    move-object v12, v3

    goto/16 :goto_279

    :catch_c0
    move-exception v0

    move-object v3, v13

    move-object v12, v3

    goto/16 :goto_27e

    :cond_c5
    :try_start_c5
    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->findItemByReplaceActions(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;

    move-result-object v6
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c9} :catch_27b
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_276

    :try_start_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceLauncherCardOrWidget originView: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e8} :catch_271
    .catchall {:try_start_c9 .. :try_end_e8} :catchall_26c

    const/4 v2, 0x0

    if-nez v6, :cond_157

    :try_start_eb
    new-instance v4, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const-string/jumbo v1, "replaceLauncherCardOrWidget failed for originView is null"

    invoke-direct {v4, v1, v2, v3, v13}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/ResultCode;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f120108

    invoke-static {v5, v1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    sget-object v10, Lq3/q0;->a:Lq3/b0;

    new-instance v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_104} :catch_152
    .catchall {:try_start_eb .. :try_end_104} :catchall_14d

    const/16 v16, 0x0

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v0, v3

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, v16

    :try_start_110
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;Landroid/content/Context;Lb3/d;)V

    iput-object v13, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v15, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v7, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    invoke-static {v10, v0, v8}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11d} :catch_165
    .catchall {:try_start_110 .. :try_end_11d} :catchall_163

    if-ne v0, v9, :cond_120

    return-object v9

    :cond_120
    move-object v3, v13

    move-object v2, v15

    :goto_122
    :try_start_122
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_124} :catch_149
    .catchall {:try_start_122 .. :try_end_124} :catchall_145

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v1, :cond_12c

    const/4 v13, 0x0

    goto :goto_135

    :cond_12c
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v1

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_135
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_13f

    goto :goto_144

    :cond_13f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_144
    return-object v0

    :catchall_145
    move-exception v0

    :goto_146
    const/4 v12, 0x0

    goto/16 :goto_2ab

    :catch_149
    move-exception v0

    :goto_14a
    const/4 v12, 0x0

    goto/16 :goto_27f

    :catchall_14d
    move-exception v0

    move-object v13, v6

    :goto_14f
    move-object v3, v13

    move-object v2, v15

    goto :goto_146

    :catch_152
    move-exception v0

    move-object v13, v6

    :goto_154
    move-object v3, v13

    move-object v2, v15

    goto :goto_14a

    :cond_157
    move-object v13, v6

    :try_start_158
    invoke-virtual {v13, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Boolean;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15e} :catch_269
    .catchall {:try_start_158 .. :try_end_15e} :catchall_266

    if-eqz v6, :cond_167

    :try_start_160
    check-cast v4, Ljava/lang/Boolean;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_162} :catch_165
    .catchall {:try_start_160 .. :try_end_162} :catchall_163

    goto :goto_168

    :catchall_163
    move-exception v0

    goto :goto_14f

    :catch_165
    move-exception v0

    goto :goto_154

    :cond_167
    const/4 v4, 0x0

    :goto_168
    if-nez v4, :cond_16c

    move v4, v2

    goto :goto_170

    :cond_16c
    :try_start_16c
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_170} :catch_269
    .catchall {:try_start_16c .. :try_end_170} :catchall_266

    :goto_170
    if-eqz v4, :cond_198

    :try_start_172
    const-string/jumbo v0, "replaceLauncherCardOrWidget Repeat for same src"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17a} :catch_165
    .catchall {:try_start_172 .. :try_end_17a} :catchall_163

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v1, :cond_182

    const/4 v2, 0x0

    goto :goto_18b

    :cond_182
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_18b
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0

    :cond_198
    :try_start_198
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v12, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v4, v13, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v4, :cond_22e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "appwidget"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1b5} :catch_269
    .catchall {:try_start_198 .. :try_end_1b5} :catchall_266

    if-eqz v2, :cond_1c1

    :try_start_1b7
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getProviderName()Ljava/lang/String;

    move-result-object v2
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1bf} :catch_165
    .catchall {:try_start_1b7 .. :try_end_1bf} :catchall_163

    :goto_1bf
    move-object v6, v2

    goto :goto_1db

    :cond_1c1
    :try_start_1c1
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "card"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1cf} :catch_269
    .catchall {:try_start_1c1 .. :try_end_1cf} :catchall_266

    if-eqz v2, :cond_1da

    :try_start_1d1
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getCardType()Ljava/lang/String;

    move-result-object v2
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d9} :catch_165
    .catchall {:try_start_1d1 .. :try_end_1d9} :catchall_163

    goto :goto_1bf

    :cond_1da
    const/4 v6, 0x0

    :goto_1db
    if-eqz v6, :cond_22e

    :try_start_1dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceLauncherCardOrWidget replace src: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", keyinfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v13

    check-cast v2, Lcom/android/launcher3/card/IAreaWidget;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getSrc()Lcom/android/launcher3/card/theme/data/SrcDescription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3;
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_20f} :catch_269
    .catchall {:try_start_1dd .. :try_end_20f} :catchall_266

    const/4 v12, 0x0

    :try_start_210
    invoke-direct {v1, v15, v5, v0, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lb3/d;)V

    iput-object v13, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v15, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v3, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v7

    move-object v5, v6

    move-object/from16 v6, v17

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_227} :catch_22c
    .catchall {:try_start_210 .. :try_end_227} :catchall_22a

    if-ne v0, v9, :cond_22f

    return-object v9

    :catchall_22a
    move-exception v0

    goto :goto_26f

    :catch_22c
    move-exception v0

    goto :goto_274

    :cond_22e
    const/4 v12, 0x0

    :cond_22f
    move-object v3, v13

    move-object v2, v15

    :goto_231
    const-wide/16 v0, 0x2bc

    :try_start_233
    iput-object v3, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v10, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    invoke-static {v0, v1, v8}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_23d} :catch_264
    .catchall {:try_start_233 .. :try_end_23d} :catchall_2aa

    if-ne v0, v9, :cond_240

    return-object v9

    :cond_240
    :goto_240
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v0, :cond_248

    move-object v13, v12

    goto :goto_251

    :cond_248
    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v0

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    :goto_251
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_25b

    goto :goto_2a7

    :cond_25b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_25d
    const v1, 0x7f0a0566

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2a7

    :catch_264
    move-exception v0

    goto :goto_27f

    :catchall_266
    move-exception v0

    const/4 v12, 0x0

    goto :goto_26f

    :catch_269
    move-exception v0

    const/4 v12, 0x0

    goto :goto_274

    :catchall_26c
    move-exception v0

    move-object v12, v13

    move-object v13, v6

    :goto_26f
    move-object v3, v13

    goto :goto_279

    :catch_271
    move-exception v0

    move-object v12, v13

    move-object v13, v6

    :goto_274
    move-object v3, v13

    goto :goto_27e

    :catchall_276
    move-exception v0

    move-object v12, v13

    move-object v3, v12

    :goto_279
    move-object v2, v15

    goto :goto_2ab

    :catch_27b
    move-exception v0

    move-object v12, v13

    move-object v3, v12

    :goto_27e
    move-object v2, v15

    :goto_27f
    :try_start_27f
    const-string/jumbo v1, "replaceLauncherCardOrWidget request Parse failed: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_289
    .catchall {:try_start_27f .. :try_end_289} :catchall_2aa

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v0, :cond_291

    move-object v13, v12

    goto :goto_29a

    :cond_291
    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v0

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    :goto_29a
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2a4

    goto :goto_2a7

    :cond_2a4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_25d

    :goto_2a7
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :catchall_2aa
    move-exception v0

    :goto_2ab
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-nez v1, :cond_2b3

    move-object v13, v12

    goto :goto_2bc

    :cond_2b3
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v1

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_2bc
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2c6

    goto :goto_2ce

    :cond_2c6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v2, 0x7f0a0566

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_2ce
    throw v0
.end method
