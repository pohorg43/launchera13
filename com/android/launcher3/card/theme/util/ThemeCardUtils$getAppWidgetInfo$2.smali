.class final Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.theme.util.ThemeCardUtils$getAppWidgetInfo$2"
    f = "ThemeCardUtils.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->getAppWidgetInfo(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $originInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic $widgetProvider:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$widgetProvider:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$widgetProvider:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)V

    iput-object p1, v0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ThemeCardUtils"

    if-eqz v1, :cond_34

    if-ne v1, v2, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$5:Ljava/lang/Object;

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lq3/f0;

    :try_start_24
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_29

    goto/16 :goto_97

    :catch_29
    move-exception p0

    goto/16 :goto_10b

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lq3/f0;

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    if-nez v1, :cond_4b

    const-string p0, "getAppWidgetInfo failed for launcher is null"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4b
    sget-object v5, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getTargetWidgetInfosOfWhiteList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$widgetProvider:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :try_start_57
    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v11

    invoke-virtual {v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getThemeCardWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->getTargetWidgetComponents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v11, v5, :cond_9c

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object v1

    if-nez v1, :cond_74

    goto :goto_9c

    :cond_74
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v11, "getAppContext()"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$2:Ljava/lang/Object;

    iput-object v9, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$4:Ljava/lang/Object;

    iput-object v10, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->L$5:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;->label:I

    invoke-virtual {v1, v5, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->initTargetWidgetInfos(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_92

    return-object v0

    :cond_92
    move-object v1, v6

    move-object v6, v7

    move-object v5, v8

    move-object v2, v9

    move-object v0, v10

    :goto_97
    move-object v10, v0

    move-object v9, v2

    move-object v8, v5

    move-object v7, v6

    move-object v6, v1

    :cond_9c
    :goto_9c
    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez p0, :cond_cf

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAppWidgetInfo failed, targetWidgetInfosOfWhiteList "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getThemeCardWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_cf
    new-instance p1, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {p1, v7}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    new-instance v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    invoke-static {v9, v1}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->keepPositionConsistentBetween(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string v2, "getAppWidgetInfo  appWidgetHost:"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v0, p0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_105

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const-string p0, "getAppWidgetInfo  deleteAppWidgetId widgetId "

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_105
    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->setPendingStoreWidgetId(I)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_10a} :catch_29

    return-object v1

    :goto_10b
    const-string p1, "getAppWidgetInfo  e:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
