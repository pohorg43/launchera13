.class public final Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEvaluationDurationValid()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-wide v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isNotSupportSpeedModify()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDeviceHigh()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_68

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-eqz v2, :cond_15

    goto :goto_68

    :cond_15
    const-string v2, "-"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {p2, v2, v0, v0, v3}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isNotSupportSpeedModify()Z

    move-result p0

    if-eqz p0, :cond_38

    if-eq v2, v1, :cond_38

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez p0, :cond_38

    move p0, v1

    goto :goto_39

    :cond_38
    move p0, v0

    :goto_39
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v3

    if-eqz v3, :cond_49

    move v3, v1

    goto :goto_4a

    :cond_49
    move v3, v0

    :goto_4a
    if-nez p0, :cond_4e

    if-eqz v3, :cond_50

    :cond_4e
    move v0, v1

    move v2, v0

    :cond_50
    if-le v2, v1, :cond_54

    move v0, v1

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    if-eqz p3, :cond_87

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setting_app_startup_anim_speed"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_87

    :cond_68
    :goto_68
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_70
    move v0, v1

    goto :goto_86

    :cond_72
    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isQuickSpeedEnabled()Z

    move-result p0

    if-nez p0, :cond_83

    sget-object p0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->isSupportHighRefreshRate(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_81

    goto :goto_83

    :cond_81
    move p0, v0

    goto :goto_84

    :cond_83
    :goto_83
    move p0, v1

    :goto_84
    if-eqz p0, :cond_70

    :goto_86
    move v1, v0

    :cond_87
    :goto_87
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->access$getDEBUG$cp()Z

    move-result p0

    if-eqz p0, :cond_bd

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Current speedStr = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", finally speed = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sDurationScale = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", recordToSettings = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLaunchAnimSpeedHandler"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    return v1
.end method
