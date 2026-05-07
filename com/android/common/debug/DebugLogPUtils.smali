.class public Lcom/android/common/debug/DebugLogPUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LAUNCH_TIME_GAP_BEGIN:Ljava/lang/String; = " begin"

.field public static final LAUNCH_TIME_GAP_CLOSE_FOLDER:Ljava/lang/String; = ".folder_close"

.field public static final LAUNCH_TIME_GAP_END:Ljava/lang/String; = " end"

.field public static final LAUNCH_TIME_GAP_EXIT_ACTIVITY_GESTURE:Ljava/lang/String; = ".activity_exit_gesture"

.field public static final LAUNCH_TIME_GAP_EXIT_ACTIVITY_NORMAL:Ljava/lang/String; = ".activity_exit_normal"

.field public static final LAUNCH_TIME_GAP_MODULE_NAME:Ljava/lang/String; = "launcher"

.field public static final LAUNCH_TIME_GAP_OPEN_FOLDER:Ljava/lang/String; = ".folder_open"

.field public static final LAUNCH_TIME_GAP_START_ACTIVITY:Ljava/lang/String; = ".activity_start"

.field public static final LAUNCH_TIME_GAP_TRANSITION_RECENT_PAGE:Ljava/lang/String; = ".recent_page_transition"

.field public static final LAUNCH_TIME_GAP_TRANSITION_WORKSPACE_PAGE:Ljava/lang/String; = ".workspace_page_transition"

.field public static final LOGTAG_LAUNCH_TIME_GAP:Ljava/lang/String; = "HM_APP_GAP"

.field private static final TAG:Ljava/lang/String; = "DebugLogPUtils"

.field private static sIsLogging:Z = false

.field private static sLogMsg:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, " begin"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_55

    :cond_14
    sget-boolean v0, Lcom/android/common/debug/DebugLogPUtils;->sIsLogging:Z

    if-eqz v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/debug/DebugLogPUtils;->sIsLogging:Z

    sput-object p2, Lcom/android/common/debug/DebugLogPUtils;->sLogMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/DebugLogPUtils;->logP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_34
    sget-object v0, Lcom/android/common/debug/DebugLogPUtils;->sLogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/debug/DebugLogPUtils;->sIsLogging:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/DebugLogPUtils;->logP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public static logP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "p"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_2f

    :catch_23
    move-exception p0

    const-string p1, "logP: Exception: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "DebugLogPUtils"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method
