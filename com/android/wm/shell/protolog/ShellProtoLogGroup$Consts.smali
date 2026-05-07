.class Lcom/android/wm/shell/protolog/ShellProtoLogGroup$Consts;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Consts"
.end annotation


# static fields
.field private static final ENABLE_DEBUG:Z = true

.field private static final ENABLE_LOG_TO_PROTO_DEBUG:Z = true

.field private static final TAG_WM_SHELL:Ljava/lang/String; = "WindowManagerShell"

.field private static final TAG_WM_STARTING_WINDOW:Ljava/lang/String; = "ShellStartingWindow"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
