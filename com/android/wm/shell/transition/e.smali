.class public final synthetic Lcom/android/wm/shell/transition/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/epona/internal/BinderCache;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/transition/e;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->a(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/wm/shell/transition/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/epona/internal/BinderCache;

    iget-object p0, p0, Lcom/android/wm/shell/transition/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/epona/internal/BinderCache;->a(Lcom/oplus/epona/internal/BinderCache;Ljava/lang/String;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
