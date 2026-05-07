.class public Lcom/oplus/card/helper/StartCardActivityHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;
    }
.end annotation


# static fields
.field public static final SOURCE_NORMAL_CARD:I = 0x0

.field public static final SOURCE_QUICK_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StartCardActivityHelper"


# instance fields
.field public mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p1, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->setListener(Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$1(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$0(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$2(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private checkPackageIntentResolve(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "componentName = :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StartCardActivityHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public static getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const-wide/16 v0, 0x8

    const-string v2, "getPkgIfSchemeLaunch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3d

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private synthetic lambda$startCardActivity$0(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$startCardActivity$1(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lw1/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lw1/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_1e

    :cond_19
    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1e
    return-void
.end method

.method private synthetic lambda$startCardActivity$2(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addOnResumeCallback startCardActivity Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StartCardActivityHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz p3, :cond_13

    :try_start_10
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_13
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_39

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lw1/a;

    invoke-direct {v4, p0, v2, p2, v0}, Lw1/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_4f

    :cond_39
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v4, Lw1/a;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, p2, v5}, Lw1/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_4f

    :cond_4a
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v2, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4f} :catch_50

    :goto_4f
    return-object v2

    :catch_50
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCardActivity Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StartCardActivityHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearLastStart(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    :cond_23
    return-void
.end method

.method public findLauncherCardView([I)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/CellLayout;->findCard([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v2

    :cond_37
    return-object v1
.end method

.method public getLastStartCard(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v2, v2, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p1, p1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->info:[I

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_33
    return-object v1
.end method

.method public isAppStartFromCard(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v1, v1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onSeedStartActivity(Landroid/view/View;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeedStartActivity, view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartCardActivityHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v4, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v0

    :goto_44
    if-eqz v2, :cond_4b

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_4c

    :cond_4b
    move-object v3, v0

    :goto_4c
    invoke-direct {p0, p2, v2, v3}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->checkPackageIntentResolve(Landroid/content/Intent;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSeedStartActivity: intent ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",canLaunch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_86

    if-eqz v2, :cond_86

    const-string p2, "onSeedStartActivity: view has found"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p2, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {p2, p0, p1, v2}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_8b

    :cond_86
    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->onStartActivityListDirect(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    :goto_8b
    return v3
.end method

.method public onStartActivityList(Ljava/util/List;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v2, v2, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1, v2}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_2a
    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    move-object v2, v1

    :goto_3f
    if-eqz v2, :cond_46

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_47

    :cond_46
    move-object v3, v1

    :goto_47
    invoke-direct {p0, p1, v2, v3}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object p1

    if-eqz v0, :cond_63

    if-eqz p1, :cond_63

    const-string v1, "StartCardActivityHelper"

    const-string v2, "onStartCardActivity: find card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;[I)V

    iput-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_65

    :cond_63
    iput-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    :goto_65
    return-void
.end method

.method public onStartActivityListDirect(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    return-void
.end method

.method public onStartCardActivity(Landroid/content/Intent;[II)V
    .registers 9

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCardActivity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "StartCardActivityHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz p3, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v3, p3, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long p3, v1, v3

    if-gez p3, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_40

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1, v2}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_40
    const/4 v1, 0x0

    if-eqz p3, :cond_54

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, p3, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_55

    :cond_54
    move-object v2, v1

    :goto_55
    if-eqz p3, :cond_6b

    const-string v1, "onStartCardActivity: find card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    new-instance v1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;[I)V

    iput-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_6d

    :cond_6b
    iput-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    :goto_6d
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_72
    iget-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/content/ActivityNotFoundException; {:try_start_72 .. :try_end_77} :catch_78

    goto :goto_7e

    :catch_78
    move-exception p2

    const-string p3, "onStartCardActivity not found."

    invoke-static {v0, p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7e
    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onStartIntentDirect(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartIntentDirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartCardActivityHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mCardLastStart:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    return-void
.end method
