.class public final Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;
.super Lcom/oplus/quickstep/common/AbsSettingsValueProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;
    }
.end annotation


# static fields
.field public static final ALL_APPS_STATE_ORDINAL:I = 0x5

.field public static final BACKGROUND_APP_STATE_ORDINAL:I = 0x6

.field public static final Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

.field public static final FLAG_DISABLE_GESTURE_ALL:I = 0x10

.field public static final FLAG_DISABLE_GESTURE_BACK:I = 0x2

.field public static final FLAG_DISABLE_GESTURE_EXPEND_NAVBAR:I = 0x8

.field public static final FLAG_DISABLE_GESTURE_EXPEND_STABAR:I = 0x4

.field public static final FLAG_DISABLE_GESTURE_HOME:I = 0x1

.field public static final FLAG_DISABLE_GESTURE_MENU:I = 0x20

.field public static final FLAG_DISABLE_GESTURE_NONE:I = 0x0

.field public static final FLAG_DISABLE_NAVBAR_GESTURE:I = 0x39

.field public static final HINT_STATE_ORDINAL:I = 0x7

.field public static final KEY_DISABLE_GESTURE:Ljava/lang/String; = "disable_gestures"

.field public static final KEY_LAUNCHER_STATE:Ljava/lang/String; = "launcher_state"

.field public static final KEY_NAV_BAR_HIDE_STATE:Ljava/lang/String; = "manual_hide_navigationbar"

.field public static final KEY_SWIPE_SIDE_GESTURE_BACK_VIBRATE_ENABLE:Ljava/lang/String; = "gesture_side_back_vibrate_enable"

.field public static final KEY_SWIPE_SIDE_GESTURE_BAR_TYPE:Ljava/lang/String; = "gesture_side_hide_bar_prevention_enable"

.field public static final KEY_SWIPE_SIDE_GESTURE_MISTOUCH_PREVENTION_ENABLE:Ljava/lang/String; = "gesture_mistouch_prevention_side_enable"

.field public static final KEY_SWIPE_SIDE_GESTURE_SWITCH_APP_ENABLE:Ljava/lang/String; = "gesture_mistouch_switch_app_enable"

.field public static final KEY_SWIPE_UP_GESTURE_BAR_SUSPENDED_ENABLE:Ljava/lang/String; = "gesture_bar_mode_suspended"

.field public static final KEY_SWIPE_UP_GESTURE_BAR_TYPE:Ljava/lang/String; = "hide_gesture_bar_enable"

.field public static final KEY_SWIPE_UP_GESTURE_KEYS_MODE:Ljava/lang/String; = "settings_gesture_keys_mode"

.field public static final KEY_SWIPE_UP_GESTURE_MISTOUCH_PREVENTION_ENABLE:Ljava/lang/String; = "gesture_mistouch_prevention_enable"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_TYPE:Ljava/lang/String; = "settings_navigation_bar_combination"

.field public static final NAV_BAR_HIDE_STATE_HIDE:I = 0x1

.field public static final NAV_BAR_HIDE_STATE_SHOW:I = 0x0

.field public static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field public static final NAV_STATE_SWIPE_UP_GESTURE:I = 0x2

.field public static final NAV_STATE_VIRTUAL_KEY:I = 0x0

.field public static final NAV_STATE_VIRTUAL_KEY_AND_HIDE:I = 0x1

.field public static final NORMAL_STATE_ORDINAL:I = 0x0

.field public static final OVERVIEW_STATE_ORDINAL:I = 0x2

.field public static final QUICK_SWITCH_STATE_ORDINAL:I = 0x4

.field public static final SPRING_LOADED_STATE_ORDINAL:I = 0x1

.field public static final SWIPE_SIDE_GESTURE_BACK_VIBRATE_DISABLE:I = 0x0

.field public static final SWIPE_SIDE_GESTURE_BACK_VIBRATE_ENABLE:I = 0x1

.field public static final SWIPE_SIDE_GESTURE_BAR_TYPE_HIDE:I = 0x1

.field public static final SWIPE_SIDE_GESTURE_BAR_TYPE_SUSPEND:I = 0x0

.field public static final SWIPE_SIDE_GESTURE_MISTOUCH_PREVENTION_DISABLE:I = 0x0

.field public static final SWIPE_SIDE_GESTURE_MISTOUCH_PREVENTION_ENABLE:I = 0x1

.field public static final SWIPE_SIDE_GESTURE_SWITCH_APP_DISABLE:I = 0x0

.field public static final SWIPE_SIDE_GESTURE_SWITCH_APP_ENABLE:I = 0x1

.field public static final SWIPE_UP_GESTURE_BAR_HIDE:I = 0x1

.field public static final SWIPE_UP_GESTURE_BAR_OCCUPY:I = 0x2

.field public static final SWIPE_UP_GESTURE_BAR_SUSPEND:I = 0x0

.field public static final SWIPE_UP_GESTURE_BAR_SUSPENDED_DISABLE:I = 0x1

.field public static final SWIPE_UP_GESTURE_BAR_SUSPENDED_ENABLE:I = 0x0

.field public static final SWIPE_UP_GESTURE_KEYS_MODE_BACK_HOME_BACK:I = 0x2

.field public static final SWIPE_UP_GESTURE_KEYS_MODE_BACK_HOME_RECENT:I = 0x3

.field public static final SWIPE_UP_GESTURE_KEYS_MODE_ONLY_HOME_RECENT:I = 0x1

.field public static final SWIPE_UP_GESTURE_KEYS_MODE_RECENT_HOME_BACK:I = 0x0

.field public static final SWIPE_UP_GESTURE_MISTOUCH_PREVENTION_DISABLE:I = 0x0

.field public static final SWIPE_UP_GESTURE_MISTOUCH_PREVENTION_ENABLE:I = 0x1

.field public static final VIRTUAL_KEY_COMBINATION_TYPE_ORIGINAL_GESTURE_LEFT:I = 0x2

.field public static final VIRTUAL_KEY_COMBINATION_TYPE_ORIGINAL_GESTURE_RIGHT:I = 0x3

.field public static final VIRTUAL_KEY_COMBINATION_TYPE_RECENT_LEFT_OF_HOME:I = 0x0

.field public static final VIRTUAL_KEY_COMBINATION_TYPE_RECENT_RIGHT_OF_HOME:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValidity(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
