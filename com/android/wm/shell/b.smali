.class public final synthetic Lcom/android/wm/shell/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/TaskView;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/b;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-object p0, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Binder;

    invoke-static {v0, p0}, Lcom/android/wm/shell/TaskView;->c(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object p0, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->a(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    invoke-static {v0, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->a(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;Ljava/io/PrintWriter;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/TaskView;

    invoke-static {v0, p0}, Lcom/android/wm/shell/TaskViewFactoryController;->a(Ljava/util/function/Consumer;Lcom/android/wm/shell/TaskView;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
