.class public final synthetic Lcom/android/wm/shell/stagesplit/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/stagesplit/d;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/d;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/stagesplit/d;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/d;->b:Z

    check-cast p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->g(ZLcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :goto_e
    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/d;->b:Z

    check-cast p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->c(ZLcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
