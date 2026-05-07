.class public final Lcom/android/launcher3/card/seed/EntranceActivityStarter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/StartActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/EntranceActivityStarter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/seed/EntranceActivityStarter$Companion;

.field private static final TAG:Ljava/lang/String; = "StartCardActivityHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/EntranceActivityStarter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/EntranceActivityStarter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/EntranceActivityStarter;->Companion:Lcom/android/launcher3/card/seed/EntranceActivityStarter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartActivity(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "StartCardActivityHelper"

    const-string/jumbo v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_e
    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_38

    :cond_1e
    sget-object v2, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lcom/oplus/card/helper/SmartEngineHelper;->statCardValidClickEvent(Landroid/view/View;Ljava/lang/String;)V

    if-nez v1, :cond_2b

    move-object p1, v3

    goto :goto_2f

    :cond_2b
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_2f
    instance-of v1, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_37

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_38

    :cond_37
    move-object v1, v3

    :goto_38
    if-nez v1, :cond_3b

    goto :goto_46

    :cond_3b
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;)V

    :goto_46
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_64

    const-string p1, "intent = "

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5d

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/Intent;

    :cond_5d
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngineHelper;->getListener()Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    move-result-object p1

    if-nez p1, :cond_6e

    move p1, v0

    goto :goto_72

    :cond_6e
    invoke-interface {p1, v1, p2}, Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;->onSeedStartActivity(Landroid/view/View;Ljava/util/List;)Z

    move-result p1

    :goto_72
    const-string/jumbo p2, "onStartActivity,mStartActivityResult = "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_e .. :try_end_80} :catchall_81

    return p1

    :catchall_81
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a7

    const-string/jumbo p2, "onStartActivity,onFailure,it ="

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mStartActivityResult = false"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a7
    new-instance p0, Ly2/c;

    invoke-direct {p0}, Ly2/c;-><init>()V

    throw p0
.end method
