.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

.field private static final SHARE_PREFERENCE_MARK:Ljava/lang/String; = "HOTSEAT_EXPAND_GUID_SHOWED_"

.field private static final SHOW_GUID_TIP_DELAY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandGuidHelper"

.field private static expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static final expandSourceTipResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static showExpandGuidTipType:I

.field private static showExpandTipRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->handleHotseatVisibilityChanged$lambda-0(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidIfNecessary$lambda-1(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final dismissExpandGuidTip()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_d

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :goto_a
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_d
    return-void
.end method

.method public static final handleHotseatVisibilityChanged(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "handleHotseatVisibilityChanged,isVisible:"

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandGuidHelper"

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_e

    const-wide/16 v0, 0x12c

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/hotseatexpand/c;

    invoke-direct {v3, p0}, Lcom/android/launcher3/hotseatexpand/c;-><init>(Z)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final handleHotseatVisibilityChanged$lambda-0(Z)V
    .registers 1

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_e

    :cond_b
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->dismissExpandGuidTip()V

    :goto_e
    return-void
.end method

.method public static final hasExpandGuidBeenShowed(Landroid/content/Context;I)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "HOTSEAT_EXPAND_GUID_SHOWED_"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final showExpandGuidIfNecessary(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "showExpandGuidIfNecessary,tipType:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showImmediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandGuidHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->dismissExpandGuidTip()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_34

    return-void

    :cond_34
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "app.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-static {v0, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->hasExpandGuidBeenShowed(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    :cond_46
    if-eqz p0, :cond_52

    invoke-static {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTip()V

    return-void

    :cond_52
    new-instance p0, Lcom/android/common/util/a0;

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/common/util/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    sput-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final showExpandGuidIfNecessary$lambda-1(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTip()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandTipRunnable:Ljava/lang/Runnable;

    :cond_11
    return-void
.end method

.method public static final showExpandGuidTip()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    :goto_e
    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_23

    return-void

    :cond_23
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    return-void

    :cond_34
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    sget v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v3, v5}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_43

    return-void

    :cond_43
    sget v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->getGuidTipString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    return-void

    :cond_50
    new-instance v4, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    sput-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandGuidTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sget v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "showExpandGuidTip right now,tipType:"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Hotseat_expand"

    const-string v4, "OplusHotseatExpandGuidHelper"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "HOTSEAT_EXPAND_GUID_SHOWED_"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getExpandSourceTipResMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getGuidTipString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_10

    const p0, 0x7f120268

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getExpandSourceCallingPackageMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->expandSourceTipResMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_33

    return-object v0

    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "string"

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getShowExpandGuidTipType()I
    .registers 1

    sget p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    return p0
.end method

.method public final setShowExpandGuidTipType(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidTipType:I

    return-void
.end method
