.class public final Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisableGesture(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "disable_gestures"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getLauncherState(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "launcher_state"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x7

    if-eq p0, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, p0

    :goto_2c
    return v2
.end method

.method public final getNavBarHideState(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "manual_hide_navigationbar"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getNavState(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "hide_navigationbar_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    const-string p1, "getNavState value = "

    const-string v0, ", userId = "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavigationSettingsValueProxy "

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3e

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3e

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, p0

    :goto_3f
    return v2
.end method

.method public final getSwipeSideEnableBackVibrate(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_side_back_vibrate_enable"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    const/4 p0, -0x1

    :cond_1c
    return p0
.end method

.method public final getSwipeSideEnableSwitchApp(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_mistouch_switch_app_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getSwipeSideGestureBarType(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_side_hide_bar_prevention_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_mistouch_prevention_side_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getSwipeUpGestureBarSuspendEnable(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_bar_mode_suspended"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getSwipeUpGestureBarType(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "hide_gesture_bar_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, p0

    :goto_20
    return v2
.end method

.method public final getSwipeUpGestureKeysMode(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "settings_gesture_keys_mode"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    if-eq p0, p1, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    move p0, p1

    :cond_22
    return p0
.end method

.method public final getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "gesture_mistouch_prevention_enable"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    return v2
.end method

.method public final getVirtualKeyCombinationType(Landroid/content/Context;)I
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string v1, "settings_navigation_bar_combination"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_22

    const/4 p1, 0x1

    if-eq p0, p1, :cond_22

    const/4 p1, 0x2

    if-eq p0, p1, :cond_22

    const/4 p1, 0x3

    if-eq p0, p1, :cond_22

    goto :goto_23

    :cond_22
    move v2, p0

    :goto_23
    return v2
.end method

.method public final setLauncherState(Landroid/content/Context;I)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    const-string v0, "launcher_state"

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
