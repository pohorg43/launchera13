.class public final synthetic Lcom/android/wm/shell/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/c;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_2e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;

    iget-object v1, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;->a(Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1a  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    check-cast v1, [Z

    iget-object v2, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->b(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :goto_2e
    iget-object v0, p0, Lcom/android/wm/shell/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-object v1, p0, Lcom/android/wm/shell/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/wm/shell/c;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/c;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/TaskView;->e(Lcom/android/wm/shell/TaskView;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
