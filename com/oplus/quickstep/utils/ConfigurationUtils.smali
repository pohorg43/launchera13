.class public final Lcom/oplus/quickstep/utils/ConfigurationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

.field private static final TAG:Ljava/lang/String; = "ConfigurationUtils"

.field private static isDensityDefault:Z

.field private static lastIsDensityDefault:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/ConfigurationUtils;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/ConfigurationUtils;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDensityChanged()Z
    .registers 2

    sget-boolean p0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->lastIsDensityDefault:Z

    sget-boolean v0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault:Z

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final isOldSkinChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "oldConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private final isUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 3

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public final forceRelaunchLauncher(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    const-string v0, "oldConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityChanged()Z

    move-result v0

    invoke-static {p1, p2}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isOldSkinChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    const-string p1, "forceRelaunchLauncher: densityChanged = "

    const-string p2, ", oldSkinChanged = "

    const-string v2, ", uiModeChanged = "

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ConfigurationUtils"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_2e

    if-nez v1, :cond_2e

    if-eqz p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    :goto_2f
    return p0
.end method

.method public final isDensityDefault()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault:Z

    return p0
.end method

.method public final setDensityDefault(Z)V
    .registers 2

    sget-boolean p0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault:Z

    sput-boolean p0, Lcom/oplus/quickstep/utils/ConfigurationUtils;->lastIsDensityDefault:Z

    sput-boolean p1, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault:Z

    return-void
.end method
