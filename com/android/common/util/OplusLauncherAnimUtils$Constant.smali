.class public final Lcom/android/common/util/OplusLauncherAnimUtils$Constant;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/OplusLauncherAnimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constant"
.end annotation


# static fields
.field private static final ANIM_FOLDER_WORKSPACE_SCALE:F = 0.9f

.field public static final DELETEVIEW_ANIM_SPEECH:F = 1.8f

.field public static final ICON_FALLEN_TRANSITION_MS:I = 0x0

.field public static final INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Constant;

.field public static final INTEGER_MAX_ALPHA:I = 0xff

.field public static final INTEGER_MIN_ALPHA:I = 0x0

.field public static final NORMAL_SCALE:F = 1.0f

.field public static final PRESSED_MIN_SCALE:F = 0.9f

.field public static final SCALE_MIN_WORKSPACE:F = 0.9f

.field public static final TIME_ICON_FALLEN_RESET:I = 0x14a

.field public static final TIME_MOMENT:I = 0x64

.field public static final TIME_MOVE:I = 0x14a

.field public static final TIME_MOVE_FAST:I = 0xf0

.field public static final TIME_MOVE_SLOW:I = 0x1a4

.field public static final TIME_MOVE_VERY_FAST:J = 0x96L

.field public static final TIME_PRESS_SCALE:J = 0xc8L

.field public static final TIME_TOUCH_FAST:I = 0x42

.field public static final TIME_TOUCH_START:I = 0x42

.field public static final TIME_UNINSTALL_DIALOG_CLOSE_DELAY:I = 0x1c2

.field public static final TOGGLE_BAR_SWITCH_DOT_ANIM_TIME:I = 0x1a1

.field public static final TOGGLE_BAR_TOP_OPS_BTN_ANI_DURATION:I = 0xfa

.field public static final TOGGLE_BAR_TRANSITION_MS:I = 0x140

.field public static final WORKSPACE_SCALE_ANIM_TIME:I = 0xc8


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/OplusLauncherAnimUtils$Constant;

    invoke-direct {v0}, Lcom/android/common/util/OplusLauncherAnimUtils$Constant;-><init>()V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Constant;->INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Constant;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
