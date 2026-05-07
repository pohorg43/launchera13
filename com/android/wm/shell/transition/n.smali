.class public final synthetic Lcom/android/wm/shell/transition/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/RemoteTransition;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/transition/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/IOplusTaskListener;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/transition/n;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/n;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/transition/n;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/transition/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->a(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-void

    :pswitch_10  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/transition/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->c(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-void

    :goto_1a
    iget-object p0, p0, Lcom/android/wm/shell/transition/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->b(Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
