.class public final Lcom/android/launcher/bottomsearch/BottomSearchManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/bottomsearch/IBottomSearch;


# static fields
.field public static final INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

.field public static final TAG:Ljava/lang/String; = "BottomSearchManager"

.field private static bottomView:Landroid/view/View;

.field private static mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

.field private static mPreferenceTitle:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-direct {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;-><init>()V

    sput-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mPreferenceTitle:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V
    .registers 2

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    :goto_d
    return-void
.end method

.method public featureSupport()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-interface {v0}, Lcom/android/launcher/bottomsearch/IBottomSearch;->featureSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->featureSupport(Lcom/android/launcher/bottomsearch/IBottomSearch;)Z

    move-result p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_19
    return p0
.end method

.method public getAppWidgetId(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    invoke-interface {v0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getAppWidgetId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_1a

    invoke-static {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->getAppWidgetId(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/Context;)I

    move-result p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1e
    return p0
.end method

.method public getBottomSearchHeight(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_b

    const/4 p0, -0x1

    goto :goto_f

    :cond_b
    invoke-interface {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result p0

    :goto_f
    return p0
.end method

.method public getBottomView()Landroid/view/View;
    .registers 1

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getBottomView()Landroid/view/View;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;
    .registers 3

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p0, p1, p2}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public final getMBottomSearchProxy()Lcom/android/launcher/bottomsearch/IBottomSearch;
    .registers 1

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    return-object p0
.end method

.method public getMPreferenceTitle()I
    .registers 1

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getMPreferenceTitle()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lcom/android/launcher/bottomsearch/IBottomSearch;->getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->getSettingShortcut(Lcom/android/launcher/bottomsearch/IBottomSearch;)Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public initSwitchStatus(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lastVersion"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    invoke-interface {p0, p1, p2}, Lcom/android/launcher/bottomsearch/IBottomSearch;->initSwitchStatus(Landroid/content/Context;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public isBottomEnable(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    invoke-interface {v0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->isBottomEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_1a

    invoke-static {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->isBottomEnable(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/Context;)Z

    move-result p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1e
    return p0
.end method

.method public isBottomSearchWidget(Landroid/content/ComponentName;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-interface {v0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_15

    invoke-static {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->isBottomSearchWidget(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/ComponentName;)Z

    move-result p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_19
    return p0
.end method

.method public isBottomSearchWidget(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-interface {v0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->isBottomSearchWidget(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_15

    invoke-static {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->isBottomSearchWidget(Lcom/android/launcher/bottomsearch/IBottomSearch;Ljava/lang/String;)Z

    move-result p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_19
    return p0
.end method

.method public isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isWidgetAdded"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto :goto_1e

    :cond_11
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher/bottomsearch/IBottomSearch;->isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1e
    if-nez v0, :cond_25

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->isBottomWidgetAdded(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_29
    return p0
.end method

.method public launcherSupport(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    invoke-interface {v0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch;->launcherSupport(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_1a

    invoke-static {p0, p1}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->launcherSupport(Lcom/android/launcher/bottomsearch/IBottomSearch;Lcom/android/launcher3/Launcher;)Z

    move-result p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1e
    return p0
.end method

.method public needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_18

    :cond_10
    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher/bottomsearch/IBottomSearch;->needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_18
    if-nez v0, :cond_1f

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->needDeleteWidget(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/Context;Landroid/content/ComponentName;Z)Z

    move-result p0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_23
    return p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    const-string/jumbo p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_e
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    const-string/jumbo p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_e
    return-void
.end method

.method public onRestoreLauncher(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1, p2}, Lcom/android/launcher/bottomsearch/IBottomSearch;->onRestoreLauncher(Landroid/content/Context;Z)V

    :goto_d
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_11
    return-void
.end method

.method public removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z
    .registers 4

    const-string/jumbo v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_19

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/android/launcher/bottomsearch/IBottomSearch;->removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_19
    if-nez v0, :cond_20

    invoke-static {p0, p1, p2}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->removeBottomWidget(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z

    move-result p0

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_24
    return p0
.end method

.method public requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    move-object v9, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestAddOrDeleteAppWidget"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteDB"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_2e

    :cond_1b
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher/bottomsearch/IBottomSearch;->requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2e
    if-nez v0, :cond_35

    invoke-static/range {p0 .. p7}, Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;->requestAddOrDeleteBottomWidget(Lcom/android/launcher/bottomsearch/IBottomSearch;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_39

    :cond_35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_39
    return v0
.end method

.method public setBottomView(Landroid/view/View;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->bottomView:Landroid/view/View;

    return-void
.end method

.method public final setMBottomSearchProxy(Lcom/android/launcher/bottomsearch/IBottomSearch;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mBottomSearchProxy:Lcom/android/launcher/bottomsearch/IBottomSearch;

    return-void
.end method

.method public setMPreferenceTitle(I)V
    .registers 2

    sput p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->mPreferenceTitle:I

    return-void
.end method
