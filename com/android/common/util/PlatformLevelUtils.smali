.class public final Lcom/android/common/util/PlatformLevelUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

.field private static final TAG:Ljava/lang/String; = "PlatformLevelUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/PlatformLevelUtils;

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAnimationLevel(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static final getGaussianLevel(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public static final isBlurUnavailable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static final isDynamicBlurUnavailable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static final isLowLevelAnimation(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static final isMiddleLevelAnimation(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static final logToFile(Landroid/content/Context;)V
    .registers 1

    return-void
.end method
