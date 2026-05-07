.class public Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$Companion;

.field private static final LAUNCH_APP_RESPONSE_THRESHOLD:I = 0x12c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusBaseAppLaunchAnimationRunner"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static clickCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mGpuBoostFd:J

.field private final mStartActivityTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->Companion:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->mGpuBoostFd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->mStartActivityTime:J

    return-void
.end method

.method public static final synthetic access$getMGpuBoostFd$p(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->mGpuBoostFd:J

    return-wide v0
.end method

.method public static final synthetic access$notifyWhenWindowAnimate(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->notifyWhenWindowAnimate(ZZ)V

    return-void
.end method

.method public static final synthetic access$setMGpuBoostFd$p(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->mGpuBoostFd:J

    return-void
.end method

.method private final notifyWhenWindowAnimate(ZZ)V
    .registers 6

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    if-nez p2, :cond_15

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_15
    return-void
.end method


# virtual methods
.method public final onAnimationCreated(Landroid/animation/Animator;Z)V
    .registers 10

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;ZLandroid/animation/Animator;Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_1a

    const-wide/16 v0, 0x150

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1a
    return-void
.end method

.method public final sendStartDurationEvent(Landroid/view/View;)V
    .registers 6

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->mStartActivityTime:J

    sub-long/2addr v0, v2

    sget p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->clickCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->clickCount:I

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-lez p0, :cond_80

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_80

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_3e

    goto :goto_79

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "info.getIntent().getComponent().getPackageName()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11009102: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->clickCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Quality"

    invoke-static {p1, p0}, Lcom/android/common/debug/DebugLogPUtils;->logP(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->clickCount:I

    goto :goto_80

    :cond_79
    :goto_79
    const-string p0, "OplusBaseAppLaunchAnimationRunner"

    const-string p1, "info.intent == null or info.intent.getComponent() == null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void
.end method
