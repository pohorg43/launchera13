.class public final synthetic Lcom/android/wm/shell/stagesplit/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/stagesplit/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/stagesplit/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/stagesplit/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;

    check-cast p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->b(Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->c(Lcom/android/wm/shell/stagesplit/StageCoordinator;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
