.class public final Lcom/android/common/util/SoundPlayerUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELETE_PATH:Ljava/lang/String; = "/system_ext/media/audio/ui/global_delete.ogg"

.field private static final GLOBAL_DELETE_SOUND:Ljava/lang/String; = "global_delete_sound"

.field public static final INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

.field private static final TAG:Ljava/lang/String; = "SoundPlayerUtil"

.field private static deleteSoundEnable:Ljava/lang/Boolean;

.field private static deleteSoundEnableObserver:Lcom/android/common/util/SoundPlayerUtils$deleteSoundEnableObserver$1;

.field private static deleteSoundId:I

.field private static isSoundPrepared:Z

.field private static soundEffectEnable:Ljava/lang/Boolean;

.field private static soundEffectsEnableObserver:Lcom/android/common/util/SoundPlayerUtils$soundEffectsEnableObserver$1;

.field private static final soundHandler:Landroid/os/Handler;

.field private static soundPool:Landroid/media/SoundPool;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/SoundPlayerUtils;

    invoke-direct {v0}, Lcom/android/common/util/SoundPlayerUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    sget-object v0, Lcom/android/common/util/LauncherUtilsThread;->INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherUtilsThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/SoundPlayerUtils;->soundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/common/util/SoundPlayerUtils$deleteSoundEnableObserver$1;

    invoke-direct {v1, v0}, Lcom/android/common/util/SoundPlayerUtils$deleteSoundEnableObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnableObserver:Lcom/android/common/util/SoundPlayerUtils$deleteSoundEnableObserver$1;

    new-instance v1, Lcom/android/common/util/SoundPlayerUtils$soundEffectsEnableObserver$1;

    invoke-direct {v1, v0}, Lcom/android/common/util/SoundPlayerUtils$soundEffectsEnableObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/common/util/SoundPlayerUtils;->soundEffectsEnableObserver:Lcom/android/common/util/SoundPlayerUtils$soundEffectsEnableObserver$1;

    sget-object v1, Lcom/android/common/util/a;->c:Lcom/android/common/util/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _init_$lambda-0()V
    .registers 1

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-direct {v0}, Lcom/android/common/util/SoundPlayerUtils;->initSoundPoolIfNeeded()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound$lambda-2()V

    return-void
.end method

.method public static final synthetic access$getDeleteSoundEnable$p()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$getSoundEffectEnable$p()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->soundEffectEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$setDeleteSoundEnable$p(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$setSoundEffectEnable$p(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundEffectEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic b(ILandroid/media/SoundPool;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/SoundPlayerUtils;->playGatherSound$lambda-6$lambda-5(ILandroid/media/SoundPool;II)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/SoundPlayerUtils;->playGatherSound$lambda-6(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(ILandroid/media/SoundPool;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/SoundPlayerUtils;->playDropSound$lambda-4$lambda-3(ILandroid/media/SoundPool;II)V

    return-void
.end method

.method public static synthetic e(Landroid/media/SoundPool;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound$lambda-2$lambda-1(Landroid/media/SoundPool;II)V

    return-void
.end method

.method public static synthetic f()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->_init_$lambda-0()V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/SoundPlayerUtils;->playDropSound$lambda-4(Landroid/content/Context;)V

    return-void
.end method

.method private final initSoundPoolIfNeeded()V
    .registers 3

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez p0, :cond_23

    new-instance p0, Landroid/media/SoundPool$Builder;

    invoke-direct {p0}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    sput-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    :cond_23
    return-void
.end method

.method private static final isDeleteSoundEnable()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "global_delete_sound"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v4

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnable:Ljava/lang/Boolean;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnableObserver:Lcom/android/common/util/SoundPlayerUtils$deleteSoundEnableObserver$1;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_27
    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundEnable:Ljava/lang/Boolean;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final isSoundEffectEnable()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->soundEffectEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_28

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_18

    goto :goto_19

    :cond_18
    move v2, v4

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/common/util/SoundPlayerUtils;->soundEffectEnable:Ljava/lang/Boolean;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/SoundPlayerUtils;->soundEffectsEnableObserver:Lcom/android/common/util/SoundPlayerUtils$soundEffectsEnableObserver$1;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_28
    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->soundEffectEnable:Ljava/lang/Boolean;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final play(IFFIIF)Ljava/lang/Integer;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-direct {v0}, Lcom/android/common/util/SoundPlayerUtils;->initSoundPoolIfNeeded()V

    sget-object v1, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_b

    const/4 p0, 0x0

    goto :goto_19

    :cond_b
    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method private static final playDeleteSound$lambda-2()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->isDeleteSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "playDeleteSound isSoundPrepared = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/util/SoundPlayerUtils;->isSoundPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " deleteSoundId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundId:I

    const-string v2, "SoundPlayerUtil"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/SoundPlayerUtils;->isSoundPrepared:Z

    if-eqz v0, :cond_2c

    sget v0, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundId:I

    if-eqz v0, :cond_2c

    sget-object v1, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {v1, v0}, Lcom/android/common/util/SoundPlayerUtils;->play(I)V

    return-void

    :cond_2c
    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    const/4 v1, 0x1

    const-string v2, "/system_ext/media/audio/ui/global_delete.ogg"

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/SoundPlayerUtils;->loadFile(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundId:I

    sget-object v1, Lcom/android/common/util/i0;->a:Lcom/android/common/util/i0;

    invoke-virtual {v0, v1}, Lcom/android/common/util/SoundPlayerUtils;->setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_3c
    return-void
.end method

.method private static final playDeleteSound$lambda-2$lambda-1(Landroid/media/SoundPool;II)V
    .registers 4

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/common/util/SoundPlayerUtils;->isSoundPrepared:Z

    sget p1, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundId:I

    const-string/jumbo p2, "playDeleteSound deleteSoundId = "

    const-string v0, "SoundPlayerUtil"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/android/common/util/SoundPlayerUtils;->deleteSoundId:I

    invoke-virtual {p0, p1}, Lcom/android/common/util/SoundPlayerUtils;->play(I)V

    return-void
.end method

.method private static final playDropSound$lambda-4(Landroid/content/Context;)V
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->isSoundEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    const v1, 0x7f11000e

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/util/SoundPlayerUtils;->loadFile(Landroid/content/Context;II)I

    move-result p0

    new-instance v1, Lcom/android/common/util/h0;

    invoke-direct {v1, p0, v2}, Lcom/android/common/util/h0;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/SoundPlayerUtils;->setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1d
    return-void
.end method

.method private static final playDropSound$lambda-4$lambda-3(ILandroid/media/SoundPool;II)V
    .registers 4

    const-string/jumbo p1, "playDropSound dropSoundId = "

    const-string p2, "SoundPlayerUtil"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p1, p0}, Lcom/android/common/util/SoundPlayerUtils;->play(I)V

    return-void
.end method

.method private static final playGatherSound$lambda-6(Landroid/content/Context;)V
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    const v1, 0x7f110010

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/util/SoundPlayerUtils;->loadFile(Landroid/content/Context;II)I

    move-result p0

    new-instance v1, Lcom/android/common/util/h0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/common/util/h0;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/SoundPlayerUtils;->setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private static final playGatherSound$lambda-6$lambda-5(ILandroid/media/SoundPool;II)V
    .registers 4

    const-string/jumbo p1, "playDeleteSound gatherSoundId = "

    const-string p2, "SoundPlayerUtil"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p1, p0}, Lcom/android/common/util/SoundPlayerUtils;->play(I)V

    return-void
.end method


# virtual methods
.method public final loadFile(Landroid/content/Context;II)I
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/common/util/SoundPlayerUtils;->initSoundPoolIfNeeded()V

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    :goto_12
    return p0
.end method

.method public final loadFile(Ljava/lang/String;I)I
    .registers 4

    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/common/util/SoundPlayerUtils;->initSoundPoolIfNeeded()V

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    :goto_13
    return p0
.end method

.method public final play(I)V
    .registers 8

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/common/util/SoundPlayerUtils;->play(IFFIIF)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_21

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "SoundPlayerUtil"

    const-string/jumbo v0, "play release"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/util/SoundPlayerUtils;->release()V

    :cond_21
    :goto_21
    return-void
.end method

.method public final playDeleteSound()V
    .registers 2

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/common/util/e;->c:Lcom/android/common/util/e;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final playDropSound(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundHandler:Landroid/os/Handler;

    new-instance v0, Ls/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final playGatherSound(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundHandler:Landroid/os/Handler;

    new-instance v0, Ls/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final release()V
    .registers 1

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    :goto_8
    const/4 p0, 0x0

    sput-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/common/util/SoundPlayerUtils;->isSoundPrepared:Z

    return-void
.end method

.method public final setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/common/util/SoundPlayerUtils;->initSoundPoolIfNeeded()V

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->soundPool:Landroid/media/SoundPool;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :goto_10
    return-void
.end method
