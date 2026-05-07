.class public final Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;,
        Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

.field private static final NUMBER_4:I = 0x4

.field private static final NUMBER_5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SpecialSceneHelper"


# instance fields
.field private mUsedSpecialInputConsumerFlag:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->DEFAULT_FLAG:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OverviewCommandHelper;Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeAction$lambda-1(Lcom/android/quickstep/OverviewCommandHelper;Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents$lambda-0(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final canInjectedEvent(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isZoomWindowShown(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final getSwipeAction(Landroid/content/Context;Lcom/android/quickstep/OverviewCommandHelper;)Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/OverviewCommandHelper;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/android/launcher3/t1;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/t1;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Landroid/content/Context;)V

    return-object p0
.end method

.method private static final getSwipeAction$lambda-1(Lcom/android/quickstep/OverviewCommandHelper;Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 11

    const-string v0, "$overviewCommandHelper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    goto :goto_33

    :cond_1a
    instance-of p2, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    const/4 v0, 0x4

    if-eqz p2, :cond_30

    instance-of p2, p1, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    if-eqz p2, :cond_2a

    move-object p0, p1

    check-cast p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onOverviewToggle()V

    goto :goto_33

    :cond_2a
    check-cast p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addOplusCommand(I)V

    goto :goto_33

    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    :goto_33
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method private final getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/android/quickstep/fallback/a;

    invoke-direct {p0, p1}, Lcom/android/quickstep/fallback/a;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method private static final getSwipeActionWithoutRecents$lambda-0(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 9

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method private final isDifferentDefaultHome(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/OverviewComponentObserver;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_8

    return p2

    :cond_8
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDifferentDefaultHome: defaultHome = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2b

    const/4 v1, 0x0

    goto :goto_2d

    :cond_2b
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "SpecialSceneHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p2, 0x1

    :cond_48
    return p2
.end method

.method private final isForceExludedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object v0, p0

    goto :goto_7

    :cond_5
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    :goto_7
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_19
    if-nez v0, :cond_21

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :cond_21
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_27

    move-object v2, p0

    goto :goto_2b

    :cond_27
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :goto_2b
    if-nez v2, :cond_3b

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_3c

    :cond_36
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    :cond_3b
    move-object p0, v2

    :goto_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isForceExludedTask: pkg = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", className = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QuickStep"

    const-string v3, "SpecialSceneHelper"

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_68

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_66

    goto :goto_68

    :cond_66
    move v2, v1

    goto :goto_69

    :cond_68
    :goto_68
    move v2, p1

    :goto_69
    if-nez v2, :cond_81

    if-eqz p0, :cond_75

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_74

    goto :goto_75

    :cond_74
    move p1, v1

    :cond_75
    :goto_75
    if-eqz p1, :cond_78

    goto :goto_81

    :cond_78
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExludedTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_81
    :goto_81
    return v1
.end method

.method private final isOtherFallbackHome(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z
    .registers 9

    const-string p0, "SpecialSceneHelper"

    const-string v0, "QuickStep"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_a

    :goto_8
    move-object v3, v2

    goto :goto_1c

    :cond_a
    :try_start_a
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-nez v3, :cond_f

    goto :goto_8

    :cond_f
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez v3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOtherFallbackHome: activityType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", topActivity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_31

    goto :goto_33

    :cond_31
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-nez v3, :cond_49

    goto :goto_68

    :cond_49
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_68

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_59
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_59} :catch_5e

    if-nez p0, :cond_68

    const/4 p0, 0x1

    move v1, p0

    goto :goto_68

    :catch_5e
    move-exception p1

    const-string p2, "isOtherFallbackHome: e = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return v1
.end method

.method private final isZoomWindowShown(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 5

    const-string p0, "SpecialSceneHelper"

    const-string v0, "QuickStep"

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    :try_start_7
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    const-string p1, "isZoomWindowShown: e = NullPointerException"

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    move p1, v1

    :goto_16
    const-string v2, "isZoomWindowShown: windowMode = "

    invoke-static {p1, v2, v0, p0}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x64

    if-ne p1, p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method


# virtual methods
.method public final addFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)V
    .registers 5

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getModeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addFlag -> "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "SpecialSceneHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getValue()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    return-void
.end method

.method public final canUseGestureInputConsumer(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/OverviewComponentObserver;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isDifferentDefaultHome(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/OverviewComponentObserver;)Z

    move-result p2

    if-nez p2, :cond_25

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isZoomWindowShown(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-nez p2, :cond_25

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isOtherFallbackHome(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_25

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isForceExludedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public final createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;)Lcom/android/quickstep/InputConsumer;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overviewCommandHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deveiceState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/ChildModeInputConsumer;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/ChildModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    goto :goto_86

    :cond_26
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/SuperPowerSaveModeInputConsumer;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/SuperPowerSaveModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    goto :goto_86

    :cond_38
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->FOCUS_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/FocusModeInputConsumer;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/FocusModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    goto :goto_86

    :cond_4a
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    goto :goto_86

    :cond_5c
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->WELL_BEING_ASSISTANT_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/WellBeingAssistantModeInputConsumer;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeActionWithoutRecents(Landroid/content/Context;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/WellBeingAssistantModeInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    goto :goto_86

    :cond_6e
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->canInjectedEvent(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    new-instance p2, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->getSwipeAction(Landroid/content/Context;Lcom/android/quickstep/OverviewCommandHelper;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    :goto_86
    invoke-virtual {p2, p4}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->setRecentsAnimationDeviceState(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    return-object p2
.end method

.method public final hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z
    .registers 3

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getValue()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isInExitFocusMode(Landroid/content/Intent;)Z
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->FOCUS_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    if-nez p1, :cond_c

    goto :goto_17

    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_17
    sget-object p1, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->getFOCUS_MODE_PKG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final isUsedSpecialInputConsumer()Z
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    const-string v1, "isUsedSpecialInputConsumer = "

    const-string v2, "QuickStep"

    const-string v3, "SpecialSceneHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->DEFAULT_FLAG:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getValue()I

    move-result v0

    if-eq p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public final needIgnoreToRecents()Z
    .registers 7

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->values()[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :cond_7
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->needIgnoreToRecents()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v2
.end method

.method public final removeFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)V
    .registers 5

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getModeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeFlag -> "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "SpecialSceneHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->getValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->mUsedSpecialInputConsumerFlag:I

    return-void
.end method
