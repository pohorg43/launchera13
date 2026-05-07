.class public Lcom/oplus/splitscreen/DividerConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALWAYS_ON_TOP_BASE_LAYER:I = 0x7530

.field public static final DRAG_MODE_DIVIDER:I = 0x1

.field public static final DRAG_MODE_NONE:I = -0x1

.field public static final DRAG_MODE_NOTIFICATION:I = 0x2

.field public static final DRAG_MODE_RECENTS:I = 0x0

.field public static final EXIT_FROM_BACK:I = 0x4

.field public static final EXIT_FROM_BREENO:I = 0xb

.field public static final EXIT_FROM_DRAG:I = 0x5

.field public static final EXIT_FROM_ENTERPRISE_DISABLE:I = 0x64

.field public static final EXIT_FROM_FULLSCREEN_APP:I = 0x8

.field public static final EXIT_FROM_MENU:I = 0x2

.field public static final EXIT_FROM_PANEL_BUTTON:I = 0x3

.field public static final EXIT_FROM_SERVICE:I = 0x1

.field public static final EXIT_FROM_STATUSBAR:I = 0x6

.field public static final EXIT_FROM_SUPER_POWER:I = 0xa

.field public static final EXIT_FROM_SWITCH_OFF:I = 0x9

.field public static final EXIT_FROM_UNKNOWN:I = 0x0

.field public static final FIRST_OPLUS_EXIT_REASON_CODE:I = 0xc8

.field public static final FLAG_RECORD_REMOVE_ANIMATION:I = 0x40000000

.field public static final FLAG_RECORD_SPLIT:I = 0x10000000

.field public static final FLAG_RECORD_ZOOM:I = 0x20000000

.field public static final FOCUS_ON_DOWN_WINDOW:I = 0x40

.field public static final FOCUS_ON_UP_WINDOW:I = 0x0

.field public static final OPLUS_EXIT_REASON_APP_REQUEST:I = 0xc8

.field public static final OPLUS_EXIT_REASON_CONTROL_BAR_MENU_MAXIMIZE:I = 0xc9

.field public static final SPLIT_ANIMATION_LAYER:I = 0x7ffffffe

.field public static final SPLIT_CONTROL_BAR_LAYER:I = 0x7ffffffd

.field public static final SPLIT_MINIMAL_TASK_OVERLAY_BACKGROUND_LAYER:I = 0x7ffffffe

.field public static final SPLIT_MINIMAL_TASK_OVERLAY_ICON_LAYER:I = 0x7fffffff

.field public static final SPLIT_TWO_FINGER_SCREENSHOT_LAYER:I = 0x7fffffff

.field public static final START_FROM_EDGE:I = 0x5

.field public static final START_FROM_MENU:I = 0x2

.field public static final START_FROM_NONE:I = 0x0

.field public static final START_FROM_NOTIFICATION:I = 0x4

.field public static final START_FROM_RECENT:I = 0x3

.field public static final START_FROM_SERVICE:I = 0x1

.field public static final START_FROM_THREE_FINGER_GESTURE:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitTypeToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_32

    packed-switch p0, :pswitch_data_36

    packed-switch p0, :pswitch_data_48

    const-string v0, "unknown reason, type int = "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x6
    const-string p0, "EXIT_FROM_STATUSBAR"

    return-object p0

    :pswitch_14  #0x5
    const-string p0, "EXIT_FROM_DRAG"

    return-object p0

    :pswitch_17  #0x4
    const-string p0, "EXIT_FROM_BACK"

    return-object p0

    :pswitch_1a  #0x3
    const-string p0, "EXIT_FROM_PANEL_BUTTON"

    return-object p0

    :pswitch_1d  #0x2
    const-string p0, "EXIT_FROM_MENU"

    return-object p0

    :pswitch_20  #0x1
    const-string p0, "EXIT_FROM_SERVICE"

    return-object p0

    :pswitch_23  #0x0
    const-string p0, "EXIT_FROM_UNKNOWN"

    return-object p0

    :pswitch_26  #0xb
    const-string p0, "EXIT_FROM_BREENO"

    return-object p0

    :pswitch_29  #0xa
    const-string p0, "EXIT_FROM_SUPER_POWER"

    return-object p0

    :pswitch_2c  #0x9
    const-string p0, "EXIT_FROM_SWITCH_OFF"

    return-object p0

    :pswitch_2f  #0x8
    const-string p0, "EXIT_FROM_FULLSCREEN_APP"

    return-object p0

    :cond_32
    const-string p0, "EXIT_FROM_ENTERPRISE_DISABLE"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_11  #00000006
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x8
        :pswitch_2f  #00000008
        :pswitch_2c  #00000009
        :pswitch_29  #0000000a
        :pswitch_26  #0000000b
    .end packed-switch
.end method
