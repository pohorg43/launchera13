.class public final Lcom/android/common/util/VibrationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_DURATION:J = 0x41L

.field public static final DURATION_SHORTER:J = 0x32L

.field public static final EFFECT_RECENT_TASK_FEEDBACK:I = 0x16f

.field public static final INSTANCE:Lcom/android/common/util/VibrationUtils;

.field private static final TAG:Ljava/lang/String; = "VibrationUtils"

.field private static sLinearVibrator:Lcom/oplus/os/LinearmotorVibrator;

.field private static sVibrator:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/VibrationUtils;

    invoke-direct {v0}, Lcom/android/common/util/VibrationUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/VibrationUtils;->INSTANCE:Lcom/android/common/util/VibrationUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/VibrationUtils;->performLinearVibrator$lambda-0(I)V

    return-void
.end method

.method public static synthetic b(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/VibrationUtils;->performVibrator$lambda-1(J)V

    return-void
.end method

.method private final isVibratorDisable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static final performLinearVibrator(Landroid/content/Context;IZ)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sIsLinearVibratorSupport:Z

    if-nez v0, :cond_d

    const-string p0, "VibrationUtils"

    const-string/jumbo p1, "performLinearVibrator not support linearVibrator"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_d
    sget-object v0, Lcom/android/common/util/VibrationUtils;->sLinearVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "linearmotor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/oplus/os/LinearmotorVibrator;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/oplus/os/LinearmotorVibrator;

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    sput-object p0, Lcom/android/common/util/VibrationUtils;->sLinearVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-nez p0, :cond_28

    return p2

    :cond_28
    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/android/common/util/k0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/common/util/k0;-><init>(II)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final performLinearVibrator$lambda-0(I)V
    .registers 3

    const-string/jumbo v0, "performLinearVibrator execute vibrate type "

    const-string v1, "VibrationUtils"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/VibrationUtils;->sLinearVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-nez v0, :cond_d

    goto :goto_1d

    :cond_d
    new-instance v1, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {v1}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    :goto_1d
    return-void
.end method

.method private final performVibrator(Landroid/content/Context;J)V
    .registers 5

    sget-object p0, Lcom/android/common/util/VibrationUtils;->sVibrator:Landroid/os/Vibrator;

    if-nez p0, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/os/Vibrator;

    if-eqz p1, :cond_16

    check-cast p0, Landroid/os/Vibrator;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    sput-object p0, Lcom/android/common/util/VibrationUtils;->sVibrator:Landroid/os/Vibrator;

    :cond_19
    sget-object p0, Lcom/android/common/util/VibrationUtils;->sVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_20

    goto :goto_27

    :cond_20
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-ne p0, v0, :cond_27

    move p1, v0

    :cond_27
    :goto_27
    if-eqz p1, :cond_33

    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/android/common/util/l0;

    invoke-direct {p1, p2, p3}, Lcom/android/common/util/l0;-><init>(J)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method private static final performVibrator$lambda-1(J)V
    .registers 5

    const-string v0, "VibrationUtils"

    :try_start_2
    const-string/jumbo v1, "performVibrator execute vibrate"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/util/VibrationUtils;->sVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_d

    goto :goto_21

    :cond_d
    const/4 v2, -0x1

    invoke-static {p0, p1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception p0

    const-string/jumbo p1, "vibrate: exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public static final vibrate(Landroid/content/Context;I)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public static final vibrate(Landroid/content/Context;IJ)V
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public static final vibrate(Landroid/content/Context;IJZ)V
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/VibrationUtils;->INSTANCE:Lcom/android/common/util/VibrationUtils;

    invoke-direct {v0, p0}, Lcom/android/common/util/VibrationUtils;->isVibratorDisable(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "VibrationUtils"

    if-eqz v1, :cond_16

    const-string/jumbo p0, "vibrator disabled"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    :try_start_16
    invoke-static {p0, p1, p4}, Lcom/android/common/util/VibrationUtils;->performLinearVibrator(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_1d

    return-void

    :cond_1d
    invoke-direct {v0, p0, p2, p3}, Lcom/android/common/util/VibrationUtils;->performVibrator(Landroid/content/Context;J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception p0

    const-string/jumbo p1, "vibrate: exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public static synthetic vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    const-wide/16 p2, 0x41

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    const/4 p4, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJZ)V

    return-void
.end method
