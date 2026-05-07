.class public final Lcom/android/common/util/OplusFoldStateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/OplusFoldStateHelper$Companion;,
        Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION:J = 0x12cL

.field public static final Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

.field private static final ENSURE_IDP_DELAY:J = 0x258L

.field public static final FOLDING_MODE_EXPANDED:I = 0x1

.field public static final FOLDING_MODE_FOLDED:I = 0x0

.field public static final STATE_CHANGING_DELAY:J = 0x258L

.field public static final SYSTEM_FOLDING_MODE:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final TAG:Ljava/lang/String; = "OplusFoldStateHelper"

.field public static hasUpdatedIdp:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static isUpdatingIdp:Z

.field public static mChangingFoldState:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

.field public static mFoldChangeElapseTime:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static mFoldingMode:I

.field private static final mHandler:Landroid/os/Handler;

.field private static mLastFoldingMode:I

.field private static mLauncher:Lcom/android/launcher/Launcher;

.field public static mRootViewHidden:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static sInstance:Lcom/android/common/util/OplusFoldStateHelper;


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnsureIdpTask:Ljava/lang/Runnable;

.field private final mFoldScreenObserver:Landroid/database/ContentObserver;

.field private mResetChangeStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/OplusFoldStateHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    sput v0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    sget-object v0, Lcom/android/common/util/d0;->b:Lcom/android/common/util/d0;

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/common/util/c0;->b:Lcom/android/common/util/c0;

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;-><init>(Lcom/android/common/util/OplusFoldStateHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable$lambda-0()V

    return-void
.end method

.method public static final synthetic access$getMContext$cp()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getMFoldAnimation$cp()Lcom/android/launcher3/anim/LauncherFoldAnimation;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    return-object v0
.end method

.method public static final synthetic access$getMFoldingMode$cp()I
    .registers 1

    sget v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    return v0
.end method

.method public static final synthetic access$getMHandler$cp()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getMLastFoldingMode$cp()I
    .registers 1

    sget v0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return v0
.end method

.method public static final synthetic access$getMLauncher$cp()Lcom/android/launcher/Launcher;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->sInstance:Lcom/android/common/util/OplusFoldStateHelper;

    return-object v0
.end method

.method public static final synthetic access$isUpdatingIdp$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->isUpdatingIdp:Z

    return v0
.end method

.method public static final synthetic access$setMContext$cp(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMFoldAnimation$cp(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    return-void
.end method

.method public static final synthetic access$setMFoldingMode$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    return-void
.end method

.method public static final synthetic access$setMLastFoldingMode$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return-void
.end method

.method public static final synthetic access$setMLauncher$cp(Lcom/android/launcher/Launcher;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/common/util/OplusFoldStateHelper;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->sInstance:Lcom/android/common/util/OplusFoldStateHelper;

    return-void
.end method

.method public static final synthetic access$setUpdatingIdp$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/OplusFoldStateHelper;->isUpdatingIdp:Z

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask$lambda-1()V

    return-void
.end method

.method public static final getFoldingMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingMode()I

    move-result v0

    return v0
.end method

.method public static final getFoldingModeFromSettings()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromSettings()I

    move-result v0

    return v0
.end method

.method public static final getInstance()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final isFoldScreenFoldedFromDisplay()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result v0

    return v0
.end method

.method public static final isFoldingModeMismatchSizeInfo(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p0

    return p0
.end method

.method public static final isLargeScreen(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result p0

    return p0
.end method

.method private static final mEnsureIdpTask$lambda-1()V
    .registers 2

    const-string v0, "OplusFoldStateHelper"

    const-string v1, "check idp from display change with delay!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-virtual {v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateIdpWhenChangingFoldState(Z)V

    return-void
.end method

.method private static final mResetChangeStateRunnable$lambda-0()V
    .registers 2

    const-string v0, "OplusFoldStateHelper"

    const-string v1, "check idp from settings change with delay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateIdpWhenChangingFoldState(Z)V

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    return-void
.end method

.method public static final updateFoldingMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateFoldingMode()I

    move-result v0

    return v0
.end method

.method public static final updateIdpWhenChangingFoldState(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateIdpWhenChangingFoldState(Z)V

    return-void
.end method


# virtual methods
.method public final addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final ensureIdpWithDelay()V
    .registers 4

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_f
    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_17

    :cond_15
    move v1, v2

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInMinimize()Z

    move-result v0

    if-nez v0, :cond_15

    :goto_1d
    if-eqz v1, :cond_37

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "OplusFoldStateHelper"

    const-string/jumbo v0, "no need execute ensureIdpWithDelay return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getCallbacks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public final getMEnsureIdpTask()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMResetChangeStateRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusFoldStateHelper"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateFoldingMode()I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "oplus_system_folding_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final isOrientationChange(I)Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_c

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final onConfigurationChange()V
    .registers 1

    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->onConfigurationChange()V

    :goto_8
    return-void
.end method

.method public final removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final setCallbacks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/List;

    return-void
.end method

.method public final setMResetChangeStateRunnable(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final updateLauncherContext(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/common/util/OplusFoldStateHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;

    sget-object p1, Lcom/android/common/util/OplusFoldStateHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/LauncherFoldAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    const-string p0, "OplusFoldStateHelper"

    const-string/jumbo p1, "updateLauncherContext"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
