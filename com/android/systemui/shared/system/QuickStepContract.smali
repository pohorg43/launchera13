.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/QuickStepContract$SystemUiStateFlags;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_RECENT_TASKS:Ljava/lang/String; = "recent_tasks"

.field public static final KEY_EXTRA_SHELL_BACK_ANIMATION:Ljava/lang/String; = "extra_shell_back_animation"

.field public static final KEY_EXTRA_SHELL_ONE_HANDED:Ljava/lang/String; = "extra_shell_one_handed"

.field public static final KEY_EXTRA_SHELL_PIP:Ljava/lang/String; = "extra_shell_pip"

.field public static final KEY_EXTRA_SHELL_SHELL_TRANSITIONS:Ljava/lang/String; = "extra_shell_shell_transitions"

.field public static final KEY_EXTRA_SHELL_SPLIT_SCREEN:Ljava/lang/String; = "extra_shell_split_screen"

.field public static final KEY_EXTRA_SHELL_STARTING_WINDOW:Ljava/lang/String; = "extra_shell_starting_window"

.field public static final KEY_EXTRA_SUPPORTS_WINDOW_CORNERS:Ljava/lang/String; = "extra_supports_window_corners"

.field public static final KEY_EXTRA_SYSUI_PROXY:Ljava/lang/String; = "extra_sysui_proxy"

.field public static final KEY_EXTRA_UNLOCK_ANIMATION_CONTROLLER:Ljava/lang/String; = "unlock_animation"

.field public static final KEY_EXTRA_WINDOW_CORNER_RADIUS:Ljava/lang/String; = "extra_window_corner_radius"

.field public static final LAUNCHER_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.nexuslauncher.NexusLauncherActivity"

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field public static final SYSUI_STATE_A11Y_BUTTON_CLICKABLE:I = 0x10

.field public static final SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE:I = 0x20

.field public static final SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY:I = 0x20000

.field public static final SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED:I = 0x2000

.field public static final SYSUI_STATE_BACK_DISABLED:I = 0x400000

.field public static final SYSUI_STATE_BOUNCER_SHOWING:I = 0x8

.field public static final SYSUI_STATE_BUBBLES_EXPANDED:I = 0x4000

.field public static final SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED:I = 0x800000

.field public static final SYSUI_STATE_DEVICE_DOZING:I = 0x200000

.field public static final SYSUI_STATE_DIALOG_SHOWING:I = 0x8000

.field public static final SYSUI_STATE_HOME_DISABLED:I = 0x100

.field public static final SYSUI_STATE_IME_SHOWING:I = 0x40000

.field public static final SYSUI_STATE_IME_SWITCHER_SHOWING:I = 0x100000

.field public static final SYSUI_STATE_IMMERSIVE_MODE:I = 0x1000000

.field public static final SYSUI_STATE_MAGNIFICATION_OVERLAP:I = 0x80000

.field public static final SYSUI_STATE_NAV_BAR_HIDDEN:I = 0x2

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED:I = 0x4

.field public static final SYSUI_STATE_ONE_HANDED_ACTIVE:I = 0x10000

.field public static final SYSUI_STATE_OVERVIEW_DISABLED:I = 0x80

.field public static final SYSUI_STATE_QUICK_SETTINGS_EXPANDED:I = 0x800

.field public static final SYSUI_STATE_SCREEN_PINNING:I = 0x1

.field public static final SYSUI_STATE_SEARCH_DISABLED:I = 0x400

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING:I = 0x40

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED:I = 0x200

.field public static final SYSUI_STATE_TRACING_ENABLED:I = 0x1000

.field public static final SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getQuickScrubTouchSlopPx()I
    .registers 1

    const/high16 v0, 0x41c00000  # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getQuickStepDragSlopPx()I
    .registers 1

    const/high16 v0, 0x41200000  # 10.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .registers 2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000  # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getQuickStepTouchSlopPx()I
    .registers 1

    const/high16 v0, 0x41c00000  # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_11

    const-string v1, "screen_pinned"

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1c

    const-string v1, "overview_disabled"

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_27

    const-string v1, "home_disabled"

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_32

    const-string v1, "search_disabled"

    goto :goto_33

    :cond_32
    move-object v1, v2

    :goto_33
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3d

    const-string v1, "navbar_hidden"

    goto :goto_3e

    :cond_3d
    move-object v1, v2

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_48

    const-string v1, "notif_visible"

    goto :goto_49

    :cond_48
    move-object v1, v2

    :goto_49
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_53

    const-string v1, "qs_visible"

    goto :goto_54

    :cond_53
    move-object v1, v2

    :goto_54
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_5e

    const-string v1, "keygrd_visible"

    goto :goto_5f

    :cond_5e
    move-object v1, v2

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_69

    const-string v1, "keygrd_occluded"

    goto :goto_6a

    :cond_69
    move-object v1, v2

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_74

    const-string v1, "bouncer_visible"

    goto :goto_75

    :cond_74
    move-object v1, v2

    :goto_75
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_81

    const-string v1, "dialog_showing"

    goto :goto_82

    :cond_81
    move-object v1, v2

    :goto_82
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8c

    const-string v1, "a11y_click"

    goto :goto_8d

    :cond_8c
    move-object v1, v2

    :goto_8d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_97

    const-string v1, "a11y_long_click"

    goto :goto_98

    :cond_97
    move-object v1, v2

    :goto_98
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_a3

    const-string/jumbo v1, "tracing"

    goto :goto_a4

    :cond_a3
    move-object v1, v2

    :goto_a4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_ae

    const-string v1, "asst_gesture_constrain"

    goto :goto_af

    :cond_ae
    move-object v1, v2

    :goto_af
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_b9

    const-string v1, "bubbles_expanded"

    goto :goto_ba

    :cond_b9
    move-object v1, v2

    :goto_ba
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c5

    const-string v1, "one_handed_active"

    goto :goto_c6

    :cond_c5
    move-object v1, v2

    :goto_c6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d1

    const-string v1, "allow_gesture"

    goto :goto_d2

    :cond_d1
    move-object v1, v2

    :goto_d2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_dd

    const-string v1, "ime_visible"

    goto :goto_de

    :cond_dd
    move-object v1, v2

    :goto_de
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e9

    const-string v1, "magnification_overlap"

    goto :goto_ea

    :cond_e9
    move-object v1, v2

    :goto_ea
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f5

    const-string v1, "ime_switcher_showing"

    goto :goto_f6

    :cond_f5
    move-object v1, v2

    :goto_f6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_101

    const-string v1, "device_dozing"

    goto :goto_102

    :cond_101
    move-object v1, v2

    :goto_102
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10d

    const-string v1, "back_disabled"

    goto :goto_10e

    :cond_10d
    move-object v1, v2

    :goto_10e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_119

    const-string v1, "bubbles_mange_menu_expanded"

    goto :goto_11a

    :cond_119
    move-object v1, v2

    :goto_11a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_125

    const-string v1, "immersive_mode"

    goto :goto_126

    :cond_125
    move-object v1, v2

    :goto_126
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_131

    const-string/jumbo v2, "vis_win_showing"

    :cond_131
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "rounded_corner_radius"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1a

    return p0

    :cond_1a
    const/high16 p0, 0x42b40000  # 90.0f

    return p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .registers 3

    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    and-int/lit8 p0, p0, -0x3

    :cond_7
    and-int/lit16 v0, p0, 0xc0b

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_16

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .registers 3

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_1d

    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_11

    goto :goto_1d

    :cond_11
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_18

    and-int/lit8 p0, p0, -0x3

    :cond_18
    and-int/lit8 p0, p0, 0x46

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static isGesturalMode(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isLegacyMode(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
