.class public final Lcom/android/common/util/OplusLauncherAnimUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/OplusLauncherAnimUtils$Companion;,
        Lcom/android/common/util/OplusLauncherAnimUtils$Constant;,
        Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;,
        Lcom/android/common/util/OplusLauncherAnimUtils$Creater;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils;->Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areAnimatorsEnabled(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils;->Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;->areAnimatorsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isRunning(Landroid/animation/Animator;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils;->Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;->isRunning(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method
