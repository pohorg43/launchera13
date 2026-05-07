.class public final synthetic Lcom/android/wm/shell/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/a;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/a;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->c(Ljava/io/PrintWriter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->h(Ljava/io/PrintWriter;Lcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->b(Ljava/io/PrintWriter;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->g(Ljava/io/PrintWriter;Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->f(Ljava/io/PrintWriter;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->k(Ljava/io/PrintWriter;Lcom/android/wm/shell/pip/Pip;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/wm/shell/a;->b:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->a(Ljava/io/PrintWriter;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
