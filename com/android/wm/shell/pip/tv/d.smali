.class public final synthetic Lcom/android/wm/shell/pip/tv/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/View;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/pip/tv/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/tv/d;->b:F

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/d;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/pip/tv/d;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/d;->b:F

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->c(FLandroid/view/View;)V

    return-void

    :goto_e
    iget v0, p0, Lcom/android/wm/shell/pip/tv/d;->b:F

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->f(FLandroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
