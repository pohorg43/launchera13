.class public final synthetic Lcom/android/wm/shell/stagesplit/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl$2;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/stagesplit/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/stagesplit/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/stagesplit/k;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;->c(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;->d(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl$2;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {v0, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl$2;->a(Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl$2;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
