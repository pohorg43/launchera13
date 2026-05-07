.class public final Lcom/android/common/config/Constants$AppWidgetCommands;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppWidgetCommands"
.end annotation


# static fields
.field public static final COMMAND_HOME_KEY_PRESSED:I = 0x17

.field public static final COMMAND_LAUNCHER_ADDWIDGET:I = 0x4

.field public static final COMMAND_LAUNCHER_DELETEWIDGET:I = 0x2

.field public static final COMMAND_LAUNCHER_EXIT_SMALL_STATE_FOR_MULTI_SCREEN_WALLPAPER:I = 0x7

.field public static final COMMAND_LAUNCHER_LONGCLICK_WIDGET:I = 0xa

.field public static final COMMAND_LAUNCHER_PAUSE:I = 0xb

.field public static final COMMAND_LAUNCHER_RESUME:I = 0xc

.field public static final COMMAND_LAUNCHER_RESUME_NOT_NORMAL_MODE:I = 0x16

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_BEGIN:I = 0x8

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_BEGIN_NOT_NORMAL_MODE:I = 0x15

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_END:I = 0x9

.field public static final COMMAND_LAUNCHER_SCREENCHANGE_END_NOT_NORMAL_MODE:I = 0x14

.field public static final COMMAND_LAUNCHER_UPDATEWIDGET_POS:I = 0x5

.field public static final INSTANCE:Lcom/android/common/config/Constants$AppWidgetCommands;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/Constants$AppWidgetCommands;

    invoke-direct {v0}, Lcom/android/common/config/Constants$AppWidgetCommands;-><init>()V

    sput-object v0, Lcom/android/common/config/Constants$AppWidgetCommands;->INSTANCE:Lcom/android/common/config/Constants$AppWidgetCommands;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
