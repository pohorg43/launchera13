.class public final Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;,
        Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;,
        Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

.field private static final DEBUG:Z

.field private static final ENHANCE:I = 0x0

.field public static final INVALIDATE_DURATION:J = -0x1L

.field private static final MODERATE:I = 0x1

.field public static final SETTINGS_APP_LAUNCH_ANIM_SPEED:Ljava/lang/String; = "setting_app_startup_anim_speed"

.field public static final SP_EVALUATION_DURATION:Ljava/lang/String; = "key_evaluation_duration"

.field private static final TAG:Ljava/lang/String; = "AppLaunchAnimSpeedHandler"

.field public static sDurationScale:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sEvaluationDuration:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sSpeedLevel:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mSpeedLevelObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;

.field private mSystemAnimDurationObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const-wide/16 v0, 0x8

    const-string v2, "initSpeed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->initSpeedLevel()V

    const-string v2, "key_evaluation_duration"

    const-wide/16 v4, -0x1

    invoke-static {p1, v2, v4, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    new-instance p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;

    iget-object v2, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    const-string v4, "mLauncher.mHandler"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v2}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;-><init>(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSpeedLevelObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;

    new-instance p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;

    iget-object v2, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v2}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;-><init>(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSystemAnimDurationObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;

    iget-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "setting_app_startup_anim_speed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSpeedLevelObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;

    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSystemAnimDurationObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;

    invoke-virtual {p1, v2, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static final synthetic access$initSpeedLevel(Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->initSpeedLevel()V

    return-void
.end method

.method private final initSpeedLevel()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_app_startup_anim_speed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    iget-object p0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    sput p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    return-void
.end method

.method public static final isEvaluationDurationValid()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isEvaluationDurationValid()Z

    move-result v0

    return v0
.end method

.method public static final isNotSupportSpeedModify()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isNotSupportSpeedModify()Z

    move-result v0

    return v0
.end method

.method public static final parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final onActivityDestroyed()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSpeedLevelObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$AppLaunchAnimSpeedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->mSystemAnimDurationObserver:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$SystemAnimDurationObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
