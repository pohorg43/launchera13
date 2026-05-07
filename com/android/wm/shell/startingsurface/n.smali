.class public final synthetic Lcom/android/wm/shell/startingsurface/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/startingsurface/n;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/n;->b:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iput p2, p0, Lcom/android/wm/shell/startingsurface/n;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/startingsurface/n;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/n;->b:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/n;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->a(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/n;->b:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/n;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->g(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/n;->b:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/n;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->c(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
