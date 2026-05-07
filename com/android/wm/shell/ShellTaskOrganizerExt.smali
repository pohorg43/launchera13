.class public Lcom/android/wm/shell/ShellTaskOrganizerExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIELD_NAME_TASK_ORGANIZER_BINDER_INTERFACE:Ljava/lang/String; = "mInterface"


# instance fields
.field private final mInterface:Landroid/window/IOplusTaskOrganizer;

.field private final mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mShellExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizerExt$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt$1;-><init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;)V

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mInterface:Landroid/window/IOplusTaskOrganizer;

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    goto :goto_15

    :cond_13
    sget-object v1, Landroidx/window/layout/b;->a:Landroidx/window/layout/b;

    :goto_15
    iput-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mShellExecutor:Ljava/util/concurrent/Executor;

    const-string p0, "mInterface"

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->getSuperField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Binder;

    if-eqz p0, :cond_28

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Binder;->setExtension(Landroid/os/IBinder;)V

    :cond_28
    return-void
.end method

.method public static synthetic a(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->lambda$updateStartingWindowExtendedInfo$0(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$updateStartingWindowExtendedInfo$0(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/b;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/b;-><init>(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
