.class public final synthetic Lcom/android/wm/shell/pip/tv/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipMediaController$ActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/pip/tv/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMediaActionsChanged(Ljava/util/List;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/tv/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->a(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Ljava/util/List;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->b(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Ljava/util/List;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
